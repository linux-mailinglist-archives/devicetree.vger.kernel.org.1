Return-Path: <devicetree+bounces-18855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3794C7F8D93
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 20:05:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7E622813EB
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 19:05:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE32C2E84B;
	Sat, 25 Nov 2023 19:05:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="pZPuXXOd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F0A6F7
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 11:05:33 -0800 (PST)
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-6cb74a527ceso2395885b3a.2
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 11:05:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700939133; x=1701543933; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d1c5i+MUOB0own5Rsi1Xes6tV5UH+0xxUJRHAiYBM88=;
        b=pZPuXXOd5NbPFoTrhLSxGeg7evx1MXe5jirlcW/gWY1hL0mOsVe0qK6MsRv+gnvZrl
         W/3Yg9K6iLzP7rDG6uxihYycp6KidKm7YtTMRU4y4J2yPb72waS4e44mnyXrZf6Kq3M3
         tfa0i9juBG4zV7iPVR+95KRlGJz9vSZzBaCcme9xB1X0Vcw3hwgNp1FhXF/E3D1rbwVF
         p+nqoNce6Wwcpgojt7kyYU+3JL/lI8lyKPy3HOdUkhScDE+232gv1lJL0QHXY8G69I2a
         FT25Fc6C0cFgkx33MpeJ1pD/5+ROuKIfgdUXR7YxuPAdzBY/RiBtnvF9O+BFsNRLOrjW
         K6Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700939133; x=1701543933;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d1c5i+MUOB0own5Rsi1Xes6tV5UH+0xxUJRHAiYBM88=;
        b=xT5NUOZIEt5y5BYodmratmk1LWP+Dl02fdhuO7KaeOY9pUUav2RJXJ5wsj7QlW4nDV
         4MwHERmNZbJu+DRgVKaMqmBwXjSxtPONbUV8q+yoIoA5yDQeAHmffL/vqF7WAerjsXCE
         fiLSSeEEyh/h3RAqfaGk/d5x7qINgpT/UV1unq5pDEv9aHgnN2CmTXoSImfRi7CBLQj9
         mw966AGYv8ma0c7I2L9nCLkTfcy58/EVJetMtKCqof9Paa5AxWNAQCbV2pXRiwlk2opv
         PnrLZOCqaPFkR+HOSLS+tIKmvQ19z03gYOGxJmbhhcVvEhUufHNoR2XB/hD2EWslcOOx
         81bA==
X-Gm-Message-State: AOJu0Yz7QUERLGwzuMaZGURfoSRWpvBtH5Cnx242fHhbOLtRWgv0IsXp
	dfzSEFy/k8XG6mfDIyNMcZkYvg==
X-Google-Smtp-Source: AGHT+IH7F6vMU6hiyCaaneaRq1BN6lED+LPtLiArBxdHxvHBJUDQogPB783Wed7MRnLVxp+mAf/47g==
X-Received: by 2002:a05:6a20:431e:b0:189:2e8f:d34d with SMTP id h30-20020a056a20431e00b001892e8fd34dmr8437357pzk.42.1700939132763;
        Sat, 25 Nov 2023 11:05:32 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id j26-20020a62b61a000000b006cbb7e27091sm4810529pff.175.2023.11.25.11.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 11:05:32 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 01/10] arm64: dts: rockchip: Drop edgeble-neu6b dcdc-reg4 regulator-init-microvolt
Date: Sun, 26 Nov 2023 00:35:13 +0530
Message-Id: <20231125190522.87607-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125190522.87607-1-jagan@edgeble.ai>
References: <20231125190522.87607-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The 'regulator-init-microvolt' property is not currently supported by
any driver, it was simply carried on from downstream kernels.

rk3588-edgeble-neu6b-io.dtb: pmic@0: regulators:dcdc-reg4: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)

Remove the invalid property.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- none

 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi
index 017559bba37f..4797260a8a78 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi
@@ -165,7 +165,6 @@ vdd_vdenc_s0: vdd_vdenc_mem_s0: dcdc-reg4 {
 				regulator-boot-on;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
-				regulator-init-microvolt = <750000>;
 				regulator-ramp-delay = <12500>;
 
 				regulator-state-mem {
-- 
2.25.1


