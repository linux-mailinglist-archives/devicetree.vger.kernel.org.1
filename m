Return-Path: <devicetree+bounces-170292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CEDA9A6D1
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:51:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3DA5D175BA4
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37BC3226D0D;
	Thu, 24 Apr 2025 08:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j+k7C/LD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6552C221DB2
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 08:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745484447; cv=none; b=YcF64m1RvAk6q/VBlXnYHPB8psFmsHhnqDU4yShQQuC27RchADGxWdLg+M1ALMK4KQvuL2okCH/5iii11fnugWfFmN0vsS9WHMMZ0WyKF7g3RUVITvd+IUDLMDSSBbdZeyv96QVKCVyFdUiR+2HvX0JxbPB9Aj/JZRS7xRYZrWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745484447; c=relaxed/simple;
	bh=Y/7UbvEdq6i8vN7DiMVxtTrHzVK3zraPiUxsxJBUdd0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=q4j5a4DxfCYgg3e1LMFS90s/fzAdXhMumbwzqB9gWRUqQedQ+5g3P1B+u2lUScXiN458OeHIZirSxhSLRyItfpR021Vvc3BAxlGV34gsnZ7TAmmtJamF5xReR/nZ0Tar+q7KMxIRNpEoygehGes1NRxm6+evlRdiEc5TRRoSjMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j+k7C/LD; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-acb5cf13996so8955366b.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 01:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745484444; x=1746089244; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AzKbft0Av4+PkH9aVIXn9viIteKtaJ1aX/6MVhkBfwo=;
        b=j+k7C/LDQyTZfDc2HzHN3521BKeLaFDS41YEb9B2r3w+Y74y9AihpW54fpOWKF59yZ
         p7uTm5xlfh/XiIX5/p5qnt3yUCjtYyykObsEy+b/oi6tpf1eHBxkfdqTb41k/xKykBZA
         LOW1EuQ+Baa2e+Ii6Ke7GJMz0cAlLvnoNRy2/ydfLIQqKGbrUooOvHb+RQ1/jsw7sWY4
         ItnbmECDDekszquVih1zIQrWb7/046CFwQBlydk8NqMo6RpDH8c9h2LvtVGPp45l2/A2
         wSRuGCAOGt1DOR4ecehJx5RJYVcwEPVyaqgV24x35zt38Jjbv54r7hyDTxFIihp33tLX
         iw8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745484444; x=1746089244;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AzKbft0Av4+PkH9aVIXn9viIteKtaJ1aX/6MVhkBfwo=;
        b=wM5zhogiEZXDUu4VnlBpgKt6FKiDPYDwJMc23kU82S97qUFP7kFgZSGud9auzSRRUA
         d6m5YQqdOOlPJiYao5iLwtlz1lZWYMw+jPYjfCtrgI5yENO/nJkt+0E+LANBVT0XqZAl
         ChBU0xKoYp7OUUM1KbZsCTN3BvYH2IUWQCdLYADA8QA+QRbl/A5IOcyUQQSGqrp7C118
         o6lfvp5a3chbCr/NF1tEVh+vduni0Ig0l9XbHvE8o/sLOtHcK/njrHgeQeMlleN7TShN
         O24KobbLPTwbSt7Hbha27wOc6Kh+R6t0f7Z6toL/eDrEaUUca+UaA2h1TmKFqeDvqYpr
         nQKw==
X-Forwarded-Encrypted: i=1; AJvYcCV5oWsgCm6P/EdR3vYxQuIej4QM4L2AsNDFnlZCx7tNKTOKbpQc/mWEDVDIPE5TbFJUFPmKMvlxmvEy@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7v670/labVrqJ45OXbh6r3qzrLhoshp52KVn3FhtX/DBxE6DS
	zAQzi8KjZNKLu47CuIh5wspbWI3WnkIBnPt5MUSTuzFQ5UZtEw370olbS9GXGKg=
X-Gm-Gg: ASbGnct5vS4VHVrO/mwyOXBC9W24yeLLSPBJNnHx9Tkjk8YfJ5Vm52hYUe7HvUmFRLY
	XUKXWhSP2eyQkZvGjv1Cl5UTagm5c0oy71Uc+dmqo2kSGMztOWRG6o+qAAHECLeRyxPZlIp+AE1
	OcWpVMDtyPU+e4npwSr2AwBOTblNNpM5IfGHBO4SbGS8esGDslfsyoAF1AIDLXiTnoGey2Tw830
	IH+kQQ0BLydoOrPzlDMRPSCZTRSGts8fqPoAH/EGb7KKGuh2Zr8nswctoODl7xO0nbfRoa/OE9O
	2ZAJ80mZ2bA5m7hh2gRpewrvOE7wWEV2Zr9DrpdM3aBWqAv3ng==
X-Google-Smtp-Source: AGHT+IGFDaepY4la+CBTucmeGZBrlMkFUgpMj6E1x8ks6fo/36DTs1K5XFkEMFO750OFGsNEb8G5FQ==
X-Received: by 2002:a17:907:c13:b0:aca:9de1:f88c with SMTP id a640c23a62f3a-ace573b33d6mr52851166b.10.1745484443690;
        Thu, 24 Apr 2025 01:47:23 -0700 (PDT)
Received: from kuoka.. ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace59c25de8sm70417666b.135.2025.04.24.01.47.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 01:47:23 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: amlogic: Align wifi node name with bindings
Date: Thu, 24 Apr 2025 10:47:21 +0200
Message-ID: <20250424084721.105113-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since commit 3c3606793f7e ("dt-bindings: wireless: bcm4329-fmac: Use
wireless-controller.yaml schema"), bindings expect 'wifi' as node name:

  meson-gxm-rbox-pro.dtb: brcmf@1: $nodename:0: 'brcmf@1' does not match '^wifi(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
index ecaf678b23dd..9d5a481b309f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
@@ -217,7 +217,7 @@ &sd_emmc_a {
 	vmmc-supply = <&vddao_3v3>;
 	vqmmc-supply = <&vddio_boot>;
 
-	brcmf: brcmf@1 {
+	brcmf: wifi@1 {
 		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 	};
-- 
2.45.2


