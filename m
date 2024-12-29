Return-Path: <devicetree+bounces-134570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 740399FDF60
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 15:51:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 243F57A0798
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 14:51:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F034E19885F;
	Sun, 29 Dec 2024 14:50:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="AVrmEmSO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F174195FEC
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 14:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735483839; cv=none; b=F40fPmqmpHYVzJ70ygB5p6LTK/QyeAEer72gHBdepfjBxPOX6JAOk+7pfKLnWZfyo5YR+m2IdmulDn8c6BLVXmyacUtEIDbl8HLt8t2kxg0GPzXVJiPx2c0WS+Vl49SJbYxkz8mCXGTSmz8AAtnZ7dNOv7SBAqFW/wq5dg6rx+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735483839; c=relaxed/simple;
	bh=xUBRrkr1aLPPwLeMGNd5Xto6SUkG0PhtvIzCxxAX118=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sB9Pl2PCMRNjqAXTLmkMqN9tuxWe2yxZGoIcemIGt7SwxWVn82Pp3lg0fyg1gKBVvc/kq4qWFC/AyQl2wfhAP99EssQK8kPUGNo5RlEQ0sVM+RBS3uPE1NP1I3L7cBqKNvR2euwbqOkQVTwNSpGKgEDL5DHjAJzxlmu2bluAxts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=AVrmEmSO; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-aab6fa3e20eso1416032866b.2
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 06:50:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735483836; x=1736088636; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T8/6J4AE7rdE7DvbcqL7lv8LvF8nVi/MJUfgoa9DfhY=;
        b=AVrmEmSOEOGihK/K3eNASyprPdP2kVAtTHF7GcJp53eiZEkQLrjRIKcwHGHqR8Cu9C
         a8HpqBlPDT0UAiNlCxNfgA12eBNhW95PfvH8TqL4E2Faa8AwMUs9u7WJ4bcdYjs65+90
         1yjq2o0hApmb0VMTXMkPSJAmMds1ud53e8lGU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735483836; x=1736088636;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T8/6J4AE7rdE7DvbcqL7lv8LvF8nVi/MJUfgoa9DfhY=;
        b=b0Joiyydl4upNqhdH6viPIhdSmEyhPcvmWoYq9unMXFygEPLS1douciluhzSb0YO5T
         G6pCxrwFygA3D1yT62vkUWQQYCg7tH/NJbOJ+kHN7NnrpKzyBsiiFAQ9G3uTrQcgfKR2
         E6VD4SjWQZk69357l0LYxKuxXvFSlKyonDEh6/QjpbxugY11nqWHP2eMsKHJg9JMhcRH
         5ztsnKeXUgBSPJF7laOoKRXGgogr5XPyuS4k+YQERQidhKmEtGY+Nj8SQ1fFSfy5BGvf
         kgcys8L6kj7wNI65JV/qhJA3PPf/mtd3U7gwbYQq9+ZKaOMIYy0ffR5PG2Hna9uNyoeT
         296Q==
X-Forwarded-Encrypted: i=1; AJvYcCXBA5a2QDcHMcsv5U/W0CsbzD7mj00hiSXP/l2dDCUl6WinIWCgaByt9ru/JuVfYi45Xu82TWAgQP06@vger.kernel.org
X-Gm-Message-State: AOJu0Yyb8Woh4lrh1Yf/+1VPSa5VUtjVuuJLAyDkpvepO2TMjeGsgOSo
	zML9dAD+iRwQM9LXz6ZfEeFQIUtxpOWm7rsN/pmfgaJhUpQjHa1nARJ350bEqd4=
X-Gm-Gg: ASbGncuSXwAbYh/JD0R7lsxG7NTNRXU7W0UP4hOzw/FtBTWhXv5lGI1abhZxfBn14Sk
	SYpNMDAQ0WdvauUD/J5xseeE+POs4v+o4qtFa4xhHQ3SgXTiBlmBpGsO1oSz1r3adjiDhFEUHRZ
	IAeHPhCK4xzssatFt4XJ+9Ol+EDQdTMn1thGITXBuvMG1b3d9IV8GlsCj2VvKtmRFUPsJVjYRRs
	4jX/MaL3/Rv4DHVAxfD6kYPq5W9LYXr1HVJu32qCmaNh828rvWJ7a52LgCX29srluzEjjPQ+Emz
	b7PNDHZFJqnVfdhEQbHp2g==
X-Google-Smtp-Source: AGHT+IFnuv6eSrJEFnSGoJ55pW6N8ZEy/aXetue0XOxKvCv2upMLBhB089HmsyjDVf6iCwLAHcCppg==
X-Received: by 2002:a17:907:3f89:b0:aa6:9624:78fd with SMTP id a640c23a62f3a-aac3444eb22mr3253470566b.48.1735483836473;
        Sun, 29 Dec 2024 06:50:36 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e895080sm1362084466b.47.2024.12.29.06.50.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 06:50:36 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
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
Subject: [PATCH v8 03/18] dt-bindings: clock: imx8mp: add VIDEO_PLL clocks
Date: Sun, 29 Dec 2024 15:49:27 +0100
Message-ID: <20241229145027.3984542-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241229145027.3984542-1-dario.binacchi@amarulasolutions.com>
References: <20241229145027.3984542-1-dario.binacchi@amarulasolutions.com>
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
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

(no changes since v6)

Changes in v6:
- Add 'Acked-by' tag of Krzysztof Kozlowski

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


