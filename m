Return-Path: <devicetree+bounces-274292-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eC2LKQm3sWl0EwAAu9opvQ
	(envelope-from <devicetree+bounces-274292-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:40:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2717B268B93
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:40:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7A0103014623
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 18:40:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34D13363093;
	Wed, 11 Mar 2026 18:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h9RkZO3v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A10423E9F76
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 18:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773254399; cv=none; b=DMVCJy9E17WKAOlQvKDLhMaN5wzFhZ4BHR43XqvjXox8YI/eBLdmdek1+/B8F0B8/A+z98qkl4wSStgzSWJL4F4lG76hZVf+R9W9+EAbWW5+lbgE15EMk3TavTBbrU/HpXeqSt1FbTgR5L5DiakEkKTQyQg+d0Y4d0qcnBiehCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773254399; c=relaxed/simple;
	bh=lrGDoJIvEkpE2zwVZAdPXIJFuUAnlEGbHR8d+YDnzFg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JfhTUmu7RxZ6+5UqKDPVr4vVob9RBH/XN7J5VCdDO8UAxxp6McCUx3c0Azt57LXDWGGt+XfEAwhqMNOf2pbvtwea5e4/ZinYHHbw5d4o/sRSt34/SpEqJnaoWrUZvkfTlfPNr05RJJfjinZQI9T+Est0ak4dZWzrnrgHgVqOhTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h9RkZO3v; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4852c9b4158so1452835e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 11:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773254394; x=1773859194; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kUyetPRGCWNiIDdvvCLAWBXfwDnSDbUudDfLRd5zU4g=;
        b=h9RkZO3vr78Pq8IWHVmTz2vzzyODAAbi7cjf5PGaJNfDNHQ5lAYOoph7PuKSlZrN0y
         kCI3wZLVMgdHCFQ4Lsl2Hl3ssk5bDyJwGFrif3zA+KD+ou+fd+qwtKwR4rug4oJOrdUW
         PjzBf1psgrmPqSS0nF1EtVy+D480iRbYAMEstsT+323tNv06wrrDvEQCkMJpu6mHw3jo
         7I7klp1yFa08gbomItuicuKcVOcDT5fsGm9CS5brTTC2Xd5Kxeh5qXWhPzXujwRMf3r+
         EEEnC64JBvxSfNc/GBr1TeVFEGujpzC0DmmhwIWMwI3n1gzA/08IehEblVbwYW5+mieQ
         GunQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773254394; x=1773859194;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kUyetPRGCWNiIDdvvCLAWBXfwDnSDbUudDfLRd5zU4g=;
        b=tU0HbVBKCb+s0NNvsQQ6APnneTCjSoz4JPG+Qlvlf0cToHu/bpRHBiFEA+L8dPSaVo
         nRbkn1HICcKlZbbJDWqJPDGeI80tmZy3wox4S6d5mhSPAwRNo+xxthpyNLhz38v4mrSu
         JMUweB1vCLJtZEpBAVZL/9bB6EqoyL4YOZP6t2XDaKd0d0MZD3RGNN4GGdiiB6cUlOgx
         /LTFwUfeYdLzcyHfu23ibPrX4Jm1v7o6kAjRJY0xAl/MmRJ3807WDU4TVXwmcTKlF8n5
         Y1/Gm9OQTNCuUtulh8itfg3aOXjsTW7a5MafEK2Ym2k7KYWHRf6Z4+GiQvPb8kuqgCsm
         Thbw==
X-Forwarded-Encrypted: i=1; AJvYcCW4td/0uF/p5RORtb3VN3OdvcrmyoQJ/yzZSu5LZZLDd48cZwsJWM0jGWgbPaDBx1iH+dqvtRWO2Si8@vger.kernel.org
X-Gm-Message-State: AOJu0YwqxjTSPIUI01EoTi77V4p45TmnT2Co29nFxBLavB1CaR8B7M/f
	8YvifzZGo3iRYLJNgw8Pl8S19DBl3eYas9VmpanlPXvhMKtuUfHv5L2f
X-Gm-Gg: ATEYQzyjwHJZO4Xdjcuxu+ar2j6U1MK/wvlyg5c4ldRKmtjgJ0NVQzXxoLSvtwH/HyK
	543WFYfrUekDegMWoTXMZjG1F4agKlaGTNHNPmRLSm+tL0omUmlo5iPRRZmNozMRNKeqxph5UMb
	P+CyE4bJfuj6Elw4kzag4mjTfqpE0j34lr2Mes/mbrWuGp9ctItYEuBPK6W0vz/qz6xq691Us+Q
	wg4VhNRPcD0IUpvyjINRDxu3/00tWVKBRDdC+iMbwZ6UdtHCJBFql6zYCtN1f4qC0NffJtpAWi+
	q9hVDSiP9Hi2aEv6zB2hG234iyW1oN6FylgqANMyfN3r2VDG03Yrv6h3F8t+yBC/5NkQg18+RNL
	32McCGBpqOpzkSiTQwRni2ZZiIGBmgCowQ5/UYuHgfw2DFIln2au2/4IElGI0XRCGaDgIu1qg2w
	hMJ0eyeL4UjMPD/Ms7jL4QX+bGBk3Bk7xpyEBUmClmlJB3pl3i+Zvo5I0=
X-Received: by 2002:a05:600c:3b1a:b0:485:34b3:8585 with SMTP id 5b1f17b1804b1-4854b0d6ca4mr69627935e9.8.1773254393880;
        Wed, 11 Mar 2026 11:39:53 -0700 (PDT)
Received: from Ansuel-XPS24 (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-48541aac28bsm161176675e9.1.2026.03.11.11.39.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 11:39:53 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Luo Jie <quic_luoj@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: John Crispin <john@phrozen.org>,
	Christian Marangi <ansuelsmth@gmail.com>
Subject: [PATCH 1/4] dt-bindings: clock: qcom: Add CMN PLL support for IPQ6018
Date: Wed, 11 Mar 2026 19:39:38 +0100
Message-ID: <20260311183942.10134-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260311183942.10134-1-ansuelsmth@gmail.com>
References: <20260311183942.10134-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[phrozen.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-274292-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,phrozen.org:email]
X-Rspamd-Queue-Id: 2717B268B93
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: John Crispin <john@phrozen.org>

The CMN PLL block in the IPQ6018 SoC takes 48 MHz as the reference
input clock. Its output clocks are the bias_pll_cc_clk (300 MHz) and
bias_pll_nss_noc_clk (416.5 MHz) clocks used by the networking
subsystem.

Add the related compatible for IPQ6018 to the ipq9574-cmn-pll
generic schema.

Signed-off-by: John Crispin <john@phrozen.org>
Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../bindings/clock/qcom,ipq9574-cmn-pll.yaml      |  1 +
 include/dt-bindings/clock/qcom,ipq6018-cmn-pll.h  | 15 +++++++++++++++
 2 files changed, 16 insertions(+)
 create mode 100644 include/dt-bindings/clock/qcom,ipq6018-cmn-pll.h

diff --git a/Documentation/devicetree/bindings/clock/qcom,ipq9574-cmn-pll.yaml b/Documentation/devicetree/bindings/clock/qcom,ipq9574-cmn-pll.yaml
index 817d51135fbf..3827cb9fdff3 100644
--- a/Documentation/devicetree/bindings/clock/qcom,ipq9574-cmn-pll.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,ipq9574-cmn-pll.yaml
@@ -26,6 +26,7 @@ properties:
     enum:
       - qcom,ipq5018-cmn-pll
       - qcom,ipq5424-cmn-pll
+      - qcom,ipq6018-cmn-pll
       - qcom,ipq9574-cmn-pll
 
   reg:
diff --git a/include/dt-bindings/clock/qcom,ipq6018-cmn-pll.h b/include/dt-bindings/clock/qcom,ipq6018-cmn-pll.h
new file mode 100644
index 000000000000..28d325beb073
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,ipq6018-cmn-pll.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_IPQ6018_CMN_PLL_H
+#define _DT_BINDINGS_CLK_QCOM_IPQ6018_CMN_PLL_H
+
+/* CMN PLL core clock. */
+#define IPQ6018_CMN_PLL_CLK			0
+
+/* The output clocks from CMN PLL of IPQ6018. */
+#define IPQ6018_BIAS_PLL_CC_CLK			1
+#define IPQ6018_BIAS_PLL_NSS_NOC_CLK		2
+#endif
-- 
2.53.0


