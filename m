Return-Path: <devicetree+bounces-239102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A6847C6156A
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 14:13:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 586024E3910
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 13:13:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2D782D8DB5;
	Sun, 16 Nov 2025 13:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="mq9OJ5vf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D9A27F756;
	Sun, 16 Nov 2025 13:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763298813; cv=none; b=dZuYub8NFykL1XR87aV5WBehfbTLZyKA1y4FBpDdf5ar5+KqGvnZHUO2L/3b5zuFjUH8eAshsRiS09uIWgAHPNk6hmsorKmkUzMA+4HdDvlHgDAjk88PF6bQysO+XVfC73lKiUL1rPqA/kj9fh12EGSvSPdqg6f414kdQUV9u0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763298813; c=relaxed/simple;
	bh=QdREia3Z8CgCG458NglnahkgQe4Yj/oQX3u3ds6+KWA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HZQ4YMYnVJtWVx6c424QX98PyK7IyI4kobbLyY4+DM/UULYZew9ekBOOmFQXmoPxQYGFvRefzP817l9j+aUuYv8PBOtpChxwl7EMr25pDrSHo67AXE79+ZMihQ/DO3l6iWF8TakryvDGAtDQ/D4KTlwrNYV0fsR7kOk8YUVX74A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=mq9OJ5vf; arc=none smtp.client-ip=220.197.32.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=+jIKbfW5/v+xlkcfxLUv/ia3vHPY9nRhWo0buFo4Dk8=;
	b=mq9OJ5vf7Ev/HLiDkw90zW2aui2AEu6fD2uwPDtcyAq8W1m2tgq5n9Mew1G6O/
	GgBh5hqG1YXpLuKciSK+ws4efl96uefQLGRkk+Fvy9+2zqA74dHgPi0UzF4X48es
	Z3BAUigA54rLGN28uodTyQAArKCU3QIPOimWLxsX6RysI=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgAH+7nPzRlpeBc8AQ--.7960S3;
	Sun, 16 Nov 2025 21:12:49 +0800 (CST)
Date: Sun, 16 Nov 2025 21:12:47 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, linux@ew.tq-group.com,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: freescale: tqma9352: Add vcc-supply for
 spi-nor
Message-ID: <aRnNz3S5lp260-Dt@dragon>
References: <20251114083959.1463736-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251114083959.1463736-1-alexander.stein@ew.tq-group.com>
X-CM-TRANSID:Mc8vCgAH+7nPzRlpeBc8AQ--.7960S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUwxhlDUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiNBFIrWkZzdEqsQAA33

On Fri, Nov 14, 2025 at 09:39:58AM +0100, Alexander Stein wrote:
> (Q)SPI NOR flash is supplied by 1.8V. Add the corresponding supply.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!


