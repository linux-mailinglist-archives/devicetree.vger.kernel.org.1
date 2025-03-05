Return-Path: <devicetree+bounces-154552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 116CAA50AEA
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 20:07:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E27421888D74
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 19:07:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C94E8257451;
	Wed,  5 Mar 2025 19:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nPiK1R4y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24AB254AE1
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 19:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741201536; cv=none; b=FGV54HREj50tEYko112driFyZkAl+uEb+hHgR4Ev2m6UVp184j3G23vKqYAdGtZBIBFPd1yJmBZaZ+utFdFBWOMCQlE75xeLHER42/qaXY0Siv7MQ9b2kT5Zpyq74yc357OjGCoKQ5OyhOtqrSjBMLKNcotyK0PAmirEiLjGeTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741201536; c=relaxed/simple;
	bh=264GKvxijvAwIqYax4UBh8DSRsYH08FMQDF93sAtJoc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=M0W2aQnJLfvSiR3QXiFxaA5cQwFWw4XG15bTMfrb0L4MMKIWvWa4sHAWdL5m9rFqNIZFG8ADShjd4lbLRTQAu8NxO5bYWi83lm9lf3DnwamJAsXCWura15lp8Lvnv+nvD0QTnBfTLItzSIlozA7riq3sZ30VTyu95joMc2K8lEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nPiK1R4y; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43bccfa7b89so17665505e9.2
        for <devicetree@vger.kernel.org>; Wed, 05 Mar 2025 11:05:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741201531; x=1741806331; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kX7FgUQGF0NZIl0sosO/eVP71r2DfvUSXcsohdDKCcI=;
        b=nPiK1R4yyg78ybLEyuq4GALPbhA9jki8yKArSHZIkewSrYzZIJX6FyMi6yj4fQUBj+
         YuRo3PIF+T0ipieMAu830bWbJdDbRQtg6GucmQ7wybnvIvNF2mUEQNClgbmJwAAYe4VM
         EFI/khiDw/48hDBF6u0IgOy/5jfc6HlY1DWuGr2gbNdzxsSqiMS5TZ6PBto/F5Ayf7Ck
         KIiR/Maa1SQWcZ45VB1HJyIelSmWAlUEWiddrI8B1R1h6TyIkTkTlUh3UEmLjIk3ZhYk
         3anAKACcxs4eYoegLu2CMwBjpPDA/hTu3dwi6a5iX2yff3syrvoCSaZZJOY7bMhVjMkw
         ECwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741201531; x=1741806331;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kX7FgUQGF0NZIl0sosO/eVP71r2DfvUSXcsohdDKCcI=;
        b=djmx8zfuB1m3D/kHP/J35oqxj0s6u/H+ZMf2MoeFido9pjRzwRqBtXt05Bv5JswgXy
         NXb9VVaH+BFH6Z70CAXQ4mgyxvt604/aP9OGhm+RxhjJfOd7OQxSToTghSMJ3zDSzdN0
         bPfZMepwBmnGyv9TfQaVrQ6jQc8mp76o1UX8uGG7Z/PqYzgkCdq4JBTC9p42PPtHwiHc
         CmgH0JY3pAUciX5DMrfCKrIDny5mA3+Y/HyTg0jl80JQDTHkR+w9Noll9foY2WOHrSTN
         1gTyN70/stfUT9+I90+scYhAcQ6tvMYrFNTqyl216m1dggDYWb7cKAbTnEsxo49XTqDp
         ZP4A==
X-Forwarded-Encrypted: i=1; AJvYcCVitOr3ht9TC2apIvABFWUkaXROUDzKhiieUXEJ1YvSWNL80zyNnwEiK4x640rc4HX3AtuUOoIpY7U3@vger.kernel.org
X-Gm-Message-State: AOJu0Yym5zQDRUkKdbU23aRMW2RCitZMjb9u7xdrKgX4yn1S9hVKJAJZ
	er5lK4vTG36abMywaEriWSqFZgZJsz+DyBxuNN+ldyEyxRQIIHKBZkNJBLqFlYo=
X-Gm-Gg: ASbGncuwFHyAU2nDpeAT8TyNxaW6+zubJxVX4th4uW0O20vRNwroP/Z78mRrQjJdILC
	ZtU+YYV5vUYDT2ZVcpLq0vCycZNMZkHMBK+NXW8YuKSByqmodKATGnTD2+NC//P6xcsohV3aYBH
	7xrOp2dHxeNUicV7ZTWN8/S4JrBXfnb+ZxJ27djkJghOEbnuHXxhOwCWmJj/SaFuaZJ6ksMiCDc
	WvdrAvdTfdGZbwJnlDSmbLuqbFW4KYogYBcA33HpQryaQmEV4K/0FsI8PsNjt86FzxmWYLoZTxM
	i9GD1EyZRql6lbHzI3K6hw5dh8dNLXG3fPgSQcu0//F1kLH7hduw7JvdVQPI+CLdiA==
X-Google-Smtp-Source: AGHT+IGrXTL0QZpUv/OFT6PtkL4D65bAF4/8a4VWTnUwODQTv9dBIsvSLw9ZMmHrNsOqNKHU5YHAoA==
X-Received: by 2002:a05:600c:3547:b0:43b:cc3c:60c8 with SMTP id 5b1f17b1804b1-43bd29a12d1mr40217925e9.11.1741201531494;
        Wed, 05 Mar 2025 11:05:31 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-391241bd151sm2045218f8f.21.2025.03.05.11.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Mar 2025 11:05:31 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 05 Mar 2025 20:05:23 +0100
Subject: [PATCH v2 5/7] media: platform: qcom/iris: rename iris_vpu3 to
 iris_vpu3x
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250305-topic-sm8x50-iris-v10-v2-5-bd65a3fc099e@linaro.org>
References: <20250305-topic-sm8x50-iris-v10-v2-0-bd65a3fc099e@linaro.org>
In-Reply-To: <20250305-topic-sm8x50-iris-v10-v2-0-bd65a3fc099e@linaro.org>
To: Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Dikshita Agarwal <quic_dikshita@quicinc.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1212;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=264GKvxijvAwIqYax4UBh8DSRsYH08FMQDF93sAtJoc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnyKB1daGuRDKRkyGyhSF97HB1D3WOwTay9MYnbz1Z
 ynuo3N+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ8igdQAKCRB33NvayMhJ0Rf/EA
 C9D3Slw0jkfoM/+nQaG7xAHEcTNcRc93mzCYIT30TvnAW7z0LbzsCGN/V8x4O3YVYXGZzvE3zIt3p5
 +Kho1ZyUTVJmlpuFtx1zk4dPp4FYiPy5etJGloctZ42SERFYtaS0DxNkGOaOryFSo/+dzo1AdfwmA4
 BG2IUlXWxUd6KRS/nbqMktPqN6AFFTuo+YFKosf/qqN93iVDq2Mh5gW+Cuc17fv/mRXzk4VsoDYXtD
 qn9PXnXC0B6A4IwVx8Yc7ce/PNT5kniyA2R2wx8a6DtWuHAimAbXpgr/abafDrGMgaA9ct5Gatadfe
 13+mPITIxGxH2aqU4yxfH1Fs0rPVMrzEK3LAJYQDfVcZz8WL8NOsnQVpaC/NbR0VCSjRif4lIZubC4
 nTi0Rrqwl4hHuYbfHVGbKmZLKPEqazyJYALMhWDzMhH82bJwrdxBZCUVraOnRLNmhMdSqYZiXVKuDD
 HBIkTCmgYiHGe1YmlTVceQ9OgYcwGLsXbE6n1/cGMmehX08WH1vf6ntYIQ6JLGZ16p7t7YqV+iMbps
 Ml7FmwXHQPD2QRS0OrEnaHgw3N41zIeISj49UYBVmPSKdjPbO81gu5wSUS8dJ84V+5ZG36ZEZE0hw/
 lyKLzRBvlysNbqiP2VsphQBNHNOXACfIKcMg89wJ7xvfH5RdhMlNvP3HiYDA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The vpu33 HW is very close to vpu3, and shares most of the
operations, so rename file to vpu3x since we'll handle all vpu3
variants in it.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/media/platform/qcom/iris/Makefile                      | 2 +-
 drivers/media/platform/qcom/iris/{iris_vpu3.c => iris_vpu3x.c} | 0
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/qcom/iris/Makefile b/drivers/media/platform/qcom/iris/Makefile
index 35390534534e93f4617c1036a05ca0921567ba1d..473aaf655448180ade917e642289677fc1277f99 100644
--- a/drivers/media/platform/qcom/iris/Makefile
+++ b/drivers/media/platform/qcom/iris/Makefile
@@ -20,7 +20,7 @@ qcom-iris-objs += \
              iris_vb2.o \
              iris_vdec.o \
              iris_vpu2.o \
-             iris_vpu3.o \
+             iris_vpu3x.o \
              iris_vpu_buffer.o \
              iris_vpu_common.o \
 
diff --git a/drivers/media/platform/qcom/iris/iris_vpu3.c b/drivers/media/platform/qcom/iris/iris_vpu3x.c
similarity index 100%
rename from drivers/media/platform/qcom/iris/iris_vpu3.c
rename to drivers/media/platform/qcom/iris/iris_vpu3x.c

-- 
2.34.1


