Return-Path: <devicetree+bounces-12499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA2A7D9B34
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:21:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46E432824F5
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:21:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 762BC37154;
	Fri, 27 Oct 2023 14:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="YbElE/gk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91A343715B
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:20:57 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD4E5D5F
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:20:37 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-99c3d3c3db9so344329866b.3
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1698416436; x=1699021236; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P5guGXTewYW2n7ENQHk5doI6SalggtwyVa2pq9bebSs=;
        b=YbElE/gkBDVFDTSH/RWrKuDiKtnHbSyVTWPpjUPq3Lk3P3Ck4ZPmM7VoqC/XxV88ew
         XpvQuoiKxfH5/stFy2SraElgI1+uFx779cxNSV5W4/wJTAX30siM1XMCAmT//c/MQ/H+
         yUh4fjX2hurTWbjE9iJwdu93WIWGGjP40vx5yVAlAazTRhExVJ2hyWnAvbQATUFY4ijK
         N43stjbJ31Ig4kx1Tb0HXblOtxJOXF75gp6sfUd/eQT21vlDqtnvT8h+ckztj0/wm0Db
         uH6WY7NQom8w91hx/v1CFDy3itzooTopJLQ4SRrppKwgU2Y4PqsVkySu/LNDFk/kPXQf
         T/pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698416436; x=1699021236;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P5guGXTewYW2n7ENQHk5doI6SalggtwyVa2pq9bebSs=;
        b=J9C56jubw0gmSFwK53fzfFBDQQfBvdYe0rcPkfjpS/0seyM7OoOycNUtVdlOEzvb5V
         2DfjL8Z4MSPjBr8AgeqMxU12zXxFdJqCV4iL6ye/1E0xWrE3xiQXNMMZe5DGABxi8nAo
         t8mz/mydU1MSBhp50H3HMbwLOVGaVwfTJMG9mTQwy+gdCApLOpyKUKmfVQCh5s0m133w
         1pnamZXnYsRbAVAg20cjFD/QqxeN6SzFxjfLjani+ZjR3MJflpc1byO62eaxn/82zaR9
         s9WeBipR+uwl5tZJWlmWnmjX4bmCOmIuC7SCQbNQMnVglux8mxhEQBXK11Y/x+afzMFA
         ucMg==
X-Gm-Message-State: AOJu0YwgL8IvDuQBiYgODtkGjfUcYZS5tnk2plFo+YYWaho+pGzmUkl7
	A/swE4LxER3FdiTux4dZt6QWxA==
X-Google-Smtp-Source: AGHT+IEqhd3xjFLMsXk83BUinySE1dGq7Y+pY7lq2bAn6pmtgmZD+wMInipigYhd8Vm6tTkFIkGYOA==
X-Received: by 2002:a17:906:db04:b0:9bf:9c58:e91e with SMTP id xj4-20020a170906db0400b009bf9c58e91emr2101293ejb.56.1698416435955;
        Fri, 27 Oct 2023 07:20:35 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id z23-20020a170906075700b0099cc36c4681sm1254076ejb.157.2023.10.27.07.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 07:20:35 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 27 Oct 2023 16:20:30 +0200
Subject: [PATCH 8/9] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable
 various remoteprocs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231027-sc7280-remoteprocs-v1-8-05ce95d9315a@fairphone.com>
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

Enable the ADSP, CDSP, MPSS and WPSS that are found on the SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index cc092735ce17..d65eef30091b 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -490,6 +490,26 @@ &qupv3_id_1 {
 	status = "okay";
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/qcm6490/fairphone5/adsp.mdt";
+	status = "okay";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/qcm6490/fairphone5/cdsp.mdt";
+	status = "okay";
+};
+
+&remoteproc_mpss {
+	firmware-name = "qcom/qcm6490/fairphone5/modem.mdt";
+	status = "okay";
+};
+
+&remoteproc_wpss {
+	firmware-name = "qcom/qcm6490/fairphone5/wpss.mdt";
+	status = "okay";
+};
+
 &sdc2_clk {
 	drive-strength = <16>;
 	bias-disable;

-- 
2.42.0


