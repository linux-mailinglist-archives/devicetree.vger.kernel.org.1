Return-Path: <devicetree+bounces-274294-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLOAAiK3sWl0EwAAu9opvQ
	(envelope-from <devicetree+bounces-274294-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:40:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A162B268BC0
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:40:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0A2A53015B4F
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 18:40:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 918BA3EB806;
	Wed, 11 Mar 2026 18:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ii0BOMsu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493333EAC78
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 18:39:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773254403; cv=none; b=CBfiEtebkW5Fc1B0LhPYNeWihik7ccIAGTay8xMAeYTf9ckSeQVExtejf9Ydf5T0OqpkwDE26LDxUIz+V4aa9yoyeezQ8VUGqQxHk3amAaaAdI61WCWAkxItyLOpI3VLlOhwBMbopjIKhcVhaZQRnLCy68YrKSkMXdbmZg5VarQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773254403; c=relaxed/simple;
	bh=bOHPBQ0aYx6SAIc648QFt0cLdnRYKGWij10f0xB33bg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WrI2Rrlickh1+QS/hq0D0T89BjMPnYzT4MNauM3kHXBlbEJ0YJ5QATjP9bmza4KiRDUsFZ7wu8/uQtgyqg+hZiqYo6NenmKE/yT0Y80U9CTr3MdNhGMIKqpdRnu52NyHGcgALpiGQKRr5gf8bqr41gX+vqe8OdGhz0ioU9yfUuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ii0BOMsu; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-48534e9076fso1621465e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 11:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773254396; x=1773859196; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6bqQzzLIz4/2pIlQmC2M8z8Isqupt1gR0Wb/uv4yzLI=;
        b=Ii0BOMsu7NtOBIAA5wSp9HFI/TZucg/y7U8VjdPQueXY2WkMAZHFnDjv+VRCcQX91N
         jL+3waHpt7T/A9VN5rejpjbAnb4mF9zNZOrdJyp1nznuE7GKbN+LDBC6MSIoTJ7DtPY9
         fcPx/PS4RSGxXUZ2t7keUqc8wSGBRH7HJ/T4sApxdWQo2Ug4tfaudML/bKIo7/qySl/M
         8fl7VF4etMQ8jmwSdyTN8RrRoM5uqICOcpwgJRD/R35qg2o4/INZizp09k+rPE363I81
         v4pDCdZCk6kVi0TB/yC39eEzJBGVh3yex7xKzXFDmpMZiQ2o1zrx2UYbkXP6BVGz89XM
         rgXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773254396; x=1773859196;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6bqQzzLIz4/2pIlQmC2M8z8Isqupt1gR0Wb/uv4yzLI=;
        b=IlWaDcJHvLziYH+6ELFRHDixDePj7UJaVtT8ZmF+7I+bLaT0i8fXMQdPwVAiETqNGS
         e0Vmmpb/L7TY4Qs+n8FtdK0FDoye5rZDcNPWbAXbincK1EDZyU/dhrKH4616i62Pdsjc
         hjh62QyqtFwHohE8UL4ueCFQwE/KoTuCHU27TU2SQKZZyocyy/lwTM8OaGdfRvxtSXKo
         ixP/QMBTq1dRJt75Fp02he+IPeX7xaqaXMBVKiSO78FxzLcQZbZ4/54MSi5BCEQ1j3mf
         Ia9wD6t+CQ9slPoRG+Ah/lCs3qxdBHFBMKa69O62gcMLFcBIxkTOmx5vJC1maAyo0pFz
         FnQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVirV4YaLLlxoP2tMeZnPAlV8smSzJaerIIo1tnjGlxV35gM4KOdmjM2Q1/yEHmIQWbOUNy5WwXVTUY@vger.kernel.org
X-Gm-Message-State: AOJu0YzGi+irmvHS9yJ3VrZ2JariZWSnxYcaYOdWvyVQZAAnp/pliPkX
	VmQJyavcZ3BxT709VwuA0Ne3IsrID24pq/KqoZh1ciwDBrF5lhIRQu+l
X-Gm-Gg: ATEYQzyK7gTHvufGFHCGj/1Zo2t1U9pk2Sobncppksc/Ec39V/L2ykn+E6MUE17HSJu
	a9m+AqYsS77stDy4H9xsRJFZk8YFWUPOz2sLY9IHlb2LzE9BsXQzHHcmrcfX3akijCCLcNudBE5
	1ngHjGAK1dKjnalzGXunYtoa/aF+ORSAsQzeGKrjsJbHbtZjftdaAJ4JCG8ZA/0UjrfLMn6mLcQ
	VUIGDe/i/gBehyjLj9zJt9Z8uIdxcjU7dd+TxaItP66mUtyPNjmEtNNuigXDOjDIBHUHpwnxMXV
	IZNHPFt2Tnb16AbWtaCcJhoR2MA2xswkmweL5/BBIn+r+Kxoo5fTt7TC2u1G7K+ukhwmffH25RI
	HRTfeXdFMlyeYx4HhoeyhmGf6sdYKubNrS2gG07fOSK8dHvOOxGAbD1Ic3xh/bVf22McVxW3SjA
	FDrS7udHE5/+wpBw1eNwwupnCYHL/0ersnGT8CK4CBPZQPd69eiNyXy3w=
X-Received: by 2002:a05:600c:8b38:b0:485:3fc8:de9c with SMTP id 5b1f17b1804b1-4854b0be1b5mr64371825e9.12.1773254396189;
        Wed, 11 Mar 2026 11:39:56 -0700 (PDT)
Received: from Ansuel-XPS24 (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-48541aac28bsm161176675e9.1.2026.03.11.11.39.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 11:39:55 -0700 (PDT)
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
Subject: [PATCH 3/4] dt-bindings: clock: qcom: Add CMN PLL support for IPQ8074
Date: Wed, 11 Mar 2026 19:39:40 +0100
Message-ID: <20260311183942.10134-4-ansuelsmth@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-274294-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[phrozen.org:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A162B268BC0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: John Crispin <john@phrozen.org>

The CMN PLL block in the IPQ8074 SoC takes 48 MHz as the reference
input clock. Its output clocks are the bias_pll_cc_clk (300 MHz) and
bias_pll_nss_noc_clk (416.5 MHz) clocks used by the networking
subsystem.

Add the related compatible for IPQ8074 to the ipq9574-cmn-pll
generic schema.

Signed-off-by: John Crispin <john@phrozen.org>
Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../bindings/clock/qcom,ipq9574-cmn-pll.yaml      |  1 +
 include/dt-bindings/clock/qcom,ipq8074-cmn-pll.h  | 15 +++++++++++++++
 2 files changed, 16 insertions(+)
 create mode 100644 include/dt-bindings/clock/qcom,ipq8074-cmn-pll.h

diff --git a/Documentation/devicetree/bindings/clock/qcom,ipq9574-cmn-pll.yaml b/Documentation/devicetree/bindings/clock/qcom,ipq9574-cmn-pll.yaml
index 3827cb9fdff3..de338c05190f 100644
--- a/Documentation/devicetree/bindings/clock/qcom,ipq9574-cmn-pll.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,ipq9574-cmn-pll.yaml
@@ -27,6 +27,7 @@ properties:
       - qcom,ipq5018-cmn-pll
       - qcom,ipq5424-cmn-pll
       - qcom,ipq6018-cmn-pll
+      - qcom,ipq8074-cmn-pll
       - qcom,ipq9574-cmn-pll
 
   reg:
diff --git a/include/dt-bindings/clock/qcom,ipq8074-cmn-pll.h b/include/dt-bindings/clock/qcom,ipq8074-cmn-pll.h
new file mode 100644
index 000000000000..354258a481c2
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,ipq8074-cmn-pll.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_IPQ8074_CMN_PLL_H
+#define _DT_BINDINGS_CLK_QCOM_IPQ8074_CMN_PLL_H
+
+/* CMN PLL core clock. */
+#define IPQ8074_CMN_PLL_CLK			0
+
+/* The output clocks from CMN PLL of IPQ8074. */
+#define IPQ8074_BIAS_PLL_CC_CLK			1
+#define IPQ8074_BIAS_PLL_NSS_NOC_CLK		2
+#endif
-- 
2.53.0


