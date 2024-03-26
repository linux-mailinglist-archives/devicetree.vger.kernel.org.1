Return-Path: <devicetree+bounces-53624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 229F588CDC6
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 21:03:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8B80FB27BB3
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 20:03:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B264913D2A3;
	Tue, 26 Mar 2024 20:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Otrs8Yk1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFDE213D286
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 20:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711483382; cv=none; b=Ivkw38CkukE3O6+le2C3Avj4+zZhn7LzvQQtrvhJpIqr9WTBGRNFxGW1tyrKcr9WIyZLpau2D6+PL1aG+dvP0DyYCou9JKFZoLj6g77vxRnHWdbW+yBTBNSp1lfgppj50JA9C59Box76tdAQexn/wUS7H30X8PtZ7lJ6hzCNerg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711483382; c=relaxed/simple;
	bh=mipBzLhXme/edDDsNRRaHmAV/zjI88iNQMd61g5M1kU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Is+TV7kYGzGmNzhdXErcrGYZXvUKvspeYXNnX4lktIS7LjgiMppifq5Tg6JSZg9LSvi6KlpTdd2ydGx0bW9TSuM4aKTITqlsRNK1tIZjgmJ5d08khmZvSQM1NFp48jF3xajroryy9OCZzbpCvVPFH0j+kTW6QMbozLprYX0zk/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Otrs8Yk1; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-515a81928faso3518345e87.1
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 13:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711483379; x=1712088179; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YOfJ3g/to7EyTLgt+Fv+Z4h7uzKPNiClRQu90BLeUVg=;
        b=Otrs8Yk1gFsSRV0wWhp08phSDwWVkPPEr9vylHU1pyS2iuabt/3EKTnPslapzGjfZD
         ExlI3bUWEjBpqfnNW4ASqvuCVE7+Jue5EpgrgD7FPqp1F0JB0lc8uXr0uzMDDbqhQWK9
         6nCRqcq//yEKAzI++tDa0q6nHHUoetlTtNslDJLIK5yz+2easjsudUAICpTtzDr1FFLE
         FsxNKKoYYVMX0EgTxyY5cTzJBUs5xBM5i2nPMFp4aa7lPpb8KYY+NkBTzlCA+dG1uyEa
         Qu1hLODZQB7c2ZjADDRa5q7fUbMElucCczmY4oT7GBvbOv2CXYDwAVBJQa+378AKNXsk
         VP0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711483379; x=1712088179;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YOfJ3g/to7EyTLgt+Fv+Z4h7uzKPNiClRQu90BLeUVg=;
        b=n/odGbCe2ka4mSzM+6tFGYZ1vnNgmmngOGMeDD5BOlo5jn11VHuR1lUACmJmnh5Ecw
         09Os+2OT5qfk1O9+IZRflFPUY7LOZ0ltY9BwzATH1JJObO6/bm1zcbYPks0gpHUqi4eu
         oEVhUESUJtPpAZb58oSeDGk2qtfR7939SfLmEbatNyuUfnXH2GEWJyYu4/VPw5XrO1BL
         LKigqCUbAuY5jy/TNeDZfFPJzEOsmv4ZrCzquvQLTUwqMkpAm/1YZkTkjrTrCtFku56s
         KGMzfDuGTXp6/NfVDG7GNwNc5u7bqEeYYIpT0d/V6O881cGvMI4eS7YvGUwDymUpBaF7
         2MGg==
X-Forwarded-Encrypted: i=1; AJvYcCXVUykk67fzfAVZ4PPe0YzTiw6auPrFe/arfsEmyiG1eL4rZpyqF7HWlXUYGKrkAZ04wYY5DEb5ceaxC33SLmt8CCQm4tifrZWViw==
X-Gm-Message-State: AOJu0YylhklVLuBZ1i5MnodO9HdUxFcj9sQFTSWNPn/pHgC8lGkYt8QM
	pa37TjXdqneOZXIDSPg87kscFgLIYvZLx723Xvk0CY2nC1nwOFUubE0wGcAvKc4=
X-Google-Smtp-Source: AGHT+IG6Rdj55PbJdCjYR5CCyMtdrzEoKEwkbUNTq+un+AW0OwlrDJTZm5V2qwPgir9to1xCsoeCwg==
X-Received: by 2002:ac2:5ece:0:b0:513:df00:8ab5 with SMTP id d14-20020ac25ece000000b00513df008ab5mr1630271lfq.27.1711483378883;
        Tue, 26 Mar 2024 13:02:58 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a21-20020ac25e75000000b00515a7984acbsm1279408lfr.94.2024.03.26.13.02.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 13:02:58 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 26 Mar 2024 22:02:55 +0200
Subject: [PATCH 2/4] arm64: dts: qcom: sc8180x: drop legacy property
 #stream-id-cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240326-fd-fix-schema-v1-2-4475d6d6d633@linaro.org>
References: <20240326-fd-fix-schema-v1-0-4475d6d6d633@linaro.org>
In-Reply-To: <20240326-fd-fix-schema-v1-0-4475d6d6d633@linaro.org>
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
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=807;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=mipBzLhXme/edDDsNRRaHmAV/zjI88iNQMd61g5M1kU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmAynwFhh1lFYNnond85T2qTb0Mep8Q73XymkXQ
 gV4iWTJAcmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgMp8AAKCRCLPIo+Aiko
 1c1EB/4h0zbDexyWBuye/7gFeqTI7lC4DyOCh8JX4d99zRLI5FyIZZmeYbOnM3At10e4qla2bRr
 BjiltyGGkqqifqM2h0TMlP6nytjAfhbroyTK9ZjybLQjGT9IZwxJ7AwgDMBPSeQ6HH6lBr6UIdO
 5ORkv3Hk0EsJkloEAOltynaRpbKsFiyI1Km/HUO7LCm6oPLY0HgtxIKLUgmgrADJPtBWl1pVVm1
 zTce9RX46VDTtwkGb0wrRVhtlxyym6KS7D+YtiIypcau+WoaEYmkuGN2NkBSHhQLZLJ/tXQ1GAc
 +h21wEYiNjMwj7iI1erW/1utMC8uXNfDl6cqzSdIgoXmPLOz
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The property #stream-id-cells is legacy, it is not documented as valid
for the GPU. Drop it now.

Fixes: 494dec9b6f54 ("arm64: dts: qcom: sc8180x: Add display and gpu nodes")
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


