Return-Path: <devicetree+bounces-202243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF88B1C860
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 17:10:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 428E118C2807
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 15:11:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C6A8291C39;
	Wed,  6 Aug 2025 15:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="2PXialas"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B44290D85
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 15:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754493027; cv=none; b=Rg7ZBtpFUnFkE0z26lRH8wyRkvBtknHTncqJnsi4N8LwCvvM2ALaYh8pTsEefj+toJW7f36eodCsOVIIICyOO+uvSNC/U007Savo4lY+ysQJS/h9uQc860vlkZuMy7wBReJFKifooyUPPpi3SE13edWgP89utGdEd5NcZImTRuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754493027; c=relaxed/simple;
	bh=mkMKBwz5BKx3M5ukHVq0U7xYjHmmJcHQfBYE9D9pbLY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aKIdnhvd6/zE/j700eNfxqO+x7x5NizsyRe9ldBNNZRgrId4bbvejFmcpwenOQYClAIoiTOpi4lv2dLRe5YxhNoVCBtAMNGXDAzrHjDDjBLc3uWSkQWL5RmNAMOSCut+n3oA/3KNR1GNaSWW7D7xwQMP9zGqfudXotQdD2GHjhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=2PXialas; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-af96fba3b37so606831566b.3
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 08:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1754493023; x=1755097823; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SKHJowmVjOKhweg/31XcJuN1dKyemiZUjq/gTTEI0D4=;
        b=2PXialasG8bkbX+e6ZXi6/K+FfbcqiYwOlqmKxEAuXZu8Z4oRyhTOfAg5r3+/qbsRE
         krBoAFDROQG6rgi3n3tHn9I+SsItHpX9iyxw4cDh8s+e690tzdapc2oOM7pXoqXPnVVY
         pGEJdIdFLBO47THcJuGqF/u1ZcwcXVnldhQBavIM7RIdfGhMlm1U99yZeiXpobagr5SM
         zy/5yf7MxU1o4GZ606EfzUCXxxp6Rqtyd7qHqMmNGxpjVDy7SsJ1diUQqmivJtmdsNxr
         D8wsBcJPTxpwFQKLhgaWg0flcMHGASl0EgA5+SjhCgRG5Hbi6fg6G8ItVNivFsy9kc16
         f1aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754493023; x=1755097823;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SKHJowmVjOKhweg/31XcJuN1dKyemiZUjq/gTTEI0D4=;
        b=Fhi7vMP+lTagGTLypyUnBwDljfTx0QmCj+VHoQUVFwF9TdXr8kic5mFt3qtrCmPmaw
         OhnlYPeDuIzEwEAEnzziRJhmBBtbt16X41Uze+CXpZ3aGcQ4Pszt63y6M4QP2zXPn04f
         cvChAc2ctxk+CPnRS5ziD4Li/4Jr+c0eOq3c/Q1b3aXvfH59cxBvF3tPmc6LnVtho5Eg
         4urNRf+msZdS85KeNDLLAPU77UiV1ObMGmOkJU/zvHTfD2ohBi0RJpnNivW2kTvHGvaX
         UzbdK2EbCzIt1X3woGwkLDs1+BcZX/nr36MhwKUBb4m9nBhaABXNJhLd8rf9eNLYyHNb
         Ajgg==
X-Forwarded-Encrypted: i=1; AJvYcCUa6rQxf8zcxCHQRjgq1Z8uvEMdDss+3VSGJO20QpaDMYR2IeiyDrBoTFFr+S5zlAKJEiDmcntHTlr7@vger.kernel.org
X-Gm-Message-State: AOJu0YyFxO+VQLVAX5RslO6CTvRugEFDu2OULrDMN/tpwnCA7z2Sihdt
	VP7tjq9fBiLaF54fttYQyLBv2UyxeIcZwWzb3pPFdb1asiNUMABHw5M/h4XXUcxNFjw=
X-Gm-Gg: ASbGnctMGbnqAYL4JvB70DUOajGQNrciJ9uucFwm5ZDlYlEEsiPp9wRyv5QRvPRVOFx
	QE3aRBOOUDJvp4MHep9/JNCpQEaRdsOktyOfxqvrstGKErcsGsG9byXlvWPhxnulDbRlh+LiCK4
	NeJGvO3baAjHE5cUN5ztLRyc5E20LjC2J8BETqOzxWiC8QbzUoPJuOfq0ZZzCibAuEgra9GLt3d
	dPKK3gw78ajYwH6u+HtptjTrTQXFEdr25REz1EkiBKdcDWs6PWaFzsqBaxH2pcB+J2iVUBiS7Jv
	+QJlXJ0Nj5BdS++q0ks6MQ33FFNlQNl1/cs/4vDlDahYuGt01m4NRnXHOzXooST+w+pLTTjbY1b
	uQBOfbxme4UeY/ys1MrjlqYy75bfr525dbDGdBZY6n6bsoCfNhqeZgmc35eE9y8nNfOXt8/ouKE
	b/yfI=
X-Google-Smtp-Source: AGHT+IH8DW2Kp/036um5fo54X/6vueOzgFt3fBIYDww6nDeVymURksuNRfJrnIRDzmfw+vtApSseXg==
X-Received: by 2002:a17:907:3e8f:b0:af9:8c1f:c2b9 with SMTP id a640c23a62f3a-af99005c7fcmr299707266b.8.1754493023342;
        Wed, 06 Aug 2025 08:10:23 -0700 (PDT)
Received: from [172.16.220.71] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a0a3b77sm1120100666b.51.2025.08.06.08.10.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 08:10:23 -0700 (PDT)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Date: Wed, 06 Aug 2025 17:10:10 +0200
Subject: [PATCH 3/3] arm64: dts: qcom: qcm6490-fairphone-fp5: Add vibrator
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250806-aw86927-v1-3-23d8a6d0f2b2@fairphone.com>
References: <20250806-aw86927-v1-0-23d8a6d0f2b2@fairphone.com>
In-Reply-To: <20250806-aw86927-v1-0-23d8a6d0f2b2@fairphone.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754493019; l=1231;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=mkMKBwz5BKx3M5ukHVq0U7xYjHmmJcHQfBYE9D9pbLY=;
 b=9xF1MNdjywzjYsOry9BBTU5wVDy08shUSv+1t+tc7ZOPISwDvFFGeWrjsLPziUTQaGleWWHxj
 eKbNhajwzcvBH3spUvKXYq7qI+fSiQrEEGSljDAwdNNMJPjI2rtiqCV
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=

Add the required node for haptic playback (Awinic AW86927).

Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 4c6cb4a644e2..9576efdf1e8d 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -866,7 +866,16 @@ ocp96011_sbu_mux: endpoint {
 		};
 	};
 
-	/* AW86927FCR haptics @ 5a */
+	vibrator@5a {
+		compatible = "awinic,aw86927";
+		reg = <0x5a>;
+
+		interrupts-extended = <&tlmm 101 IRQ_TYPE_EDGE_FALLING>;
+		reset-gpios = <&tlmm 100 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&aw86927_int_default>;
+		pinctrl-names = "default";
+	};
 };
 
 &i2c2 {
@@ -1415,6 +1424,13 @@ usb_redrive_1v8_en_default: usb-redrive-1v8-en-default-state {
 		bias-disable;
 		output-high;
 	};
+
+	aw86927_int_default: aw86927-int-default-state {
+		pins = "gpio101";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
 };
 
 &uart5 {

-- 
2.43.0


