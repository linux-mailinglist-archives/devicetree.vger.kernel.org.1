Return-Path: <devicetree+bounces-45266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DAE86143F
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 15:41:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1153B285B64
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 14:41:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A33E85260;
	Fri, 23 Feb 2024 14:38:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y8nFaImu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4FDA8C09
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 14:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708699092; cv=none; b=mOvvk9jnV+p7swixWqDMzWd960Umo63PceYZ1AOwThqkLuQUXuZcg93kFJx04ip9x0ndmHzNeEEs0KvF31QVgJM1Z6XJb5UbT/ZXbHQYxtjNZ90jifRAaQ4947R78S4+F8PkzND1UgGWFtGztmLmXheyGFZVRHqUYV1axYT6+I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708699092; c=relaxed/simple;
	bh=OuvXRC94CLFGQE/I3V/oWFbOPTArY8NwO98GFsP3Xi0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EH1cM0Vu9022S2NVfmV5LZXQdKirUtre172s+zUncTS8KvkxuIcoWexxE5OoN2x6BWYQhkoUhY4XiGo/JuxBQ/xuwDVWE26d9vSTPfV6XoTSje2tYxD5pFyh0iBFgN28G/xNcTIWDludmJNT4OOFfyPKI9IoeMQaDRmbRNiqqsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y8nFaImu; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5649c25369aso1042340a12.2
        for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 06:38:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708699089; x=1709303889; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hUd3mgYBbijacmsAwt3IXQNAbwNLxGksnhh4kz+H3mQ=;
        b=y8nFaImu/kzNc17fyp37/wDbxVCGWw+aibFcqSdbp4A3dO/g504AMh4VSvoZex9S/C
         9BCK0+l7FPqsbsR+n62a6mS/x2eR5vpdC5ClIPzTIEils1D3TUsVtfs4S9AK7oaM0PoF
         Tz/MTWZXVxoAp31OWgr0vOFaE2lK3Chv81Em0Kf9S3IppNkzBhVbeqxOZ8VbxJvQXpIc
         6f335dmDvxK3p4UVJwqthDcyBrp3SIVEhTV2mu0bxqcVi5bh6iA8r2GYAROfPSN5Mhdr
         xKNckO7qf8Ob/PmiBXZnhrL2pWFT7Bxvy7Sj1RuBlMV/R9a+OvOCh+HMnXd/i9+Ki79c
         SqdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708699089; x=1709303889;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hUd3mgYBbijacmsAwt3IXQNAbwNLxGksnhh4kz+H3mQ=;
        b=xRDMyoMizlXDTFI4jJckf6gjTBe7PdXMIg9CfpLF09WtOh5tivI8utImtZWpTLaALn
         DNQ17yfsl/a305T9LA7jJb0P7nSBUMdqGOUR29tll1SD+h/PLt9sntb47wdWsEoGYefW
         Lnsz1uD2fGYy9hGlZtplRnJ8RatLQDiwTpFLqF/U0Yy7+B+UkZtApCeM5Y1GtZ1CkP+T
         ioNCN6Q/yTVlzn/4pHCXRFPP3/M/Eed1SpOJCPP0wnOLHZitKMrrBSZAuxNJL52gG//o
         lYi7OyIxJc2RE4Q6u8+IDwFTy9f+VxCHmWoTKofc1H6MdfLWw1U+N8IbJEaOGnc5/wn+
         OaYw==
X-Forwarded-Encrypted: i=1; AJvYcCWKFx1ab7AJMUYr//cN+WEQReF5X5ge4X0Uyd64ZaY/fJvIz/UzXJ4s7cQgxsKJVtbJwkhj4JVCuQLLLl6sXw/AB093JoFwOfhxeg==
X-Gm-Message-State: AOJu0Yx5ndquFPIOL7gsO46W/EYR+Jbm/7Auncy1GgOBGzF6fS9a6/zC
	fuDbFBQryGPhAoUCI3WaV2E47LiLGzkrLkyiy7Qa71EP8OR6s5uc5rXevU5Op9clO1hk+1RK+OZ
	F
X-Google-Smtp-Source: AGHT+IFxLbTtY6sGf8r4wAZ7dfn+gHL0XyWIOQ9JuxE0N5Q5aaSCJFmeQcCvlzk8xtocS/OPjZ18yg==
X-Received: by 2002:aa7:c697:0:b0:563:eca6:733c with SMTP id n23-20020aa7c697000000b00563eca6733cmr16668edq.15.1708699089030;
        Fri, 23 Feb 2024 06:38:09 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id p27-20020a056402501b00b00562d908daf4sm6637536eda.84.2024.02.23.06.38.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Feb 2024 06:38:08 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 23 Feb 2024 16:37:56 +0200
Subject: [PATCH 2/3] soc: qcom: socinfo: Add X1E80100 SoC ID table entry
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240223-x1e80100-socinfo-v1-2-be581ca60f27@linaro.org>
References: <20240223-x1e80100-socinfo-v1-0-be581ca60f27@linaro.org>
In-Reply-To: <20240223-x1e80100-socinfo-v1-0-be581ca60f27@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=647; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=OuvXRC94CLFGQE/I3V/oWFbOPTArY8NwO98GFsP3Xi0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl2K3LKLJu2H2wDU38wEXpexLiMerkyZ84KtvA8
 FeEa7LaMLqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZditywAKCRAbX0TJAJUV
 Vp3cEACN2AcnKFkKo9EzysazyAWEuaUACxpno+k0S2ocKIkdNcgTmU1ACSW5OZPIl8i2IKELRHW
 0X+TeeyZ1+xEG3pWvSrXHP4x//fTe72bKzEIAQLWdkS//3t3V/RhHQz3IPklsBmveRTJ8NEVB4n
 yBfuoXG1lxlYVhF6KEHBFUQ6sDB7w91VPP5hREG2ROgSzOXgj72IwPpFH9HgEHncFOhEWx7Z8Hl
 zBJ/NBPQxAbkuDUFRK7Q57ZTLauiFe2fP8gW8s3NhazYfA6JYhH1nt/ii3gIqi4XqmdyTo+1U7i
 xkRtVmtNxoCxjBtaZPq8SA1FcNcI4jM/LytuAaotdyy5qRawuDC9T+iShp6Ik9ZE5vRZNImH5jh
 Hdr//uIEVPKciYbdoNxifcjXGxf8SXYiBnoEL6S4sBm7B9x3/J26dQdtHF4A0GOUuFcPZaka7RP
 D6EJs4Hpzv4v2YRUXYxGeHemF8HMx8hD97DP23hEfVEM3eczLjSdqwIdYFjsXTGNQf00jJDfsKw
 li2y8xrWUHmEczYf1HcA3d0CKHJ3nESh0i0Q8RXgu4S88nIA87xTnGcqYBQWeYQ1KD+K88WnITt
 6kTZM4vrtZ7R7+5kHAPfTXw806NGd5VPMQVGswzzCcY0VvfVKrjDkYFuyByRuRq7tIlXgXyQTJY
 EIBddb901qdxBzQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add SoC Info support for the X1E80100 platform.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/soc/qcom/socinfo.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
index e8ff9819ac47..c8e968d7a620 100644
--- a/drivers/soc/qcom/socinfo.c
+++ b/drivers/soc/qcom/socinfo.c
@@ -430,6 +430,7 @@ static const struct soc_id soc_id[] = {
 	{ qcom_board_id(QRU1000) },
 	{ qcom_board_id(SM8475_2) },
 	{ qcom_board_id(QDU1000) },
+	{ qcom_board_id(X1E80100) },
 	{ qcom_board_id(SM8650) },
 	{ qcom_board_id(SM4450) },
 	{ qcom_board_id(QDU1010) },

-- 
2.34.1


