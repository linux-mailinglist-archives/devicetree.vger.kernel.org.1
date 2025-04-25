Return-Path: <devicetree+bounces-170678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFD9A9BF4B
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 09:10:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DE0D85A6621
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 07:09:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0BB8230278;
	Fri, 25 Apr 2025 07:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="XCoVsl5Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C84122FF2E
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 07:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745564939; cv=none; b=cohADejdrMtzqXWWtG/Ldn48r5Okxg2K4fePuT04ydZpee1T4k2DRXgwKyhGMLaITzt+zxur33TLMJzwGmPtzc6uRNi51ElvznvToiu7bRIt8XunFFEdFfgr3DbjLzfAat6XxWnHPA+QEsIezvfcRT/fFq4InfyIbI2OdRs7fxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745564939; c=relaxed/simple;
	bh=LA7q9pHIp9WcS0ADH7ddcSsLNvm3BotUh4LJ/goiaag=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UwHrvNwnLxFoi0jy/ezdlmZ6Fpo/g1w/9FEclzrnGhqveRPZcSE5e6cB4R0i4O/HDoS4nZbUCYfPKpNrsUvBOmbN0xbAJr/5P74w2HEfgCR4Mvbz+JZwENNt1JY0Iwy2EQTs5YaeB4eJiRtmV9Vze0lcobXRhUOtdCAKd5U/U1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=XCoVsl5Z; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43d04dc73b7so16787045e9.3
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 00:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1745564935; x=1746169735; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mm0mORpqXwGhjKCx6UTWDuYwmgBU3yr6fMoZERP6FVU=;
        b=XCoVsl5ZxXwuomrxsqaEHsivgCge0RZPjrPu23jrVlGpFiC/k86I+zPjAHowiux/5L
         5QvX4wtz/hrjEY4FSXtIftAWc6lmn3FVySpCHbeHMnSX723/np7uYB1Ymdk7pPGImEf6
         hIuRh7g0iUXvvn7rn5iKawAOGQsVQukJYDnp5qr3eqvoXaW7faDlKNMla+PT9mbvu3ln
         G7LxInQQnBN/5+zAQDz3j+JYY9P55SZQyv+48ctbym9iH7XhAb8n5OnakM6DRCYGUOS0
         WP+j6fHLhZXb6qOK/XvpFg26VAtoiq8tKy2RZgxee7NQxJeFCfqLkOVzbN7N7DNQWReI
         /TJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745564935; x=1746169735;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mm0mORpqXwGhjKCx6UTWDuYwmgBU3yr6fMoZERP6FVU=;
        b=SABZLeSJtQd7svYGqb6eoAd6TMPr7k1hOoT6rvLv4wv27/qaswZH1Mf2KG1vrHRiu+
         vSVU9bwjwUdiqW4fFVVOf/5lRGHjOTy93ElXcV7t7oJ+wRmRLlHJDLMlg5Frswo82QPe
         lR8ZEryKv3PTE3jBJDnwKvqrX+8SsUz76iy+fV1lEUNo2r5WpiRdrDwzeA6aOC/RGh20
         yd96nID8vd50mLSxwjWxjPH3GBakiigfOTru2+QD0c25y1Bne48lH4UXwQMK6WvuNHxh
         h83xJMbqzmD6Kcu2yYHpmpM0zZuWqTKZGx7xEY141lIRGUlrTcODaAvtQQR9H7Uv0vRI
         N8+A==
X-Forwarded-Encrypted: i=1; AJvYcCWtjSQp/g0s0bYSUh2MKeJ2qsXLlpgv6ksz8wEW1jZP3kw9fjFTTVHYIBdmAKPJx/JaZ08QlApR9tzk@vger.kernel.org
X-Gm-Message-State: AOJu0YwIWWGn76GSBTfUjZ+EOUU5FX5xAY24MkiUDfvRahHblfAbiQWl
	jrrAFTNlZzCngF7Y1NqmYRw7oksU6eg98YNVp4dcaDwh0znAOBQsc9uVb98lC1YjV2XqjGHiLt4
	N
X-Gm-Gg: ASbGnct/s0JKb0qRkbvJj0lS2r+QTQZSuHCp773prShXog6AzFY0sv74SIvtFn2o9re
	GtKVmEj4tME12pBcke4sSMwaHlU2C+wAoFl7S+mtxzowv3Z/esR9M2jN/XXhQ/vOwX19Y16VRki
	tlmVAb437HuYSizdT3i+gK7ALX8U2yqHNJrOMMJm+IW3lyshPErPplcjfIfjo1NP1fiSOHyAQZs
	cAXQ8pMQLeJvpChTYB1YukPx5bh0TlFAcdRN9FqdRGuA1pbHEexx56eEoCd57b4fXMj/GVsNPHQ
	JjrGUHP27K9d+Bt/5XGzLF3BfaVfyRjZXbFKrWF3Jc8uadVBzVLpbc3p1Sv6FGJRt4UpYklpoPY
	VMfepXojgtBmgfXashaXZTBUN/MYIYCOd7v1X2gqxUhi/C4lnkj7OoCK6
X-Google-Smtp-Source: AGHT+IGLT5RMGJOi31Z4EljlBM6Dn6ye/misUQytVMeOZB5sQxwZhioVj8uoLgVjDj0pdiM3s3HzmQ==
X-Received: by 2002:a05:600c:4ec6:b0:440:66a4:8d1a with SMTP id 5b1f17b1804b1-440a65ba116mr6484755e9.7.1745564935206;
        Fri, 25 Apr 2025 00:08:55 -0700 (PDT)
Received: from [100.64.0.4] (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2ad112sm46202735e9.24.2025.04.25.00.08.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 00:08:54 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 25 Apr 2025 09:08:14 +0200
Subject: [PATCH v3 3/4] arm64: dts: qcom: qcm6490-fairphone-fp5: Add
 OCP96011 audio switch
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-fp5-pmic-glink-dp-v3-3-cc9c2aeb42fb@fairphone.com>
References: <20250425-fp5-pmic-glink-dp-v3-0-cc9c2aeb42fb@fairphone.com>
In-Reply-To: <20250425-fp5-pmic-glink-dp-v3-0-cc9c2aeb42fb@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-usb@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2

Add a node for the OCP96011 on the board which is used to handle USB-C
analog audio switch and handles the SBU mux for DisplayPort-over-USB-C.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index ea9f5517e8a083e37c4b7432322bd6d18fea84a5..e0470be9142caa4bac4285a191725bbd60e706fa 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -750,7 +750,19 @@ vreg_l7p: ldo7 {
 	};
 
 	/* Pixelworks @ 26 */
-	/* FSA4480 USB audio switch @ 42 */
+
+	typec-mux@42 {
+		compatible = "ocs,ocp96011", "fcs,fsa4480";
+		reg = <0x42>;
+
+		interrupts-extended = <&tlmm 7 IRQ_TYPE_LEVEL_LOW>;
+
+		vcc-supply = <&vreg_bob>;
+
+		mode-switch;
+		orientation-switch;
+	};
+
 	/* AW86927FCR haptics @ 5a */
 };
 

-- 
2.49.0


