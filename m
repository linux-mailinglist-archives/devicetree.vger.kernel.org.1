Return-Path: <devicetree+bounces-55244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3598949B7
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 04:57:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4029E284252
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 02:57:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BA6614AAD;
	Tue,  2 Apr 2024 02:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AjVAOsQ+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94E0612E7C
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 02:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712026642; cv=none; b=BjEcHT5yzC0WDr7BQNe30nVo9EHj95Pr5IsFkj2kfGnUZzOwiFkDfiEgowuy6n1SqXF/Km4cb0g4isccNXvv/52odekuhp6tmGGWVsxsTYnjUaSqNGAY4/EveZ9lfqgqBQSsYRxmZUO0G6/huYrwkavXOBzRzATpibUyPMPRkko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712026642; c=relaxed/simple;
	bh=w5zQXOnPzB+6T+6japHE8hZUXFKbXI4e5KFMpuaJ0rw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iGdqUsb9Wh8vFhwPrTvdnxoGDdnxOcze0N6FxcAy13LhK9FsNiVIYdI0S+IjPfaQleBWxRC3WmqvgeuTiDTMiq6Oq0jG+jszddnpAMyOWQMgxTRBvpKJMVT+bXsTd33e9sEZNMJm3aB3SPhyCyIP/neywpkch7HJ3E0kEUNm1uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AjVAOsQ+; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2d476d7972aso67428011fa.1
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 19:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712026639; x=1712631439; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F5IC23W8dkfkeGv7PhNwXY6wfYxaTqv1Otp0zqPc/pE=;
        b=AjVAOsQ+T9HCRF8G8TvPK9yJTSOWySDavKOIWoy9EIXdgSbp2N0I+DJ3pIWB14fD5I
         eqKFxUpfdpOXCOMFFPKXuPx3NVwN0BKsGFROxusNVPLsFyX0+wBr8EV0zDR7805rUWSK
         ogieDlcqPjXyDZM/3V+IHc/R/oN+DM2vTU75C5trTSMbba3L2ZOU/dYKVtaGTzOEiv5s
         JKwWqEFioRaoBpuaE8VfGuctmjOe5/0w+g4mFbRSZ+bzh4VpTELbRfMXrBIV03P80yWp
         gJYo5zNUV9UYb7+Cfr2Txy1kMnORrwjmoL/eEQikglEmgrJWglHAfr591/0pF3hdWfUB
         YcEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712026639; x=1712631439;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F5IC23W8dkfkeGv7PhNwXY6wfYxaTqv1Otp0zqPc/pE=;
        b=p6BQ+Rjxoim8JRR347FB/F7C4nyMkhFh49hXWGKAzWF5LY5YJUmQJ0Ndr3AVGyg/Ot
         Yw4689sDvnYECJeq/uZXeNyjZD5eoF8+QYk6jGVdmj8d+LwHF+xH7vLILvZTrrx9qpkZ
         VW0/BNDkuR9uhfNlP7hLLAOiY9LETAgCvBOUl4M0S4OxLLiGhG1tw1jUmRB9cZ3G3rJe
         +SKOwFzZzyRdNQnSjo8O7coDDun3bf7KeFG7xR1n9nuruObUT3/cns5Y7kw3gKYOugAG
         lZYvbiLoEPrDJYrsHAQVDuQkjkpHMYYUhWVzyvf8PRX4euMjnRRFITm+JUBjekNEeIiN
         Tnvw==
X-Forwarded-Encrypted: i=1; AJvYcCVTR1eLtZCQW91VyRrTy/aK44QH5wEI7J2DHdg78xwJ8p3N0Mw4kO+K+P9TjazkKtcKtzZd1M94+LOvzO/5xQExserIMV7v89PYvQ==
X-Gm-Message-State: AOJu0Yy0O3eyR3wr2PpEUnMATJOrnxUJZJK+Pk9JvhjxerAl0hrg/5cw
	ocM/3OnnfEmMuENGAdDp0p+mbuvhP/WuEZYDnQejrxitryHRjjpbY3M8/NXH6bA=
X-Google-Smtp-Source: AGHT+IE5/I0Ui+n+NiAwymmYa3FFUUviJesGwNK15ik0L4EqKpZG6dgdOX1WTj1V5kOdlUI1dCc+Fg==
X-Received: by 2002:a2e:82d7:0:b0:2d4:35d6:1984 with SMTP id n23-20020a2e82d7000000b002d435d61984mr7265060ljh.6.1712026638803;
        Mon, 01 Apr 2024 19:57:18 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 14-20020a2eb94e000000b002d48dcd10a9sm1562356ljs.86.2024.04.01.19.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Apr 2024 19:57:18 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 02 Apr 2024 05:57:16 +0300
Subject: [PATCH v3 2/4] arm64: dts: qcom: sc8180x: drop legacy property
 #stream-id-cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240402-fd-fix-schema-v3-2-817ea6ddf775@linaro.org>
References: <20240402-fd-fix-schema-v3-0-817ea6ddf775@linaro.org>
In-Reply-To: <20240402-fd-fix-schema-v3-0-817ea6ddf775@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=862;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=w5zQXOnPzB+6T+6japHE8hZUXFKbXI4e5KFMpuaJ0rw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmC3QM9OVJQVRYKxY615wIyW5tU7qgiHe2AT9Oh
 SAP7fUs9JqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgt0DAAKCRCLPIo+Aiko
 1eHpCACpIHEWWSt0ZG579x3SBHA4VNC/sjNCXH8JkSj1JtlfRqYbN/WdQ5nl1tw8/wVXUbj56ms
 AQwQxDLa9qQIgQT1sNNfryf8WQxIgYC0KtIFZC40l/3gB+2863sA1k+u+Z3Dt3RecGJfJkhYfBh
 ObYbuPO6WVE0+DAXD5QOtA/291yH2jCldHm+ZxqL/XYu/PEb4ZT26jyjL6bxmXSIftBmmBvlkH9
 t3t8iVJ2vxXz+7Za5GsbYpP5UDWF8+P6Lki9z+3d7dyJNXu1jMu+uNv3jgZb67zRKbZe0yee3e2
 ooZ6r/TUAKv9AvPeohukO87QN8LjEmI+kl/VfYY8hItlgTNs
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The property #stream-id-cells is legacy, it is not documented as valid
for the GPU. Drop it now.

Fixes: 494dec9b6f54 ("arm64: dts: qcom: sc8180x: Add display and gpu nodes")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 32afc78d5b76..99462b42cfc5 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -2225,7 +2225,6 @@ tcsr_mutex: hwlock@1f40000 {
 
 		gpu: gpu@2c00000 {
 			compatible = "qcom,adreno-680.1", "qcom,adreno";
-			#stream-id-cells = <16>;
 
 			reg = <0 0x02c00000 0 0x40000>;
 			reg-names = "kgsl_3d0_reg_memory";

-- 
2.39.2


