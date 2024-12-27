Return-Path: <devicetree+bounces-134415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4CA9FD63C
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 18:00:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0BCE57A2979
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:00:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CDDC1F9AB9;
	Fri, 27 Dec 2024 16:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Afwk0LMu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7EC01F9A99
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735318667; cv=none; b=Q+NXdI+bIUry1mh2ZgYk0ynkXA98ewWGZfV/XkT8w/Vspr2AT1pi+wcnzQc7FYXfokN+efTwAP0PjitKxaUeHpjdNTs7sQijQ8EtTpC9RwwrIYYnVFBbbBj+tizgllb9W+7YKzF2116BGnQ82gkb6AREH6rKMM71l4zQMgTqKjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735318667; c=relaxed/simple;
	bh=ki/DJ8Sz1UQ1qfcYAiqcjACcGQgLsaYpFgvc92kQuC8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tGWPsmIwB1mGosVgpb1IQ/qsi16wWbmqcR6Ig8HjI7DS5gjbMIOZSmfrsj358G+QA/urF79KdbNMUYM3Rv3RU8dFeRYWB4fNSRX06laadU7Iq9RQHqMnpzf5NsgQt7dvQQmnTypsOi4ONzRDg4D88OKRmmBQNkE/TE6LwfVvHiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Afwk0LMu; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a9e44654ae3so1198530666b.1
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:57:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735318664; x=1735923464; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S3H13EAbQnYh5KL130M+yAXwGl0WzQAYvdh+BFvfpuk=;
        b=Afwk0LMutQaEaLxBJLGnPjHAts9csBNhb9rwo85h0zK50xNOaZUQO7+W5ZB8zD+Sn5
         IaZAxTP3G7mv/7hli8LZcgEdHk3zWzAndzq315/xfCAuLWXKGWwXkvKp5NeNRwqydSyE
         y9MvEg3QIyFgIE+MREgAJddYaUL25KJsTB1tc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735318664; x=1735923464;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S3H13EAbQnYh5KL130M+yAXwGl0WzQAYvdh+BFvfpuk=;
        b=aOgqVyR1wLx3DqZp6SvqA5Sz5lcKzd+tnIkwchRzOR8uPbyuiZCg6s9UOzGnaSqR7S
         zTH134+DeVOcdmjIJUIX6pVDouF63H8oUn3sUPEwJor2FB8LpT12694CLnpNJ2VPtzde
         AcKOHcJP85G9qGzw5Je7Jsri0NpRIFa9fDR4RVHUbRuonpZS8S9OvKyMKlxzICx5WiBw
         DWJPp4vanpuFm4zYdLJM5uI4r4Z3cSOEtjei3oK//SBayxJUPZd+iwX1YM7oeuGBn/r5
         xYqU7aqfeshSRiljjEOlWIPusOPwlC8qG/Wdlip9+38qVSxkZ/u0JWzLXEWkYt0rNVxq
         jyqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVmx0leVGDSyMCDrtA3d8ZJPJcN+4qbir+mWnlw67T7m2YmETh66VhOfs7qmjYWpHctPM4vhbv5+v0T@vger.kernel.org
X-Gm-Message-State: AOJu0YzwRSjO19w/ppaV2/hzdfIXp0hoGBpm2E9dLGvZn4BliA1S1Txc
	NJFwbyn5tvu8zmSqrD9fw3lmq0i54lwEbR96DqzGLg2ZqEu5tvo+322hIE8C0uA=
X-Gm-Gg: ASbGncsT2L+Nvm11HlkkYMyVaeAPlGV7Apw9f5tA4Uz/P9kI4WafiBe61dKHzykOOJR
	v+BedNoyVfZb5BEnVYO6u1PGyAHi1oF0N/l3lxiiveHJxqZ4fWchd2LrPIcMZA67znXgZynFj5l
	/lYeUOkRF3l9ESFfXC/ySdLVBrZfROwrPYTSMpgCP9Bvb4NpxE2w7vFtY8kKsWB/OFsq9S/dRfj
	lt/pINfsjAgLdkAo73YMkDqE+0AuwCzdz5B0e6vdTPn8bI9Ejfg6kNNs0A3TXoRA3NmVRkabNwz
	r213LSjE/mRtJD4xa9NF5g==
X-Google-Smtp-Source: AGHT+IG0IOUDjXj7M8HLWY3rdlmEmUiO6k9aRVSVPoDq9wO9uWrUVEvcWB+pKuqU8J+AxzpC5sR7Iw==
X-Received: by 2002:a17:907:3f12:b0:aa6:7220:f12f with SMTP id a640c23a62f3a-aac2ad8abccmr3008858366b.18.1735318664166;
        Fri, 27 Dec 2024 08:57:44 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f0159f1sm1130097266b.154.2024.12.27.08.57.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 08:57:43 -0800 (PST)
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
Subject: [PATCH v7 12/23] arm64: dts: imx8mn: add phandle to anatop within CCM
Date: Fri, 27 Dec 2024 17:56:15 +0100
Message-ID: <20241227165719.3902388-13-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
References: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the phandle to the anatop node within the CCM node. This makes
explicit the dependency of CCM on anatop for generating the clocks for
the on-chip peripherals.

With this change, it will also be possible to generalize the CCM driver
code, as it will no longer need the platform's compatible string to
retrieve the anatop device node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v7:
- New

 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 49be492b5687..68efa77535cb 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -646,6 +646,7 @@ clk: clock-controller@30380000 {
 					 <&clk_ext3>, <&clk_ext4>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
 					      "clk_ext3", "clk_ext4";
+				fsl,anatop = <&anatop>;
 				assigned-clocks = <&clk IMX8MN_CLK_A53_SRC>,
 						<&clk IMX8MN_CLK_A53_CORE>,
 						<&clk IMX8MN_CLK_NOC>,
-- 
2.43.0


