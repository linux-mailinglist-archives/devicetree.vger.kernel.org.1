Return-Path: <devicetree+bounces-248054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4A6CCE73B
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 05:35:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9B957305E20F
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 04:34:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7285B2848A2;
	Fri, 19 Dec 2025 04:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nogCCDAn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f47.google.com (mail-yx1-f47.google.com [74.125.224.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3D328CF49
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 04:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766118877; cv=none; b=bwM9SrP5CdmiufTT2o+HR+f0VI1Uj/73sPtLZsU+sNjN8a1XuanTPSBUVDlYh73twO7jBGJBo/4c5iRch2em7zgsj+wRorPehVuAZHtvyaO0iEN9cI5X4EAgD/Hx5j4r9F+FMDRoOgkZpvPBJFmxCWflYmtgMDvAvKxacOG63+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766118877; c=relaxed/simple;
	bh=3AjNYVDLj3dIk9Cc/YWpPnzSycJtLhtYlxld7c9jHH8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ext9aMRdvzw58v3NxiZ7vu9sQKbn5QOWT7ypcJXXePK7X7wVSKp/y7RoIxAYKDCFFUuTLTyYigy1kRyoKuZ8cM44CB5iDgwViS/Zo/7sppeHwpTPq++9wZEQU2GudaOFFxRyWhBWqJXtYKyLJ4PfOzAId4A9UurPb9cmQq0UmsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nogCCDAn; arc=none smtp.client-ip=74.125.224.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f47.google.com with SMTP id 956f58d0204a3-641e9422473so1075681d50.2
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 20:34:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766118874; x=1766723674; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IWz1P8414J3OUB/pGvKwvDCZTM3BGlGL3AvsIxO+j/o=;
        b=nogCCDAnAm01k1M1qD7w4Xy9uRDdcxKFZpSdJRQi1w3KYo2g//+RmKbYFSD9XMNqzj
         RMS488ipT7KAHPCZEOt7Imb4bCrAbfQkzoSQ8J0imjTcn3JcEEnvyAqct2qcWWAF8M59
         YmKLoG5dnBI+qQfcUxSRsTxJWDXugXbzjZzYSYSwQKMwCRTbibxbLiYoC0rU/tI7iurd
         rlxzPoKI/Tmq4T2ulDSBpJwht4A/rEUpzevFEk9ODGWoilbEjBKLHMmalOWa1LGLrNyZ
         Vm5dPPZLbqfnvEvdMPOMwa8TuE2SCseGHchJKcOmEKP4xK8Zy2KEmO5jUUcx0rQ8uDyA
         0Q8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766118874; x=1766723674;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IWz1P8414J3OUB/pGvKwvDCZTM3BGlGL3AvsIxO+j/o=;
        b=fSrcE9bAfWTdWal+gGoxSazZSVtD2GQkjB3DU/f0FdoyPiPUsuNr19SvLeG+pTA/0x
         8M+rsNMpp58+iB+snJsAIHsJHr58Nexwo+siV4CE90ef6lKdHeUtXJh5rqrK+51s5JBq
         yl/Wv7G6vvx2+Aal1SOSJMc1xlpRitfrzeE/wG7l6H0OtjWleUTUjnJ/WSD0EoJSnhYb
         BM7YXYHcOqUs/hu4lFT/KFiM035ljW88fFpgW+gA9SrihvYq6CpkGKnIslBwcZQTRaTg
         LD/EPCB6+RHJTsEhicsvU5gzaIX36CzW98rfLEdgroxPV3+4XKojwh9swb3deRbCcRyv
         TXpw==
X-Forwarded-Encrypted: i=1; AJvYcCUPP2pio2MK7MyT6eyl92Zc4VDkc3PzL4xGj8K9t3XycNagOJTJlNQ6y49f4r3OU4lHoF8+ZsGYlbfm@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/YFjLHbpHEDKHHjDtZk7pCtikjm0V29bE2eWUtdYJ2Z5bSPKx
	QHOBUY9/nMzWWIzmqH1kV/oKdWFRMVVPR2ucmf7M+ScPLvBmWm5ZNeCy
X-Gm-Gg: AY/fxX69W0Pq41uSRA5IwlhjYOn8WE91tCbyGKzUVBmX7qUyJUjkIU0lZJY6yHGjFCn
	Ns6jBosnec74iSOJ14vEckMSRmWJm458QAQkY/JBB5NPlFzJBYMANDnTKqWZrQqrh+N9o2LwKMw
	4uIc+2r/I/bUFYez5X8PhDhQ0EhkTZZdqr9eRnh6IxPzkKKQ/a0U+9UdYXjJrpKBL6f0v/Wknpn
	pjMz22bw0NI1kxRoXF1giu+LdbsfF4pLThJWbbPewSTdUN3UL5+1q8H52+mfjNKosbrxr6GEp6/
	fbDwf3oJfVrENHm6VgyEQiL9ZFyiN7UrORaUpcCwpakl5NxCHtjsgSPCPMjvPfDXM//wPGJfd5s
	Rg0/hPbivbA42xSv0fCi3U0e/t4PdZAX4Un/v1/IFMngui78Wlw/WDyYSoEW2UChrhialuJ6g4y
	6tITDyHU1Te8vUAlMzGGXQ4zvoCRc11VqOyiC8YDEE+pM/3P33ui6nnXkZtOBsMODxQXpCbCJVI
	efcao/5MGsA/4Hhw9MdcJ8hHdKE
X-Google-Smtp-Source: AGHT+IHPi6DErBNZ73Fj/39MbWvseTGAB/JcDUsa+hKnG2WsFU+qhmiJiN1U92vxyYiU1pyiYMgGnQ==
X-Received: by 2002:a05:690c:d1b:b0:788:161c:7117 with SMTP id 00721157ae682-78fb3f05395mr30659917b3.8.1766118874295;
        Thu, 18 Dec 2025 20:34:34 -0800 (PST)
Received: from nukework.lan (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78fb452c441sm5610227b3.46.2025.12.18.20.34.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 20:34:33 -0800 (PST)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: andersson@kernel.org,
	mathieu.poirier@linaro.org,
	krzk+dt@kernel.org,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Alexandru Gagniuc <mr.nuke.me@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/9] dt-bindings: clock: gcc-ipq9574: add wcss remoteproc clocks
Date: Thu, 18 Dec 2025 22:34:11 -0600
Message-ID: <20251219043425.888585-3-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20251219043425.888585-1-mr.nuke.me@gmail.com>
References: <20251219043425.888585-1-mr.nuke.me@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit da040d560319 ("dt-bindings: clock: qcom: gcc-ipq9574: remove q6
bring up clock macros") removed these clocks on the idea that Q6
firmware is responsible for clock bringup. That statement seems
incorrect, as these clocks need to be enabled before the Q6 is booted.
Otherwise, the host CPU core that starts the Q6 hangs.

Perhaps the statement meant that the TrustZone firmware will start the
clocks. This only happens in PAS mode. Under native OS loading, the
host needs these clocks, so add them back.

Besides the clocks that were erroneously removed, also add defines for
GCC_WCSS_AHB_S_CLK, GCC_WCSS_AXI_M_CLK, and GCC_Q6_AXIM2_CLK, as all
these clocks are required to operate the remoteproc.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
---
 include/dt-bindings/clock/qcom,ipq9574-gcc.h | 22 ++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/include/dt-bindings/clock/qcom,ipq9574-gcc.h b/include/dt-bindings/clock/qcom,ipq9574-gcc.h
index 0e7c319897f3a..8c74f50a27909 100644
--- a/include/dt-bindings/clock/qcom,ipq9574-gcc.h
+++ b/include/dt-bindings/clock/qcom,ipq9574-gcc.h
@@ -132,8 +132,16 @@
 #define GCC_NSSNOC_SNOC_1_CLK				123
 #define GCC_QDSS_ETR_USB_CLK				124
 #define WCSS_AHB_CLK_SRC				125
+#define GCC_Q6_AHB_CLK					126
+#define GCC_Q6_AHB_S_CLK				127
+#define GCC_WCSS_ECAHB_CLK				128
+#define GCC_WCSS_ACMT_CLK				129
+#define GCC_SYS_NOC_WCSS_AHB_CLK			130
 #define WCSS_AXI_M_CLK_SRC				131
+#define GCC_ANOC_WCSS_AXI_M_CLK				132
 #define QDSS_AT_CLK_SRC					133
+#define GCC_Q6SS_ATBM_CLK				134
+#define GCC_WCSS_DBG_IFC_ATB_CLK			135
 #define GCC_NSSNOC_ATB_CLK				136
 #define GCC_QDSS_AT_CLK					137
 #define GCC_SYS_NOC_AT_CLK				138
@@ -146,18 +154,27 @@
 #define QDSS_TRACECLKIN_CLK_SRC				145
 #define GCC_QDSS_TRACECLKIN_CLK				146
 #define QDSS_TSCTR_CLK_SRC				147
+#define GCC_Q6_TSCTR_1TO2_CLK				148
+#define GCC_WCSS_DBG_IFC_NTS_CLK			149
 #define GCC_QDSS_TSCTR_DIV2_CLK				150
 #define GCC_QDSS_TS_CLK					151
 #define GCC_QDSS_TSCTR_DIV4_CLK				152
 #define GCC_NSS_TS_CLK					153
 #define GCC_QDSS_TSCTR_DIV8_CLK				154
 #define GCC_QDSS_TSCTR_DIV16_CLK			155
+#define GCC_Q6SS_PCLKDBG_CLK				156
+#define GCC_Q6SS_TRIG_CLK				157
+#define GCC_WCSS_DBG_IFC_APB_CLK			158
+#define GCC_WCSS_DBG_IFC_DAPBUS_CLK			159
 #define GCC_QDSS_DAP_CLK				160
 #define GCC_QDSS_APB2JTAG_CLK				161
 #define GCC_QDSS_TSCTR_DIV3_CLK				162
 #define QPIC_IO_MACRO_CLK_SRC				163
 #define GCC_QPIC_IO_MACRO_CLK                           164
 #define Q6_AXI_CLK_SRC					165
+#define GCC_Q6_AXIM_CLK					166
+#define GCC_WCSS_Q6_TBU_CLK				167
+#define GCC_MEM_NOC_Q6_AXI_CLK				168
 #define Q6_AXIM2_CLK_SRC				169
 #define NSSNOC_MEMNOC_BFDCD_CLK_SRC			170
 #define GCC_NSSNOC_MEMNOC_CLK				171
@@ -182,6 +199,7 @@
 #define GCC_UNIPHY2_SYS_CLK				190
 #define GCC_CMN_12GPLL_SYS_CLK				191
 #define GCC_NSSNOC_XO_DCD_CLK				192
+#define GCC_Q6SS_BOOT_CLK				193
 #define UNIPHY_SYS_CLK_SRC				194
 #define NSS_TS_CLK_SRC					195
 #define GCC_ANOC_PCIE0_1LANE_M_CLK			196
@@ -203,4 +221,8 @@
 #define GCC_PCIE2_PIPE_CLK				212
 #define GCC_PCIE3_PIPE_CLK				213
 #define GPLL0_OUT_AUX					214
+#define GCC_WCSS_AHB_S_CLK				215
+#define GCC_WCSS_AXI_M_CLK				216
+#define GCC_Q6_AXIM2_CLK				217
+
 #endif
-- 
2.45.1


