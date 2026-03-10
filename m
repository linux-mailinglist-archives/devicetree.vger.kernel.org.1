Return-Path: <devicetree+bounces-273565-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAv4E2gssGlHgwIAu9opvQ
	(envelope-from <devicetree+bounces-273565-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:36:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1190252200
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:36:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5345E31B59E3
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:49:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC4BB322B8A;
	Tue, 10 Mar 2026 13:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iKmOhnM4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4D6240DFA4
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773150554; cv=none; b=TDMjAfnCUV4XQt7KrDtRJ5oj1JIAKFdFY/8TsOJdnyiBHBEfLjVRCBKCYtOTUCZR4hDd7BYP6bDiQeY5EhatwYOctSu9C33mlgjTTElqq0lVYQWKef9JaJEgIvympT/zK7a8pQ6YO+tCvgNc5kpOklOwb1EciM+HpnxD01hoHyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773150554; c=relaxed/simple;
	bh=C7YfvVNgzImn9OuTsIPLA1wdmiamPpgPteHOtrCCUmE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=n5bZuCDeCX8zhTCew3yJQRspld7bikuY+ze5h7TOv2cdTDtqyhvIbIu1AbI3sG/cacdzpCte3AZSpaC4+LiRajOpE2EiuGPVAOeD5cEoG+CeTTjzTq/lwp4Isqdx7WnPvwjJOQ+jrz0Cy4bo0CwAuVF0G5yUEFKmrc3K7ER8DyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iKmOhnM4; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-7d741f61ee5so2108344a34.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773150552; x=1773755352; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Jh+5BGUQpxoxlv8hrHifglehZ/PN15+tKGmZZiN1HKY=;
        b=iKmOhnM4vDmgWFs4H9XXuCphOMN0ae2YP2MdM4H6baSewt+1fUwokrT4i47PPkA7Uv
         mtM9reHMZ0nP1oSnLFM+/z9RLR8Y0mQF8ZstgyxY7Z6yXBDsFSTFiVWXhLSHuD/fCwlD
         SdCgj31HOwkIUijdcQV8CCEXCPXzSikDequKQ097aofMvAr61ZcPKbXW/g/uYV+ngp/a
         ftlkZtRCeYywsAH1WtGDQbePNOtJh4jRJgjtMujaz6mQmM3Mf3nbkcWT353HPCZm7iWX
         bHYHflyOnZYFblXFNtPjQAKr6ObkFgSIF2t8HgQUtoeBzw1G1nG//sz8+WB18KmzH9mQ
         +fzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773150552; x=1773755352;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jh+5BGUQpxoxlv8hrHifglehZ/PN15+tKGmZZiN1HKY=;
        b=n2OeKDS+Eg80hjSD0dmtArgCd5W5A6Iy399qT+6J/I/F3Jy3lr59sgdVmd9GrBq5Hb
         AAON//C6IVH06dI/Nmi4g7kgh6vnZqfCusZlNblXXpydrYPTOWoa6EgblfN0+W6kptX2
         789oLVnOaE7J4+PGRAUAUFrffzRaXVKcz6uYokeqRetaQZHJ5vX3I5/gA59NTtO1CGmT
         x6lo0cNjw9fQdFLnOqlcxpZaVddT1EczsYaWNDL09oLBp9VIMqo8PVGPdmy15qgYWrpd
         LAqxDmNUZi2/EOj/2lBXXZhGBeGbLwZTM/nsTiQBX2XJiAtRnn3PW2VSHeBu/4TFHMq/
         ieOw==
X-Gm-Message-State: AOJu0Yw9XGUCbfVAN/6KTa6CnNZFhuq8JyzLF4QEpHXF9gL2Hb7CIh8H
	DTW+t/OyNQeNoGMcXOLbM23MUsKZ3nhI6HHh/NGusAx2FUhlh0G6mPN0702sCA==
X-Gm-Gg: ATEYQzwD+3XgOzgyjTypWTUvWpEenKvOT2E+hkrV+W0drjXVMrKpOnE6dP5t4wq85Vf
	0W5wB2W3CeKvxOfMv7KGnQzNPSuxSTM+wYHSFgWXSvvboHzVV5i5V0J2Wg9GSiSh7OGd5/4MCW0
	RxqReXnwzspIiKQikNs9mhmnfnXZF5Ivbr3bMgDSgEwOrZWIhp7JSY7LrdRfw7y5Z5ZpTaQv2qi
	9bKtyuuuD/TKOwMeb52XHaYD9yJ576g1DU0kD/kEFMRBKfLOXBI5Lw+CPt8/oD4l9fBUY8MwXNE
	qAp6SYMjETIe8lAZvG2IKHvQiUcdEwt150nqgBbl38nulw+aoh+8R6eGT0EH+xkxRnhZOUU8/uS
	WJd5SJDq00CKS9+jJR/XhsuAg1dPjBs4mMM6zylY0dHVRkvfvphbRyip2PD1Z9RqotEzibvLUfX
	pfEoo5EToixB2XenxmZJp4
X-Received: by 2002:a05:6830:620f:b0:7d1:9516:6858 with SMTP id 46e09a7af769-7d72702d2a3mr10048666a34.24.1773150552233;
        Tue, 10 Mar 2026 06:49:12 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d75039b811sm3357767a34.16.2026.03.10.06.49.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:49:11 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Correct Fan Supply for Gameforce Ace
Date: Tue, 10 Mar 2026 08:46:48 -0500
Message-ID: <20260310134648.550006-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: A1190252200
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,sntech.de,kernel.org,hotmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273565-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: Chris Morgan <macromorgan@hotmail.com>

Correct the regulator providing power to the PWM controlled fan.
Without this fix the fan only runs when the audio path is playing
audio (because the speaker amplifier and PWM fan share the same
regulator).

Fixes: 4e946c447a04 ("arm64: dts: rockchip: Add GameForce Ace")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
index b69d7aa0b2f1..89618394c0bf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -318,7 +318,7 @@ pwm_fan: pwm-fan {
 		compatible = "pwm-fan";
 		#cooling-cells = <2>;
 		cooling-levels = <0 120 150 180 210 240 255>;
-		fan-supply = <&vcc5v0_sys>;
+		fan-supply = <&vcc5v0_spk>;
 		interrupt-parent = <&gpio4>;
 		interrupts = <RK_PB2 IRQ_TYPE_EDGE_RISING>;
 		pulses-per-revolution = <4>;
-- 
2.43.0


