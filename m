Return-Path: <devicetree+bounces-61292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C328AC34B
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 06:00:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B76028194F
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 04:00:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A01C61078B;
	Mon, 22 Apr 2024 04:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="CSYhWuL9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-177131.yeah.net (mail-177131.yeah.net [123.58.177.131])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7939F9EC
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 04:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=123.58.177.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713758444; cv=none; b=R9dxP9gadnFtdXz0JXVGpfpRYZlUDGVxjcLTLAarLJi+82wbjGlWQexOSMYpMzY876mFW0M2F7qw1jo3FMSGlef9c/71irEdoCnPgIur/yoCPD+3LT1XLSMTt3ay4Uu9Aw2GrIf48VI1b8qVyG/mIO3w3pVPXoNLTtnU++DU/m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713758444; c=relaxed/simple;
	bh=4HEnPcA4ryYwcvpDMJQkPV4CtQbaJiWvR6KPt7LS5MQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m/0KD1leP2GZr7ZVRTzklZ+sTrstoYko9UOwqn7KAbiVXYy81FaWTSKDjanK9T8JNkRx+/bbTe4Hv0i61gLRm4evhhO26PT0h/OE4j+yzMCjIip9HPl7JPaCrTYFGUYnTfxySbtZe0cj0RGvFwjEEqYsDGYIGgatTq+pg3OMIjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=CSYhWuL9; arc=none smtp.client-ip=123.58.177.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=n7KL5MucSrhgX6b+zFv69oT+X1YaOUFBX4eomiEByEk=;
	b=CSYhWuL9AohvOyJLhpH6BskUAf0dXENmQMSi+lIpVMBS+w8hXZLvDAQir5cxgx
	JkUOUJF04+DSd+4B2OrhXRjKliq9nE6jZTfzx+gdFMODDBa10z8G75SvO8CVFKM8
	g5TR9AgjlXCS0bZBKW4fwTaF4oh629oHivbcOAiclqLpU=
Received: from dragon (unknown [223.68.79.243])
	by smtp1 (Coremail) with SMTP id ClUQrAAXfvrZ4CVmZ8MrAw--.25023S3;
	Mon, 22 Apr 2024 12:00:26 +0800 (CST)
Date: Mon, 22 Apr 2024 12:00:24 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] arm64: dts: imx8m/qxp: Pass the tcpci compatible
Message-ID: <ZiXg2Ag+qocfa9Ew@dragon>
References: <20240403194019.453253-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240403194019.453253-1-festevam@gmail.com>
X-CM-TRANSID:ClUQrAAXfvrZ4CVmZ8MrAw--.25023S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUIHUqUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiGBvIZV6NnuIQhQAAsU

On Wed, Apr 03, 2024 at 04:40:19PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Per nxp,ptn5110.yaml, also pass the fallback "tcpci" compatible
> to fix the following dt-schema warning:
> 
>  usb-typec@50: compatible: ['nxp,ptn5110'] is too short
> 	from schema $id: http://devicetree.org/schemas/usb/nxp,ptn5110.yaml#
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!


