Return-Path: <devicetree+bounces-149921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBB9A40D03
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 07:44:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0AF267A630F
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 06:43:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33D971B2182;
	Sun, 23 Feb 2025 06:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="hCDz1th1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.17])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CD8E156F41
	for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 06:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740293084; cv=none; b=OQlEz/bx4igI+ZmM7RlzUTbMjKrSqkLB795N4vS100A/cT/CqZIp8hMsP4HSVhyVz6KGHX4i6OEPY83AZmTWmZHohSaI0LDuL0s8IqcV/gJuF3O+MbAia8OQdDM5ecGXqrJLzfuf04HEQHLe4cQBRFm6bGeiY2Ie6VSP4TPU9FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740293084; c=relaxed/simple;
	bh=GH4V/5fBwyw2XcIHOiFdy4jYqow7nixyIHNFkJuiBp4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y46VrOxquuSPf9dNrdsEbCO+HEfi6EyThjIpZhM/Y+mmwhMCpIFpNxbM+I5PF5FsAI6zdx5PV4Ji2dWZqL61ow7/UIZ67ZkX1kadiwG9cb7agiFDE8lbQKRmJJtaJE5VgeT53QH8IjNIVptKaskdpq8TgN6uQrgwMlQPnZZafbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=hCDz1th1; arc=none smtp.client-ip=1.95.21.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=mMxrYIMRdffn0+3ksCTpUd9GeGRHP1IsZ6oijn2fKfc=;
	b=hCDz1th11p8FGE1eTrt56lAUN2gq+sh+DFtDU8XVl512YTg5YECFSQjSyRAzCg
	CJqIcRX37QtlZP7wJZAn6ng/9/8t8gS7eKQU7W/g/3OuOtwMWnSBccGgbEvP7rbj
	gvP1UiI9np7QkiRBq5MJxVGbA4KVZWrcDIr0lDxVAGYC8=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgCX2_nGw7pnbR_ICQ--.24661S3;
	Sun, 23 Feb 2025 14:44:24 +0800 (CST)
Date: Sun, 23 Feb 2025 14:44:22 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	robh@kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, lukma@denx.de,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH RESEND] ARM: dts: vf610-bk4: Use the more specific
 "lwn,bk4-spi"
Message-ID: <Z7rDxj4Lz6Gv5I1Q@dragon>
References: <20250203120511.996058-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250203120511.996058-1-festevam@gmail.com>
X-CM-TRANSID:Ms8vCgCX2_nGw7pnbR_ICQ--.24661S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrKry8XryDWw1rtF4UCFWxWFg_yoW3Jrg_AF
	n5tryqkFWDXF1UW3sxJFyrtFW5ua1xu3y3Xr93tr1qga95urn3WFyqvr13Zr4UZ39IqwnI
	ka4Yqry5AFnrKjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8Mmh7UUUUU==
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiERj8ZWe6ksyM4wABs9

On Mon, Feb 03, 2025 at 09:05:11AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Currently, the compatible string used for the spidev device is "lwn,bk4",
> which is the same as the board compatible string documented at fsl.yaml.
> 
> This causes several dt-schema warnings:
> 
> make dtbs_check DT_SCHEMA_FILES=fsl.yaml
> ...
> 
> ['lwn,bk4'] is too short
> 'lwn,bk4' is not one of ['tq,imx8dxp-tqma8xdp-mba8xx']
> 'lwn,bk4' is not one of ['tq,imx8qxp-tqma8xqp-mba8xx']
> 'lwn,bk4' is not one of ['armadeus,imx1-apf9328', 'fsl,imx1ads']
> 
> Use a more specific "lwn,bk4-spi" compatible string to fix the problem.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!


