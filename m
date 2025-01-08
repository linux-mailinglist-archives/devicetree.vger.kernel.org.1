Return-Path: <devicetree+bounces-136639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E6FA05B8D
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 13:26:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5411F7A2CA3
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:26:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB55E1F9F5A;
	Wed,  8 Jan 2025 12:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="VLb8w03r"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0761FC7CD;
	Wed,  8 Jan 2025 12:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736339135; cv=none; b=MfVg4h60GDLOsgCWwTWGQwe6Enx9JAJREeLdlw5BsJnW6kBRwoQovmSSxYVcQLdRELNEHlxfJITEJz4/rvaDDddYyer/JTjEjxei8Iqo/60LiNg2GM2mrnOOtUy8DGrEThD6SFsZfr08wo4dTp4/q2C6Umyuu+LLZdWm6TRq4Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736339135; c=relaxed/simple;
	bh=Q02VetA9Yf8JqvmKXhVUvBVCCU9PBiciSYH9hX7J1WM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pzZF3UOr/PIdYl1U+w9C/ZOUl8bwFW2NMEw/UQUsdP2eEXKK14aUIr9azWPsP2uEQ+ppMY/e+XHgODoMbSDzG7hZ7lBVnlnjp5zWy0jeILGY1DkafMOJ6zUp+zZeujhg7WiYwCfk+Gw1jaKGLblJrHRumbNt9rH1JdbXVvhCbLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=VLb8w03r; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=SEKuUp6eK4AQc3wwaf4maYj/ZOeK94EgW3nX9qE7bw0=; b=VLb8w03rUpvuGFHfO6zrkXhWWk
	RN6z6K7Tc5qV+AH0xvLxLsGDWieWszSbVa5zw3eBMrlLB0cwYtrnX9vbeiGmslFn9kJy3EhyPR3qM
	PQ97EFsJWNGDctB+8Ww7Nqx+SBcd+GAHeTvqeHRRWtKcD5DiVB1BPeoNJUf84OYOGVOhK60GsGell
	JcJbtGl945ZlEfs4xNfK0L6tgRm5A+/5SOEhO7bkj30lR1rxcsCQrAlWaYRs1kVRQHSSmfK3mAyxR
	vryR8Nk4tcCaXxWTxnT2nbANk74MCuisgGqtPITqKF+42FGgF4KRMoAgmfvsfz9ZSB96GMn+ZpsBC
	eCv5UOYA==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVV7p-0005gn-53; Wed, 08 Jan 2025 13:25:29 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Rebmann <jre@pengutronix.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	David Jander <david@protonic.nl>
Subject: Re: [PATCH 0/2] Add FRAM to Protonic MECSBC device-tree
Date: Wed,  8 Jan 2025 13:25:16 +0100
Message-ID: <173633908211.2779821.7196542630655064232.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241219-mb85rs128ty-mecsbc-v1-0-77a0e851ef19@pengutronix.de>
References: <20241219-mb85rs128ty-mecsbc-v1-0-77a0e851ef19@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 19 Dec 2024 13:34:55 +0100, Jonas Rebmann wrote:
> The MECSBC single board computer is equipped with a Fujitsu MB85RS128TY
> FRAM. This series adapts the devicetree accordingly.
> 
> Tested on current mtd/next which contains the required driver and
> bindings update:
> - 5b68d4d2db29 ("dt-bindings: mtd: mchp48l640 add mb85rs128ty compatible")
> - 02ba194feacb ("mtd: mchp48l640: add support for Fujitsu MB85RS128TY FRAM")
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: MECSBC: Remove i2c2 node
      commit: 60f7293a3da9eb1d8127cb8e331ddfc4ed605ff8
[2/2] arm64: dts: rockchip: MECSBC: Add FRAM MB85RS128TY
      commit: bd266303f7a44bd033f9580ce4ef161684aaf468

Moved the new &spi node to its correct alphabetical position

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

