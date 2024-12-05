Return-Path: <devicetree+bounces-127350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CD19E53A5
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 12:21:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2756C16A3A9
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 11:21:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A5F2207E0C;
	Thu,  5 Dec 2024 11:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="AHwc0Hus"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F8420765F
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 11:19:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733397601; cv=none; b=MxsIOOpwE916z2zc6lO+5Yej34WrxVpgh9eLFgqddKz3zMZGG5YgdR3+N6oIr8ZtOcQfWxjoXxNumLOblz7dBXghaOzA0LVNN9XugyJiSqsjgRI0InktFd7GJmz1mDCkikVtY3WRCScmoA57sYd2ok/nvlqnx29o69Hhrq3CY6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733397601; c=relaxed/simple;
	bh=3DxpGRCKL4R9VjSmR2NVJLH57WvAYh3dFS8JjLLqaGk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IEpKIY5MMc1TrnBo3DmVO1VLPLpEwmtNOFH2xym56AreWl/A73Ejv9yQ9QMq3a0RsSI8dQ0T17F+B56U/4ELgYPoPNabSLjnMD+wD4XkYFc+DKBicTNgL/Y5kOesCHmAo98nmIgglzwX6uQQy1qei7W6fLPtJm1RxPT7M+KnOPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=AHwc0Hus; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-aa51b8c5f4dso127752866b.2
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 03:19:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733397597; x=1734002397; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ixt9c4K83xzkiOz3qhQdg47ej3Uw5HCoJxrsxE8RGiA=;
        b=AHwc0HusZmiW8w6SGrwcwtXtrZi+tyCjs99HXXFI1pT+hq+DDBVYqg6LK6oHnqLPCz
         GMdxbauJU0CwDE0Dw6OyqOJ42khjznvx1V68mLgQP35M9wimGw2ZoeUhGwEmjerQPzRY
         revvTBUOs4ahNsRRtLNElD/n77XtSjfCEd5yM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733397597; x=1734002397;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ixt9c4K83xzkiOz3qhQdg47ej3Uw5HCoJxrsxE8RGiA=;
        b=T5Sj0Vz5E5YGqBdCc8a2ECqxUainHuTA13Fi9231PDv0m346uVs8Oqz+gRyrF4T5rp
         A/ybwkDjUPpl05BBk3LE8U4QfchMDJ7RwKJckmkbIS9isw0opwh+iBblvTMQZzA2tWbj
         CYreC+VU4P6BRM643yl4J6gii8g4as1ADPY0XbtLoh0cvBcB9G97NYKUbHXSmtIX3nEB
         ilI7SGmn8oyQPElHuRWX3MNxACaNpzft34wb/fw4i0IXDOnDSvv2a/iio3qPpWfYsaae
         Jbx/hKnRKiwNnOvwzt1wTySboeLFAOGR6Pre4ABtUHlHSyXyZNau+TktO48GEECX3jGK
         DKrA==
X-Forwarded-Encrypted: i=1; AJvYcCX4NOBMw1qTE/yjfOtXck3qEINDNVrAOBOEUkP2tkKqCwdIwVLvqNH0o2DW+fJmqCN7acBb9rqy5OXf@vger.kernel.org
X-Gm-Message-State: AOJu0YwJmEpfLxSt5XKtmjB+Fd3E5L8nX8qlzp8MwWLTnnoFWwqm5Idv
	yFVypW/SUsqX4BuqqBb5o+a477y8ANMtzxRzd3f2S5Te7aVTJkVkvVRlwwkajOM=
X-Gm-Gg: ASbGnct1DQdAVLU7Y1B02G6u0H4ori0E+/84edQb2NdEZShKGkpxycVHfZ6NXkUVa/r
	LdwQ7a6CjzG2Jc7WrfbCmFDXgjMdJf0PwOEWvwAtTKRkWdVwJCWK+/vElY+xdrgUshMic4qPJfs
	XfHCgBm48j8+9Kc2LtQoCOVp55CBi4860hNJ+4ANFEu4dklUrjGvzeUv9Xnu7XZxtkj5GeSYbjv
	el6W7AkstRdNYwYcCuPmAG04uBkeyhUom4axJDqhBjW5APf1dkJUwGH/aGJCI/lhDWaqNKPrXqt
	95X8XIQt+9MmE5xZH6ksFdAgA4PoA3p/nslJXlno8WlbSw==
X-Google-Smtp-Source: AGHT+IFUxRjQiwJBKQ510OqJX8yYu/0B+UpRJw9P4DoKOWklChPPw3p6pUsTHU0wT1h5Pt6jtQCb4g==
X-Received: by 2002:a17:906:3103:b0:aa6:18b6:310e with SMTP id a640c23a62f3a-aa618b63362mr373184366b.38.1733397597383;
        Thu, 05 Dec 2024 03:19:57 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2001:b07:6474:ebbf:61a1:9bc8:52c6:3c2d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eedcd0sm77505266b.87.2024.12.05.03.19.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 03:19:57 -0800 (PST)
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
Subject: [PATCH v5 10/20] dt-bindings: clock: imx8mm: add binding definitions for anatop
Date: Thu,  5 Dec 2024 12:17:45 +0100
Message-ID: <20241205111939.1796244-11-dario.binacchi@amarulasolutions.com>
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

Add the bindings definitions for the anatop node. The patch is
preparatory for future developments.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 include/dt-bindings/clock/imx8mm-clock.h | 66 ++++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/include/dt-bindings/clock/imx8mm-clock.h b/include/dt-bindings/clock/imx8mm-clock.h
index 102d8a6cdb55..1962b0a1e732 100644
--- a/include/dt-bindings/clock/imx8mm-clock.h
+++ b/include/dt-bindings/clock/imx8mm-clock.h
@@ -287,4 +287,70 @@
 
 #define IMX8MM_CLK_END				258
 
+#define IMX8MM_ANATOP_CLK_DUMMY			0
+#define IMX8MM_ANATOP_CLK_32K			1
+#define IMX8MM_ANATOP_CLK_24M			2
+#define IMX8MM_ANATOP_AUDIO_PLL1_REF_SEL	3
+#define IMX8MM_ANATOP_AUDIO_PLL2_REF_SEL	4
+#define IMX8MM_ANATOP_VIDEO_PLL_REF_SEL		5
+#define IMX8MM_ANATOP_DRAM_PLL_REF_SEL		6
+#define IMX8MM_ANATOP_GPU_PLL_REF_SEL		7
+#define IMX8MM_ANATOP_VPU_PLL_REF_SEL		8
+#define IMX8MM_ANATOP_ARM_PLL_REF_SEL		9
+#define IMX8MM_ANATOP_SYS_PLL3_REF_SEL		10
+#define IMX8MM_ANATOP_AUDIO_PLL1		11
+#define IMX8MM_ANATOP_AUDIO_PLL2		12
+#define IMX8MM_ANATOP_VIDEO_PLL			13
+#define IMX8MM_ANATOP_DRAM_PLL			14
+#define IMX8MM_ANATOP_GPU_PLL			15
+#define IMX8MM_ANATOP_VPU_PLL			16
+#define IMX8MM_ANATOP_ARM_PLL			17
+#define IMX8MM_ANATOP_SYS_PLL1			18
+#define IMX8MM_ANATOP_SYS_PLL2			19
+#define IMX8MM_ANATOP_SYS_PLL3			20
+#define IMX8MM_ANATOP_AUDIO_PLL1_BYPASS		21
+#define IMX8MM_ANATOP_AUDIO_PLL2_BYPASS		22
+#define IMX8MM_ANATOP_VIDEO_PLL_BYPASS		23
+#define IMX8MM_ANATOP_DRAM_PLL_BYPASS		24
+#define IMX8MM_ANATOP_GPU_PLL_BYPASS		25
+#define IMX8MM_ANATOP_VPU_PLL_BYPASS		26
+#define IMX8MM_ANATOP_ARM_PLL_BYPASS		27
+#define IMX8MM_ANATOP_SYS_PLL3_BYPASS		28
+#define IMX8MM_ANATOP_AUDIO_PLL1_OUT		29
+#define IMX8MM_ANATOP_AUDIO_PLL2_OUT		30
+#define IMX8MM_ANATOP_VIDEO_PLL_OUT		31
+#define IMX8MM_ANATOP_DRAM_PLL_OUT		32
+#define IMX8MM_ANATOP_GPU_PLL_OUT		33
+#define IMX8MM_ANATOP_VPU_PLL_OUT		34
+#define IMX8MM_ANATOP_ARM_PLL_OUT		35
+#define IMX8MM_ANATOP_SYS_PLL3_OUT		36
+#define IMX8MM_ANATOP_SYS_PLL1_OUT		37
+#define IMX8MM_ANATOP_SYS_PLL1_40M		38
+#define IMX8MM_ANATOP_SYS_PLL1_80M		39
+#define IMX8MM_ANATOP_SYS_PLL1_100M		40
+#define IMX8MM_ANATOP_SYS_PLL1_133M		41
+#define IMX8MM_ANATOP_SYS_PLL1_160M		42
+#define IMX8MM_ANATOP_SYS_PLL1_200M		43
+#define IMX8MM_ANATOP_SYS_PLL1_266M		44
+#define IMX8MM_ANATOP_SYS_PLL1_400M		45
+#define IMX8MM_ANATOP_SYS_PLL1_800M		46
+#define IMX8MM_ANATOP_SYS_PLL2_OUT		47
+#define IMX8MM_ANATOP_SYS_PLL2_50M		48
+#define IMX8MM_ANATOP_SYS_PLL2_100M		49
+#define IMX8MM_ANATOP_SYS_PLL2_125M		50
+#define IMX8MM_ANATOP_SYS_PLL2_166M		51
+#define IMX8MM_ANATOP_SYS_PLL2_200M		52
+#define IMX8MM_ANATOP_SYS_PLL2_250M		53
+#define IMX8MM_ANATOP_SYS_PLL2_333M		54
+#define IMX8MM_ANATOP_SYS_PLL2_500M		55
+#define IMX8MM_ANATOP_SYS_PLL2_1000M		56
+#define IMX8MM_ANATOP_CLK_CLKOUT1_SEL		57
+#define IMX8MM_ANATOP_CLK_CLKOUT1_DIV		58
+#define IMX8MM_ANATOP_CLK_CLKOUT1		59
+#define IMX8MM_ANATOP_CLK_CLKOUT2_SEL		60
+#define IMX8MM_ANATOP_CLK_CLKOUT2_DIV		61
+#define IMX8MM_ANATOP_CLK_CLKOUT2		62
+
+#define IMX8MM_ANATOP_CLK_END			63
+
 #endif
-- 
2.43.0


