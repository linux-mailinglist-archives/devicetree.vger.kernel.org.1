Return-Path: <devicetree+bounces-39021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D744B84B2BD
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 11:47:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E72531F232E4
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 10:47:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C283453387;
	Tue,  6 Feb 2024 10:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="k9AYslhg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-177131.yeah.net (mail-177131.yeah.net [123.58.177.131])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA3AD1EA7F;
	Tue,  6 Feb 2024 10:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=123.58.177.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707216391; cv=none; b=fmW5rX+Qb+Y/WHos567Ut7/cJ0SLn30RP0JfT/RCm7A2kxmI7OROGTNbM9Pfv9Wzlw4JNxe0KBbzVXqkAz0l9V8oL2M4EUETGuQenXxZ5u2UYRekx/zm6QtyPntLvNU21RrJObMSui/AAZNKvmV9m4rUnbitT2WOyuAWrD6LIrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707216391; c=relaxed/simple;
	bh=d+oLW2HRq2Jlm4/vbLTLrkdBUeoGpsDVMVFmfsl3Cyc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L7+kFAKssXjWwrpJvlOD3+REwqOEN57lND2XPudZvZLn99rkj5G6IymkSN00GNFBx34UQ5PtuLlwR45ULb2VAh9AQUPx1d1WYBECEaOGRPPLvt73aGNhTM2J6+b0FQcRHjN3h3ErbdOjzQsF59u3hw1pW8C/WKEl90BLHal9JnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=k9AYslhg; arc=none smtp.client-ip=123.58.177.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=upVIgeeDvCGMQGNmqWW5A7mPp1moe3Q63ckC7AaU3Hs=;
	b=k9AYslhgZacAHbADer8Ynlf1o5/o5g+PUMt0499fCj+kOU/edMj7qdlgrPmVmm
	ZC29zRdQ26MjR2NXcw5OTvlJMN1ZpHFs56KUVPuGQZWSenWF83sCcmsWJna6SPLZ
	0oKhUrSCaCTx5mZdk+b8RseqmbYF7w25/5g7rhe6t395g=
Received: from dragon (unknown [183.213.196.254])
	by smtp1 (Coremail) with SMTP id ClUQrAB33xPgDcJlwZr+Ag--.16143S3;
	Tue, 06 Feb 2024 18:45:53 +0800 (CST)
Date: Tue, 6 Feb 2024 18:45:52 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH v2 1/3] arm64: dts: imx8dxl: update flexcan[1-3]
 interrupt number
Message-ID: <ZcIN4EWS+t3hR9Xq@dragon>
References: <20240130152547.272125-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240130152547.272125-1-Frank.Li@nxp.com>
X-CM-TRANSID:ClUQrAB33xPgDcJlwZr+Ag--.16143S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUVy8BUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiFQJ8ZV6Nm3UVkQAAs3

On Tue, Jan 30, 2024 at 10:25:45AM -0500, Frank Li wrote:
> Update interrupt number of flexcan[1-3].
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Applied all, thanks!


