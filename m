Return-Path: <devicetree+bounces-289103-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOI3KLpl52nx7gEAu9opvQ
	(envelope-from <devicetree+bounces-289103-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 13:55:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1038543A583
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 13:55:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5B1C4306B1AC
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 11:50:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A3933B6C15;
	Tue, 21 Apr 2026 11:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YouC8vXn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04CB3A8732;
	Tue, 21 Apr 2026 11:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776772222; cv=none; b=uv2H7cLu5dUy1VDtN5mTMU6+XlpH02Bupi54n6H6E3+fwqcwglInQd8Zoe3GgNOjapTnfnPJwxm7ec8uPQITuYufJ01Vq9VLp4x+F2BpyY6gOYh2YXD2nD7hhdFMI50mnEuiYj1GN0cww8U03YCItXHSnod+oC9Nl0vxtTHD+QY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776772222; c=relaxed/simple;
	bh=XddkVT31/XC/ioaRn+/smsT9FYSpgPK0znWOqQA+3iY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pNJmJAwyM49u0zkn0UJW9I8nKJ7R+6G8oPEW/hAnZGma67VtxBFpgixHVkZsetddPNBT1INA5NvCfHTQN2OEPMtWQGGszIDxW38vEfoB/N6hf8dmaJesEstAqOiErs4qUhmfQkGhrIC31EzAX9yhQ0QxBNBGIPSTVQCN43JF+P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YouC8vXn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 871F4C2BCC4;
	Tue, 21 Apr 2026 11:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776772222;
	bh=XddkVT31/XC/ioaRn+/smsT9FYSpgPK0znWOqQA+3iY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=YouC8vXnbDTY+xLHUTOMD8zwUrLiitR7oeYhpXmrbm1HF2qQoy4s9TjbjF3e1RraS
	 sItfNGX4O3QGO4/BG6kVUXF5T/nlNIZvNqlswKkcu/7FH52rA2ehgXuRdDHYbCNDBf
	 VyGGZDVYeAynZvIQvadaAb9Yy0DAP8GgTHijZx1lN3+E2sOPxLTTL/7dIZkpnsD7bP
	 QZC1qyn/DVdAMXed4KUyZXChauY0J6Ywpb3HwxQwztcFxmXZiQimwtc2jQiilpQFZr
	 dgpr4hfWlQ0/2AySIxfCsePMral4ZXGsX74YF+WsbybUf0fetq2kmXXrs93eUEJ5Pd
	 /Yn+9O7Fc+W9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E5B2F8FA66;
	Tue, 21 Apr 2026 11:50:22 +0000 (UTC)
From: Ronald Claveau via B4 Relay <devnull+linux-kernel-dev.aliel.fr@kernel.org>
Date: Tue, 21 Apr 2026 13:49:25 +0200
Subject: [PATCH v4 8/8] arm64: dts: amlogic: t7: khadas-vim4: Add i2c MCU
 fan node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260421-add-mcu-fan-khadas-vim4-v4-8-447114a28f2d@aliel.fr>
References: <20260421-add-mcu-fan-khadas-vim4-v4-0-447114a28f2d@aliel.fr>
In-Reply-To: <20260421-add-mcu-fan-khadas-vim4-v4-0-447114a28f2d@aliel.fr>
To: Neil Armstrong <neil.armstrong@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Beniamino Galvani <b.galvani@gmail.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org, 
 Ronald Claveau <linux-kernel-dev@aliel.fr>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=969;
 i=linux-kernel-dev@aliel.fr; h=from:subject:message-id;
 bh=tWFcpje6b/UPuUaynpp5o+HzSsytJcZL6uVNyAgG8qQ=;
 b=owGbwMvMwCWm1SvKXP3cUInxtFoSQ+bzlGrOqQsFRScd93G08Hmn2V+TM9X8gF2q1/WNHh/U/
 zhYWO/sKGVhEONikBVTZOmfa3ni3eWjZ77uUU+BmcPKBDKEgYtTACbiO43hr0jjMc8dC2ud/ldu
 OMr4Oa160uf0hDs74paIntq3WMKq6yEjwyQNsfC1PP23Fr0RNhNfqLwz57blNbsfzfl9MY/Xycq
 tZgcA
X-Developer-Key: i=linux-kernel-dev@aliel.fr; a=openpgp;
 fpr=DFD863F61375BF917F0012173953305EF1D0EC3E
X-Endpoint-Received: by B4 Relay for linux-kernel-dev@aliel.fr/default with
 auth_id=744
X-Original-From: Ronald Claveau <linux-kernel-dev@aliel.fr>
Reply-To: linux-kernel-dev@aliel.fr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-289103-lists,devicetree=lfdr.de,linux-kernel-dev.aliel.fr];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,baylibre.com,googlemail.com,gmail.com,intel.com,arm.com];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[linux-kernel-dev@aliel.fr];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.18:email,aliel.fr:email,aliel.fr:replyto,aliel.fr:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1038543A583
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ronald Claveau <linux-kernel-dev@aliel.fr>

Enable and configure i2c MCU node to get fan working on Khadas VIM4.

Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
---
 .../boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts      | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts b/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
index 69d6118ba57e7..5d7f5390f3a66 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
+++ b/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
@@ -157,6 +157,19 @@ wifi32k: wifi32k {
 	};
 };
 
+&i2c_m_ao_a {
+	status = "okay";
+	pinctrl-0 = <&i2c0_ao_d_pins>;
+	pinctrl-names = "default";
+
+	khadas_mcu: system-controller@18 {
+		compatible = "khadas,vim4-mcu";
+		reg = <0x18>;
+		fan-supply = <&vcc5v>;
+		#cooling-cells = <2>;
+	};
+};
+
 &pwm_ab {
 	status = "okay";
 	pinctrl-0 = <&pwm_a_pins>;

-- 
2.49.0



