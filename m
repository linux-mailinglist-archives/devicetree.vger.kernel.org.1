Return-Path: <devicetree+bounces-12491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 758067D9B26
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:21:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F1AE2824AD
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:20:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22C5136B14;
	Fri, 27 Oct 2023 14:20:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="ejFFbh4H"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86034BE48
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:20:41 +0000 (UTC)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0E34D40
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:20:34 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-99c3d3c3db9so344321066b.3
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1698416433; x=1699021233; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y41N6IDBFdrpsca1M24XemdQ8eJbWVhCq1jwXxRCbP4=;
        b=ejFFbh4H6iLRxVOpQqElDfQ4vMTIKJKNN+ivtQ83qlOUPvxbhJTyUkxg5IReVhlk0Q
         QhbwSFsu40zsxVMQO4WJLHjvJhq53o+Y8ex8lY5oPK5gBiqj2PihjAl7PsU9CVrix1As
         9jESVN3Meenb3yrtGK1cr8h+yysqQtlE3P8QNd5C1CkCnFoSDZTw0QabpL78Edckl31D
         7WYbZegknW0GnDOLi0JWhCT97cyd7SGXvi5aMuE6Sb7TD16cgGJQqT0FNLDghpw2AJ9F
         3VAEA8R+votlP0ZCy3zX+i+NkxBtQHydm+VZ8dOkDyMy0KMSrDnylnD3fiNayckogFYM
         J4oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698416433; x=1699021233;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y41N6IDBFdrpsca1M24XemdQ8eJbWVhCq1jwXxRCbP4=;
        b=eYTubeL4jxy0v+AUD1rXi8TnOsJyTm/mulRu36RNB5CrzPf6E3nXwadegNZY5fcvoH
         DlGdSW80YA09gwk+kqB+leWobZTAPmoirn23zNbSD+5w07Iv+lbE04vMSSwrdQ5oMcPW
         6kbhTj6nugyDtmAPfinE0/acVKf7cKK2X2avXtlNGJhn1g0n3V2ZZj+IoyG0WVXZk8hv
         Hiy0ozq1Z5RvCP8j9NE24i9OZxafKlk8lRLUMmmzBZGT2r3xKTU4k2uXzTZQHIUbkqGu
         QpvFgGeYObVSFKzKQ8uGBXcFj94VWyfrVaYRJqI5C1UQVVVN2xM2YCJ/XROOYcePN3dQ
         +hTQ==
X-Gm-Message-State: AOJu0Yz73V3VfkZS1yvOd7q1XHmeX0r87uAE/LBckM+5aFX+jKHizFPo
	GOOKZiaYUohhCUXNgtY6FO3H9w==
X-Google-Smtp-Source: AGHT+IEAJuC/YctdTElHl9hJgRic+lp7n6TOITFQHxv3vNsqWiuOEJZ72mySMQ37ns3EEV+tTPGdNg==
X-Received: by 2002:a17:907:c0d:b0:9bf:4915:22c8 with SMTP id ga13-20020a1709070c0d00b009bf491522c8mr2039660ejc.5.1698416433161;
        Fri, 27 Oct 2023 07:20:33 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id z23-20020a170906075700b0099cc36c4681sm1254076ejb.157.2023.10.27.07.20.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 07:20:32 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 27 Oct 2023 16:20:26 +0200
Subject: [PATCH 4/9] remoteproc: qcom_q6v5_pas: Add SC7280 ADSP, CDSP &
 WPSS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231027-sc7280-remoteprocs-v1-4-05ce95d9315a@fairphone.com>
References: <20231027-sc7280-remoteprocs-v1-0-05ce95d9315a@fairphone.com>
In-Reply-To: <20231027-sc7280-remoteprocs-v1-0-05ce95d9315a@fairphone.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rob Herring <robh@kernel.org>, 
 =?utf-8?q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3

Add support for the ADSP, CDSP and WPSS remoteprocs found on the SC7280
SoC using the q6v5-pas driver.

This driver can be used on regular LA ("Linux Android") based releases,
however the SC7280 ChromeOS devices need different driver support due to
firmware differences.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/remoteproc/qcom_q6v5_pas.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index 913a5d2068e8..a9dd58608052 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -1165,6 +1165,22 @@ static const struct adsp_data sm8550_mpss_resource = {
 	.region_assign_idx = 2,
 };
 
+static const struct adsp_data sc7280_wpss_resource = {
+	.crash_reason_smem = 626,
+	.firmware_name = "wpss.mdt",
+	.pas_id = 6,
+	.auto_boot = true,
+	.proxy_pd_names = (char*[]){
+		"cx",
+		"mx",
+		NULL
+	},
+	.load_state = "wpss",
+	.ssr_name = "wpss",
+	.sysmon_name = "wpss",
+	.ssctl_id = 0x19,
+};
+
 static const struct of_device_id adsp_of_match[] = {
 	{ .compatible = "qcom,msm8226-adsp-pil", .data = &adsp_resource_init},
 	{ .compatible = "qcom,msm8953-adsp-pil", .data = &msm8996_adsp_resource},
@@ -1178,7 +1194,10 @@ static const struct of_device_id adsp_of_match[] = {
 	{ .compatible = "qcom,qcs404-wcss-pas", .data = &wcss_resource_init },
 	{ .compatible = "qcom,sc7180-adsp-pas", .data = &sm8250_adsp_resource},
 	{ .compatible = "qcom,sc7180-mpss-pas", .data = &mpss_resource_init},
+	{ .compatible = "qcom,sc7280-adsp-pas", .data = &sm8350_adsp_resource},
+	{ .compatible = "qcom,sc7280-cdsp-pas", .data = &sm6350_cdsp_resource},
 	{ .compatible = "qcom,sc7280-mpss-pas", .data = &mpss_resource_init},
+	{ .compatible = "qcom,sc7280-wpss-pas", .data = &sc7280_wpss_resource},
 	{ .compatible = "qcom,sc8180x-adsp-pas", .data = &sm8150_adsp_resource},
 	{ .compatible = "qcom,sc8180x-cdsp-pas", .data = &sm8150_cdsp_resource},
 	{ .compatible = "qcom,sc8180x-mpss-pas", .data = &sc8180x_mpss_resource},

-- 
2.42.0


