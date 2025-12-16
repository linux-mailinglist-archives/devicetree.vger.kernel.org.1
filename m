Return-Path: <devicetree+bounces-247189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B89BCC56A0
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 23:58:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A01823038F51
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 22:58:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D62BA3370F4;
	Tue, 16 Dec 2025 22:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CLKNAF4t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C319C2BEFF1
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 22:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765925891; cv=none; b=dh625YIANwIabrIcsUSGyBoFLqwcM3ek6ldGnXYE2ivmy8joAxWLeQ6cJ6oXHjmqdQwq6+gRAhFQAk+uYPVeoosyav8W9erAEjEREsY/6XZ2DzqkvDCqaRNIqDtb3mtBPcYqinsS9XD+t7uZeY+U3UqYuNIiXs7btBdh0WcFJF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765925891; c=relaxed/simple;
	bh=3b4ENHu/9j5dLIMx7Lb7rEQYQt3l9o0AQcUszqUwcQQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=ovHUuQ+soBvYXzVcaIrTaYtXLUqertCeCdog1JPmXjNPGOm+9jnJFpNQ8e+NcdnB2bJj4hwrJksNjJqrF9elUWaOTaAR3K1iSJrewJbyAlfzqHW1R2+wjUBMpYTZif9kUNfo3SRgRktWtT8llWxfhBd22cUAwdgRjeTsijQoamY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CLKNAF4t; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-450823a7776so3250421b6e.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1765925887; x=1766530687; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ooOYMKF+H2KmYqWB5Ili55QDSI+uZ+QcC5rU+1Qm5GE=;
        b=CLKNAF4tOsKHszucymnWvNrrEplV+PqNLWkOeTFCPc0uW+Nzy0KOAGka0XoHz7lAle
         bTHzH/4DM7o2RuKsX1hVefrh3mZOFyUSGRnlGiRHbYMRawQpYGfVNkk2QTTDZyVcPjRu
         +Ngudc8c+6CV1O3dWLxWtTCrIjZH0ffNcUqudEU8NNJMrKZhC1EcUHPZNzo+Q8K73QHH
         INNt5L1wa4UD4GkqsxiuG7DcLw5DN/hqBUCuRjFiTrgBJ5/xXB7x2pNVhFPBTN2TKZPn
         W9bMTvQoqzCA3fmmSHoLlcutyz0L/xXfus4a7OVjyEi8bbezI14RbAr3lXIt5sYx9JTq
         3wOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765925887; x=1766530687;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ooOYMKF+H2KmYqWB5Ili55QDSI+uZ+QcC5rU+1Qm5GE=;
        b=cikpYg7vxAqyZ22fIRjte1Z+Pl6eFdwFUEe1iKlPjKBXuY0TQBj1qbmzEBn8v9GJJS
         Wqkkpjc5DTXm7IurJpuwjwJ9jIJuToX8Jh9wPJxyb1ri/ErdmwPLtprJgx3etHxi7gBh
         n7KGlxjSgCKC2IO60xmKm3kioP+dJfe28415HU2hOBOAg1P02/VUXba3MkY+M+lxrube
         GvCBOU/vL7/gIJ8vOVkl4fDndTB9+nm7I9RQqvlYwq3jrQhEbjnIbZGNuMJpWwsIdLVm
         78d4Sl7mVGd2ET8bWzkK4WBxYjAKf6QHxDwcuMofYtmrKQz9esH7tkEdn8It+ZKLRWmJ
         4Bqg==
X-Forwarded-Encrypted: i=1; AJvYcCU9XeC4qWw+V/K+eIZ6qnWxXzSjVW58CKM/o/qqlsVzB/dq588K2gl4loodpksZYXGMGJOnAC41NROA@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4+i8/nLd5A8zulLPABZxfNWgCgh5Vy2SYXw8HttoA/nJwUQEk
	dm6iTPIiIassi65nkRTDA81kmDimzryi4ADZtMEdNwNNSNj5lYvqvGI5CB6wBB+BJrM=
X-Gm-Gg: AY/fxX7nPg+xAGgn+5NM9260fLwFFpcuQIGvYktnjGYrVgFp0uE5u4vAJfLW2mIMuzv
	vh0rtgRwrCfiYm6VDnEuVmy+UDT94lZ8zsaWR5ByqPKQPWqGfsKPgt5pxFJVKo7tsoPQNERHmcX
	94tI9XvMkbf0zASA+FeKRSFb7NEMZnTLpeoa3/blnJXyGyV0Xcxzc6SS4xs21w8r4AWotP4RSXW
	p9ivCZMzhK8Ks+G+wCiLwEwOlLpdBzsD7C9aVIEMWofF9pQvcR9vkXR2Hj2s2A2xDoVeLjGtDg/
	ceOzMQAgXLVbNpgGA/fq4NgRd6D3tRCA9AxqEUvYiHZXq7iXyS4PM/AatedBnxgaMRVAbcFKuNm
	PSc0unRuvHSSRu8iiJXxKvSMoP2gLrMIFkRIcVtqQ869wI+rSPD6iCGd/KIzmQ3mDTxflKaRg1C
	p2jSLudgNoB6t4RA==
X-Google-Smtp-Source: AGHT+IGvIl3sZdeYyABXtNkH9gms15ySp/W+3mzb7VAalGLpvvkhDucsn104GfSkCZW78M7CnCL4DA==
X-Received: by 2002:a05:6808:4a54:10b0:455:eba2:9ede with SMTP id 5614622812f47-455eba2a67emr991795b6e.23.1765925887473;
        Tue, 16 Dec 2025 14:58:07 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:11a:676d:852f:9349])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-45598cf191dsm8806668b6e.10.2025.12.16.14.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 14:58:06 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Tue, 16 Dec 2025 16:57:53 -0600
Subject: [PATCH] arm64: dts: mediatek: mt8365: fix infracfg_nao node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251216-mtk-fix-infracfg_nao-compatibile-v1-1-d339b151ac81@baylibre.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x2NQQqDMBAAvyJ77oKJxqJfKSKbdKNLNZFESkH8u
 6HHgWHmhMxJOMNQnZD4K1liKKAeFbiFwswo78Kga22UVh1uxwe9/FCCT+T8PAWK6OK20yFWVkZ
 Lpm2eXe+N7aFk9sTF/y9e43XdpmBIOnIAAAA=
X-Change-ID: 20251216-mtk-fix-infracfg_nao-compatibile-ba543769f5b9
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Amjad Ouled-Ameur <aouledameur@baylibre.com>, 
 Alexandre Mergnat <amergnat@baylibre.com>, 
 =?utf-8?q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>
Cc: Fabien Parent <fparent@baylibre.com>, 
 Julien Stephan <jstephan@baylibre.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1233; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=3b4ENHu/9j5dLIMx7Lb7rEQYQt3l9o0AQcUszqUwcQQ=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpQeP20JBd34+C400NYEMIY1MHpeh3e2Evyq63J
 dFtNazIPwqJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaUHj9gAKCRDCzCAB/wGP
 wEWKCACNVAHidpy4BANZQcTr0S0Ws/oeGNHfWiH//n3PQZYZz7A0JeiGQEkUGjzS7EblzCkq/tg
 2RXNOhWTEb0b6E403ut78HghMj33dyOV+7yZU/gRKOu9Uus6VHMYkhgGV6aBNSivgdiaxF99SXW
 uwznzsHOAGISWnQ/zFuQPPvGaD1EGUY+TM9g2S0Kh3IQ6CBHg2K6n4ANRy9BQ2Yc93XAPyaET8U
 WqC89plhJkAlMlNaHSRhbHj2nPwuop8+6AxJoauJoqmHrXgvpKOd5CGq5fzJUEo9LJMedkz4x1l
 izZLPPFKx8EaI0Ey31Uo94B7iiygFnM47riGfvju5inPBm5m
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Use correct compatible string for the infracfg_nao: node and remove
the #clock-cells property.

Likely this was copied from the similar infracfg: node. However,
infracfg_nao: is just a syscon node with it's own register definitions
and is not a clock provider.

Fixes: 6ff945376556 ("arm64: dts: mediatek: Initial mt8365-evk support")
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index a5ca3cda6ef3..4116f96c81a9 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -537,9 +537,8 @@ iommu: iommu@10205000 {
 		};
 
 		infracfg_nao: infracfg@1020e000 {
-			compatible = "mediatek,mt8365-infracfg", "syscon";
+			compatible = "mediatek,mt8365-infracfg-nao", "syscon";
 			reg = <0 0x1020e000 0 0x1000>;
-			#clock-cells = <1>;
 		};
 
 		rng: rng@1020f000 {

---
base-commit: 6987d58a9cbc5bd57c983baa514474a86c945d56
change-id: 20251216-mtk-fix-infracfg_nao-compatibile-ba543769f5b9

Best regards,
-- 
David Lechner <dlechner@baylibre.com>


