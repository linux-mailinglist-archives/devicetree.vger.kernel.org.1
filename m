Return-Path: <devicetree+bounces-45085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 853478609B6
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 05:03:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 217E21F24A60
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 04:03:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCB03DDBB;
	Fri, 23 Feb 2024 04:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="idXAUnAO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-177131.yeah.net (mail-177131.yeah.net [123.58.177.131])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DFBB101C1
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 04:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=123.58.177.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708661027; cv=none; b=FPAul9Gsoxaj5mrKAbujKBch1Ky6lrvwWrDdgxJY3voA/365e5EIHhpkRF/n4Ra3KkJy/9zjppfN3kccqZ8P24cgKLPIEeRI86qcbCwuk0Qe0YuDZITbH9UogW04MA3prRAhxtU4B3/W1ySgX3nbUWM3d5QQ182unLa8cXrrbYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708661027; c=relaxed/simple;
	bh=JRBx3eYNZE65bq6zN+DeF2hvlIZTAVxiFa5PkW6rYXE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DfBp+w1HEdBBs7yXTOjBSygPTTSE4FDUMQJaGExYit3/3wHnSjxtR/kc+pPYupgl4lrobXbx9M28JvhlKCdTvjv8l2Y8NphN7cwMyfdusOCxHSCzuCgSe4FqdqccZZ66tPHPoCbv4mUKN6xP9UwM30y3uoLZWHikMKUUBeFaFRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=idXAUnAO; arc=none smtp.client-ip=123.58.177.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=Y0h+ltTf+1Bm+761b3Fe95XG7oVITNfgMERwURXK/wo=;
	b=idXAUnAObY9WMz8IFEDiA+zvxH8uwj6OcNFAKNGPyGLk7r8c7DyFsfDipt/Zr6
	7UIYaqWLIQndBa4db9u0PUI8ErMEgkbE9IOaEjMd0AzDUDwi6cWL6qAzOQXAjj2x
	hHOHH8bEpaT5e8FhdlEULLuVfnID0/2hO8eoYNMGnQCiw=
Received: from dragon (unknown [183.213.196.200])
	by smtp1 (Coremail) with SMTP id ClUQrAB3P4nXGNhluSsuBA--.51366S3;
	Fri, 23 Feb 2024 12:02:33 +0800 (CST)
Date: Fri, 23 Feb 2024 12:02:31 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] ARM: dts: imx53-qsb: add support for the HDMI expander
Message-ID: <ZdgY1ykfswUGgfd2@dragon>
References: <20240206-imx53-qsb-hdmi-v2-1-a025fe0c4362@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240206-imx53-qsb-hdmi-v2-1-a025fe0c4362@linaro.org>
X-CM-TRANSID:ClUQrAB3P4nXGNhluSsuBA--.51366S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUswZ2UUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiDRmNZVszXQRXVQAAsP

On Tue, Feb 06, 2024 at 05:26:29PM +0200, Dmitry Baryshkov wrote:
> Add support for the MCIMXHDMICARD expansion card attached to the iMX53
> QSB / QSRB platforms. This enables HDMI output on those devices.
> 
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Applied, thanks!


