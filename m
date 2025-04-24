Return-Path: <devicetree+bounces-170176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D352A9A1B7
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:24:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A10E81947026
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 06:24:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18F361F5617;
	Thu, 24 Apr 2025 06:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="E34QRgoS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2CF1F4623
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 06:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745475738; cv=none; b=QR2mx1qSBp3cJS9vnae12Ftwc0gME/t15A8Ulz5PCPDZd8FRoq6CY7ZIJ22ZXIjw5npqutD83grWmkKQhaCO8Lv3+QgNc22NOdGubfuxO4YXqcdvbIkMtVzcI0Nu3+ntaCmRhAydFE0gaJ6B3jvNaDCi+uMBatK9RNbmUi+g5YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745475738; c=relaxed/simple;
	bh=vc25/TFqvg0Ekr2Sm4G/VkkviBdPeMF5e7FdTWNCvAE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=msbQ5ptOnd1sSXfZx9Z4xPQNDEyVh/gpRUheA//s8p3dLsWaFk7Izb7zWrMPWUGfqSN4/ur3CHJyrOHO3AAkdWNsMg0J+rpG5U5AKRz2pgQb0oAfTjn/RxPVCzrN0MGgkKXXpqv2jHpeYth8i7Pl9KlfxsvqTTTYddSraqJ8YKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=E34QRgoS; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43cf034d4abso5303335e9.3
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 23:22:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745475735; x=1746080535; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BHj8xJJDjB/nn7+FV+WNgNcGZHPneQlK/63TZumKERk=;
        b=E34QRgoSkEbj4X6OtPu93OXSgeojddc95KPvVYoEKs4Ja90NzfqNqHmfXjTZdHbzsS
         PJfKvFDmYPvOBzn+C29xV9y626zFmYTjeZ2dJEKHtlOs+HKTKlNXlc4iruprptapVOu3
         AaJPF4rKjv5nbH42arMkCrmaY0tycVj/Vczk4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745475735; x=1746080535;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BHj8xJJDjB/nn7+FV+WNgNcGZHPneQlK/63TZumKERk=;
        b=dr1sFLjGRYOgWwi0YnXHLIMGrsjb1tjgwlKPIN0B+z4cJKEisDxMwFPWY48M3Uw6/O
         DF7q0PnH37sPTjnX2Ik6o+8gtU5MKzY5y6XEquX99KNaRlqZiNw86YZXbO7E6I5Zp4L1
         ARtxIs8O1LNR1KJ5ehshOugoz42U40xYuaxU2Dz2db0U5exTMpTEuaW+B/1SG9NZp1yO
         yPLVA8NJqzg7Q8rH9MTYX3V5JdTcIlTZ+u2mHQqy65o8P5kciR/feKc+/WWe3aia9yXh
         VzUPpfELy2h7OwGKSNXLefNhmY4uOSOEG9MixWqo5Y83/9EnX1yP7znpHplbBkLvR+td
         XR3w==
X-Forwarded-Encrypted: i=1; AJvYcCXi0KAQsVr0D3TbGszxODP4oYEi8Ox4swFGoDTAOVdy25Sbpg1w1uObwbyWpiP5uexFcL/ykmh6z1bD@vger.kernel.org
X-Gm-Message-State: AOJu0YxW72vqKQoC8f0MDI7weGDCtF5XmVvo920HHTW52jWksw6Ev591
	27lVuuaEgPCehx6VoBqrGjrbsKRBVxYZkG9kDG/DXIIKAKRfudZ2g9VbYLd+VJQ=
X-Gm-Gg: ASbGncuzt8JA29I4vdOIh9SJ2a8Ik6v1L2ykFYabrNNZhXFVAg6T5QhiWMkFGIAD36n
	5RvBCggistfQdUf/+SqdWtsyWCyZHu8pVhZ+Ctkmq9N+XcCRUZPsx7ugjrrRz1yCm7f9umsZdkn
	PPhXcU/wYfNOhl5UUsVoKroJP29M9Npv11c+BHtxClmFgNkvtVTECldZOugDRl8hOezlmMvpumO
	8BjkGP7TyQtqcXCTzX1aVl5ncCzAkG1vU41Um7wfdvZtpO60Cxlo1nGV1t/eKwQcIPXtp2L4xvD
	W/S/dJvKl3T0rpoDGWGExGug0aRWi1P8XWPk3eds74e67Aobmos54NAbce+ONAEBiHt4tGe02oc
	hs4m3
X-Google-Smtp-Source: AGHT+IFfEKxdwofjLbOX41KrgGZVFzC2ffJ2xkKI3k+BOtUiPjGXL5Rc03EhcJrNDo7yGHkwvRfbrQ==
X-Received: by 2002:a05:600c:1e8c:b0:43c:fb8e:aec0 with SMTP id 5b1f17b1804b1-4409bd236ddmr9097865e9.1.1745475735057;
        Wed, 23 Apr 2025 23:22:15 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.65])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2bf8dbsm7243435e9.35.2025.04.23.23.22.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 23:22:14 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Peng Fan <peng.fan@nxp.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	linux-amarula@amarulasolutions.com,
	Abel Vesa <abelvesa@kernel.org>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v12 09/19] arm64: dts: imx8mq: add anatop clocks
Date: Thu, 24 Apr 2025 08:21:39 +0200
Message-ID: <20250424062154.2999219-10-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250424062154.2999219-1-dario.binacchi@amarulasolutions.com>
References: <20250424062154.2999219-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index d51de8d899b2..1d1424a136f0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -817,6 +817,8 @@ anatop: clock-controller@30360000 {
 				reg = <0x30360000 0x10000>;
 				interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
+				clocks = <&ckil>, <&osc_25m>, <&osc_27m>;
+				clock-names = "ckil", "osc_25m", "osc_27m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


