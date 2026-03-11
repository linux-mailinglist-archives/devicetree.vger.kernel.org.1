Return-Path: <devicetree+bounces-274295-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CfVGoS3sWmTEwAAu9opvQ
	(envelope-from <devicetree+bounces-274295-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:42:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D102A268C59
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:42:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1A7683060AF7
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 18:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F34E23EBF10;
	Wed, 11 Mar 2026 18:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lnPs4ndL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838273EAC8C
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 18:39:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773254403; cv=none; b=ocDOt45K/P7V8sUQhy6cpKeSbkGoE6qi6TzKEtz69TWrXU6y3CFnssBKRnaHwYlXfOW5MqdHw1LaGFLtM5lKiVUi2ZzpxgQc9B/2s7TVDxIGLcJypUXtlUDA+lVAik3Cx6+6JRELRXt2aN6RTuw8eGsFQxB17pFCGO/wZ+vA1Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773254403; c=relaxed/simple;
	bh=92W5DvG9FEXKhrA60xxOmYpf4C0d4pC+Igs6Svr1LnQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K48iAVePxhVjqBBVPWjlLO1DOP/co0q3gOKfrY1rRpLT32Ht4CNQpN0QzEC/jolLqWPcXaZlWPPtDpK6BasxwHVubfYk7MPo14bw4YhGE56+BbMVz2RnqkqEK0bWazhJtAOnEjE0qvZjq1yBhUaB8Y2kQc+Ieqyat/T6pWLW1Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lnPs4ndL; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4852f73d0a3so1554705e9.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 11:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773254397; x=1773859197; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O11MQpTjXi0IhfBZB+y8IoMQOgCJromeEtSBGPquchA=;
        b=lnPs4ndLHy9zYBfDDo/Gr0ICAfY3HBF30YVphuFe+K5DCPkK0cEGry5Dyc33l449tY
         4XJJeKapHXitxMrZaQf48G0wis3XEh4DO+NW1YuLuqdyBtoLJUMoCQG1iQHrtBRe/Ffs
         0zGLVGT1FrK/6S/8ylwA4WkE8rixueAUMtImatwefnjxbmyvVkfvEzLK4pgefC70jr7G
         PrMqD05WASS8FsjjKo481ENKpQI+3DKQ4Nm1k3zmSbNyq2+gaiY3nQo+l7i895ljPEEg
         1WJly0M85hWt1ab9GOrMc/SvZv0S1hS+B1xItvZrLVgX5mFumtrhIZrmaJuUxnwBnWlX
         OZuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773254397; x=1773859197;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=O11MQpTjXi0IhfBZB+y8IoMQOgCJromeEtSBGPquchA=;
        b=kItwS8b1rIDQWiK8PQz4eBecRFC5zJOsgvcnkLVQ5FJkCYNOABxTVlfdSGPrdiwSFG
         7r595bZiu1lW2yV52fJapQId5AH/IR4pk7IaHN2wu5Mrs1EyOWmMc1BeznVJRSb7LhHY
         xE//CSeFKvffP0X9q/iCCpBeYcVK3DvPAM6BCF0+Dzd98sESXVz6IRynZHI9iv6i83Uq
         jqYGKVYB8vK1+mPa+LGj6JymDVhDFrFH/sY6V2W7O8mBT2a/ZShrUiz92tc4dFV6TKqw
         pnBgB67sSEZlX8pP/4Ccb7+Vn6xSC8qDt04gDO17gmrhHyIgKHgS7wQcS2FtV1giwLMD
         n45A==
X-Forwarded-Encrypted: i=1; AJvYcCU/xOU3cN18IJdXukGz/jIuthzxKd/nTyl3Vkk7BwtBYcDi3DCluC4+Mb5FhYb/DqHyBovQsMKMg7/n@vger.kernel.org
X-Gm-Message-State: AOJu0YxM8ckPrJEpwbj6q23b13OgbR8uAkWLbV2YuMaEbpMKmwonTJcU
	lc1abiTjhVEWAqokWUlPPKZwIDLSSdPBY4KLvQYnNVnltte17E1jfpee
X-Gm-Gg: ATEYQzwzJ6bTzYKPKxwOdIjpVC1YCOARr60JJO1epJSZFZBv4lHgVc9PofHEeRDxoIO
	VvxlKJZYckQBBw88fahOKmXlQraYooThhyvuUK3GSdYPPum1hhvv73CakdZn2XT/Yw+BuNVN7j+
	ww7dgVSr/sWFhCDDOgQisQvLH7NkhHCTMsLAgIOu6gyei0bYXJe3KFqMy8C4hHCGY0MHCl93mZs
	Z4v0/Ul9rraCVMoVP8kRIYbshsqa3sV+wM6Iwe6b6+gPDDxK9R1L1lF/LuMLWv649x+SE2c335f
	zhrr9BSrWUo4Ut7kaFLoyRkkAEmfMhh7UGH0G46mYUBpHpUyOrDg/mFckMrQK3Q4Do53/r8QGBf
	BPrUi52sRHETHpR2vGqw+3OklOyRbvetR2guKgtVhEnDnY71zXZmiV1dGwn5zBGIQs25FyNUNjX
	Fb7xDHI7Tlx+NXoH61aXUTVVMmMgoIXPiSpGIsnARBiyKzElsgTMYS+R0=
X-Received: by 2002:a05:600c:4fc9:b0:485:41c4:e2e4 with SMTP id 5b1f17b1804b1-4854b11acfamr64729515e9.23.1773254397353;
        Wed, 11 Mar 2026 11:39:57 -0700 (PDT)
Received: from Ansuel-XPS24 (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-48541aac28bsm161176675e9.1.2026.03.11.11.39.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 11:39:56 -0700 (PDT)
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
Subject: [PATCH 4/4] clk: qcom: ipq-cmn-pll: Add IPQ8074 SoC support
Date: Wed, 11 Mar 2026 19:39:41 +0100
Message-ID: <20260311183942.10134-5-ansuelsmth@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[phrozen.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-274295-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,phrozen.org:email]
X-Rspamd-Queue-Id: D102A268C59
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: John Crispin <john@phrozen.org>

The CMN PLL in IPQ8074 SoC supplies fixed clocks to the networking
subsystem: bias_pll_cc_clk at 300 MHz and bias_pll_nss_noc_clk at
416.5 MHz.

Signed-off-by: John Crispin <john@phrozen.org>
Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 drivers/clk/qcom/ipq-cmn-pll.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/clk/qcom/ipq-cmn-pll.c b/drivers/clk/qcom/ipq-cmn-pll.c
index 28d655d6320a..5763e4df59a1 100644
--- a/drivers/clk/qcom/ipq-cmn-pll.c
+++ b/drivers/clk/qcom/ipq-cmn-pll.c
@@ -53,6 +53,7 @@
 #include <dt-bindings/clock/qcom,ipq5018-cmn-pll.h>
 #include <dt-bindings/clock/qcom,ipq5424-cmn-pll.h>
 #include <dt-bindings/clock/qcom,ipq6018-cmn-pll.h>
+#include <dt-bindings/clock/qcom,ipq8074-cmn-pll.h>
 
 #define CMN_PLL_REFCLK_SRC_SELECTION		0x28
 #define CMN_PLL_REFCLK_SRC_DIV			GENMASK(9, 8)
@@ -124,6 +125,12 @@ static const struct cmn_pll_fixed_output_clk ipq6018_output_clks[] = {
 	{ /* Sentinel */ }
 };
 
+static const struct cmn_pll_fixed_output_clk ipq8074_output_clks[] = {
+	CLK_PLL_OUTPUT(IPQ8074_BIAS_PLL_CC_CLK, "bias_pll_cc_clk", 300000000UL),
+	CLK_PLL_OUTPUT(IPQ8074_BIAS_PLL_NSS_NOC_CLK, "bias_pll_nss_noc_clk", 416500000UL),
+	{ /* Sentinel */ }
+};
+
 static const struct cmn_pll_fixed_output_clk ipq5424_output_clks[] = {
 	CLK_PLL_OUTPUT(IPQ5424_XO_24MHZ_CLK, "xo-24mhz", 24000000UL),
 	CLK_PLL_OUTPUT(IPQ5424_SLEEP_32KHZ_CLK, "sleep-32khz", 32000UL),
@@ -456,6 +463,7 @@ static const struct of_device_id ipq_cmn_pll_clk_ids[] = {
 	{ .compatible = "qcom,ipq5018-cmn-pll", .data = &ipq5018_output_clks },
 	{ .compatible = "qcom,ipq5424-cmn-pll", .data = &ipq5424_output_clks },
 	{ .compatible = "qcom,ipq6018-cmn-pll", .data = &ipq6018_output_clks },
+	{ .compatible = "qcom,ipq8074-cmn-pll", .data = &ipq8074_output_clks },
 	{ .compatible = "qcom,ipq9574-cmn-pll", .data = &ipq9574_output_clks },
 	{ }
 };
-- 
2.53.0


