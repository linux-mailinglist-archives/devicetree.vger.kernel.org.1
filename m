Return-Path: <devicetree+bounces-135639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10303A019A0
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 14:20:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9CA3C3A3028
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 13:20:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00EE1146A68;
	Sun,  5 Jan 2025 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="0IJDhpiS"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81135846D
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 13:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736083233; cv=none; b=hCN/cLeheCCOwa2Gtt6NhSsoIXkEgTCYQj61B4MP/V6HFGnbyBx4Kurr2yC+9BjVdDyMGnp9Exx5xDSIFH+Bk4FKNmAZyblG1/9hYJLw3Z/jWUfNbQXRRKoPDYeL3IbLy9y1sWcKPMkc3Ge0TfM44voeprUeIRX6pD+tH5b0D5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736083233; c=relaxed/simple;
	bh=NMRexp671lD8EOq2LW8I32ZBiJr6Jj/WFpSRqWdOY+Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nUWsZvpSrBR+7qfa/Z9hrV7qNUmI1KWMACSPOg+brZJjhNdag5XWCrOx7rc70hU4rqqMB0uyEpe+EkZN9VrWa5M4zZ/8w0K6ucwHbOPjw05lKmB+T/gtvrgl0o/b17Q6CTRAiva8DGw4f0gIbwjuGV++vhJwDfv3FvRA5l/Vc9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=0IJDhpiS; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=gdFXz0TQkHuyR0zIU+x5R4ZtdsS7ut850eH7tZTEP+s=; b=0IJDhpiSx48oMDcl0P8vBidO7R
	RMIcXePp+JeTvONCEHATmr/Q4X0UjrmjiZvtgEyT3HM9Hg/vK5khb4WdUtPHIHNgMH7A1sH5Rl/Fj
	Cj5o9LB3XXWPAKwiZPldt2t/RUCbs8pF8nW+MysG03m/1uTEd6++FtjaWg82aavPCntMQ985vZs5y
	G6ezRtLenaFgpFKub2KaeIRY7rB9WLwpMoruIctJESuJgcYmD140wgrajxk/o4/iPwdU1pRDcMWEz
	ggjZiMwXElJpOE3mq4HVza280bjjJobvOv/ZG3ysVi/NQGSJ2LgVFOAHHnIez8Ompa7Bo2mzH3gM/
	uWyU3oEg==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tUQYN-0005L8-GD; Sun, 05 Jan 2025 14:20:27 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Jimmy Hon <honyuenkwun@gmail.com>
Subject:
 Re: [PATCH v6 1/4] arm64: dts: rockchip: refactor common
 rk3588-orangepi-5.dtsi
Date: Sun, 05 Jan 2025 14:20:26 +0100
Message-ID: <2341242.bB369e8A3T@phil>
In-Reply-To: <20250104020544.6777-2-honyuenkwun@gmail.com>
References:
 <20250104020544.6777-1-honyuenkwun@gmail.com>
 <20250104020544.6777-2-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jimmy,

Am Samstag, 4. Januar 2025, 03:05:37 CET schrieb Jimmy Hon:
> for Orange Pi 5 Plus/Max/Ultra and AI Max

somehow your subject continues int the patch description.
We definitly would like some more explanation here.

And also you're missing the Signed-off-by statement.

> ---
>  .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 855 ++----------------
>  .../boot/dts/rockchip/rk3588-orangepi-5.dtsi  | 797 ++++++++++++++++
>  2 files changed, 862 insertions(+), 790 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi


Heiko



