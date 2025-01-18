Return-Path: <devicetree+bounces-139445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9DDA15CE5
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 13:43:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8129B1889167
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 12:43:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD69E1ACEC9;
	Sat, 18 Jan 2025 12:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="hfPsbb0R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D141AB525
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 12:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737204077; cv=none; b=J2Xo6pSOGfjuJV/JL1x/0KBF1RUh5k7w6gS9xUKCQNZA7Yst470aWwYoWOp1LYQsdmp+jRflQmFAVKWZ+Ymcv78SFulaRqXjD57s0viw5sUjPmi30XLfk2xWXEn1+4+F+rHggl9V1s/Z9cR+rvzMnW2uDcM6RsZdsznpbgKYb9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737204077; c=relaxed/simple;
	bh=gzAb8Vev7F0m4l48I407MYxa8qXR/pteEzI03GTE0HY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gj7AqQKHZED6HjQdMN8m1JMMSwj5qhx/zUMHpsgsy6o3giDlvyyNUND3cM8UdP5woLUZ2ivBPVKvh159bjUqGcX2KOjVk5GtUUjOAq+ShYReVKQlNHVNErWCJsRo/G4EmwI/8AjzgUrNijGHR2CHldjoG4GVgWUkYx0gGgFoOfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=hfPsbb0R; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aaeef97ff02so495378966b.1
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 04:41:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1737204074; x=1737808874; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FS59gZd32BjVBMnl0y8BuCd7aMfa22x1ZHu9pei4qQQ=;
        b=hfPsbb0RZboo7bLAneDWb/3a1wvPTtJoPVDLZBefQ5LfTV12KpoVPogCqPYLU+WHoj
         JyA6FmlfaYaHrgDUtHXGQaHoP8Fnvevp08VTM7/lycqcDWFzNhvLJAt3LFyf4hrnB+Jh
         DoRZw9FvfHgETuGhsvaldzwU0bkm8pytiabpY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737204074; x=1737808874;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FS59gZd32BjVBMnl0y8BuCd7aMfa22x1ZHu9pei4qQQ=;
        b=cis3+KGNqNZdCyQUD7eZOIPNRwYauyqA8X85FhAGUY4fyaRZ1YrEOctCGE18w3HnQ7
         t2+PSrnhq9CIxy+IJfcENsDbFNCllAFBxzoI/ShmVZFfU5RKmGU4FhICAtevWjZm0k9w
         VvHaMGFH3ZjaH/JU4Bpgc15xhxIRMwU+HcnuG7z9jKo9WrpRaHn/mjYSAD29ALCvaBkM
         ovOBjhzWd2tK5GUiJ/FOtdi7fcuuQXaypJywNsnJKPrAyDJ6MemUEq6eB3HRt98euLsG
         P8nFFeJuFUHH3isLag2d+6H0fQsvUUHbq4tTcbkJKBQtYJ6D7C24le3eopGRMqf+dL42
         mC4w==
X-Forwarded-Encrypted: i=1; AJvYcCXyoq7JGY7uRnmxohfFqEignVDxMrdObZg5KU/YSg/7rOa4ExZsS5f9vLqCxjSgnda6eTv9Y62PvZsI@vger.kernel.org
X-Gm-Message-State: AOJu0YyHCJoWuJJxr3fGcbYbwXOXGmQK0cj7wyRvGuOjt7z9q/1Pp3qw
	fR82GJQQNZ6Vr0lV+HCTApXgR9Cia+1ybCE+d3tJxgpr6ddwRMJubNkudEE0ZGw=
X-Gm-Gg: ASbGncsAoMDzxnLMIZq6/3YJpE9/a42/oQEs3fhBQNK/N/MAd8fuvzlQHTyOMbExm6L
	hmZdFz+P1GQkIxlBfJXGbJW8SXJXZT1skGj0HD/enZHZsB2h9rRDs4ZH8dfpXe4Mo0KdsLlOwyz
	zggp/6lgj3haRn9u45Hk7oTYoGoVOqrNOHTRXAYphTtxyjHy1ggv5Gikd8Ct4U91rXz6f/yOxK4
	Mh5m6fTD1tkJj5EQJ6YmeE/Fu0tFPLGLYgPxVmD8kFTKwLwDktFFwjILvDSIRT77jfCW7duC4RS
	n66xPSSiwSPF9tAAEnlHczWQrofRFqEYMrHvisRIcsgdwN4tsODOOyykMcEMAYttUwq6Kci4cCq
	ixyRpAqceeYfZS8uxiVvPXuCno6TsGhEID8qL
X-Google-Smtp-Source: AGHT+IGnqr4YT5Wzyd83pkMxDhSEUlvVDC6B0O6kz7Yyd6w6Exw8TgSQIXoiI4laqNBgm+rQzNW4YA==
X-Received: by 2002:a17:907:1c19:b0:aab:dee6:a3a2 with SMTP id a640c23a62f3a-ab38b4c6500mr487244966b.47.1737204074293;
        Sat, 18 Jan 2025 04:41:14 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-30-28-209.retail.telecomitalia.it. [79.30.28.209])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384fcd73dsm332562366b.178.2025.01.18.04.41.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 04:41:14 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v9 13/23] arm64: dts: imx8mm: add PLLs to clock controller module (CCM)
Date: Sat, 18 Jan 2025 13:39:56 +0100
Message-ID: <20250118124044.157308-14-dario.binacchi@amarulasolutions.com>
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

Add the PLLs generated by anatop to the clock list of the Clock
Controller Module (CCM) node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 597041a05073..79f4c1ae7d8b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -642,9 +642,14 @@ clk: clock-controller@30380000 {
 					     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
 				clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
-					 <&clk_ext3>, <&clk_ext4>;
+					 <&clk_ext3>, <&clk_ext4>,
+					 <&anatop IMX8MM_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MM_ANATOP_AUDIO_PLL2>,
+					 <&anatop IMX8MM_ANATOP_DRAM_PLL>,
+					 <&anatop IMX8MM_ANATOP_VIDEO_PLL>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
-					      "clk_ext3", "clk_ext4";
+					      "clk_ext3", "clk_ext4", "audio_pll1", "audio_pll2",
+					      "dram_pll", "video_pll";
 				assigned-clocks = <&clk IMX8MM_CLK_A53_SRC>,
 						<&clk IMX8MM_CLK_A53_CORE>,
 						<&clk IMX8MM_CLK_NOC>,
-- 
2.43.0


