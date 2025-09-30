Return-Path: <devicetree+bounces-222710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A10DBAC20B
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 10:48:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B3B79321205
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 08:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 400222F8BD3;
	Tue, 30 Sep 2025 08:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OBAmdwuu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8852324166C
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 08:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759222025; cv=none; b=nC/IwPENDktyitrSImndOG5nWMSQNX6z6AUhjK8DxLrTyQfdky4vUSx7j5hC6n86GKaPMfBui4cLM9wXPADIwb5MgyrR5tnJZug+deJVORLRl8ZNUAf33g4/1qr0BFz8Bk3IoMaIppj9J0Z8rO+zV0tYBuI6KD614gw4yTVnf80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759222025; c=relaxed/simple;
	bh=JE5vzNG6Sy2HEFoz+DBwUg/nv8rP+wKI7N6BxDeuvto=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=H+FqJE1/JKu/+SVQLh021OTrK4RCb3iCk4f2t8BFkoSWGfVJ8qrglL3yJqUHjMvG4+dtf2h3H/tm/bP/XCZZVrYIvDHkeg5hMHzgtxZNRevpC4rdgDgf51yur3c4TYOPa2QpUXRl/B7E1Kp2iGLms/rBId2wdOuyBtUkpDGNboA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OBAmdwuu; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3ee12a63af1so3687207f8f.1
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 01:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759222021; x=1759826821; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HQSp6khD66PWakk86QjUyhjTSipaHZaw5SNW0wYKmlw=;
        b=OBAmdwuueYmyBTRRG0U2mpZPkWRuEtqLS6p43sBi8sZEx1TdIpEbpllzKMmBhMOIeQ
         BiY3fYAjQa00aslOQN6Q164/9g3WC79Dx5axj9RU7Cd/hDWtDUnuPa93C7tcEnRilLNP
         c85AcXeGByCdyZATxwWkaVp9MaypIC7IQiK0VLmHviinA9k4/SI87uM+l8HZbNyAo6WB
         9g6Zk1DPsVJMeR5kz7DgpCNUBSKTlLHjRWvsHCojktrA8+xlIZ51K0DnEJ10jWz2qNeD
         4pKdEwjMUzvNByYJ2p7CIjqrxGhRv5euJUt6H8CEWVBHkGlLDlaQoKZ8rusY8uI/xLKk
         BGQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759222021; x=1759826821;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HQSp6khD66PWakk86QjUyhjTSipaHZaw5SNW0wYKmlw=;
        b=VFr2oysmsWj+bkwrmBH/6poim0CySgmLZXJifd1vQXIm3mIij0mx4qoN1L0QUiLqdR
         eoTw99H0Ucsw2JS9EbJMPTOCH89QtA0ZXxRhyN18PQ9Inu6byDNOQfgtYRW85cROURsQ
         Bt132xIVNChZc14ab2WEYxcpMWOzfLpbhApYSREY+taG/U1Pp4SFdXesTlvk8y4CNw4a
         RmpmXisQ7u8Q3Tkcvjj6MAyadD0gv2GnmbE/GFjgqdLnA1m4TMuRWbwKN94qzqm2krNA
         iCEZOc1gh5+Fv/ZBcpUobKDDCJiStznnNftZYONEv0xqV2v54GLgaBmOjo18/EH436wF
         f8sA==
X-Forwarded-Encrypted: i=1; AJvYcCXSqC7EJcfgw1W/n4tOhaIaVSzIXj/kLd7rvRhXomywqwGHvNUAtENzg3wz8b0FUL82iaa81bC+t+eX@vger.kernel.org
X-Gm-Message-State: AOJu0Ywcz0mQ3rvT6LvmaVD1bJv1xynikKeqa97+wIVQVN9PhXx1DIlZ
	WKKrK0DniNPkIBB44zqt9VCaVaj2vdaNry+7yY3mIf17CJnE24vjlvlz
X-Gm-Gg: ASbGncuWCFBBRfaN/oSUBL1bL91Sb6GV7KXcsDfZ89nEDW3tsLXZmCGWzkgT/l0M65j
	9isFOuNppK5wRmj3W2GkQkLgxBI2H0SHzETyzOYIDqVT8Y0cIy6VORausSu6acePZ+RWwftw38e
	iMIWxxU/Jv/bkBkxKqay/pYCkqE7hyROQOjfNhXGt4W6i9iAPfUMlwlZABJn3KxkjEKCCQaqkN9
	0byy/PASJ5C5CTNWNV33WIiBKysexioKmq9MzOml2b3+dOPevTkhwgoHiJIDkVuDWkE6AZeAZHs
	dLBuECRwXoHNL80qguAka3N0RPKi75og+UYvy87/7koWo7dIz4ZGHnb/PaZaxgd9C7+o2MIGXv4
	aaHxU/ynm/RVNN4QYhkZfTvDVfILTiv/AsQtSSKfSiLlkpWKfgWZTUsEVxpzEPE/atdDIfzb41P
	6KyTfARBs6Aoi3+/i/UMH+hNftvsLwM5NcGVZHvrsb
X-Google-Smtp-Source: AGHT+IELjz8q9Wh4r7dTEajOLlhaehyVXuIINojrCEIqJ4/pZdMgPhXlF8x51ihCR4TA5ozMBPdmQw==
X-Received: by 2002:a5d:5f85:0:b0:3f9:1571:fdea with SMTP id ffacd0b85a97d-40e4cc630b2mr20809863f8f.44.1759222020801;
        Tue, 30 Sep 2025 01:47:00 -0700 (PDT)
Received: from localhost (2a02-8440-7149-a758-f461-9bc4-1c75-ebc1.rev.sfr.net. [2a02:8440:7149:a758:f461:9bc4:1c75:ebc1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2a996e2fsm282983795e9.2.2025.09.30.01.47.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 01:47:00 -0700 (PDT)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Tue, 30 Sep 2025 10:46:50 +0200
Subject: [PATCH v8 7/7] arm64: dts: st: add DDR channel to stm32mp257f-ev1
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250930-b4-ddr-bindings-v8-7-fe4d8c015a50@gmail.com>
References: <20250930-b4-ddr-bindings-v8-0-fe4d8c015a50@gmail.com>
In-Reply-To: <20250930-b4-ddr-bindings-v8-0-fe4d8c015a50@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Julius Werner <jwerner@chromium.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-0dae4

From: Clément Le Goffic <clement.legoffic@foss.st.com>

Add 32bits DDR4 channel to the stm32mp257f-dk board.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 arch/arm64/boot/dts/st/stm32mp257f-ev1.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp257f-ev1.dts b/arch/arm64/boot/dts/st/stm32mp257f-ev1.dts
index 836b1958ce65..c4223f06396a 100644
--- a/arch/arm64/boot/dts/st/stm32mp257f-ev1.dts
+++ b/arch/arm64/boot/dts/st/stm32mp257f-ev1.dts
@@ -41,6 +41,13 @@ pad_clk: pad-clk {
 		};
 	};
 
+	ddr_channel: sdram-channel-0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "jedec,ddr4-channel";
+		io-width = <32>;
+	};
+
 	imx335_2v9: regulator-2v9 {
 		compatible = "regulator-fixed";
 		regulator-name = "imx335-avdd";

-- 
2.43.0


