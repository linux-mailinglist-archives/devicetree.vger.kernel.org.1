Return-Path: <devicetree+bounces-31062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 21890829D44
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 16:15:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DDF241C22476
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 15:15:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5331E4CB33;
	Wed, 10 Jan 2024 15:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="hl53Ro7I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C23B4C3D7
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 15:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a2821884a09so345333966b.2
        for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 07:14:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1704899660; x=1705504460; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+f27VLO9Oz+Xtc3r9QInI9tNoYegp0SCYqbUt1hN6T4=;
        b=hl53Ro7Iih/C1dGnxSdBrNp4dQOra16fKAXonIQ7IWaV3oFwAFC1TZzs3GnW/GzLQK
         SmHRtmrp4DWO74zazWHcW17/MA5x6kQUVfL9C9aNgh0HwYWS/dRsi251jTXTV/2igPvs
         pUTl7wwtEfhLMQ90K/vqHX6504Qa5TqCcLSp5Xwh9GF8aUyO0DGlCGW8QnMr9i38fFuG
         N8Z8cchoj0l4Y4LCf5qOFlUxCBgL4KcVcW4TGF1GNiJpct5TIOgqiJlwTZsoXt6DDpOf
         DQ6HBbgZJC8Kz99tF9yOWhsF6+FALf3GvKbNNqMbc5QXo6uwHGxd614S0kdcNTBNyR7w
         eo2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704899660; x=1705504460;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+f27VLO9Oz+Xtc3r9QInI9tNoYegp0SCYqbUt1hN6T4=;
        b=Nt+oKYm5+sQc8x4epYdGpXH9D+C33ZLG2WLip/JXq0KwIjJQ2KWd3R6QmgAcGr6S5j
         MxWFPfFJf7cA83DsZGFn/U3pFsoxMy8YsD60QbHhgz7yu2mofTw9oD4VSY0x2IK/rmEf
         j+PDl3rU5J42y+sLcW/WIdn2RpGbbM4JK8SHZDf8+GZ+EAVjYynvuFgMQ2z+2Mi9ebId
         MHcyub2qaF9ZqNAl3DS5ePNM+a117W4FbCk9as+03v3s9u7c6RRzl25VAi5kWnMm9mPL
         P2sijce2+RifhoiDYKfVu3pCHCHdg2HyefesiR8Q3GII4nJ+kCiZpjmxtnWcKT2UXxd1
         7v8w==
X-Gm-Message-State: AOJu0YwnKzLlz6UQCSIZgKqTKKFspVGi6r2Ys9bHDUbL4HGXFnA/Z7+G
	NbXPguXQlPSdZplnBSzjTj1PGzuc8btOAQ==
X-Google-Smtp-Source: AGHT+IFjwvqQinr4aYI1QkACyE+dvAqO6bYMFt2Rs7JHAgqJxl1xn05Gqj5td5uc/AVJ0O9QomARAg==
X-Received: by 2002:a17:906:6:b0:a2b:c7df:87e2 with SMTP id 6-20020a170906000600b00a2bc7df87e2mr718602eja.61.1704899659753;
        Wed, 10 Jan 2024 07:14:19 -0800 (PST)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id jx22-20020a170906ca5600b00a27a25afaf2sm2174517ejb.98.2024.01.10.07.14.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jan 2024 07:14:19 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 10 Jan 2024 16:14:10 +0100
Subject: [PATCH v2 3/4] arm64: dts: qcom: sm6350: Remove "disabled" state
 of GMU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240110-fp4-panel-v2-3-8ad11174f65b@fairphone.com>
References: <20240110-fp4-panel-v2-0-8ad11174f65b@fairphone.com>
In-Reply-To: <20240110-fp4-panel-v2-0-8ad11174f65b@fairphone.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

The GMU won't probe without GPU being enabled, so we can remove the
disabled status so we don't have to explicitly enable the GMU in all the
devices that enable GPU.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 8fd6f4d03490..29008e155d62 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1449,8 +1449,6 @@ gmu: gmu@3d6a000 {
 
 			operating-points-v2 = <&gmu_opp_table>;
 
-			status = "disabled";
-
 			gmu_opp_table: opp-table {
 				compatible = "operating-points-v2";
 

-- 
2.43.0


