Return-Path: <devicetree+bounces-107007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB5598CB2E
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 04:21:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F2312853AF
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 02:21:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 807F12F44;
	Wed,  2 Oct 2024 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="APLaMqT7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85182BAF9
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 02:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727835634; cv=none; b=fEudsXdakApsphWTXRAbJurjXUGQZ+TZ/82nN1mjoKJu/evpSbI31oVvkXJdm1Y4e9qgdIHVnhrtYmR7rPHHvv5O25uV4tuX5O+pJrnabZKvmtjop6vmmKXiCvK0HUzdqSotYp4WSfUvOZHg+97P6zMHxeEEifh+AiTz4hI/7ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727835634; c=relaxed/simple;
	bh=ric+SLdIOtDdMn/bjY4ZV6JUUhcdjPFI79OUCHUnDgs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TLVVtc6pvuhwFUGfmsy9gQZ6M8ppAXr0ziTruQiL8KgijNA6tSsR9fBKNm1EV+awShuWsiGGU1RPelyh2Yfb2EaMWsRhPjs78CM099+mzceMTVPndLaYQqgW9NOaC31uCgFby5zYVXoCGoeyyp7CLPt8J4DaAh5VFUROS2PMAg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=APLaMqT7; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a86e9db75b9so1140355666b.1
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 19:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727835629; x=1728440429; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LIw3pjujevMfYCBuBjwX4+AVabirKPTZ9D57CaVG3PI=;
        b=APLaMqT7Xyt2MCqDDHtsTtlsgCf9enskEkDfoAg5FzR8xc2u6EBx4M1URNYHisfTDC
         fgqr8RMmZ1ah2DUX2RSxS9JFJglIaenOwx0zqIIyQMkF8ZiG578TV9uslsXV6+aUOg+v
         9cr0I3nhPsUN977J9flCMYQDjzuY6E9BV+fRQHiJ8rQBV8wBJxs3wm+rpmCitdMrTzl5
         OCpje7f6ftb+VxtRjImv5Ade7XKjg68sML7RWBXOoK6ksFxgaXNH9y80rSbBmCNiwQzt
         joi7fqsh0Uw3hz6/A8MS0OShnQIgCyw0LC6UZYdyrYn6Cm4twqCD/5/A4PZLqsevsnmD
         Lesg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727835629; x=1728440429;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LIw3pjujevMfYCBuBjwX4+AVabirKPTZ9D57CaVG3PI=;
        b=YpWnnPYcYYjZvxf4XZEZiOL7auiT9GtvuTKNMsRJbUajiOhjh/4Yc+ZoLDDctB3Hif
         fDVRMJYXpjTQR8GCqbYPbtRoLoEo+aCo4aEmxfJ4J4SfeWq3shCDkgWdyHzr79Hy0b4S
         qY+dItE35Za7GspbMLeZkQzOxRzm+N3fjYSKmajCKKVHpaLj0AtCsojVIJFVGWD4XHOc
         mAKZyfIRdvQZ1tdfJxMYZ6B2iO99DSREaF22eXiyLuV3SrPG7maKkFx2IJuQsP3uJx6Q
         zwR1DFQFHKG7IuLX+yjPr/ZRInDU7soa9oiAp6mQsasujlMRiT1cvYDOAXnfPcI6DGrc
         hYWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXSSWsCphMO8BzxeTWDUVa6nfWZabCegNfsM9Jx8fG6SBDp2HpFcbonhNEidEPsotp+zvjcr+SpG1W1@vger.kernel.org
X-Gm-Message-State: AOJu0YwJ3UYGLk04r4CZa73KrCrzYFLY4HAWrlp+vT3ycBcn5+9DjK1q
	uvAFYUsDxmmXAjT8wXKvZC35rouQ6qXp02DBPBYIYceJIlmHOvO2NmgXtetvRXs=
X-Google-Smtp-Source: AGHT+IEVv1yZPyk7AlihJhG5VqeeKRdBXm8rwVDjskcD7VkJNBZU1ibp+Au9f/NNatFh5EVKsuyquQ==
X-Received: by 2002:a17:907:7da0:b0:a80:f358:5d55 with SMTP id a640c23a62f3a-a98f824f579mr132293266b.33.1727835629204;
        Tue, 01 Oct 2024 19:20:29 -0700 (PDT)
Received: from localhost.localdomain ([2.125.184.148])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c2945f2esm787518866b.117.2024.10.01.19.20.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 19:20:28 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: linux-sound@vger.kernel.org,
	srinivas.kandagatla@linaro.org,
	bgoswami@quicinc.com,
	lgirdwood@gmail.com,
	broonie@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	perex@perex.cz,
	tiwai@suse.com,
	linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	elder@linaro.org,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski@linaro.org,
	caleb.connolly@linaro.org,
	linux-kernel@vger.kernel.org,
	a39.skl@gmail.com,
	alexey.klimov@linaro.org
Subject: [PATCH v2 5/7] arm64: dts: qcom: sm4250: add LPASS LPI pin controller
Date: Wed,  2 Oct 2024 03:20:13 +0100
Message-ID: <20241002022015.867031-6-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241002022015.867031-1-alexey.klimov@linaro.org>
References: <20241002022015.867031-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the Low Power Audio SubSystem Low Power Island (LPASS LPI)
pin controller device node required for audio subsystem on
Qualcomm QRB4210 RB2.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm4250.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm4250.dtsi b/arch/arm64/boot/dts/qcom/sm4250.dtsi
index c5add8f44fc0..37c0e963e739 100644
--- a/arch/arm64/boot/dts/qcom/sm4250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm4250.dtsi
@@ -3,6 +3,7 @@
  * Copyright (c) 2021, Iskren Chernev <iskren.chernev@gmail.com>
  */
 
+#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
 #include "sm6115.dtsi"
 
 &CPU0 {
@@ -36,3 +37,18 @@ &CPU6 {
 &CPU7 {
 	compatible = "qcom,kryo240";
 };
+
+&soc {
+	lpass_tlmm: pinctrl@a7c0000 {
+		compatible = "qcom,sm4250-lpass-lpi-pinctrl";
+		reg = <0x0 0xa7c0000 0x0 0x20000>,
+		      <0x0 0xa950000 0x0 0x10000>;
+
+		clocks = <&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+		clock-names = "audio";
+
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-ranges = <&lpass_tlmm 0 0 26>;
+	};
+};
-- 
2.45.2


