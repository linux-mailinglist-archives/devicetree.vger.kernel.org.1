Return-Path: <devicetree+bounces-154793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 708E8A548F8
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 12:18:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C26C189539D
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 11:18:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB04220CCDC;
	Thu,  6 Mar 2025 11:16:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3WS3jD5z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC7920C03A
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 11:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741259769; cv=none; b=MzdnWlhxde8tvymFktsjumm3RlUxaNxTm5edLs0FEJHVAosDbrgQqTRYbfYJ1CxKGwpgXuE45xez7StiVwfhfewduz1aFvOpnh3V+khTzUzGPkN9jYMXkWarIDPupx8VP+VNEfJsVUeJ/NeqlBUyo8mswsIdH+qjLJnGFdzDSt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741259769; c=relaxed/simple;
	bh=qOYKpbMRlS3QK+lIBKOrbvUoEPJGZTbJFamIqalYLfY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=l9a0ScDASpOzIZE7wbKqO9EVfr0U7VIw01QIsnhIiwXlhRg112cYK2QqjdCF9PFR0jboYFQZPdBUmvIciHiXqyX/DH0nH5u7JdzCHCg+5o/VBTbBHohqusopCP8v47xFDljggJ4TRZrM/i2/HFXPck3NPBkHNnOPCkm7RWR0Ilc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=3WS3jD5z; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-abf4b376f2fso94863066b.3
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 03:16:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1741259766; x=1741864566; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NBtLLuJtQawAmT+r32Eq/8y5p2QwBqnC69olS/VYW6A=;
        b=3WS3jD5zlh82DfEGReKrM12LNTcS7LsAOuM653vdCkcmagUOvJ9eOXx2/FBx35I5XH
         zWgQVgLvWzFFVC7J6VxSadgKK1yxOXtYk//5rrPCqKlsbc89BIzuj7QyPHv46Ee+jIcz
         lz0+jy+eCFzyHmgiyVecaASutA7vuPPmmlR9aQqditVRzM2sqTTmFJ8gkhzW6yb6kUfp
         ZPaeB9QL2s/DWpEqci0JPNzJQl2fXpvA+DuDee70XiaWW7EahcQjXEnac/Q4E/G9jtH6
         gYoeVNwoFcT1BoHwc6tem6kCTv9Y1bf3ymEVNay7sBFI4Rl+nTinQBMyyuG/OmoErONH
         M+Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741259766; x=1741864566;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NBtLLuJtQawAmT+r32Eq/8y5p2QwBqnC69olS/VYW6A=;
        b=erunSdV0zPjH7rf7GZVD10/yHGrxkfeOy0GXJWKw/0knhsRAaYdSJlGWUvBvWqzW29
         Sd+cNrBngQGP9h/Wm49tRLilNO7pE0fRiyU2DJaAJowsTze44rlWYHSfVm6lynv5HTY2
         aI3jZCLjDRdpiqBlz4OZt7+pKIoHbJ7znPtiVzpH/U5Epoj07twcsLVDYvT+0Z1lBuwA
         VnfMRV+K1HfiOGMeEw3NpP9fcgMUHuvJWaHql7QtisqUKR5SM+6fRCu6pCfkW+DKkPx/
         wKjfxV5QNregg2fseV20w8OQxqHMtdpp7Ol8opInO8g3b5FCpFSkGrYJMQsyeXcmCKK7
         FeyA==
X-Forwarded-Encrypted: i=1; AJvYcCU1kF/tNWKtxCP26HYT0qq8ovLxNZx0zplBAsmEcqgthFJ9l5+3gF5QBcA14n7WKURkNM9iNPfVNAwQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzFMyItXx2orQoJAvZHVZSaeed/ft27JcQiFbD5xnXvvw6iSfkq
	wQCw9GkN6Sh1p9MkmJgIZJheycBbfUEK1iawYi4lqCJGfos364aETgWcu5BzVjU=
X-Gm-Gg: ASbGncuSv0mm13B8Zqz97W9qW96dxkVvZHDphSlQBunovo+fh/uz/R/m8HHHcuMss3W
	7XuohOFtX+TLQLs3I5w4FT/zcUrLrB8I0oV5W9kwctoGZrDah1Vw/n093olaet/WyFpO22mZ6Mq
	G3NaDxtEIkijGxdgQ9iq/oV/hDdAWHTtaN7eEWdwqVx8s0FI+k/yPk52eFu3Xo3ftLlOYpfMrNg
	dYmEvACC/jmzGJ7/z2mzWYvcBWUvmfRz+hNrcP3OvdpTGbOJqUWSUB521IcbsJNDAbCh8xrkKry
	eCt1/9AniAOYpDS/2z+42OW3/z9Y+07fbn7UcdqwsQ==
X-Google-Smtp-Source: AGHT+IHDKbTWou3q5mDxSt8FHLnziuo08sCEglEWRUMKQ7Y9hisLFsVJQsvUMtxNQ6c+a5VsArcttw==
X-Received: by 2002:a17:907:d092:b0:abf:56e3:e88b with SMTP id a640c23a62f3a-ac20e152abdmr626151966b.38.1741259766007;
        Thu, 06 Mar 2025 03:16:06 -0800 (PST)
Received: from localhost ([2001:4091:a245:8327:80ad:8144:3b07:4679])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-ac2399d850esm79391966b.173.2025.03.06.03.16.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 03:16:05 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Thu, 06 Mar 2025 12:14:46 +0100
Subject: [PATCH v5 08/13] arm64: dts: ti: k3-am62: Define possible system
 states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250306-topic-am62-partialio-v6-12-b4-v5-8-f9323d3744a2@baylibre.com>
References: <20250306-topic-am62-partialio-v6-12-b4-v5-0-f9323d3744a2@baylibre.com>
In-Reply-To: <20250306-topic-am62-partialio-v6-12-b4-v5-0-f9323d3744a2@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Santosh Shilimkar <ssantosh@kernel.org>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anand Gadiyar <gadiyar@ti.com>, 
 Chandrasekar Ramakrishnan <rcsekar@samsung.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Akashdeep Kaur <a-kaur@ti.com>, Kendall Willis <k-willis@ti.com>, 
 linux-can@vger.kernel.org, Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1207; i=msp@baylibre.com;
 h=from:subject:message-id; bh=qOYKpbMRlS3QK+lIBKOrbvUoEPJGZTbJFamIqalYLfY=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNJPNp+V3yGc+qNG9BiLi/1LVZOmpd9PbbxY+8p5uma6l
 sKOh0tNOkpZGMQ4GGTFFFnuflj4rk7u+oKIdY8cYeawMoEMYeDiFICJnNnCyLC2pS7zTY2GyuU2
 rtOs2frTs8s5hU92/EzotdTSWrxF6QTDP8W7Na5HLMqn8k+5/UBff/mNm6UR+3/sdr2S8/7K3ZS
 DXhwA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Add the system states that are available on am62 SoCs.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62.dtsi b/arch/arm64/boot/dts/ti/k3-am62.dtsi
index bfb55ca113239be4367a1cf8edf219187fafa8a0..acc8cbc7e57bc5712ada8b4b225e302ffc368e26 100644
--- a/arch/arm64/boot/dts/ti/k3-am62.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62.dtsi
@@ -46,6 +46,28 @@ pmu: pmu {
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
+	system-idle-states {
+		system_partial_io: system-partial-io {
+			compatible = "system-idle-state";
+			idle-state-name = "Partial-IO";
+		};
+
+		system_deep_sleep: system-deep-sleep {
+			compatible = "system-idle-state";
+			idle-state-name = "DeepSleep";
+		};
+
+		system_mcu_only: system-mcu-only {
+			compatible = "system-idle-state";
+			idle-state-name = "MCU Only";
+		};
+
+		system_standby: system-standby {
+			compatible = "system-idle-state";
+			idle-state-name = "Standby";
+		};
+	};
+
 	cbass_main: bus@f0000 {
 		bootph-all;
 		compatible = "simple-bus";

-- 
2.47.2


