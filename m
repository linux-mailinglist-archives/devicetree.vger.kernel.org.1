Return-Path: <devicetree+bounces-267099-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJWkBLKOmWkwVAMAu9opvQ
	(envelope-from <devicetree+bounces-267099-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 11:53:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFEF16CB95
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 11:53:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6FE263002921
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 10:53:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4F11344DA1;
	Sat, 21 Feb 2026 10:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=quora.org header.i=@quora.org header.b="Zs1PZR7S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EFBC34676D
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 10:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771671209; cv=none; b=UYSUkjjfK3spnjuDHwtvfQfd/j3s99sE6v77PZoQxT4ki4z8m0yMM1X/hr7e2FKTLMXQe6+ZL/feqF10cvmRc5Uef3HxXvP4qqjZjJdzfFcrJIZTekDRoevbSvGZCiVQL5p7E3iY7cOYHgs1KJWh9/7YgHCv4Hp+1mCntzckRyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771671209; c=relaxed/simple;
	bh=vd8xj7CMO3Dv+YwIu1Os2yHeUy24iPxFLciO/k2/hiY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LdeTTEOY6tI30CDdPwbxOa4+paSw+WSfFSiyuTgPEod/JnmhhCOHbrCgSmwVASujpJGEkxGD606KohPvR2HbKGFIVYpqFcUC4mtIfrbkZo0J9eLNcbRn8ffImzCRxryQSQqmuiIpmJKaoUuAQVH4iCazVYxvwrbaDFaRL7F/7jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=quora.org; spf=pass smtp.mailfrom=quora.org; dkim=pass (1024-bit key) header.d=quora.org header.i=@quora.org header.b=Zs1PZR7S; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=quora.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quora.org
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-35621aa8c7fso1572786a91.2
        for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 02:53:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quora.org; s=google; t=1771671203; x=1772276003; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=u2FH+ENmL44rmliSw5sDxFHS0xH8PJs3ALHZb419LAQ=;
        b=Zs1PZR7Sn0sMeJMovEUorOtSteJk/PG+1R7mWZOzggp1JlnGWazGwcSnucXg6ms1RY
         W1tRXIRWI1ycTSJDgngVusp5i5oSmCq2iSwxvdSyU3GOASVMNQ8CO44/CrKXFwYTj+IF
         JlZUyDi/bqK0yenbZCrgzHPONB3Yg9KhWMEbQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771671203; x=1772276003;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u2FH+ENmL44rmliSw5sDxFHS0xH8PJs3ALHZb419LAQ=;
        b=R7iUiLqSYWey2NVpXlecQKrFncMS6l3FV1p2lHquMD2nc1NSwyysxt/qQkCLgRHpda
         NeMfPrMRwDvNCfceofEkfP16aUL1Ds06usZ19P/iirHbqn9ma68InRkjASU6gYEbt7VD
         x/G5swdKhVzKVeEEjbvUXhprYBuhVKo1IJpT96Ot7shGfDwVCJ3udJqdZgSrMNU9FTKq
         h2Ob7aY9KpiB9mZGPjOVVchhaNBDJFb7I+hHcZh4pwF23NL+18578+yms+zHePOIvJb2
         oNkYLlYvwWb0w1b1qMwZL/4uzFH/NEcP3mP2MfFzSEAkzmcH30LnabM6D/xmehvV040g
         raYg==
X-Forwarded-Encrypted: i=1; AJvYcCU+WGQBF8eu8WegKg8eDxlVRzXlzezzvaQl5HHjA2H7l/ABIhw/nVWGjSrjteQouVxvHw0rP14vpqgd@vger.kernel.org
X-Gm-Message-State: AOJu0Yznw6Xs4Z24Z1QFwvjqarhLCQlGqtm2g08lpLcs3/fGL15K68Jt
	jbv0Wlb/s8CzpRjeU+tWeaNBfEWRR5MlyERMe5A1o7N55ZhoACXapLxfJI1Kj1V57vI=
X-Gm-Gg: AZuq6aIveaCv4fPW0CdeKbRHE6mOvrWPKqAWV5uiOio009/ADyf1j5rYcpp1Kmwyxsv
	067fhg2+clEhBwywSK3rXufhbZ5nANzy6C2zbC5d0wAPQmU4QOLov8a0puQgAvtgSUthnrRmWCa
	FY4Fk3fw/gt6diZIUq8EKQeUGiPilWKWbqltzid3S2n71HZH81BgdzrSDNEUdh8nygQytv2GWoi
	1IWZhXwntGqh0a+udGhucpvgvZ+MJAyEfa91BKjeaFhLA41F+mdReFjdWzdGGR/b4bmy+BhlQIL
	BO9RCpDpFRB1lmHMwmHI8Eae+nsj5v/24UXuqPW1ljFpdDhlfK2L3fLjMKt5Yf8or6uQA18mxjA
	SRljMiPErcmeH1VucIlYQGVPSFCxG05LgcEjUsaL+jMugPUBosKCt0Pt2QDhaWSEYbah7DEY9dE
	FABBIdqYTQJ6YsdotefCPa0OWlKJ5zElzjyLRYYyBsv/iEznYZvSmDD1aFkkhsCjx56n2sSP6SS
	7+yqfuOy06+uLKEh0InurgQwUbtGKww07uRSCTAUCotQg8Q9Ja7pNYQACLCzLVCcHEKTibwKU7U
	zEVyJHQb8LPReTP1c4w20ob6YNs1JNFP6FAuaTTs3Zb/Y6LDLscWqBbN4BHZcyu7Rtpi
X-Received: by 2002:a17:90a:da90:b0:353:49f2:1e7a with SMTP id 98e67ed59e1d1-358ae8b3b46mr2945299a91.17.1771671203594;
        Sat, 21 Feb 2026 02:53:23 -0800 (PST)
Received: from aegis ([138.84.66.135])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70b72603dfsm1924094a12.28.2026.02.21.02.53.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Feb 2026 02:53:23 -0800 (PST)
From: Daniel J Blueman <daniel@quora.org>
To: Konrad Dybcio <konradybcio@kernel.org>,
	Maulik Shah <maulik.shah@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	stable@kernel.org,
	Daniel J Blueman <daniel@quora.org>
Subject: [PATCH] arm64: dts: qcom: hamoa/x1: Fix TODO in system power domain node
Date: Sat, 21 Feb 2026 18:51:56 +0800
Message-ID: <20260221105245.19328-1-daniel@quora.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[quora.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267099-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	DMARC_NA(0.00)[quora.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[daniel@quora.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[quora.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3AFEF16CB95
X-Rspamd-Action: no action

At present, designs based on the Qualcomm X1 Hamoa reference platform have an always-on system power domain since the OF node values aren't implement.

Fix this by using the CPU C4, cluster CL5 and system DRIPS parameters from the ACPI DSDT Windows uses, together with the Low Power Idle _LPI minimum residency of 9000us and wake latency of 5000us as exit latency. Finally, assume the entry latency is the difference of these two values.

Tested on a Lenovo Yoga Slim 7x with Qualcomm X1E-80-100.

Fixes: f33767e3cfa5 ("arm64: dts: qcom: x1e80100: Add missing system-wide PSCI power domain")
Signed-off-by: Daniel J Blueman <daniel@quora.org>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index a17900eacb20..64338769bc85 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -290,6 +290,14 @@ cluster_cl5: cluster-sleep-1 {
 				exit-latency-us = <4000>;
 				min-residency-us = <7000>;
 			};
+
+			domain_ss3: domain-sleep-0 {
+				compatible = "domain-idle-state";
+				arm,psci-suspend-param = <0x0200c354>;
+				entry-latency-us = <4000>;
+				exit-latency-us = <5000>;
+				min-residency-us = <9000>;
+			};
 		};
 	};
 
@@ -448,7 +456,7 @@ cluster_pd2: power-domain-cpu-cluster2 {
 
 		system_pd: power-domain-system {
 			#power-domain-cells = <0>;
-			/* TODO: system-wide idle states */
+			domain-idle-states = <&domain_ss3>;
 		};
 	};
 
-- 
2.51.0


