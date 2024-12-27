Return-Path: <devicetree+bounces-134414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5E49FD639
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 18:00:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6C074163B04
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:00:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 003CE1F9A9E;
	Fri, 27 Dec 2024 16:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="nVV91uBJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E74A1F9A83
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735318665; cv=none; b=i2OWcBcAjgjL5ERXsj/+R0mHBK/wCXt11rsqkAz8fAFoRD5AEcaJsc+Jj1t0ccBdCn1tbJOFjnjRGS+OetiGUwH4Arslt9M5M69w1Zs7mTAm93CR2lUJUMWf64VPczqT1o2zqJSqdQcoHGRyI0D8Ag7v+QYYoByUbPRhfcovXis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735318665; c=relaxed/simple;
	bh=VanAOZliSmRzy7jeQcKxNf50IVe/tzUMFdewwmrY7jA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VmjpLIJTrjX1UecZjw12nC7a/U/cMSbaNFaqpQdbStE9JmmtQ1OkET+yl8t8wud4Qn8Sbuy13sUV+wGkKdGeO1OJSHy5C2ZYtZdtj+ZlzkUakz8u0oSK1zVxPL762dfjl59GUaxviKlrsesn5vVUPsHYxaXI7dpkddu3+geD72Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=nVV91uBJ; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-aa6c0dbce1fso1034703466b.2
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:57:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735318663; x=1735923463; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2+Ol509AXN9QcKlnnsRu6lr9QP7BcBqQWxrtIjE7WLU=;
        b=nVV91uBJTbLGcDDYpJEFIXpv3FUjRqG+YKq39ACl+q9RAwAWYtlJVXnIDuObsuO4tj
         giFBevTd2K0Z9V58cR1zP6oSBaBTb+dqDt95XpcXf/PTv7sr0gL6ks6PAcL2264G7FAH
         ROa5mIxi98blz4zi4qWi2HNnu4kPyr6JXez4o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735318663; x=1735923463;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2+Ol509AXN9QcKlnnsRu6lr9QP7BcBqQWxrtIjE7WLU=;
        b=Xs4CCJrXnQvUu7Kt4unP/cPQ/dGEWno1czuzyOaAAGtQp2Y3zP0XI679eGhDZsuB0T
         6qa3k1rKLSq+/L27I1CAKGaM0RMHpcr1Gz8jJ2pyhr4vlrGuM6pr0vSzFaia7g/R8k3p
         DWVul0gdpN8kODKXE2+chIiIOZhvLibUWiBqfVy/ed7e/eEnHx6KA33B+Bv1usoD0JwW
         fW4ifBNm9ud/mCTivIOMpJvOEFraxX3VsoCyeprjiANKZYrqi/GwtEd3uXI44B6LuSC6
         +rPLj9gnjwYM8cBZ258LBcQeLd4fx6jOVi05AXxLLUlITZUhoSGgcc2J/rmCcbPVK39X
         t87w==
X-Forwarded-Encrypted: i=1; AJvYcCXUtj3K+Gw+i+Tg12YR8uE7qOHLbeMyzaDlBNpyPu1jBzDHy9cza2nBi6JO6aGtBDp0F10cFDfsmoZ6@vger.kernel.org
X-Gm-Message-State: AOJu0YytXeq8V0xs8IRtM9cPHgMrGSYtTpIzcZQoM7dxXoq+Bs8z2XGc
	ahRGekM5B5hSBX+kF2SKR9fJ7kC1GyipMx9CZxc8UOlaNS6DAVhTihCV7bYyWyI=
X-Gm-Gg: ASbGncufkcgbI4QLd8QaW9szbhd6aT3KRBd2C4kFQoULRZI7xymbAHbFzjlYisWwZFu
	ljCv166YWAztQ13XJV9HtPmBpfHZB7zMkhFQh0tga2YcNNPbIIRVglW/LEalyP4k3GP/ivQ07RC
	Qj6jsPXC6y6wBpYJNoVdVvjAFhareYsGKqtyLf3KwnR6hV0oBbj+Te3ihyF3TbQUg09O9H/tHF7
	wGm6dE8mPBXjV1/c5FPPoVv8ww6kSRQLvHZCbVJJhUSt0sQPuBkdJO60Bdy4XMwz0aInET03iZY
	6FwTSi5xpdId0ACuSkf5qQ==
X-Google-Smtp-Source: AGHT+IGn15Euo6aKn+YqBtAxfzqKuDORdglC2oyMCv+ocfoAc484ttWncQyapARm20g2sBw1veFNrg==
X-Received: by 2002:a05:6402:3206:b0:5d1:2377:5af3 with SMTP id 4fb4d7f45d1cf-5d81dd83b23mr61279573a12.5.1735318662742;
        Fri, 27 Dec 2024 08:57:42 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f0159f1sm1130097266b.154.2024.12.27.08.57.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 08:57:41 -0800 (PST)
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
Subject: [PATCH v7 11/23] arm64: dts: imx8mm: add phandle to anatop within CCM
Date: Fri, 27 Dec 2024 17:56:14 +0100
Message-ID: <20241227165719.3902388-12-dario.binacchi@amarulasolutions.com>
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

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 597041a05073..b1a4cc521bf4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -645,6 +645,7 @@ clk: clock-controller@30380000 {
 					 <&clk_ext3>, <&clk_ext4>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
 					      "clk_ext3", "clk_ext4";
+				fsl,anatop = <&anatop>;
 				assigned-clocks = <&clk IMX8MM_CLK_A53_SRC>,
 						<&clk IMX8MM_CLK_A53_CORE>,
 						<&clk IMX8MM_CLK_NOC>,
-- 
2.43.0


