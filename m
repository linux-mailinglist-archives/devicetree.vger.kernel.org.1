Return-Path: <devicetree+bounces-144279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29687A2DAEC
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 06:07:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C1A0D165D1A
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 05:07:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FDA574040;
	Sun,  9 Feb 2025 05:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aSYylMB/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAE4B4D8CE
	for <devicetree@vger.kernel.org>; Sun,  9 Feb 2025 05:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739077612; cv=none; b=t4ljrx4egmrvKvDzHZDS42FZb0YQukv9GXSpBr0cmNK6Nur5USRPFpVROFH4bF57Cxq3HwAfPcr5CESezBRVuSxIMk4KjRxH0obF6UYCbDofuv5Rkc5/hYZQq/W8MzfcLMm1N6soW1VAtQ6PJGhCcgdNT3KWl4EB5I2y0y+c1eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739077612; c=relaxed/simple;
	bh=BXA7Q9IpU3LJo5o0YQp3oC/xe/tm2VyAy8ivKO92PBQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hgH6QrwRkNgfmKjByjQKdUjwb4lgpqmVdqkqlMQ0RUVPpXPKMEYM7tZNCF2gfrFH7n/mXXr0s4xKxcGIlns8QOrwCd1+X0pCuT896jV22WJPYxovGiXd2bVaekylLRjgOm2zW8C+fNzw5y9uGLY3Qd6MVIz7yBMg3KrFnMmmuJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aSYylMB/; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5450681b606so648898e87.0
        for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 21:06:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739077609; x=1739682409; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yj0BuWh1hjkMiCnQtqM7MPhpgvXgx80zo8kYUYLklb8=;
        b=aSYylMB/ayzXdDs5w1kWFx8Egop05cq1dPpL03zCKNGZishvNUzHx8NKlk2If3fOTM
         JmoEVnJFDYClCD7pYWo9rbmJYEezaJ989ZqqxUA9RUl1V4WRXEFF8aYwjUDM1iTdK57R
         3mSqJI6cHO9T1RIcoMUvUzWlPsghJGEa17SyKX4U3mxsk+40XQqD6+UeZPK23oyiOpbr
         PPF7AYbpnoz7UpnIP5pxLegLYjHxfk0deTydLjb4DvnwjggGVdgFW0Vf1sBPXXvVhZk3
         GIbMqhgxwEtzWbnCssvReM+WNx7iNS9+ny06qK+5xFZ3b05u5QYd4Wq1WEG4ozDSm6uX
         sAPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739077609; x=1739682409;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yj0BuWh1hjkMiCnQtqM7MPhpgvXgx80zo8kYUYLklb8=;
        b=oRJwrKwkK1CVWe6qo3UOKBMiJfaeCWQHBUdMmg71O7eOpGlkNiWRv2sXv4Dti6yAGT
         NZuQ0HZkqv9HdNOy5xGUuRLQ/aGca9DG2eiH3w/HNWKP+9PdAQVSQZfUmXmCLYQIRkYz
         5n+NIA9X46w+Bnx6oIAYtuufnhPlXdQPHwf8pCS2F8OJRqaolCQ2qdl63dk3kkIo9gjY
         JYfiPJjDxa9h70Yk8ZSEBFT98c0UYVArXIK5omR8BSe56K4TDCoaCk5EdWkrtdLNui4o
         WUjyld7Q71DfYuRP434XGEAmmLs1xLD9UItu6xm6ca2ho/YIo+nHrL2nU4TFpIyNz3Ui
         Ds6w==
X-Forwarded-Encrypted: i=1; AJvYcCVSaLi87N41P1huEPyrmBEKMpjfwPDl7+AAiG69hk/m/Kd65xtkncIwDg8c9SqvQNOb2VtR6Rnbtc45@vger.kernel.org
X-Gm-Message-State: AOJu0YxaKi848nr2beyE3QC/kZZWaYhCaJOM4D/Q/uYW3OMhzbmgUKth
	pUQUgE7rvf/VB/RxKm9tnw3BWavEHS5cwLdyoywdlVIYPqcHn16zM+oc56hsA2U=
X-Gm-Gg: ASbGncs28VKx87fBeO+nVDJQjCyvwoYjUL+cumWDWGpVetwYkcv5bxPXoMEQd6oHD2e
	SUS1iEf6KZpxuClhgeHbYh3KiMMLD5sqjxRcFdKjxGSByYOeIga2ZTjOhOj+LUqnVuiQuhXIC/g
	8TvpYCjnJpN7++sdD75jK6KjB8AgK9mlSeyPmUF7HMpy41hb8bGB1mqtp0xjAiK1cDKGgH+vPZZ
	uPXGzTm+HMW66yM+l212PZwn7JfbdxJPK8SGToYYCN4ZeMc1gCtn0sSSHXQvI6gPCgxc3aliibK
	LVh8IFn0tnCyjsgdayBIOd0=
X-Google-Smtp-Source: AGHT+IHlnIFRUHNy4Pv8cos18vLNYdATiWlvlgAGSIQwUUTZUpNqTfhFg+S88Fft5a+ZKQPZyT7Z3g==
X-Received: by 2002:a05:6512:2384:b0:53e:23ec:b2e7 with SMTP id 2adb3069b0e04-54414adfaebmr3141413e87.34.1739077608720;
        Sat, 08 Feb 2025 21:06:48 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54506ef1733sm245576e87.1.2025.02.08.21.06.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2025 21:06:47 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 09 Feb 2025 07:04:45 +0200
Subject: [PATCH v4 01/16] dt-bindings: display/msm/hdmi: drop obsolete
 GPIOs from schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250209-fd-hdmi-hpd-v4-1-6224568ed87f@linaro.org>
References: <20250209-fd-hdmi-hpd-v4-0-6224568ed87f@linaro.org>
In-Reply-To: <20250209-fd-hdmi-hpd-v4-0-6224568ed87f@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Simona Vetter <simona.vetter@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1225;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=BXA7Q9IpU3LJo5o0YQp3oC/xe/tm2VyAy8ivKO92PBQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnqDfhD1AdF8cdaEFbZcUVUS48D8BueW7S4NJjP
 m99fsTsa8mJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ6g34QAKCRCLPIo+Aiko
 1UjqB/9FEXBtULbRjjbPI2zjBtvnostnj5+h5M5uFG+qcq1zFtALCl0x1N5gtOoekLyqo4wWRO8
 pm+HZ10170lI47GVEPlWbenUymsUQLGvEXx62AaHWZOLQ+peYt3EPJyrGaCRAk+ck635Ewh6olI
 erz99ab2bo/ggk2quQvQ4jzbw2cCWnm+HxsPjvxw38guV+w1YmqU8jGXfOmn7PgnM235jR/PiEs
 AydsPxkkK6SYICEpdFWJl2RcHmBqxCAtETjF6I+U3SPBT5NvEm8HeZeXNr2DeLp4fQlYlWSlAii
 rC2DEgtxa7xXBPhqjINBQTnuKu9LthaXvCgHcbl7D5+CBhzE
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The commit 68e674b13b17 ("drm/msm/hdmi: drop unused GPIO support")
dropped support for obsolete qcom,hdmi-tx-mux-* gpios. They were not
used by any of the upstream platforms. Drop them from the bindings too.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/hdmi.yaml | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/hdmi.yaml b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
index d4a2033afea8d4e4f83c9859f8840d30ae9d53f8..7e6f776a047a00851e3e1e27fec3dabeed5242fd 100644
--- a/Documentation/devicetree/bindings/display/msm/hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
@@ -66,21 +66,6 @@ properties:
     maxItems: 1
     description: hpd pin
 
-  qcom,hdmi-tx-mux-en-gpios:
-    maxItems: 1
-    deprecated: true
-    description: HDMI mux enable pin
-
-  qcom,hdmi-tx-mux-sel-gpios:
-    maxItems: 1
-    deprecated: true
-    description: HDMI mux select pin
-
-  qcom,hdmi-tx-mux-lpm-gpios:
-    maxItems: 1
-    deprecated: true
-    description: HDMI mux lpm pin
-
   '#sound-dai-cells':
     const: 1
 

-- 
2.39.5


