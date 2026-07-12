Return-Path: <devicetree+bounces-325019-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0yjxHQVjU2rHaQMAu9opvQ
	(envelope-from <devicetree+bounces-325019-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 11:48:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 138AC7444F9
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 11:48:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=EpqHQChp;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325019-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325019-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3ACD33029740
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 09:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6B4C39EF1C;
	Sun, 12 Jul 2026 09:44:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A80439A7F2
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 09:44:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783849497; cv=none; b=Nk5/qjBZEuYEAhgS8YSCco/EHzeZMpI0cF9Ba+culWPh3/Rca08ObcxKRREpki7Z78/OANIuIj5HUic0fMji2L0qpHd9NKiL90NwmAIlu6C5tfLQA5lvlldEtfBiQrwizmaJIRdk+fuQ3FS62cSWeQjJlqJb2BNsVhuXK84dc1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783849497; c=relaxed/simple;
	bh=8/vnYgv/XYpka/uGiQL2oD+pLTdDywIPDenEMn+m6Q8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W6EO0GGoOY5EEZW8iMTn5VpxoqRxkYXNa87WdW3OmOOVrTXrjF0VeTkDlIdqSjoKyjmvcbPRg58WnN20j3Yz6018lbT1OfBROfiliIOB5xMztrFRnuIiK0rRzJwaphgfh5CyM8cg+rHWwu6VgiUxnpSmWDEH0n7eqQ7/x6lO7Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EpqHQChp; arc=none smtp.client-ip=209.85.216.49
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-38dcbade417so659739a91.1
        for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 02:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783849494; x=1784454294; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9FXdmldrkOS3aJiP/5Cuq221SYGa3bLdMeazyZQfaZI=;
        b=EpqHQChp3GhYttqM4c/XS6LlALPorfmstH6V+DZt3IW/gxfm+dOCVsZT4h/t7dYP1F
         jAUyBZE+AWjPFEn2G+jA3PpifqX/7ay1ZNaE1TQ2YYFmqTycs6awRNt7n9bM/o3qLzea
         27t21G0slwS2vKwfQOUK+2v4ywD7tjmgyU1qWf6N08FcGsnC7wuHlMEqh6Tqf1LAS9od
         +VF6x8eKVjsgL1kwtjAgBmjJ7ufchpGT9AF7RINnLU/9Q7OmuSoc5le0GF/SszJehoEE
         pii06DCy5d4f6QboDHfv96YCTcCRTaLApRIFKuvBoQbGDA+u5xBxGokXa0fc4MnnBVAN
         /4yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783849494; x=1784454294;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9FXdmldrkOS3aJiP/5Cuq221SYGa3bLdMeazyZQfaZI=;
        b=m80L7fn0udMOI3qAwTViWuh7KSz3WTsCTeVWF+smLS/lTjfbJGc2M6Ive8VgzR+8Ru
         XwW4FZFebN5L0vlRO84c7faYtelF9cF29I/PTj8k18ahrmkOMuK2jF1oSM4XQKnmsh4D
         mtVQPjX9HpOY0NFO/sl/sUQ44p/1pVdlADj19D1/hOHEUjDoft5//Q7bBxWejlOQbiMB
         a4SbdTIqz8Z9kHpH+eSkxMtoW38SwE3bN9IDkqnXwUzhD8UGM14Cd8eEg4CMTBJce5TM
         ihk/JxQtk+JiQJJB9evRyLwCT/T5K20lZH3aGlts3a1MjwlSx5I+AAZ22nzg4lrma1T+
         2nrw==
X-Forwarded-Encrypted: i=1; AHgh+RrNPDNiI2uls/HvwuH31cFzEzEAxPkElTl+3C7MVJFWur8a0wGEeBOi0dljY/tVsAyDsqeAO5Zja3A5@vger.kernel.org
X-Gm-Message-State: AOJu0Yytcs/j+Kx5IlL35mZUB5/d2ukgYSztyl5rJSadEzjvWUXRU7Y6
	UltMR5RAQOrGMe2prt5FZ4txm+dCyVNt5WT/cUFuOIenKN3ThJQ8OhGUpYCq1w==
X-Gm-Gg: AfdE7cmIp/rTPk7/xDvUrh+ksMb416ZVTB3IHglw7P9YK1zuF9YyhcdBK7q7IreRhOn
	p6NUqLL8ozhQVzLoXdh/lJsTdcBTsYH1vi3mNqz08nIcY/c4VGJduyxvHLUyc69PSx1BXSPXjsE
	1FAXJHjBlKqvvDtNEgT68V/fjOPT5XbP+YkXVc4ZCeE3zDjpFXC4CSZkkZepa1QOshey3/TuVwI
	4iFuLO+9ZCL7/b6FkKe0hW+hLh7I1AoWii91e0JyVIGd7BCdEy5NmJ8W14bp+7TMFNZQK/hCAp7
	UAhNRddAuCz6bSNFgN9rvmVt3Xz9OGLEmrDUuqDqiHyOdPh+4NRBmr9BIgQXeoEQovwzMXveqfi
	Qpuzkqnun4nR1iP8EtWcKF7vJJaKlIiiteP88kkigPkuBMbemswO0Kbf6nYnn1qA7Apl8stQC/P
	7lrjM1AA2SEoMSyxbF0CdWCigptu6QkYQVIitvlfvYy8RBvwlnZUlMaD1dKGUVR1AJOYWVlZ2iM
	aFXm2/CZDM6s/3PYZL5CjcrBn72i1vLFbywINObj79aOht45qJTCahpQhq+jrjaJn/ZmsfS2ho=
X-Received: by 2002:a17:90b:5243:b0:380:71eb:4014 with SMTP id 98e67ed59e1d1-38dc7747c1amr5458934a91.15.1783849494649;
        Sun, 12 Jul 2026 02:44:54 -0700 (PDT)
Received: from [10.160.6.73] ([119.17.57.186])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-313c50c70c9sm15268919eec.29.2026.07.12.02.44.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2026 02:44:54 -0700 (PDT)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Sun, 12 Jul 2026 19:43:29 +1000
Subject: [PATCH 10/12] arm64: dts: apple: t8103: jxxx: Add device-specific
 SMC hwmon sensors
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260712-smc-subdev-dt-v1-10-7763006d57c7@gmail.com>
References: <20260712-smc-subdev-dt-v1-0-7763006d57c7@gmail.com>
In-Reply-To: <20260712-smc-subdev-dt-v1-0-7763006d57c7@gmail.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 James Calligeros <jcalligeros99@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1411;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=8/vnYgv/XYpka/uGiQL2oD+pLTdDywIPDenEMn+m6Q8=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDFnBiU/VAvW6a1lWsh88sVBzTlO6dHl+kAjTBpeT61u1W
 GcYeLF0TGRhEONisBRTZNnQJOQx24jtZr9I5V6YOaxMIEOkRRoYgICFgS83Ma/USMdIz1TbUM/Q
 SMdYx4iBi1MAptpNj+GfwlRJ5+aEf68VP+0R4DrOrpvlee9UWpToiiAm1uVSwQt4GRk+Keb0iMq
 eFHWW1WhfU1I512Oz86GJEwpflGWH/uPSfsIPAA==
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,lists.infradead.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-325019-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jcalligeros99@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[jcalligeros99@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jcalligeros99@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 138AC7444F9

Add the device-specific hwmon sensors for select T8103-based devices

Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 arch/arm64/boot/dts/apple/t8103-j274.dts | 2 ++
 arch/arm64/boot/dts/apple/t8103-j293.dts | 3 +++
 arch/arm64/boot/dts/apple/t8103-j313.dts | 2 ++
 3 files changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t8103-j274.dts b/arch/arm64/boot/dts/apple/t8103-j274.dts
index 52965258200d..1212852251e0 100644
--- a/arch/arm64/boot/dts/apple/t8103-j274.dts
+++ b/arch/arm64/boot/dts/apple/t8103-j274.dts
@@ -74,3 +74,5 @@ &pcie0_dart_2 {
 &i2c2 {
 	status = "okay";
 };
+
+#include "hwmon-mini.dtsi"
diff --git a/arch/arm64/boot/dts/apple/t8103-j293.dts b/arch/arm64/boot/dts/apple/t8103-j293.dts
index 52f63ae7a58d..1d074b9e6018 100644
--- a/arch/arm64/boot/dts/apple/t8103-j293.dts
+++ b/arch/arm64/boot/dts/apple/t8103-j293.dts
@@ -132,3 +132,6 @@ dfr_panel_in: endpoint {
 &displaydfr_dart {
 	status = "okay";
 };
+
+#include "hwmon-laptop.dtsi"
+#include "hwmon-fan.dtsi"
diff --git a/arch/arm64/boot/dts/apple/t8103-j313.dts b/arch/arm64/boot/dts/apple/t8103-j313.dts
index 9eb2825d25dc..f8b2b1637b9d 100644
--- a/arch/arm64/boot/dts/apple/t8103-j313.dts
+++ b/arch/arm64/boot/dts/apple/t8103-j313.dts
@@ -54,3 +54,5 @@ &typec0 {
 &typec1 {
 	label = "USB-C Left-front";
 };
+
+#include "hwmon-laptop.dtsi"

-- 
2.55.0


