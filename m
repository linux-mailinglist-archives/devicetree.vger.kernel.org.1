Return-Path: <devicetree+bounces-225006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EFEBC9887
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 16:35:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 344641A60B6F
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 14:36:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FC3D2EB84F;
	Thu,  9 Oct 2025 14:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="FWGAsSwJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C782E7F2D
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 14:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760020530; cv=none; b=aKNIYMLt/HljknI4DG2J7ZlubEHiV3O3UGBrorkyKQ5EgT23ZtDxFhbiMgeZS9nEE/VmQSm18Buxstpl5VXNsrU4eWr/oZEy2Oa/Gwbmv9wNuoM7zNPtBoVYsnH6OF46+z8YeG3n2xGFQiNiWwfdOnFGCrtF/IdkZp43ZljB4Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760020530; c=relaxed/simple;
	bh=Tm5EfTqaC5QMSjBI6EGvo9CBBe5CgOuV/UJUlgWJ3EU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LmMY3zjyH0I1ivtZn5RYLmHMoLQApx46o/23fNEw5vF+zU1ogdPOOteCxK+KQGrWFn2vy3lDchAj1TGnWGH0UqRXHRAyZGa96+CMvapEVS2VTlRBDaB5B7PPxSLFXp7iePSx/VIdFYL+t+l6aYkFZoV87mKMK19XKPVLpknI3yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=FWGAsSwJ; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-639df8d869fso1959556a12.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 07:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1760020526; x=1760625326; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4DHPPLmhygT7LvJBN57iAEhxLZcu4AGW0vEJ/bXem0w=;
        b=FWGAsSwJ3ha8UBWVQv4NUbw2spgvlyISDgiNnytekBK6x+iRxmEcsZPy6Cca3Igftl
         4Ni6eVw95BhWjN6WASYjUpkzl7cfyGwcizsPV3c98RVkATctQHQqd5HFuxTfAzbBl0OF
         sCIKyKmBi1jkgUXm2JUkEFPyb4bwdIMCWllRQEvrF+6ESzRLKA3yZItBGKlCEH8ZzRj+
         yMoNEH8y3+/xHaKZkKuBcu3qKHgZUp3xNfyeWIu8y5vNjcHUeFQzdngdyRw0K3XemWzJ
         3pvQmhOgV6Nhcy92dZHQcB8tMRtfnUhu7Dn2lWLx8U4um4OKOc7kdK3qSUhDqiOSDVmX
         wv0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760020526; x=1760625326;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4DHPPLmhygT7LvJBN57iAEhxLZcu4AGW0vEJ/bXem0w=;
        b=KF7znIuyIARu7BGsOdLc5zsk2D9XECMnKtNBghkELZzQvPiWS22gNu5cmr5OkBYzzT
         wd+8cjpaZt09Lw3jqunV2w2Pj1ioCeruRF8qsIdBitB9TJKCUHMCQ4ZgFNOtDdAHTu+F
         kl0Db+s0JHmeVUYtROcu2/kD4efeuKeDvHYFcVr01zNI/jpK0psCo7ozkKqMs+xmoLQ9
         GcoyHAZo71HMEAqpqEb2XHf2872AOo9NhNvVl9oXFWYLvmEw2leyhu9Y2kwKW0Rb11uU
         N1N2rAg8jhxlTwt7U6RFZnAS0K+69kg0ZRI/enCFpH3x6hxXmnODNkStDqVPxNDlLJfL
         vYpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMYmj+pIiACUEUNS5lQI7lZSfogVCxnsUVjYTcomDo3ucyhSX2sUFwMX8qkC4qC6US0jmc7dwKZg7P@vger.kernel.org
X-Gm-Message-State: AOJu0YyLGhJ27+KnByFziT3XdWV4kLVkoiRwJEMlJVjhgsugN6D+HAYB
	oXpvqQKFmmoigRFtqYzeXxvMEeRA4FFMGdQoLKaRVvj+zAQiaEpFB6na5PIxnI1Aztg=
X-Gm-Gg: ASbGncsbSbjf14s195uwNe2KNaMlI9i0Bn5ehobghmkWZ9Bi03Z+caOX1SlTJAW9pqN
	6Bq5lcYpQ944+zwg1QVxONIi25vgyFkOtNmeDvnyKt99MWHSBEcdYPHQnHQe77S8siRAK+3ILXb
	kbag/7uV6xVIuBTNJHC5avnM4sKpTX6vslIUOQYOHnmFaxG5UuJqrl8mCQZxi4ZfPq6+QVCqIZG
	puVZmIlO3ASbLF+WrYhXw2CfXraSXIFkLjiSWLl0bns1W09rUcIJEB1gY5t+X4Sbpg/w6UveoHn
	zDWFnjWGvTdF9JrFxvrTRKAcYLMXHw+Nsm/7KBsjiwmI3NjkRj2AgbuFwIvq7yFntdCiCNfAb6s
	9u6ix4ignKDSt3zfJFDvglUl7LlXg2MuOh25d7csYTRu8x9v0slg8wY1NZbLd6NPRziv/wwX5ML
	sqRwMUgPZRIVKhybafvyKSS1kZfGnr
X-Google-Smtp-Source: AGHT+IGpvCBf/6AFoWh0ryKjV63PoQaWy0iA6WnNNox2AMwgEWvefm4/UWZWVAqH1ctSB2lwwtUAdA==
X-Received: by 2002:a17:907:809:b0:b45:b078:c534 with SMTP id a640c23a62f3a-b50ac5cf768mr908616266b.45.1760020526492;
        Thu, 09 Oct 2025 07:35:26 -0700 (PDT)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486606dc84sm1885797166b.45.2025.10.09.07.35.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 07:35:26 -0700 (PDT)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Date: Thu, 09 Oct 2025 16:35:09 +0200
Subject: [PATCH v2 3/4] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable CCI
 pull-up
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251009-dw9800-driver-v2-3-3c33ccd1d741@fairphone.com>
References: <20251009-dw9800-driver-v2-0-3c33ccd1d741@fairphone.com>
In-Reply-To: <20251009-dw9800-driver-v2-0-3c33ccd1d741@fairphone.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Daniel Scally <djrscally@gmail.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>, 
 Bryan O'Donoghue <bod@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760020524; l=972;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=Tm5EfTqaC5QMSjBI6EGvo9CBBe5CgOuV/UJUlgWJ3EU=;
 b=MhSWOCpqJXGxUUtwnLCjRnSXLNXuk0uH/IvCO/kBKSyHfHxd6pY7k98vC8oLKyZhywKKumTV/
 Jt2jzAYz2tFBY0G0R+MUbdpyJQCiZtm2ZXzcXrxBIT6qg6CP9LTR11j
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=

Enable vreg_l6p, which is the voltage source for the pull-up resistor of
the CCI busses.

This ensures that I2C communication works as expected.

Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index e115b6a52b299ef663ccfb614785f8f89091f39d..2dd2c452592aa6b0ac826f19eb9cb1a8b90cee47 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -749,6 +749,8 @@ vreg_l6p: ldo6 {
 				regulator-name = "vreg_l6p";
 				regulator-min-microvolt = <1700000>;
 				regulator-max-microvolt = <1904000>;
+				/* Pull-up for CCI I2C busses */
+				regulator-always-on;
 			};
 
 			vreg_l7p: ldo7 {

-- 
2.43.0


