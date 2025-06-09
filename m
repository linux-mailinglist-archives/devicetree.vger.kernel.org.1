Return-Path: <devicetree+bounces-183770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C46AD1B7B
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 12:24:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF5793A7553
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 10:23:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E807253F3A;
	Mon,  9 Jun 2025 10:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="L/54NyHg"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC70E253957
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 10:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749464623; cv=none; b=lxBVfYKjyczR0LisaMDvelcr4jP3LZ4yknH4d4z/Q9KIKCq9AcYIgNL/ZacN7E50zYAcjmXWmwnHi/vRKEArDUb3RTSX622MqhnyyDLShXio4lvu5t6BwKScyahEhQruOi2TTw24rsh6ocXRgPgv86C+QTm/T3/PuOniyRmdn78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749464623; c=relaxed/simple;
	bh=Z9yLlv5vpcbSVUNzmn0PTt/uvpNrhXo6D0pJkmGnidw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Nv8sTUnvxecQXd1vJj6zR4rDkoQQHV1p8KuIq7q4mOSok6Xgwua9SrXKkxBejSlYK+3oZ83JnNNY5T30MusexjvQkbnVegiGXBs2DMq8m2CWtBYXG3CpGTYu2xKHlwKPnQK6/8X8/er93vuKKR1mAcqzPTn1LxQ6d9eFjLZ4BD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=L/54NyHg; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=mjZzOQzZWRh5mMcDH3uFDboy3B8BcepsHqYvGyZHYfc=; b=L/54NyHg4/S2CZeYLrvPzigM4A
	AskTWkXdc6S60+ZR2ivHXR4hj4khflxiVRHUcAmrsHswvGE0GOtYMGGYmx15l0DiCQ2OPKa2GP1gr
	HwHbG9HBfdQWgNlSInLdgVNHstwutdJ8tWB+0OxHiMZ4HcBKspXnsVaiYWsfQhKfZlvM6iTu7aaQz
	aR8Y6yoP7US++iQgygcdI5jsBlpUKIRnOAflOD6ehtv4msQdOndRTfOffhQITFUeU8eUjhY+9p1Vy
	4k173vpgvFAJF5ZpFr5CrpahjVV3YpLECaEnV85JVliuZL/bi7sJ6he/iLXfPdWZt2xh1JTsi6WDn
	0C6agjmg==;
Received: from i53875b1c.versanet.de ([83.135.91.28] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uOZfE-0006Av-Ai; Mon, 09 Jun 2025 12:23:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	John Clark <inindev@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	nicolas.frattaroli@collabora.com,
	detlev.casanova@collabora.com,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: Use standard PHY reset properties for RK3576 ArmSoM Sige5
Date: Mon,  9 Jun 2025 12:23:02 +0200
Message-ID: <174946455542.762051.1386623405149622238.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250520003332.163124-2-inindev@gmail.com>
References: <20250520003332.163124-1-inindev@gmail.com> <20250520003332.163124-2-inindev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 19 May 2025 20:33:32 -0400, John Clark wrote:
> Replace deprecated snps,reset-gpio, snps,reset-active-low, and
> snps,reset-delays-us in gmac0 and gmac1 nodes with standard reset-gpios,
> reset-assert-us, and reset-deassert-us in rgmii_phy0 and rgmii_phy1 nodes.
> Add pinctrl properties to PHY nodes and define gmac0_rst and gmac1_rst in
> pinctrl node. Reorder phy-handle for consistency.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Use standard PHY reset properties for RK3576 ArmSoM Sige5
      commit: 63136c6fecf44b4f2cb458b01cfdbc2cb0ddd29c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

