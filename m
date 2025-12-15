Return-Path: <devicetree+bounces-246691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AB7CBEF09
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 17:38:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 92FF8306503F
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 16:34:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF7B228B3E2;
	Mon, 15 Dec 2025 16:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RVmUF1rs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF50E25FA29
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 16:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765816451; cv=none; b=oBOTScBZPU87j4NHtR8paUbi8M0OFE8GdL7Bi47TyHPBqIKs45AT7cpg3SDGDf2Q5aw/XOHBiEVh8Ke5j1RjCwIi7ZPXyc26Hha2FR47hA4X3CB7nyfoIJoTGDN/SsttA1lpTK8xyKcxX2KvabkImVMOoyMif1+NUwOLYkkgdAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765816451; c=relaxed/simple;
	bh=XmlUkydCYQcXlifUxleNLdJqiIvsyKaqfOvnL5yelOo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ak4n/z2my+bE9cVyWdTc+9UoQoRgu034ZKULnyuRmPsjRVOk4k8qA3m/yrDqEtQyLJHG1KpNua4R/V4aqve61thtkqx3dOZO25L9I56QyJQLoJCGqF5zvLLTFqZ3Yf9RMrD2lVRzY0rCa7DxxmHYgS0SaikW0+hS63nSu6/EVoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RVmUF1rs; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42e2ba54a6fso1467501f8f.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:34:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765816448; x=1766421248; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U/TX5+BnpmWjuJYnW43/G2VM/NbAbgOGwAVqzwjBIJs=;
        b=RVmUF1rsKRDb+VTA8sbAyEpLxT7s3vrQ0jbmePjBJ+rvvHsi3xBbmWtfvcKzxtwDRp
         MqNr0JwJdLt5QnB5u2qbbjTA4Z/r+0SPQI6l30KdK3tTCz/LfRHmkrgXpsdBcVAO4+7e
         et5F43DFSXKrDTXYFEBR/ZJpfTbF2Yz6F3s3FTGaDjtXTqiq0GSEQNghE9symzfRxuaZ
         QYo55+qEzgHA9QHKL+bJ7Sfg9e5ebGXgfvopL+28hAHGDlAuQR6QoCRg/4+gSJKAm8yk
         TypL0UPIZdYPXe5O3rAsvqxyIr20WwbjHl0t8nGFhYdKEpvsQ0uTBOllGwszHc5GduC4
         MiNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765816448; x=1766421248;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=U/TX5+BnpmWjuJYnW43/G2VM/NbAbgOGwAVqzwjBIJs=;
        b=JlV90JyTP0z0ZU5U87+qoRnBhq3Suxs4ef84y2dblIKCxTl1USF/LjOqZriDjJ2EzW
         YcFmAI7/btPc+Eu0utKMVml5g5TWBIG1+TnpwWXWYVHyqAZ4QO0MduXY3scsZ1oDUALR
         HnnjIVImVqrjHYDsVBKWg2OJ4wo/mu/q8HniRQ1axsyKQ6o6J5Z0MWhTDbLY+9h2SiRv
         PRKiBZ7EvDgTY0wtTiEZRRFnZuwihIQ6j/PduA8FLSBeDMH/AquqZNxtInWjI+aQeQOf
         VZ2He0uFVj5+ypOs5OTxWFIvUJ441COk46IxrcrLSxuhPczbydpPpflgcJ1LtKTNJNIv
         PAcw==
X-Forwarded-Encrypted: i=1; AJvYcCUca0HC3zqlZ73QCewLIJwuVjE6uAI70pxPSF+4+Vg7IqAA3LWNG1QwCoP49vDCjVZaN0mFhazhywXn@vger.kernel.org
X-Gm-Message-State: AOJu0YxZwDwQFSO2YRrArlp6n9xmyed4F+Yb+v/9kQ8pNg5Hvd4QchpE
	wmHj3X9kZS+ILjraXZ9gH9mldgluMD7CkgW95OIquUxI4l2jEeXYzTTR
X-Gm-Gg: AY/fxX5zGmagYKS8kBvdYULeKob3SG5st0qM4VQMXHASB/MFClYXKSdFOvqRQByVYK4
	v2rlVSB802GTzjWn3q42OpuBAH7IY0UISJ1OHYqlXkYoOTVVGt08krVRTVz3Y+rFmKYZZAq5AF1
	UdOUPJrf01MvIMt/PyKHOP7tdhAbGc4EWZwQH0cTrYy+0rHe/GmT0D4n5b9WfZ/A0bynCceGr8I
	RKz7UKrkCofI1yMyQ3qmojXUas5oNKIJmiLHN4BQgePs7KQ7M66uTUIvTQbiKpYq4kAfVPvVLN8
	tjA6PVi6HwpJdy3PySKWXR9laflknxi6/Fu2hjy/1mnbjszvuTLx3eut2P9aLlrOouMPHVM8ADu
	aXj4mb8XYr53tmjeXTEg44+bm6tpYROSzyPDAo8M0+m7bb0qUNNfCIBE1U3YPZdytHiRO3E9UEG
	7KcIBUKc6QhkivQaq5ZOI/0JBZxnzEgky9qLhjdfPC9+Fq
X-Google-Smtp-Source: AGHT+IHYeHLijFzb4sd6fLdedRXslNkS2azAY/KSNM1ZvwwKZmO3lm89mK8l8wexALHzdCMGcxa22A==
X-Received: by 2002:adf:a448:0:b0:42f:b9c6:c89d with SMTP id ffacd0b85a97d-42fb9c6cb31mr8167008f8f.52.1765816448094;
        Mon, 15 Dec 2025 08:34:08 -0800 (PST)
Received: from iku.example.org ([2a06:5906:61b:2d00:f5e0:bc9c:3d69:b37f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42fa8b9b26fsm32609640f8f.40.2025.12.15.08.34.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 08:34:07 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 2/2] arm64: dts: renesas: r9a09g057: Add DMA support for RSPI channels
Date: Mon, 15 Dec 2025 16:32:30 +0000
Message-ID: <20251215163230.227849-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251215163230.227849-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251215163230.227849-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Enable DMA support for RSPI channels.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g057.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
index 8b8ed4fbb599..9587733ce04a 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
@@ -705,6 +705,8 @@ rspi0: spi@12800000 {
 			clock-names = "pclk", "pclk_sfr", "tclk";
 			resets = <&cpg 0x7b>, <&cpg 0x7c>;
 			reset-names = "presetn", "tresetn";
+			dmas = <&dmac0 0x448c>, <&dmac0 0x448d>;
+			dma-names = "rx", "tx";
 			power-domains = <&cpg>;
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -726,6 +728,8 @@ rspi1: spi@12800400 {
 			clock-names = "pclk", "pclk_sfr", "tclk";
 			resets = <&cpg 0x7d>, <&cpg 0x7e>;
 			reset-names = "presetn", "tresetn";
+			dmas = <&dmac0 0x448e>, <&dmac0 0x448f>;
+			dma-names = "rx", "tx";
 			power-domains = <&cpg>;
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -747,6 +751,8 @@ rspi2: spi@12800800 {
 			clock-names = "pclk", "pclk_sfr", "tclk";
 			resets = <&cpg 0x7f>, <&cpg 0x80>;
 			reset-names = "presetn", "tresetn";
+			dmas = <&dmac0 0x4490>, <&dmac0 0x4491>;
+			dma-names = "rx", "tx";
 			power-domains = <&cpg>;
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.52.0


