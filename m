Return-Path: <devicetree+bounces-156919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 50920A5DDB4
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 14:16:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42DCE1742CF
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 13:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 737F124EF97;
	Wed, 12 Mar 2025 13:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JyeQ9ipD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC15724A06C
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 13:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741785275; cv=none; b=qUZbbZ0MCJiVHfbQkzzx74rEi9xqlRUoCFDUOCr4aS3ql69oMcNMohQwpBG0zEDWy6zgOCpGoQSUJ+N4BT/4Np39YmoUx6NZivfCxF0HKlVg+W+AZP4V6+KNzxDlbZrlM8vmQUgQuZR9iC754K49E9RGblwkChWs5DUU+VnvEIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741785275; c=relaxed/simple;
	bh=nVhLu0AiCCxQH/soBCHuVFIETyl7UMc6C9vhLI8S8To=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uZTKQvbPEwpgUTYPeSOwISFGa9k2NX59LwHMnU2+IVv1lc7GYi3aYgRYttkV+tjcFU8SXXIPRQF7gMzXizMnOO3apubHG94VHD75GWMB6BwBPdGA1huV2LHoXc0Afsl9C/gwE6VnCsjpdWU3NNtj7hjF93NgFMy9DLgq3ew65Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JyeQ9ipD; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4394944f161so7337205e9.3
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 06:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741785271; x=1742390071; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DjLNng74rhxdSjD2x2QVGFVe11P7mYgAEe28w7w2n8s=;
        b=JyeQ9ipD/n6d0mbr+URAaqyLKLaN0x0XiEE5JF4/crS90y49JlhjVayJsx23mJuNN/
         YfZFBq7tSNRY/2hp4b+sXoQKmsuyAkG4gX/d3x2CxIumuzJtZ4KPrP43/5BgZD/pgji2
         +azQ+AmbriK2cWxoEW0zECuKkzWVSA9dLNmnRPzleGVs7cIsx1Cgw6UzrE6bu/feoMhw
         0FJtK7xD5aEmvyMngS7CptnFkSsdNJ5U/CAzwOi8BGA2rH42O75tRmiiV4010bO68M+1
         8YlI+S4NWZqWwE2gSw4DE1md7ppzWluSfdIY0DmSbFgMleLQOQe4mdpmg712MoCxu0Hm
         8YvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741785271; x=1742390071;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DjLNng74rhxdSjD2x2QVGFVe11P7mYgAEe28w7w2n8s=;
        b=u9JSxgbDokI9f+gXoVUafHv7PIGUHjcnswyjQWKBvcCLKUvAX2HXxQsvCdYR51ppai
         lXzJKEGG7VQ1GwodEclW5p7oeoDge9L3h+8il64Xm/ukD/3NmWomXeQAGKa/XVbrh1r2
         PoWPSzGogp4IyobkCnGA8EV1wP8ap8FCJtr+zG6qy7RNnnOVhAuzAKpnQdRRiXDb7eO/
         qGxQvQ9ca4cWBBjqGvopw4AYzZIFrz37jxJ5dU5JtdzSEotV9w0Yh8otWH+ZhWDQI4yZ
         HSaJBSmn02zaTLtmCMroYImTMjGztiHR/pFHhAxT+zYGfo9xuvk3hpVIZMawPBtn7NBX
         SvVg==
X-Forwarded-Encrypted: i=1; AJvYcCWYG3QkL3W/AFXmk/1yafmeLrhuUEG38xID2jM1NCh6E/huvXP/fhUZJp2veqhV1dEFuo/GHmoEdNR2@vger.kernel.org
X-Gm-Message-State: AOJu0YwwNLrAabAhDzrWu26JpN7pqb/QF0DDqeu5dUDKINIX3rOg0BOX
	o2BxSTE6/A3TReOT9rHBhipCbnn+y3qV1pmGdS38qeSFr9ZtZABUYlelDjXoLZGuLMGuWWmPvVp
	7
X-Gm-Gg: ASbGncvmxVQJ4HjLlhXttP2Z8WOT3UVAryIjtaG8HcPxGJljCVnUekTtpknZcX38Yp7
	eJHO5qs1jPBaBkxi6xw2wcLdteMla+hLXqRHaGfvR8/SbrmC8AFns1uRrbv1YBjHK1OfqHbCRG0
	8dxKQxlt7YvX8Ips5/aPKTQASB90uT3Er3S714IIfai0YPLYJ0HCInjFYvAa/IP/5+BNSkk1j6C
	PhuhkuEzD9Z3pAJJ03fPDQ/4v9e/2QZ9TmXvfrwQaIe/4A9Rus+FTb/fv24IRyoscQkA7yhl6Rg
	EY3t5yy94+89B7iPIZS0+Af8dC/S/3z9OlZvcpRl09rdmK4aRhK5CA7aLiVmkB3uDAfUZQ==
X-Google-Smtp-Source: AGHT+IFcSsyLGNx3jAp/L9UhztSEsOPv+d8/sK/Tt11tO+NPvboilTmw+z2ZYcBHFz91ri7g18BT2Q==
X-Received: by 2002:a05:600c:3b13:b0:439:9595:c8f4 with SMTP id 5b1f17b1804b1-43d01b8532bmr32868255e9.0.1741785270948;
        Wed, 12 Mar 2025 06:14:30 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d0a8c5cb4sm20966745e9.25.2025.03.12.06.14.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 06:14:30 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 12 Mar 2025 14:13:59 +0100
Subject: [PATCH v4 3/3] arm64: dts: qcom: sm8750-qrd: Enable CDSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250312-b4-sm8750-cdsp-v4-3-4925d607cea6@linaro.org>
References: <20250312-b4-sm8750-cdsp-v4-0-4925d607cea6@linaro.org>
In-Reply-To: <20250312-b4-sm8750-cdsp-v4-0-4925d607cea6@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=884;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=nVhLu0AiCCxQH/soBCHuVFIETyl7UMc6C9vhLI8S8To=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn0YilSFV4+rZ5EaoK/opYGJVAgzDMv7iJQ7lLG
 jidQ3zCxSyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ9GIpQAKCRDBN2bmhouD
 1+x7D/9jN0Ca6DwYjWyH0D5qLQb8Tkj7YuS6mOCPfgVelRiCelTICvyk1vJ7ytQ375n/ORFovgk
 rs7aEcTk7xOWiJyQmtapXkm1I8xvBjJHImz1YVbDa6RTte/713sk+2fRpC2IIgkX+OTgX2BZqGc
 yKztVdQNrkdo27pf2tpI7U+JWQAxlnu8003du56bdP8OSLKvruKQGcXH+AW0wWJwFYhUgMEuGnd
 u4keliH3NlL9RRGBVpywU2zYJ4oVkcT5KObo+PPOUQjrz5B7hoayGMhxVczhzEvwFQT94vb4BXc
 5QK0OujZLE2u1F78bSn3eLvC27D5xh7VB41P3u5oXMo3QiF8OZW5oqH48TZ5Iw97o4QDORezVSq
 Fi1QMl3CCLLNXAk1PQbWI/Xd7JwpE7RfKqqsEZfe+4OGCfRF1QBACYt3cj7jiLEgFDjVvDIoTbj
 NWHKqYCL0yrl9xYTxCDlsIshQmEsi7KgfF7RNHYoT0Bju4a3e7VUdC1tFFLOJOaE+dmOYjPGH20
 JgFPzjG8hrFPTA63tV6+Btl+Pd9xMfNnkYFVxNmoICErcNdnXdHLO8XiIqXyLJjS+Ff/C+UZXMs
 nzqI/cpnJZdV/sikSY9qHqIHRpgzWMDbrMh3jvpTMdy1NlMuBb02ay5Emix8nrwQF0DAey9mwIm
 EsMa1tFPkTmRN/A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Enable the CDSP on QRD8750 board.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Not tested on QRD hardware.
---
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
index 341774bb042ff88af8acf49c2f0ef14f9994dfc9..7f1d5d4e5b2813c59ea9dba2c57bee824f967481 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
@@ -789,6 +789,13 @@ &remoteproc_adsp {
 	status = "okay";
 };
 
+&remoteproc_cdsp {
+	firmware-name = "qcom/sm8750/cdsp.mbn",
+			"qcom/sm8750/cdsp_dtb.mbn";
+
+	status = "okay";
+};
+
 &tlmm {
 	/* reserved for secure world */
 	gpio-reserved-ranges = <36 4>, <74 1>;

-- 
2.43.0


