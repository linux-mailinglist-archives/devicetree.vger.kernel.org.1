Return-Path: <devicetree+bounces-288157-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SG4DCuL+4Wna0QAAu9opvQ
	(envelope-from <devicetree+bounces-288157-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 11:35:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3C5419588
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 11:35:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C420330948DF
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 09:29:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3B0E3D525F;
	Fri, 17 Apr 2026 09:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="hdijkpvo"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A693D3D1C;
	Fri, 17 Apr 2026 09:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776417941; cv=none; b=jUxeRjqMFkFl3QhDDlqsErQr4nCB0vp5Lqd15ENMajS6X6EwGFTa7pSYjnCjAxklx+nmOqHwHfWiGK8CgZgGyk6pLSftriwx+ih23Gb3aYUts5C0rbztw2HWzBikr3lmYFiNfjCQDqwCjML1jrUXXp2asSGKZQKyreSWCAgum4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776417941; c=relaxed/simple;
	bh=P0yVaUEKh9DIeSDxsfwe+30iXPlavSU+50fdjCGXCHc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q+jVj1Oc/x7KGk/wJ+vhrFXQQgcM0O9YJfXGFGEFwuX8pohiU3eTh/T36LZY80fuCsan5nTMPivWExRKMIlxUuWgrq1Lkjz4gstuYDmsITlNNvLpON5ifqnTPUBlO6UsL1fxnBrRqWnT8F6LNhVlLxfhccQfEVXB3pbn6VmDyzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=hdijkpvo; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776417937;
	bh=P0yVaUEKh9DIeSDxsfwe+30iXPlavSU+50fdjCGXCHc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=hdijkpvom5pEjNwd5ivfrXSj37autCQM47tUNNPQ3ssA6QbJuJAkPfwUbnWZpmS+6
	 +nKyS711j5gcrtX1p5UguUqoqASRzsrwr+LWhGrpEMPuzpgGw2vsGms46Ch2nsBvyt
	 lNvWyxHAOVQ65l2wvnmip1qbqQuE+GB/A3sJHUCxdiiSERX3xVaRcgycjSGZpWvHI6
	 UxlD4IW9c5oVLEt8jtegrBKDGZ2pRxSXvCWSfvIUdW9ShZhjeaPr40SV2ascuvSh7p
	 qZSYCiyJk9/8Joq8drJnyQ8LiEaNCHv8DruGyjhzfk2Duh2nqbD09whOHDffUNzSr7
	 ILn5h5xIGYN7A==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 51EC517E127F;
	Fri, 17 Apr 2026 11:25:37 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Fri, 17 Apr 2026 12:25:10 +0300
Subject: [PATCH 36/40] arm64: dts: rockchip: Add frl-enable-gpios to
 rk3588s-orangepi-cm5-base
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260417-dts-rk-frl-enable-gpios-v1-36-a19c0dd8c9f6@collabora.com>
References: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
In-Reply-To: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.1
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-288157-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cristian.ciocaltea@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,collabora.com:dkim,collabora.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EB3C5419588
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The board exposes the GPIO4_B5 line to control the voltage bias on the
HDMI0 data lines.  It must be asserted when operating in HDMI 2.1 FRL
mode and deasserted for HDMI 1.4/2.0 TMDS mode.

Wire up the HDMI0 node to the GPIO line using the frl-enable-gpios
property to allow adjusting the bias when transitioning between TMDS and
FRL operating modes.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-cm5-base.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-cm5-base.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-cm5-base.dts
index 06120b2db690..a7b47670195c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-cm5-base.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-cm5-base.dts
@@ -147,6 +147,7 @@ &hdmi0 {
 	pinctrl-0 = <&hdmim0_tx0_cec &hdmim0_tx0_hpd
 		     &hdmim0_tx0_scl &hdmim0_tx0_sda
 		     &hdmi_frl_pin>;
+	frl-enable-gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
@@ -246,7 +247,7 @@ key1_pin: key1-pin {
 
 	hdmi {
 		hdmi_frl_pin: hdmi-frl-pin {
-			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up>;
+			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 

-- 
2.53.0


