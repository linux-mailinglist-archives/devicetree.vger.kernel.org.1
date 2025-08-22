Return-Path: <devicetree+bounces-207954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 83857B313D1
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:45:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11D83723B3E
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:38:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0F732F531A;
	Fri, 22 Aug 2025 09:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="UHUUsSR6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132DF2EF65F
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755855172; cv=none; b=JDjWpcoU0QSWHdc6FeU+w6/hPmCOIPALYg/OLss87QQ7tEuSlEt8vgDSLpveWrMtWzDsLZOANxbk/y/6Q0/b+KVmYVMqsYP8PSGPwfCmAdZRKfadnf3VRp++2UegfgtUCJUEqpDLsHSMmNxoUs+IIn5BRQltRj018sWc70J5z20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755855172; c=relaxed/simple;
	bh=5dswyD/6hVZvzvqL9Ctgawvc5Od/QTHuA1jx67SxvNw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M+bWSJ6Io8Wn1ZS2wZ5XtOa6FD2kcEQN0WtYo4SrdGFN18S6H7OV2jGihdc84f7a5jYi0bTZi6T78r0fNh+GZHUd2Fx7ZjSbroXUsA84X+EWrp0C1oCqTCQB9OoNPL5sQkI8cZtQTIdUx5qMv6sgCRxAzdLQnZdlCm7L9RjVc8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=UHUUsSR6; arc=none smtp.client-ip=1.95.21.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=Rqq3SONqpdrDbku+XNyb2Qh0+pAmCkyeETHl4n92OHg=;
	b=UHUUsSR6+9FvDGFtlWrCcTJo4OOkBZOn7ROcNarnzXe3zmvUmGESBf9QCJE5f6
	zFMiMf6WzQGFHwJtePNQaOX/39r8TNeIoMEtdmw+4YozqzDw+xSG7qEY4B5Xr53S
	oO7DcinesoOy33RyUTKemQL3WN5gwDHF31BbDp1F3JtSI=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgAnVdkkOaholXooAw--.13666S3;
	Fri, 22 Aug 2025 17:32:21 +0800 (CST)
Date: Fri, 22 Aug 2025 17:32:20 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, stefan@agner.ch, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH] ARM: dts: vf: Change the pinctrl node name
Message-ID: <aKg5JPSfy8_khe3v@dragon>
References: <20250819193405.2847808-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250819193405.2847808-1-festevam@gmail.com>
X-CM-TRANSID:Ms8vCgAnVdkkOaholXooAw--.13666S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUYF4EDUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiNwabAWioOSahQgAA3X

On Tue, Aug 19, 2025 at 04:34:05PM -0300, Fabio Estevam wrote:
> fsl,vf610-iomuxc.yaml references pinctrl.yaml, which only allows the node
> to be either 'pinctrl' or 'pinmux'.
> 
> Change the node name to 'pinctrl' to fix the following dt-schema
> warning: 
> 
> iomuxc@40048000' does not match '^(pinctrl|pinmux)(@[0-9a-f]+)?$'
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks!


