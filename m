Return-Path: <devicetree+bounces-325916-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gaD9FqvXVWrguAAAu9opvQ
	(envelope-from <devicetree+bounces-325916-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 08:31:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1DD7517DB
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 08:31:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=S5Gb4Z8e;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325916-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325916-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 779883029A7E
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 06:29:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 283283E0C4D;
	Tue, 14 Jul 2026 06:29:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3FAA3E0750
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 06:29:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784010542; cv=none; b=R2vCt3qWG/DewvIqj/ZxCdP/KnE4b6bz6C/pD3LF08lSnlP+UyMqLGrzZVQTef8fj6XCJQTx8to3vQq0Mzgq7IZl9HFiWVkZ5AzMgMHe57rRsAYtPVCu13Z1mKmj1AnnHcajGeYFP3jAVVs+2ddi7tG9tPfvp49ao8CylqtYMb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784010542; c=relaxed/simple;
	bh=IymUvUUOlIyUk7vYIWm4si7rSp3+FNzQ5/l7gdZ5Phw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ddRAY660zaVoCpUIxpafVXY7rDuS/N2ybPfwNTxo+MZPt7JCLeRK0Lh9jV0k6KzzB/fGDQOCgoHcJN0pK0PMYOZZV3CcC/h7l5WYPTUvKnQSY16YoOWQGo6IbrToBRqS2+Z9fELxg9BR9GzlVK5UCey4p3j9TM2mXzQlSbTQU9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S5Gb4Z8e; arc=none smtp.client-ip=209.85.214.180
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2cacf197759so8955315ad.2
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 23:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784010540; x=1784615340; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oaLKWhSSM63KZpE/iwvlyOdiJ0F5jeAA8qCl6yAcCfI=;
        b=S5Gb4Z8eQiAVzcwIOZdb1tUmhWc/Yv2aqcU5tkLxjHUUdyvt5CKv9OAxsmttLKTWGh
         eWRhAJ6WsQ98e08MJg/NYxzkh4Whqszrzlyda10Bx90hhdRXZBanBZV1fDgBMQ2T3zKs
         Lf3JHRaLSsuKcCXrF1p1HXJjEqrFE59Vo2ZkU9Hn+/+kBlL1bNccG9/0Frb9OV3XUBEm
         Q528qcB6yc2//SPFFxGKDemJtT3tRiYhRDEuFhkJclIQPno5t17R8EIBKyMFCYvRsuqr
         SKmxPx/xQeNJ87G/U11+MGEqeEjBSXOU+HJswVRwEZ2gXx+qmcSEfPeXJKWsXPLDsmlg
         coJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784010540; x=1784615340;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oaLKWhSSM63KZpE/iwvlyOdiJ0F5jeAA8qCl6yAcCfI=;
        b=fqSxIA49oRLL9nrvhQbTiTJa7iI9N03s/Y59kiDWcFi1wAxoJEA96rlrt5TWCaGRHV
         +TLInziT8dpPoA+1T+jEeHX1335vkuT0U3fC8ne+VDzWnrTTsflfWOV1uqWy7/9HekHX
         rjzlKO/2hHydXwJeEBqIIhZIAeCa+M5k116WMQA+LvkDSDZJL8hUnZhIAeAjYKa2sCA6
         vxr+f1Rzia9lxrbEbuTHOZ/MFdhqCwI5zU2bO33KPU6bPSMuyyH5fLVim5ytNPQKpaad
         KK/3lYZCMTf7XPiZ8zGki71rEBvSSmYitJhTxFSdUOpLa47GC2uAzj27q+dEZ3RNvt+j
         QvQQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp+wbRx6db3g3bIGORRuWzUax8Akez9cCl8jhgkFk8mgtzFJOCp2AvddhCQnmbGzO/OOQUZ1gjZBTe4@vger.kernel.org
X-Gm-Message-State: AOJu0YyLIMuiXFaCshALjJ1lzVsF7/UJEoPSiFvEKctijsWv4THnV8FZ
	338E7G+NQc5gC+xHBw6F63l8Yn5pWKQzEsgGiZ8W0pAWk+AxRh6mz2/igiNYpg==
X-Gm-Gg: AfdE7cmdioBP4xbZjw6e4ns+di7SND6BomuvWRc8xkaQAuGXpeXgsWcC+/gem8W4G5e
	vRjBF1Bh+YYJoA4GxXGHZXJzTkS1F8R/2qwDwoKWkazcqTOTcRsl8llld7NH/iyE4EQ3ELA3ON1
	RmT6mTL2sGz4a1jNfwGkxdLqP5q8J+mpFgOMPN+oIf02YvdPyULfY7MGQK0Ck7nUiZztHuBZ22H
	SKsdVJJ8t4XOmiOvH1ycJccEsv9eE2ZGtLYUeCmAeNQzS//bsy6J8FbbuWU46EUO9lae2f53Hr4
	Cfa4uSWTbksO9GyUlEC6fnswQOVFZG+6Mt5+fqElp0TiFxUQFIHaTBiU1qaJYk4+UXUpVxcffbr
	1yDVIs6Z8fmM9WP3PiM8P/r4c9tPfAtX2kbKPn+opPDSI7kmsHLpigdjAGhvcP5AYSDR3Gve2Oa
	fK8loCShCVOjFLF9WMq8KTP4jmeYGkn8qJgJ8SySInCIvCgL+BM2/YSu/BRxKd0tpCwszmBKkBF
	KVF3ivCER/Ik7gD7lVKRIfXVLvOHaQejAdUip42/hZX1fFHGt/mTOwWbItTwco4
X-Received: by 2002:a17:903:4b2d:b0:2c9:ceb9:865b with SMTP id d9443c01a7336-2ce9eab3aeemr104195135ad.21.1784010540252;
        Mon, 13 Jul 2026 23:29:00 -0700 (PDT)
Received: from [10.160.5.76] ([119.17.57.186])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc99cc5aasm110915985ad.0.2026.07.13.23.28.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 23:29:00 -0700 (PDT)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Tue, 14 Jul 2026 16:28:16 +1000
Subject: [PATCH v2 09/12] arm64: dts: apple: t602x: Add common SMC hwmon
 sensors
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260714-smc-subdev-dt-v2-9-13fa78873121@gmail.com>
References: <20260714-smc-subdev-dt-v2-0-13fa78873121@gmail.com>
In-Reply-To: <20260714-smc-subdev-dt-v2-0-13fa78873121@gmail.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 James Calligeros <jcalligeros99@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=966;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=IymUvUUOlIyUk7vYIWm4si7rSp3+FNzQ5/l7gdZ5Phw=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDFmh1xnvaiyaG9S2R1lJb4a1+uHH4be1GJ53PQ68NWXil
 /sZDFe6OyayMIhxMViKKbJsaBLymG3EdrNfpHIvzBxWJpAh0iINDEDAwsCXm5hXaqRjpGeqbahn
 aKRjrGPEwMUpAFN9zI+R4U2df62balzCnA0azfndWv4Tj9zITVqTUmwcKnM3SeTbE4b/ObItDyy
 Pb92Vn5ze9/74olf93pqh0o3ms7OOLdy5ov4IEwA=
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,lists.infradead.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-325916-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0E1DD7517DB

Add the SMC hwmon sensors common to all SoCs

Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 arch/arm64/boot/dts/apple/t6021.dtsi | 2 ++
 arch/arm64/boot/dts/apple/t6022.dtsi | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t6021.dtsi b/arch/arm64/boot/dts/apple/t6021.dtsi
index 62907ad6a546..5175797baf62 100644
--- a/arch/arm64/boot/dts/apple/t6021.dtsi
+++ b/arch/arm64/boot/dts/apple/t6021.dtsi
@@ -67,3 +67,5 @@ p-core-pmu-affinity {
 &gpu {
 	compatible = "apple,agx-g14c", "apple,agx-g14s";
 };
+
+#include "hwmon-common.dtsi"
diff --git a/arch/arm64/boot/dts/apple/t6022.dtsi b/arch/arm64/boot/dts/apple/t6022.dtsi
index e73bf2f7510a..7585fd609d34 100644
--- a/arch/arm64/boot/dts/apple/t6022.dtsi
+++ b/arch/arm64/boot/dts/apple/t6022.dtsi
@@ -347,3 +347,5 @@ &ps_gfx {
 &gpu {
 	compatible = "apple,agx-g14d", "apple,agx-g14s";
 };
+
+#include "hwmon-common.dtsi"

-- 
2.55.0


