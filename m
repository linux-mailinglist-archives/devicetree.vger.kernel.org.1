Return-Path: <devicetree+bounces-12496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BCBA17D9B30
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:21:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5D669B214FC
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DAA337167;
	Fri, 27 Oct 2023 14:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="kju7MqYA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BED436B1F
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:20:57 +0000 (UTC)
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FD55D6C
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:20:38 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9cf83c044b7so233358966b.1
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1698416436; x=1699021236; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L5VK2HSIOWZmUzPwXwqeSeHrMobAdR7tlAySzxFYWrY=;
        b=kju7MqYAJmlHUDfIkQKsMnzzAr2o7ukRwdw9kG/ruxKWZheoyDFlQz/LdvFvAPmAd1
         qjgnQAvi9ak+W0Vqqod9OcoLnyHLGf3CiHMe4yZx0vtgQzC5YSaiOehB991vvrPz47pp
         YQHJmYPtqvSayMBll0gXLrvBcVFroZAQhxYu5rqRUc2Jc51bfkcW7BAs6UdXxiCd0S5H
         +h+9lquEucc6m8D/SNnjRlfHXkQBrEHXHjnGEvZ0AvwiO1jL8b9pv+8JLyycShsLS6Nh
         6xET2gNvrEJkDmWC4wz9yfwHKa0qteNtg1ko3TLBNw9fYJ3776afsG4+H8atAWppWZPq
         f+lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698416436; x=1699021236;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L5VK2HSIOWZmUzPwXwqeSeHrMobAdR7tlAySzxFYWrY=;
        b=cFPJP3J+RFRsnNVgVZ8VP9UdcKE38j0u3X2MhT5jU6s0zv5vjemq2ReI3XPp7CcPir
         BSEYa0NfxzsFHC3fipGr96hbj9W39BWPk5zHiT0akg0uNRb/2VxWCT9G/lSyyK2m7kPI
         MOgsGC3Pt30TY6sGYeYjbYEcF6Cw7ZwxdDpLnolCOsyR38DDi5i98btpCM8JiLEyFIoq
         CRllYJKmTrkN1ZCb9hLeXyCRwhHFZwDecaVmQjH92uuPS5xemkawDF56Y4UM0LHJSW54
         WAuxluTnv6K/AEnYmhMG6i3r5tBWTbj6axsTOEbfPCqwo/wkHNqSW3m4h46HKZAG4CcN
         t/Iw==
X-Gm-Message-State: AOJu0YzURDPO2TCD3/YN3MjNm9i9Aj0UDrVuP6Vn4EzoM+vnumbPqZ8v
	NnG87oniSf+CP8PkK3s4Bzd7ihEZFl24N+YSfcQVXQ==
X-Google-Smtp-Source: AGHT+IGCrCLnjiNlVbMaeUUlvJXqIO5b6SWq0niQMI5IHqrUMdEpFeM4ZgO5YzR9L+9udK6dzKRqgA==
X-Received: by 2002:a17:907:3da7:b0:9be:6ff7:128a with SMTP id he39-20020a1709073da700b009be6ff7128amr2350241ejc.67.1698416436593;
        Fri, 27 Oct 2023 07:20:36 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id z23-20020a170906075700b0099cc36c4681sm1254076ejb.157.2023.10.27.07.20.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 07:20:36 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 27 Oct 2023 16:20:31 +0200
Subject: [PATCH 9/9] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable WiFi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231027-sc7280-remoteprocs-v1-9-05ce95d9315a@fairphone.com>
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

Now that the WPSS remoteproc is enabled, enable wifi so we can use it.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index d65eef30091b..e7e20f73cbe6 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -713,3 +713,7 @@ &venus {
 	firmware-name = "qcom/qcm6490/fairphone5/venus.mbn";
 	status = "okay";
 };
+
+&wifi {
+	status = "okay";
+};

-- 
2.42.0


