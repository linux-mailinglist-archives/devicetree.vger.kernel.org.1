Return-Path: <devicetree+bounces-99242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 815D6969471
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 09:01:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E90DEB233A1
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 07:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4FED1DAC72;
	Tue,  3 Sep 2024 06:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="IwJdRubT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.16])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 230A41D6185
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 06:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725346783; cv=none; b=D8vPmJqQYamCALK7OZBf2aPNFXFp+Hmk3whQHE69rYgNURf7VTcvPRtBGVM42bGnpHAK6/hjuMcHgtu3568msXvYEXF0SUl4MCs1Q4QnoiCEX2G5qHVEe2mbWfl07+LNcUiYBlK3XDpStBXrFMLxO99r+jh/pCv3f2lxsjy5rok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725346783; c=relaxed/simple;
	bh=13hTXJBOUaHkpft0WgtH3Lgjq3FE4hbFwAehR9W1beM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fEIs32gcqY3yyTFQh7Qcjd221vB/sg6/KXUgYRx3WiydQKydgfkLEs1mLvmhxElg7Uh9bRCSdBAkJP4NuuPfYSxqAVOLcx4OjJY7zxKBjAjJshnawYPgeO7O265DxnNu8ENNjzcMDdtgCoV86kRw016crNcb+aylgeBJiB5jITI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=IwJdRubT; arc=none smtp.client-ip=220.197.32.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=Xzdx2PlkgXu/ukcJYsdXxV7bCTw3dgWJdAMWL0imyRM=;
	b=IwJdRubTv9IJwtRX9NdE7QK3X0o2HwzOro7gcjCM6P8+Nv7s8xoo6xtNJD4Ax0
	cME9upOQv/MdzXULv1irqFmtefaJrlNF6qdQJxQfqPim47W6oIBFX9IlCkafMR3B
	RU5VymbXkBQm/plUXmqxzetRiuuXCVZr+JYHkiuakOrY4=
Received: from dragon (unknown [114.216.210.89])
	by gzsmtp3 (Coremail) with SMTP id M88vCgDnzwK6s9Zm+DxaAA--.426S3;
	Tue, 03 Sep 2024 14:59:07 +0800 (CST)
Date: Tue, 3 Sep 2024 14:59:05 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, LW@karo-electronics.de,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: imx28-tx28: Fix the fsl,saif-master usage
Message-ID: <ZtazuUOj0Ag6N23T@dragon>
References: <20240902181036.924188-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240902181036.924188-1-festevam@gmail.com>
X-CM-TRANSID:M88vCgDnzwK6s9Zm+DxaAA--.426S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUcR6zUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCRpPZWbWeZS49wAAsr

On Mon, Sep 02, 2024 at 03:10:36PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> According to fsl,saif.yaml, fsl,saif-master is a phandle to the master
> SAIF.
> 
> Change it accordingly, to fix the following dt-schema warnings:
> 
> saif@80042000: fsl,saif-master: True is not of type 'array'
> saif@80042000: Unevaluated properties are not allowed ('fsl,saif-master' was unexpected)
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!


