Return-Path: <devicetree+bounces-17840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6690C7F445F
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 11:56:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 20E8B28143B
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 10:56:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3A104AF80;
	Wed, 22 Nov 2023 10:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dETIR1Xk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FA6D19D
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 02:56:00 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-54553e4888bso9273163a12.2
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 02:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700650559; x=1701255359; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HLDI3wzMix+NWssn2rikTDQZvDop8e4c6V7Woh1WHUU=;
        b=dETIR1Xk1vCA+X7O0cD8zhvZrLymwmDJqT0DygyAdlfieR4z721NSIQ8pzf+ozIIIw
         BqjrQ0EvtEMRPFA6IdLbKOeMT5sU6/FayyVzWh7/Mb4Dmrx+vr8QN8b/+iWijTMS2nOR
         ZVKmzn3XA8OaiPMGB5vNxoUurhWSbExEhH+mfrXtgZoQHVC8GunuleznSQUKdN6497yZ
         w/t3hgmdZeAy/TyRJjqWdXLXLe5PXoLYHM79XAH+0QBNaLB8ZKc+zpEMmBUm/Vbh2dF9
         8/5w7mMjNTTpJjNrwJ5KBFGc4s8kTK7CJ5qIxaWnDTAq+vf94k9N4JyvxoIcw2RYK1RZ
         CT7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700650559; x=1701255359;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HLDI3wzMix+NWssn2rikTDQZvDop8e4c6V7Woh1WHUU=;
        b=DaPwbGMUoybD68AVqtrnP7j/TRn9lW/bcCBCKjqTpinaI5U2qAMZkJvuYjjhYbm5Tt
         3qkM+zboq5jCLJp4fBFGxeeqQSZQFERAFn0EDL/8g1dOpikmIjFnhBgGIII4C952kjBt
         /Y1vjCklUXYRsNh/YrT1+ZoqDuQE3AiqXuN1iZ1aF5UBxYWfmpKw5hFSPcPMgbshag/+
         b47Q0gBmNI7NlcwSmOCSXdDXAr2thZMjkVHXzo4K4n+J5dOQwsMKsvrd/W75euhpAph/
         RKVMEx7oHZwU7WAHrvZOfqVnbhoKAtrvNOgve6NaMOE0O6lKSntFQcSY68KI2st9Y3CX
         lL5w==
X-Gm-Message-State: AOJu0YxphiEFbYUIc0H+1NUkMYpjAyW4DonGYP4OiDfNbfIM8XK/v6V0
	qF3XsRy6K8LeRARLaVNwiGdogw==
X-Google-Smtp-Source: AGHT+IEcUs2DzE0DCcfF/Zqi+FS19jJkgid6BYQFfSIGdYh4e0kqwIWPHfhZgF/ve8h/TZgtEuuWDQ==
X-Received: by 2002:a17:906:2d4:b0:a04:d5e8:cd84 with SMTP id 20-20020a17090602d400b00a04d5e8cd84mr539404ejk.56.1700650558988;
        Wed, 22 Nov 2023 02:55:58 -0800 (PST)
Received: from [127.0.1.1] ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id mf3-20020a170906cb8300b009f28db2b702sm6423557ejb.209.2023.11.22.02.55.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 02:55:58 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/2] phy: qcom: edp: Add support for X1E80100
Date: Wed, 22 Nov 2023 12:55:47 +0200
Message-Id: <20231122-phy-qualcomm-edp-x1e80100-v1-0-a9938990edb3@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADPeXWUC/x2NQQrCMBBFr1Jm7UBmSlG8irhI0okZSNOYUKmU3
 t3g8n14/x3QpKo0uA8HVPlo0zV3oMsAPtr8EtS5M7DhkYgZS/zie7PJr8uCMhfcSW6GjEE7XT1
 NIYSRHXTf2Sboqs0+9oe8pdTHUiXo/g8+nuf5A6sW876AAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=866; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=6Qe8P7OumubbvMZ9Ocse/XGaxEKzcj9WjK3I0PgWsKE=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlXd42TNpKNmMaTa4qcGZmrA2jYc/smPgdRuMrW
 v60cO4OVtyJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZV3eNgAKCRAbX0TJAJUV
 VhmdD/oD6CPBHJwtRsdfJJ7iQXCg85N3wd7U3WD4obqKy6M5x+kTlVi1uW67vDAKI9vFoVMFnBi
 u5mSHcHcxVzRfvsizSZ0kkLhUTU0iEISy/WCJBr23Uzx/u5C0Ew/4wRwj/LA+nekqZlqmXh+slK
 Oq0cjxfuAFmlqGBfMLxsPVrtHebmSk3qSetoA9p4x0Djv7bdqhaupitLw1/yGMeIv4zlPxeG9I5
 3RxOlffUk3N2ahtdMlnJt6x0LaWtOtBdpZppBTUJ3G/7z5zadLv9o8nxihIOU55BizsM5v0qUcs
 w0HevtuJEQmy4xdOw/oSsOoBX4F/3843czrKYMEmeYd2AUVQaioZfpxLYREha4bJtGSqZctqqGm
 5mmDeH5pWa/TnKDjb9mRemQ7fo/sJR31ROhV2DXub8YnbW+CvGhe7vW+THCyWwiJ/TKdwWLYEn+
 zvS+lb8Jy4qvgHfn09pTqnUKI6Dkw0VEYFKFoSmUJ+PInsTTMXS3+aHHY1DIeyQza196qWA9XDA
 CjM+E4RDxU1CBBdBnQalmSt62yldlGHd9KBK3joRkFxZWnPcgbRVV/Ny6QvlIl+YuxQaLnKIKQB
 J0/uQxM+RiUM9yMzJpA24UzJCIvaGiXr0QHyy0YM/xrjyVkuVRswuQyG5zSo7EgAi9oEVDLCkwr
 6vYaEBJmnvim1KA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

This patchset adds support for the X1E80100 eDP/DP PHY and documents its
compatible.

This patchset depends on the QSERDES_V6_COM_SSC_ADJ_PER1 register offset
added by the following patchset:

https://lore.kernel.org/all/20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (2):
      dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles
      phy: qcom: edp: Add X1E80100 eDP and DP PHYs

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      |   2 +
 drivers/phy/qualcomm/phy-qcom-edp.c                | 305 ++++++++++++++++-----
 2 files changed, 233 insertions(+), 74 deletions(-)
---
base-commit: 07b677953b9dca02928be323e2db853511305fa9
change-id: 20231122-phy-qualcomm-edp-x1e80100-a57c15fff32b

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


