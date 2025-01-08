Return-Path: <devicetree+bounces-136630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C014A05AF4
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 13:03:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B21E3A3495
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:03:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 859F31FA8E8;
	Wed,  8 Jan 2025 12:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="othmqvdk"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E16271F9407
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 12:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736337773; cv=none; b=rqzcVuIqjVrr2SoZB9J7YIJQ2xa+Exwi3hf5epqSno3ZItIEAP3TBF1crUwE4HjvziCQq8x0wAwbfrQRhWNaZWVN4WQVUBZUhSkryAPmF4LHDyNdDIwvzbd3Nu4/CYka8+LqNGllewfy7XuTtBva6HDnx6MoeZ7/yJkdqaiN03E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736337773; c=relaxed/simple;
	bh=ca/jfV1n6GJ/i+Trfa+jhojM3Z9ewF1QAjuSA0sKJF4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uLczGRMf+Wmlyx8wAaeMyLmwsTJC4QXuC3Y4wBV2FLRvnqVR30yq3lvDQJpEHBNFiaDV/NLeUB2Li1RMcVDqCgNXUDtpXgcSKk42DoYz/9aR6X9I9Mfzqaq8qjNEJ0ElL+POpKJjjST4o6q2t3BAsgb9UuJxCorbIWNPrvyWub0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=othmqvdk; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=nRQO1yjuX6bCQ/PtICNClQmkrpRnhhO1UrKdqkwDZEo=; b=othmqvdkecbqPNpXt362HrGrn0
	MRMuL7Y8cvCypZw4RjgK+c41oEmM74eKs9c2PovGkG2U3BYJylGtV06XuEinsRBCncOAV9D3qlB6y
	22bkGaOZr9GEuayThoIUFI+rff5ejB2HJdyKU2QGiwCri5SEBHM2nJoKbaB4aJ5Jw56r9a+EBaD7M
	W/q0DKW2lYdHe9LgzlV/wn0J3QKGVHuhHtiO5ktvl0NZ612HUKIjN/QaqvfOp86dOwM5dUHXmaNoh
	CgcO5xARbBYVO7qs02CgyfTAITfaG5avwkryj7JbXWp9o7f+tHFSyNMrpFPOuS+iSDlM4s6hK8bKZ
	HPgj4USA==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVUld-0005Xv-Kx; Wed, 08 Jan 2025 13:02:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jonas@kwiboo.se,
	macromorgan@hotmail.com,
	dmt.yashin@gmail.com,
	liujianfeng1994@gmail.com,
	dsimic@manjaro.org,
	tim@feathertop.org,
	marcin.juszkiewicz@linaro.org,
	michael.riesch@wolfvision.net,
	cfsworks@gmail.com,
	cristian.ciocaltea@collabora.com,
	jing@jing.rocks,
	jbx6244@gmail.com,
	sebastian.reichel@collabora.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 0/2] rockchip: Add support for RK3582
Date: Wed,  8 Jan 2025 13:02:22 +0100
Message-ID: <173633768688.2772122.9017699112153279364.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241226024630.13702-1-naoki@radxa.com>
References: <20241226024630.13702-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 26 Dec 2024 02:46:28 +0000, FUKAUMI Naoki wrote:
> Rockchip RK3582 is a scaled down version of Rockchip RK3588(S).
> 
> - Dual Cortex-A76 and quad Cortex-A55 CPU
> - No GPU
> - 5TOPS NPU
> - H.264/H.265 video encoder up to 4K@60fps
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Radxa E52C
      commit: ddf021193879f54bb8fd9acdcf467b24229a553e
[2/2] arm64: dts: rockchip: Add Radxa E52C
      commit: 9be4171219b659a8f0fa0a7913af2c6ab20c714e

changed the rtl-net led-triggers to "netdev" for now,
to a value compatible with the binding.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

