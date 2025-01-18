Return-Path: <devicetree+bounces-139438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C57A15CCC
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 13:41:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 891F6161130
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 12:41:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33E6E190678;
	Sat, 18 Jan 2025 12:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="jEnRrtc1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D63188CA9
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 12:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737204059; cv=none; b=gF/+RPsgFiRc0cEb9WgK06z3JptLD2qnmBMKblTdSYog5ImSWXPPkh/BVNDws4rtNHh88V1uzg6/88Dn0/x/Uzwta+RFvxLvIb9k5h8gry1HfAqBSPIqabWbboiJWpRhlTmXK28lBT+HF5tMHOOxZUAWOUp+KBopJfJ3I7oYAtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737204059; c=relaxed/simple;
	bh=+1wDCnUf6V6waC2u4F0CjceMoJUJQ3m5duPgNX1wMjo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mbZ0BDliX0Q70EK0qbPvXqX+B/j4CcRWm3QKnrd6qFsUBFj6UvNrDGR0nq07CIbNqqpirznKUk9LbTIIvspRRk760mniB3dkB4trgtivXFm2xuSmoD9WeocBCTD3FvUFzn6r6HH7bMuAexVGb3QOq6v+XD1wQs9A3wWBhJ3wF4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=jEnRrtc1; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5d4e2aa7ea9so5559055a12.2
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 04:40:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1737204055; x=1737808855; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0D3K2ln9Lb+MNQxN4twGUjq+Zn0uEKE9IsRwsBI/jVw=;
        b=jEnRrtc1fZ16Ss8cvAwRGERn1hlQMPhcUW/QmU1wWDX9FfEK7tuFKe1lDFd5gkgthX
         cZ/DJdaHF8G2JK2EkV5gUIwXUr3uJaXrsnXXUVtGunmkCGc3YXyHCeNB2ULIO7sbm3LH
         znrBiiSb2aM7BBZpi+XExlexwddc2EJsY5RcI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737204055; x=1737808855;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0D3K2ln9Lb+MNQxN4twGUjq+Zn0uEKE9IsRwsBI/jVw=;
        b=HLskJuSSxdDESXZmYYJYw25sqQZ9NH9RHVpJ2Ducdz1cgzQAGqcJaqiatGnL9NJ6f+
         BQep0N0V9b+yPtumLYcUGXdYgxF5hzIFYlE7qjQdCbeqEFmKA5/NovibHVJIioUfT3WA
         Y/KiRgEA5P79YfScX/1q8FjI0qA9fYdVYBP906u1xRN0/66o/3wpkJGq0rgvYZtzrELT
         awfzm+MDgzIKgqNKC/G9FPoZLvqpv1rUTzfLc+vyQTQ23zmGbSS5+i8wgsUN5V1IlVuQ
         /eiiOpwR5uy+vBaF0wHkU9qdprf04DV+mudi5BfBOhb9wFVNasQwJVUTlDybyE9FVxH7
         TdGg==
X-Forwarded-Encrypted: i=1; AJvYcCXtTZuZyYcZJdlYKTF/lhm3Q/bQUnuXvpyC+h4BIGh2QT9V11WynX6yAvDE8h42cHhTPZG7f2q0sD49@vger.kernel.org
X-Gm-Message-State: AOJu0YzPcZ61BiQxh8AhwmV7Q5wxhdGUcHwTxg2QYcjVz8D+Ho0z6jrB
	hpjV4ncSu8xVZFf4M5Ly6EdW9RntxwX2+K85/gN2MkAf/C0hiUh8AtGhoPScn7I=
X-Gm-Gg: ASbGnctCsSztLPOI6EbhqyKSnOdjteKh2D81koD5oT3YvkWj4GumBZvrwPhbePFtW7g
	WsqlPIY3KpHFC/NZ/OEH1c6aEOa1I7DqcAV98XTQj3zlUWApfcjTfH30MiXYJpfcK5nckTyBnE7
	f12DioW4W4YMzRSJRGbC65hipPvTNXBdvJrvai3lhOXThovJpZe+3nMn79+gJdE0agtqB+egRo8
	OKZBxY3xhD/uxtG2Vi0NI8ycjzrIRQKsTRGklG+8LIyR80234i+SVhOpbq8gXOGy3WPYj5QnaEP
	tlSY5MoJ6gsON+Lw1lE9w42L6fyrS4zMVQd69A15W3F2UF+xr/p9bRtBYZ/Lx0c7XjIV2fXiRjk
	kfX1joVJ4gQd55WVGgShkRtR2fbkEOh7A+DIu
X-Google-Smtp-Source: AGHT+IFVLDpIcKBwO+dD+xXnPSPpQI/dJgVuL3F3TbrvT19fgtmNV4YfFeh1dKsUSaBkkFqT0HPP/w==
X-Received: by 2002:a17:907:72ce:b0:aa6:7df0:b17a with SMTP id a640c23a62f3a-ab38b29b08dmr748505466b.34.1737204055561;
        Sat, 18 Jan 2025 04:40:55 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-30-28-209.retail.telecomitalia.it. [79.30.28.209])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384fcd73dsm332562366b.178.2025.01.18.04.40.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 04:40:55 -0800 (PST)
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
Subject: [PATCH v9 01/23] dt-bindings: clock: imx8mm: add VIDEO_PLL clocks
Date: Sat, 18 Jan 2025 13:39:44 +0100
Message-ID: <20250118124044.157308-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
References: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Unlike audio_pll1 and audio_pll2, there is no video_pll2. Further, the
name used in the RM is video_pll. So, let's add the IMX8MM_VIDEO_PLL[_*]
definitions to be consistent with the RM and avoid misunderstandings.

The IMX8MM_VIDEO_PLL1* constants have not been removed to ensure
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

 include/dt-bindings/clock/imx8mm-clock.h | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/include/dt-bindings/clock/imx8mm-clock.h b/include/dt-bindings/clock/imx8mm-clock.h
index 1f768b2eeb1a..102d8a6cdb55 100644
--- a/include/dt-bindings/clock/imx8mm-clock.h
+++ b/include/dt-bindings/clock/imx8mm-clock.h
@@ -16,7 +16,8 @@
 #define IMX8MM_CLK_EXT4				7
 #define IMX8MM_AUDIO_PLL1_REF_SEL		8
 #define IMX8MM_AUDIO_PLL2_REF_SEL		9
-#define IMX8MM_VIDEO_PLL1_REF_SEL		10
+#define IMX8MM_VIDEO_PLL_REF_SEL		10
+#define IMX8MM_VIDEO_PLL1_REF_SEL		IMX8MM_VIDEO_PLL_REF_SEL
 #define IMX8MM_DRAM_PLL_REF_SEL			11
 #define IMX8MM_GPU_PLL_REF_SEL			12
 #define IMX8MM_VPU_PLL_REF_SEL			13
@@ -26,7 +27,8 @@
 #define IMX8MM_SYS_PLL3_REF_SEL			17
 #define IMX8MM_AUDIO_PLL1			18
 #define IMX8MM_AUDIO_PLL2			19
-#define IMX8MM_VIDEO_PLL1			20
+#define IMX8MM_VIDEO_PLL			20
+#define IMX8MM_VIDEO_PLL1			IMX8MM_VIDEO_PLL
 #define IMX8MM_DRAM_PLL				21
 #define IMX8MM_GPU_PLL				22
 #define IMX8MM_VPU_PLL				23
@@ -36,7 +38,8 @@
 #define IMX8MM_SYS_PLL3				27
 #define IMX8MM_AUDIO_PLL1_BYPASS		28
 #define IMX8MM_AUDIO_PLL2_BYPASS		29
-#define IMX8MM_VIDEO_PLL1_BYPASS		30
+#define IMX8MM_VIDEO_PLL_BYPASS			30
+#define IMX8MM_VIDEO_PLL1_BYPASS		IMX8MM_VIDEO_PLL_BYPASS
 #define IMX8MM_DRAM_PLL_BYPASS			31
 #define IMX8MM_GPU_PLL_BYPASS			32
 #define IMX8MM_VPU_PLL_BYPASS			33
@@ -46,7 +49,8 @@
 #define IMX8MM_SYS_PLL3_BYPASS			37
 #define IMX8MM_AUDIO_PLL1_OUT			38
 #define IMX8MM_AUDIO_PLL2_OUT			39
-#define IMX8MM_VIDEO_PLL1_OUT			40
+#define IMX8MM_VIDEO_PLL_OUT			40
+#define IMX8MM_VIDEO_PLL1_OUT			IMX8MM_VIDEO_PLL_OUT
 #define IMX8MM_DRAM_PLL_OUT			41
 #define IMX8MM_GPU_PLL_OUT			42
 #define IMX8MM_VPU_PLL_OUT			43
-- 
2.43.0


