Return-Path: <devicetree+bounces-127344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 322A79E5394
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 12:20:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9EE641881936
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 11:20:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DDF01F8ACE;
	Thu,  5 Dec 2024 11:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="GTXaWvie"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202FE1F4735
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 11:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733397589; cv=none; b=t6LYTuygxcq9qtPdrDWj/5IjTxMzYiJSP8lny4NQZtCcHYeFCVif/htz0vqa2N5mb97+BGM3y7n5XqsUPmvGt6JQdYoR/0OplMV4gf69BKHPJZs0JFmZ0kYLoRXTD1RqYv6rzcnmq5d3buDeJPmY1dHmBE3eY8ntwmGh2+oEDSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733397589; c=relaxed/simple;
	bh=maUm8Wtz4uhoJlDQ4e0Kldd0ifg3+fK7gvr5q8t40fQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PFwUu5BOGb8ccNiLPHV/lqqNE+izTS9uYuqMP8js9YLekhMMfqGAcZNHdgMRBErkTQJsS1odZHI0EjOgFmhuu6RUkteJtYaLztANvirjjrhKwjcuCVUorgIPxAJIpKhk9H4gQjkn8W3Hwd3eYFkPkl/wcISYLLJ/LmQ1jI5PU6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=GTXaWvie; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-aa549f2fa32so153865866b.0
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 03:19:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733397586; x=1734002386; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lfJsRcPD/8EPzi0YLbSU3Cc8teD2P8WEd5mYwYdJZ8c=;
        b=GTXaWvieZ8UbgJVEpPmfYcq7loC7RmWanExxebWTIxe/OGmmGq1kRT7t6pQsmg4qp5
         +lU0BGz5t5gcwZQO13Q/tpi+iM4M+H4BzUFn8ZEZwU69OmcxDnxe/pqiJlOqT2tT4nmm
         AvVNT6v9BdnWwbO29eCQj0tQx7G7KwpCraO9s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733397586; x=1734002386;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lfJsRcPD/8EPzi0YLbSU3Cc8teD2P8WEd5mYwYdJZ8c=;
        b=GcxwhoHYB22Z0pst19pwAKp09nyHkmvOS+my3C+bKOQiu6lh4HYPfab0lu/b6yhKeL
         7/bQvst57DEjdlNL1pQN/W9YNiM4f8FUH0KfvKp63kdZudXPiYF8PX64dh+5JGoOpz/0
         tIGkDljC6eX7VykCTly7iC6TTQjv/GgdbVbWPUvItZ+zxb+hGwBQw+2QLRSpvcTvt7dL
         wSojkn1cTaP9WRnfMVQ8BxBKlDXul02buq5bObFJ7SVMyuh0B2u8YKswXVlftmuvXE+4
         XLSSzCSSXfQ58eh1LAjCY0bNF5sogFxyTH3kfKs0xCwVQKd1X6fQNIxUDDxwVYxgOVB3
         F6aA==
X-Forwarded-Encrypted: i=1; AJvYcCWpF427KGBSqW4/Dnn+ADeKYGTLyFRrlwmqFSX1BtUJxVkW/CoMRMj+EN6bYHLpcAE2Zx4wc1QKr6p3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywa83yy4HSrBbkro/rdTbmLVzpZvYHNbSJO8QzUmWLg5yB+3pF1
	TDYVsPf84EsAlEE9oME0ipKP585JuReXVOn1EGFw73GagBfaEyFcIBKUu7Clrfc=
X-Gm-Gg: ASbGncuYjiFna037T5rx45Hemr+S3SFfq1FKQqDmmXKs5voBnUSbihtd9M+rzoecraV
	nJtOabQUVd1VvX6o12fGFSEk31XfNXO72MXRyx+vjbj64cEvE5KECW7wK+wsSqnFL0HB05E8a2v
	my06ZfET5uZxJHJXrEkU0lB2lTcwjHpImKc62sM42hTCaCIZ/hpLzVG96tGu5zcLE+rg3AbHaVU
	SMVR3JgfO100UKQCrx+7v1nsViIr4izfT6T3uSxy6uBYsPE5HaCnFatSQvvUCoPWTMGStMQsqLs
	MGnb8+PdBUMzfzi6xlVQcPMCXqysB5HKLqi0/QA1ATLz0g==
X-Google-Smtp-Source: AGHT+IEvMCFVKhXQs/BEo9XGkjUrPVab4oCHkJg6oXUg3V30XKOK2YMJHs4Q4VAghsMiMHhIuTdfyg==
X-Received: by 2002:a17:906:1da1:b0:a99:3c32:b538 with SMTP id a640c23a62f3a-aa5f7ecdd96mr850956766b.42.1733397586585;
        Thu, 05 Dec 2024 03:19:46 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2001:b07:6474:ebbf:61a1:9bc8:52c6:3c2d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eedcd0sm77505266b.87.2024.12.05.03.19.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 03:19:46 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: [PATCH v5 03/20] dt-bindings: clock: imx8mp: add VIDEO_PLL clocks
Date: Thu,  5 Dec 2024 12:17:38 +0100
Message-ID: <20241205111939.1796244-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241205111939.1796244-1-dario.binacchi@amarulasolutions.com>
References: <20241205111939.1796244-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Unlike audio_pll1 and audio_pll2, there is no video_pll2. Further, the
name used in the RM is video_pll. So, let's add the IMX8MP_VIDEO_PLL[_*]
definitions to be consistent with the RM and avoid misunderstandings.

The IMX8MP_VIDEO_PLL1* constants have not been removed to ensure
backward compatibility of the patch.

No functional changes intended.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v5:
- New

 include/dt-bindings/clock/imx8mp-clock.h | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/include/dt-bindings/clock/imx8mp-clock.h b/include/dt-bindings/clock/imx8mp-clock.h
index 7da4243984b2..3235d7de3b62 100644
--- a/include/dt-bindings/clock/imx8mp-clock.h
+++ b/include/dt-bindings/clock/imx8mp-clock.h
@@ -16,7 +16,8 @@
 #define IMX8MP_CLK_EXT4				7
 #define IMX8MP_AUDIO_PLL1_REF_SEL		8
 #define IMX8MP_AUDIO_PLL2_REF_SEL		9
-#define IMX8MP_VIDEO_PLL1_REF_SEL		10
+#define IMX8MP_VIDEO_PLL_REF_SEL		10
+#define IMX8MP_VIDEO_PLL1_REF_SEL		IMX8MP_VIDEO_PLL_REF_SEL
 #define IMX8MP_DRAM_PLL_REF_SEL			11
 #define IMX8MP_GPU_PLL_REF_SEL			12
 #define IMX8MP_VPU_PLL_REF_SEL			13
@@ -26,7 +27,8 @@
 #define IMX8MP_SYS_PLL3_REF_SEL			17
 #define IMX8MP_AUDIO_PLL1			18
 #define IMX8MP_AUDIO_PLL2			19
-#define IMX8MP_VIDEO_PLL1			20
+#define IMX8MP_VIDEO_PLL			20
+#define IMX8MP_VIDEO_PLL1			IMX8MP_VIDEO_PLL
 #define IMX8MP_DRAM_PLL				21
 #define IMX8MP_GPU_PLL				22
 #define IMX8MP_VPU_PLL				23
@@ -36,7 +38,8 @@
 #define IMX8MP_SYS_PLL3				27
 #define IMX8MP_AUDIO_PLL1_BYPASS		28
 #define IMX8MP_AUDIO_PLL2_BYPASS		29
-#define IMX8MP_VIDEO_PLL1_BYPASS		30
+#define IMX8MP_VIDEO_PLL_BYPASS			30
+#define IMX8MP_VIDEO_PLL1_BYPASS		IMX8MP_VIDEO_PLL_BYPASS
 #define IMX8MP_DRAM_PLL_BYPASS			31
 #define IMX8MP_GPU_PLL_BYPASS			32
 #define IMX8MP_VPU_PLL_BYPASS			33
@@ -46,7 +49,8 @@
 #define IMX8MP_SYS_PLL3_BYPASS			37
 #define IMX8MP_AUDIO_PLL1_OUT			38
 #define IMX8MP_AUDIO_PLL2_OUT			39
-#define IMX8MP_VIDEO_PLL1_OUT			40
+#define IMX8MP_VIDEO_PLL_OUT			40
+#define IMX8MP_VIDEO_PLL1_OUT			IMX8MP_VIDEO_PLL_OUT
 #define IMX8MP_DRAM_PLL_OUT			41
 #define IMX8MP_GPU_PLL_OUT			42
 #define IMX8MP_VPU_PLL_OUT			43
-- 
2.43.0


