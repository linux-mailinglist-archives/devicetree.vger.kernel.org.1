Return-Path: <devicetree+bounces-169171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB1BA95C41
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 04:42:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 083A91634E4
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 02:42:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BC23347A2;
	Tue, 22 Apr 2025 02:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="TfAyzARZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.14])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10B1C33C9
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 02:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745289730; cv=none; b=CU+Ma15Qn87Tu100CIdfX2Vq09w3Xy1UNKGubw8oB6iVgGKxFWr0xg6L58gYsU34eQ7tgzXS5Es1HdWJVj+CvOzcetNEvJ3Lwp+2XnUJeDxPjzWbqGUnfka/gdujJFYZAkEWUyMxReUBJrHFLdh3Yj4DyM4lt5/vt+ewJM9J+v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745289730; c=relaxed/simple;
	bh=woIFOBVK4q+r5WHtUR20psbx/Sh39gbfFdEaZyt4yms=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UVCrC5GkRHbjYCqQdUjQgLIBbpgXfUHnLmdObDlLIv0b1y7KPCHAwNPyXnmWZq1E9wWItHBrDxbx+u065U0JhTNPu81i/NskF3GKeTicgukEcRa9yBmJpTjt689bFxq+8Bb2z0odyfPYqwWF9bXKQn6bsXwxheSMrhjr3iAoOMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=TfAyzARZ; arc=none smtp.client-ip=1.95.21.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=ELnDowNSV88ozqNx2/R40hrPzJSlxaAw2vVwupi0syU=;
	b=TfAyzARZh3HNQlrT5i/6suExlmSpBZeW87qnkZaaXd4h1ygDxHCvLgSsl5qn+8
	QcY2eNcjsGpFK/Uf2w8+hWFSGckUpwZEnzTxM0MXs6/sJtZSNHOp5UPd3+moqpT8
	QWVjslU5HDi5E9+ftETLiGJ6MDSyh77eq8lYvICx9OBLE=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgD3YiKF_wZomhu8Aw--.13077S3;
	Tue, 22 Apr 2025 10:31:35 +0800 (CST)
Date: Tue, 22 Apr 2025 10:31:33 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: imx: Fix the iim compatible string
Message-ID: <aAb/hXdFochL8Lhh@dragon>
References: <20250313192943.1547330-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250313192943.1547330-1-festevam@gmail.com>
X-CM-TRANSID:Ms8vCgD3YiKF_wZomhu8Aw--.13077S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUYF4iUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCws3ZWgG8BZIOgAAso

On Thu, Mar 13, 2025 at 04:29:43PM -0300, Fabio Estevam wrote:
> Per imx-iim.yaml, the compatible string should only contain a single
> entry.
> 
> Change it accordingly to fix the following dt-schema warnings:
> 
> efuse@83f98000: compatible: ['fsl,imx51-iim', 'fsl,imx27-iim', 'syscon'] is too long
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks!


