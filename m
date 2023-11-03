Return-Path: <devicetree+bounces-13842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E68C07E0C49
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 00:36:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 72255B21494
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 23:36:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C226026299;
	Fri,  3 Nov 2023 23:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="O+fHFKu7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED54C2629B
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 23:36:00 +0000 (UTC)
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 562CAD7C
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 16:35:59 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1cc3216b2a1so26728655ad.2
        for <devicetree@vger.kernel.org>; Fri, 03 Nov 2023 16:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699054558; x=1699659358; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f1BlnpLKRujmj++l/dAo18/lb6NbFp3/th0VKiPzT+I=;
        b=O+fHFKu7OrbA8r/9UBvLMQF7TBJZFiAerfsEcmkBqiv6w8Lb5cCyr0jkWXhTPiGx5D
         f7pEDPaJZqcRoO/2l0MKK4DfLkx3006xd8lqV1UUcf/BhiMh06CmLWQdeBxcM/Y6KAyb
         M0Q/MGejeiGQXrnih+HadgcTmIqTE3YH/Ngpo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699054558; x=1699659358;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f1BlnpLKRujmj++l/dAo18/lb6NbFp3/th0VKiPzT+I=;
        b=qhf5PHUZtpnYnQ/+O+XaM/m60Yb3y6pTNi1lE7M0F6qKVzITPjSqQUX1LygdDgqyV1
         gFkmyI9/f+I70GTpYqXQNo/OzwD2h0NKR5I3LRBolvYglCQZAQoapteEAnOX5MCWDFa0
         9rUus4I+/kYouFVX0bbqdbElHsm8Er4AntSLSTP/+4G+ag9twnzj9c/CmPjtLMTt0HUq
         KIJSs9nkVQblhGi/T0u8YxRLQ4W41Fs/Q3pYJb2QoYXytzUEtXzd57/m1L6yLy1nvook
         Fuy7XBxfJEwpWh85y52EAZOeZ+t85aZWuAuuf+FgTTcpnCkuiL7uEw1CuBgoXgDDBWyc
         aFlQ==
X-Gm-Message-State: AOJu0YxhJ4UCKnjBJAD855e4mkfFJfjWaRV9GXetjn940RywT+m8H9ZL
	c8K/hnI8nhyZWtsjo5ZbSN0M/w==
X-Google-Smtp-Source: AGHT+IGiKPEOOZ6icuMTp8Vu2YYI0J74G85B7ofaE4byNM28eWtIGjWhTQ1O9/bkWhFhSoGq0O8KIw==
X-Received: by 2002:a17:902:d2cf:b0:1cc:3302:7354 with SMTP id n15-20020a170902d2cf00b001cc33027354mr17375680plc.17.1699054558674;
        Fri, 03 Nov 2023 16:35:58 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:9d:2:5195:5e72:f5bb:e3f0])
        by smtp.gmail.com with ESMTPSA id jg5-20020a17090326c500b001b8b2a6c4a4sm1878114plb.172.2023.11.03.16.35.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 16:35:58 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>
Cc: linux-watchdog@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	swboyd@chromium.org,
	Douglas Anderson <dianders@chromium.org>,
	Andy Gross <agross@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 8/9] arm64: dts: qcom: sm6350: Make watchdog bark interrupt edge triggered
Date: Fri,  3 Nov 2023 16:34:34 -0700
Message-ID: <20231103163434.8.Ic1d4402e99c70354d501ccd98105e908a902f671@changeid>
X-Mailer: git-send-email 2.42.0.869.gea05f2083d-goog
In-Reply-To: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
References: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As described in the patch ("arm64: dts: qcom: sc7180: Make watchdog
bark interrupt edge triggered"), the Qualcomm watchdog timer's bark
interrupt should be configured as edge triggered. Make the change.

Fixes: 5f82b9cda61e ("arm64: dts: qcom: Add SM6350 device tree")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/qcom/sm6350.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 8fd6f4d03490..6464e144c228 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -2524,7 +2524,7 @@ watchdog@17c10000 {
 			compatible = "qcom,apss-wdt-sm6350", "qcom,kpss-wdt";
 			reg = <0 0x17c10000 0 0x1000>;
 			clocks = <&sleep_clk>;
-			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
 		};
 
 		timer@17c20000 {
-- 
2.42.0.869.gea05f2083d-goog


