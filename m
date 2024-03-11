Return-Path: <devicetree+bounces-49744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 736DB877956
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 01:33:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 112071F21244
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 00:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C8FB1FA3;
	Mon, 11 Mar 2024 00:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OQ/UuWHR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB147812
	for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 00:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710117212; cv=none; b=PpDTot5Md8krXHNj1HkI4dDKisHRE6UGvW1pExSkj0EFGw4PG4b+fZ3j8qRYBn1OEE8IXx0Hq635wq52cKMZ8LSa0MSxn4KyLyNVwLzzkiV3PmIhG8MkGDhvP+1+RlG9hV4V81DaFWtZ0evI/JA3EACjSDKq4up1AeaeP6JBFYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710117212; c=relaxed/simple;
	bh=6x6qS+PKks1vssAtWEk+UCzHzvg/Y2i8NzHpUWJh/NA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YIr5u6vinqpMt69/6ItYgcomsbNmLdMDpfHRptMzjD3Q3rTNvfSpjo8nCK8xNvCsOITXpoDiQh9ijVcmKUQ4ac1lw3VqGshutVKHQQ5DBAn2CyFW1e819UysRo313GKROrF4FrRrreLnskRULjQfQ6hkJSJsS/uSQSDdkWjkSTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OQ/UuWHR; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-33e94c12f33so638923f8f.3
        for <devicetree@vger.kernel.org>; Sun, 10 Mar 2024 17:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710117209; x=1710722009; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gmOvVR3ukklFbxgndRD6p5C3vHUYb9SXByhvwW6S0L4=;
        b=OQ/UuWHR/H1urByBTKhgfsnxTBLFhqC24oxmUzFZx7iWryimnE6nYSjChDfsPARnC4
         EbgNc+qwRtFe4WHQR6xdBy2UkpohNv35U7LyZOq6qUd/+gHhx3RJy8U/h++s5tQAgUFP
         zLH/UJ0oN0EvnFAzeukaFFwnxP4M/AgtAz1/YKkWNPBmiMhhWMiGnA67Qbk+11EOKrkV
         6zqeVE5ygz92s9j+j8q+NGu7oK+MfSYkZhJiNgrbDk7Jjgp8rH+Sduw9uP3XNNcmNwrt
         bhM47UnheMoJlz6l0GKEibfUaTppDwgymzWlK+QsWtEw9MNa+/JssOVWlRpsmOFjQK5y
         KaVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710117209; x=1710722009;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gmOvVR3ukklFbxgndRD6p5C3vHUYb9SXByhvwW6S0L4=;
        b=Q4m1+nxZV1BVdOu9pTHJkHcNT40Sq0TxbjtDbS9LKkakQ5DsrzA4pVR5yS47OXGi2w
         FWAk2NbsShA627VoHvvnLc0vHE/4xYnbtdYUJroXNgElkcSDU51xKSi3nR81yBppd02X
         J3bKhGw7oxyYP6dDhS/+5lUEwMbu2LD0bphZLVmo/Pf2iS82TH6Gk2gBrKPKwjyy2IH+
         pxlozXjZjdXQaSpXGRR0CgLFmzNfnivYFMKt69+GaNlJIXE3HH9PzhNL+6brWLJWKrq/
         Wxmttlo76ofaPv7BMDWKjbFGgM9YTdTXz3cMvs+F7qzvR9ICbmHLJif4tn2Oya65QWk2
         KvHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXd5EQ9QnlieHXzWYjTPZ2A9KlxNYE0YYEbTNReVWPL/KaiRRyRSaDhMGpCkF1l3q1h4hVrMF+P0x+znT/1QAQiRymbH8Xzq9+4ig==
X-Gm-Message-State: AOJu0YwTHg1qjj0g2MMr3XF2fC6tIY8SGh1KBYPniDYl/+dEb0jfqvon
	KSUPMCCjNXJ55X0T0rFE40WVOSBPk6/fmbSyAEKCMUo0xUGwIoBpmqgRdQR9Djs=
X-Google-Smtp-Source: AGHT+IGAOsSKPQLg9syKKDEivpOtvcSvGyYVNDz7m/SWNDIp2rQb3GsY0k/im7Dh+YgHiW31v6uUBw==
X-Received: by 2002:a05:600c:3b23:b0:413:286c:4fcf with SMTP id m35-20020a05600c3b2300b00413286c4fcfmr1340405wms.32.1710117209267;
        Sun, 10 Mar 2024 17:33:29 -0700 (PDT)
Received: from [127.0.0.1] ([176.61.106.68])
        by smtp.gmail.com with ESMTPSA id m38-20020a05600c3b2600b00412b6fbb9b5sm13881720wms.8.2024.03.10.17.33.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Mar 2024 17:33:28 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Mon, 11 Mar 2024 00:33:26 +0000
Subject: [PATCH 2/2] clk: qcom: camcc-x1e80100: Set titan_top_gdsc as the
 parent GDSC of subordinate GDSCs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240311-linux-next-camcc-fixes-v1-2-d126ae0b9350@linaro.org>
References: <20240311-linux-next-camcc-fixes-v1-0-d126ae0b9350@linaro.org>
In-Reply-To: <20240311-linux-next-camcc-fixes-v1-0-d126ae0b9350@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.13-dev-26615

The Titan TOP GDSC is the parent GDSC for all other GDSCs in the CAMCC
block. None of the subordinate blocks will switch on without the parent
GDSC switched on.

Fixes: 76126a5129b5 ("clk: qcom: Add camcc clock driver for x1e80100")
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/clk/qcom/camcc-x1e80100.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/clk/qcom/camcc-x1e80100.c b/drivers/clk/qcom/camcc-x1e80100.c
index 46bb225906bff..d421da57697a2 100644
--- a/drivers/clk/qcom/camcc-x1e80100.c
+++ b/drivers/clk/qcom/camcc-x1e80100.c
@@ -2212,6 +2212,8 @@ static struct clk_branch cam_cc_sfe_0_fast_ahb_clk = {
 	},
 };
 
+static struct gdsc cam_cc_titan_top_gdsc;
+
 static struct gdsc cam_cc_bps_gdsc = {
 	.gdscr = 0x10004,
 	.en_rest_wait_val = 0x2,
@@ -2221,6 +2223,7 @@ static struct gdsc cam_cc_bps_gdsc = {
 		.name = "cam_cc_bps_gdsc",
 	},
 	.pwrsts = PWRSTS_OFF_ON,
+	.parent = &cam_cc_titan_top_gdsc.pd,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
 };
 
@@ -2233,6 +2236,7 @@ static struct gdsc cam_cc_ife_0_gdsc = {
 		.name = "cam_cc_ife_0_gdsc",
 	},
 	.pwrsts = PWRSTS_OFF_ON,
+	.parent = &cam_cc_titan_top_gdsc.pd,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
 };
 
@@ -2245,6 +2249,7 @@ static struct gdsc cam_cc_ife_1_gdsc = {
 		.name = "cam_cc_ife_1_gdsc",
 	},
 	.pwrsts = PWRSTS_OFF_ON,
+	.parent = &cam_cc_titan_top_gdsc.pd,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
 };
 
@@ -2257,6 +2262,7 @@ static struct gdsc cam_cc_ipe_0_gdsc = {
 		.name = "cam_cc_ipe_0_gdsc",
 	},
 	.pwrsts = PWRSTS_OFF_ON,
+	.parent = &cam_cc_titan_top_gdsc.pd,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
 };
 
@@ -2269,6 +2275,7 @@ static struct gdsc cam_cc_sfe_0_gdsc = {
 		.name = "cam_cc_sfe_0_gdsc",
 	},
 	.pwrsts = PWRSTS_OFF_ON,
+	.parent = &cam_cc_titan_top_gdsc.pd,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
 };
 

-- 
2.43.1


