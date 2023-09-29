Return-Path: <devicetree+bounces-4509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CACFF7B2DEF
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 10:38:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 4D23B1C20BBD
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 08:38:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47316F9E4;
	Fri, 29 Sep 2023 08:38:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B90BEC13C
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 08:38:37 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 969441BE
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 01:38:35 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9b275afb6abso89474266b.1
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 01:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1695976714; x=1696581514; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SJ7dWwjIApKtRRNvf80hbFpB8p0JqB1tooDJ9n4DaEc=;
        b=TgzOm07j+oG1QdQ6M6etJgUeQYZp+TXhNEwce6SC7NegU1rvUIB8qWIqSre70gvqIl
         MZoLTwZhnSm4GD9A7X5nEcFjM5oklp7VbT6v2YugXw9sAAVaRZKFefkHoVYLwtQPQqmA
         kwLGp3DeDUejD6/DoBtKu4NVoQF23G9vRfrPyPHWSFuCBwpVq2JqnteNoGkCboByweNL
         rW7vkuPdNX+G8+XZjZ0EYIFQSrZIN9tIaanqwXw4ghxwvG+XB10HbW9hYVpN433PmAm8
         RxdVY393/oodVrOK4Cp5rIRsjrBeNtzJXY45LiiHcVFwVhGvLxwbKznFsmVG2+9g9t0x
         zOVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695976714; x=1696581514;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SJ7dWwjIApKtRRNvf80hbFpB8p0JqB1tooDJ9n4DaEc=;
        b=jglmP3BWmKMRvaGJlDb+zqBxe1e9YJz8r0TZhylqzmQIsVIkG+8mOBB+AZJ4S0mugZ
         gjKBMELKw24dpS/cMM3zdKQDM1taJR758hSkZ8fl4EXe+Vuu4wOAyxLoNCcBPZEkjIpB
         oep9kig44aL/o610WH2unNNK4Px9L8Ke/uQ5/jOWHGkVjzsTLWfz7dP/bm1LhibAfEh1
         Dd8jKglqzLERhVp250A8ZeYm34YqteV/dEmlFRSjPeKrFGhaC1TE2E3l9KuypQH7s86k
         zjZP0YpjRotYJm92/CTgYmecruNgjMutfKkAAayohMcTwnGz3Kqv9e48dAzin1wocLnY
         SlGQ==
X-Gm-Message-State: AOJu0Yz7B4XWkLQfnq0Onp9lbHnDRfnzf99tu7ApxiJp2A4RqaC7/6G5
	mhBSoo9olPzRuzolrSlmC5DqnQ==
X-Google-Smtp-Source: AGHT+IEhBGY5oEalRjg4MOYzaPZSrg/MxpppdFL+uwcBakrAbyblbQv0sSsQVIzDZ1igXxgYsQTD2A==
X-Received: by 2002:a17:906:8a73:b0:9a1:b528:d0f6 with SMTP id hy19-20020a1709068a7300b009a1b528d0f6mr3157220ejc.27.1695976713867;
        Fri, 29 Sep 2023 01:38:33 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id qk8-20020a170906d9c800b009ad89697c86sm12208965ejb.144.2023.09.29.01.38.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 01:38:33 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 29 Sep 2023 10:38:21 +0200
Subject: [PATCH 3/3] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable venus
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230929-sc7280-venus-pas-v1-3-9c6738cf157a@fairphone.com>
References: <20230929-sc7280-venus-pas-v1-0-9c6738cf157a@fairphone.com>
In-Reply-To: <20230929-sc7280-venus-pas-v1-0-9c6738cf157a@fairphone.com>
To: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
 Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Enable the venus node so that the video encoder/decoder will start
working.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 2de0b8c26c35..d29f10f822c9 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -665,3 +665,8 @@ &usb_1_qmpphy {
 
 	status = "okay";
 };
+
+&venus {
+	firmware-name = "qcom/qcm6490/fairphone5/venus.mbn";
+	status = "okay";
+};

-- 
2.42.0


