Return-Path: <devicetree+bounces-259183-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEYHL/38dGk7/wAAu9opvQ
	(envelope-from <devicetree+bounces-259183-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 18:10:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B38AC7E37A
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 18:10:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CD015300463F
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 17:10:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B55E224DD1F;
	Sat, 24 Jan 2026 17:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zdem/cg/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C405C22D9F7
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 17:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769274613; cv=none; b=lMxUCwE/hKDzpbKoIwBxD+TdrG87VzFFI762yaaN7L6L2Z41cponekearLg7XTCPyfg3sTg8nlawzhIy1Ht90RUZ8Qs+kjl8O/SbnrxVK0awD8hWz8cYcMxgANbh4vgZh2bRfERmezvc5/7nFiCgEZhgSdqQ5i6/4zhLOJDS+Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769274613; c=relaxed/simple;
	bh=oiXhK2A6qAjCeSrQjh8L1wUGnhbIoDCcnIty1f+TnrI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vz/PfrnmN+3aqFSpxnWa4V3IKgn10Ks1s25xw0y1xQXgbKaP2E9HzTxP2iLpr1XlgF4lktOo7k49Xtfff5HJP6MKZ0ihyTbqUcdsWLN0lESWTQORkcNoWqVzSLScQlanmzgQnOL44KJNhJTyXdyI4QO0y//fVC7FypozoxSy6Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zdem/cg/; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b884a84e655so406531966b.0
        for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 09:10:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769274609; x=1769879409; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n4g1bUiTF8Zalft/CuDyD9r9NogcjeaI005neN/bl1w=;
        b=Zdem/cg//zU0udbZVMoQs6TQC73Edrgm4zyyNWjfns+5Zp2x++qC6+RPJ9NwJJlbMt
         gJfqtcwhSyxN0VQyHYu7ZSXV/SdhxNjCT5wDtLt2qQwK7rWa6RXb4zui6hsZcN3fXIIt
         LwecRBIYwIPWMZhHEf1d4LSSEgFqufNzMWBrjRu9TBRmtJdsq/Ezkc1PMG9fEQhipYKD
         Huc0fxTLQA/Upwvk/IG3D9mI0XJ5tqPTzlYZGV4hgFKa7nW7RPZGkYanSDD3Hfb97TZ+
         cwaj+17BsWjX6lfuMw7aJKjgOmxknK96DuCpD4gBN1fTWX20AtsfOIOm/bbwrpM+Rlod
         NxnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769274609; x=1769879409;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=n4g1bUiTF8Zalft/CuDyD9r9NogcjeaI005neN/bl1w=;
        b=FqDLDdA+Lpz1WgqtZQiLRv3ywKFQFhiLCbwDupqlV5pC6cDr93F4OWyvbduFybsqTm
         eMPG8XlJ7utE3r3+Zdj5L24SwQywU812PcpTpI6q/Lc3MCEzHpFGziLsRGk8FVVpL/41
         tuU3n5O9vYLsajDBZjA+QqpA63ylgXzaZFlcN9tk8K52tWKSDcnqLI7BkVLjN+xs78cc
         qlJik64KvM0KkyozWp17fCtg8xdtDXQ+Zoi9phnZYiLAl/JDxqh8o1BtSZmGzsobKTut
         C5H5eU2RCb83TS87pU3f173wX8c5J934HOuNhS6A02JjlulZAN16omq27axjwAL5+yPG
         aBCw==
X-Forwarded-Encrypted: i=1; AJvYcCVImqVrkRQ3g0MXgwCXdh0OjkZOL+5EtHyCgj7OCU20c7LLmSslrcMb7syTl4aifMAM+BUtqjLpNWwl@vger.kernel.org
X-Gm-Message-State: AOJu0YzLmqS3+piDbexLcOXJi3Ni2Lkv5mZnI1L57FCO5NuZXw3wvSC2
	3LTMKLiPzGxXnzzvxSWjPJFkRgrLXKWeJd97putxokROryX+7kLzOeYX
X-Gm-Gg: AZuq6aIDoIfbJ8HbtPu4QXmFnAUbf8v8d0Wbi4uHi7l86oVA6zqkyHkOYra9AsNb5g+
	+ekGi/xgDuZX5SsSOn5lcSG4rvLzcIK6BUHEYI4CdVD5t6lLh1F9Sn5cR2e5NhfRakQ8vYT3zyu
	ypXi3YvnFiKF54PMmDtJOpHVfK4tre680mUOdFkx0MBccgtNXzqctGPNWFbx2ED+fWonWNbIKuL
	2qDU+g92/oJzE2d1ZNWcQyLwS7RRCShiCoQJWKFoO7fZTs2HxRrAhKYmOk/SqNG7nNvlDGDr5IF
	bf7rgzWInsmdYtqJ+0u7D4+e4fKNsIv3Dj+vFt1FPg7IuWxR4qsg5nMjWJeoOayMJkHsssB9ZDH
	NW0j4wQpBaEmtQJ9k4vcsWVt3C213YZ71SSnln84r3eSxpicF63AW1SA7xzMD98p1YKs5BlSgz4
	42BHnFl8t/gn8Es/qyAQ3rZgASCrXnG0H6AMKKR8Gjo4fKYYI9OoIk+e+uJ3RGHSeP+e+GrUS1k
	lE2RBLWXrYqvRV2icW8fob996hN47LStnWkEXDdi52QEw==
X-Received: by 2002:a17:907:d91:b0:b86:f0b4:4974 with SMTP id a640c23a62f3a-b885ace961cmr524530866b.26.1769274608550;
        Sat, 24 Jan 2026 09:10:08 -0800 (PST)
Received: from tablet.my.domain (2a01-114f-470e-6200-4c6a-9244-66ab-7c8e.ea.ipv6.supernova.orange.pl. [2a01:114f:470e:6200:4c6a:9244:66ab:7c8e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885b3dac6esm302680866b.7.2026.01.24.09.10.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Jan 2026 09:10:08 -0800 (PST)
From: Artur Weber <aweber.kernel@gmail.com>
Date: Sat, 24 Jan 2026 18:10:02 +0100
Subject: [PATCH RESEND v7 2/7] dt-bindings: clock: brcm,kona-ccu: Drop
 CLOCK_COUNT defines from DT headers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260124-kona-bus-clock-v7-2-9dffe1bdc08d@gmail.com>
References: <20260124-kona-bus-clock-v7-0-9dffe1bdc08d@gmail.com>
In-Reply-To: <20260124-kona-bus-clock-v7-0-9dffe1bdc08d@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Alex Elder <elder@kernel.org>, 
 Stanislav Jakubek <stano.jakubek@gmail.com>, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, linux-arm-kernel@lists.infradead.org, 
 phone-devel@vger.kernel.org, Artur Weber <aweber.kernel@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2725;
 i=aweber.kernel@gmail.com; h=from:subject:message-id;
 bh=oiXhK2A6qAjCeSrQjh8L1wUGnhbIoDCcnIty1f+TnrI=;
 b=owEBbQKS/ZANAwAKAbO7+KEToFFoAcsmYgBpdPzr84AtMz8e9EIpfABMWvoSk4kv0vtrP8/IL
 hSvXEKVnzqJAjMEAAEKAB0WIQTmYwAOrB3szWrSiQ2zu/ihE6BRaAUCaXT86wAKCRCzu/ihE6BR
 aMKEEACRNvmrJFuQDxrjGretSv/T2u+KJjPG6EBnz0sOxMNotQ2zoZFowKVbvvWbOzYW3ULYzjb
 1rML6Y8keRWjGapqEu9z42FFjJTbjM3Iu5gvTYraySovyj8GHrc3mHYbpCe3YiNkJNYaBE2G4mG
 9VHUniRuqF4lH7cTsh2BwzyOx9Or243smDt97LqbOA09fmGhDATS90TvVfQyLqd1nVhynho+URe
 D3kpMqEFVZWLNbZtTwRdJOEg7bTAGtM5YbY88EeNZHx5faZ9YEWrDGNlD+gMKbYvLnQmUcENox9
 CYSqQKH0/Vg4pVEw3gL0YtsQaioTVg0bXaOQPBRjbArymJM63vMLs9+IWZVbixCqEWjCq5WuVYV
 FGyfJGWxzyBpA9PxWSfeqiv3IsKFSFOosQYoeuv/qXTI7Ctw+EdlbPIzgByH5TW2uJE3SXAHlE3
 WisKISiz0BkCdmVvApNbKHvUrKapJE4b+A/yjVp6EMFvGroI+ZwEC4vpWWvkLsLNGTK/bxFrQt2
 s0i3BmrQiKHqRIsjkiel6CSuw7FGOdt3WRw69kZg/3yiAklm7lO2Q2/mspsGo1WbdYp8d8EcyXf
 vO0SbxHYaOx5Ocylsd4WtxwRoh6Ps4Zq3YJQStn3VEEbnyTjes6nm5NJoljXJcu7wW4nXEhfyQD
 BVjWHyUOVW+jx8w==
X-Developer-Key: i=aweber.kernel@gmail.com; a=openpgp;
 fpr=E663000EAC1DECCD6AD2890DB3BBF8A113A05168
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259183-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,lists.sr.ht,lists.infradead.org,linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aweberkernel@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,broadcom.com:email,linaro.org:email]
X-Rspamd-Queue-Id: B38AC7E37A
X-Rspamd-Action: no action

The CLOCK_COUNT defines are not used by device trees, only by the clock
driver. Keeping them in the DT binding header is frowned upon.

Since they're being moved to the clock driver directly, drop these defines
from the dt-bindings header and only keep clock IDs.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
Changes in v3:
- Add this commit
---
 include/dt-bindings/clock/bcm21664.h | 4 ----
 include/dt-bindings/clock/bcm281xx.h | 5 -----
 2 files changed, 9 deletions(-)

diff --git a/include/dt-bindings/clock/bcm21664.h b/include/dt-bindings/clock/bcm21664.h
index 7c7492742f3d..7a380a51848c 100644
--- a/include/dt-bindings/clock/bcm21664.h
+++ b/include/dt-bindings/clock/bcm21664.h
@@ -21,12 +21,10 @@
 /* root CCU clock ids */
 
 #define BCM21664_ROOT_CCU_FRAC_1M		0
-#define BCM21664_ROOT_CCU_CLOCK_COUNT		1
 
 /* aon CCU clock ids */
 
 #define BCM21664_AON_CCU_HUB_TIMER		0
-#define BCM21664_AON_CCU_CLOCK_COUNT		1
 
 /* master CCU clock ids */
 
@@ -38,7 +36,6 @@
 #define BCM21664_MASTER_CCU_SDIO2_SLEEP		5
 #define BCM21664_MASTER_CCU_SDIO3_SLEEP		6
 #define BCM21664_MASTER_CCU_SDIO4_SLEEP		7
-#define BCM21664_MASTER_CCU_CLOCK_COUNT		8
 
 /* slave CCU clock ids */
 
@@ -49,6 +46,5 @@
 #define BCM21664_SLAVE_CCU_BSC2			4
 #define BCM21664_SLAVE_CCU_BSC3			5
 #define BCM21664_SLAVE_CCU_BSC4			6
-#define BCM21664_SLAVE_CCU_CLOCK_COUNT		7
 
 #endif /* _CLOCK_BCM21664_H */
diff --git a/include/dt-bindings/clock/bcm281xx.h b/include/dt-bindings/clock/bcm281xx.h
index d74ca42112e7..0c7a7e10cb42 100644
--- a/include/dt-bindings/clock/bcm281xx.h
+++ b/include/dt-bindings/clock/bcm281xx.h
@@ -27,19 +27,16 @@
 /* root CCU clock ids */
 
 #define BCM281XX_ROOT_CCU_FRAC_1M		0
-#define BCM281XX_ROOT_CCU_CLOCK_COUNT		1
 
 /* aon CCU clock ids */
 
 #define BCM281XX_AON_CCU_HUB_TIMER		0
 #define BCM281XX_AON_CCU_PMU_BSC		1
 #define BCM281XX_AON_CCU_PMU_BSC_VAR		2
-#define BCM281XX_AON_CCU_CLOCK_COUNT		3
 
 /* hub CCU clock ids */
 
 #define BCM281XX_HUB_CCU_TMON_1M		0
-#define BCM281XX_HUB_CCU_CLOCK_COUNT		1
 
 /* master CCU clock ids */
 
@@ -50,7 +47,6 @@
 #define BCM281XX_MASTER_CCU_USB_IC		4
 #define BCM281XX_MASTER_CCU_HSIC2_48M		5
 #define BCM281XX_MASTER_CCU_HSIC2_12M		6
-#define BCM281XX_MASTER_CCU_CLOCK_COUNT		7
 
 /* slave CCU clock ids */
 
@@ -64,6 +60,5 @@
 #define BCM281XX_SLAVE_CCU_BSC2			7
 #define BCM281XX_SLAVE_CCU_BSC3			8
 #define BCM281XX_SLAVE_CCU_PWM			9
-#define BCM281XX_SLAVE_CCU_CLOCK_COUNT		10
 
 #endif /* _CLOCK_BCM281XX_H */

-- 
2.52.0


