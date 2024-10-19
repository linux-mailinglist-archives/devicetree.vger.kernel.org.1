Return-Path: <devicetree+bounces-113259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4E09A4FC2
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 18:27:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 300522877B8
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 16:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D583318E04D;
	Sat, 19 Oct 2024 16:26:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lktGJLaT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8743A18CBE5
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 16:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729355211; cv=none; b=gh3ncJD+HRXgNKYIjoEt7FLoPhLIe0Y2wZA/Gq2ir2LmrpQAtAgRPAqQRHBVIQ++mBSzl/nMI9W583Y8RvTb9RaZkTtcCzpKAAIhBG8UQc9CvzckM+neKY3THvt0Ao0yWJokq9uI8M1WfYg5y+EqzSLq6qtvY7qodshd7V6Ksvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729355211; c=relaxed/simple;
	bh=vgPnlY0IikzOPmVwLN9lODbxv/uthexJm6oKQROqQsA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G5bM6EIqUnPlCj3tgqi4Tgfzi2AxQn49qFBX1mYWc2IciuMvg09F0HYewX7ysbWEQMOATurSWvBxtPLVHmS7fo8lYYLiEOM36r7KQsN7NFrljwtzZZo9/3tFM/b7LwHy45QdMwinnSBYbOB2Ja4V3k1PD6Jwr2lmsv36A15Fvqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lktGJLaT; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2fb561f273eso31487611fa.2
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 09:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729355207; x=1729960007; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y6cCac7YSvuyy4cYsSfeEzgyabQ2bwR3+mQWfBE8ctk=;
        b=lktGJLaTzWEhwuN9G58nJxgAjojgHrb3jiqYMgZ7CLOMaJ520vqfL8RKTPG/BFmcu8
         XujLIqrPp0uMJuYgRL8e2m8Y4kOjHeKebH1LP8CGJVKLrhz2a+blDYqn9NChN4pi40Y0
         S8wkZTAYAAApIYybgQ1G9zK+m5ofb0GVFGB/YHqx0mdhXsgsAJX3qh6NCXvMZg2itP5T
         +Yg/ndX/HwDofq6WLXXh1QJnuJS0j4qRHuDVs3TIL6ywEOM99OT/wTK28QkHyxZvzcDU
         l4NKW2JY0FmSquBneRfDRbPG3gl3qIMo+wHPTKeuRxwKdfAsrz4ghKu4LpUbtMUvOJvZ
         PHUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729355207; x=1729960007;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y6cCac7YSvuyy4cYsSfeEzgyabQ2bwR3+mQWfBE8ctk=;
        b=hNoZUocd16SO/+s/xZqspF5UqujBFa7czJpi/jVuTMb7s0NV3MYzygD36Mf9W+hGQC
         oAa8JcQGZTVXiyTOuxm79y4EVNEQYQxh+lycncv3glYw5qKQsm4BIxg+hluY7cMEhkAv
         qXvs51rDN+4rpq0mgqgptr6l1i4QTCZeuACftXGhuGXDFbxxEiRntrTRfNXI9IFBtEPX
         ySU9oxJ+UpCSuG+FVbgNsNZ0bunmf4pJml2sq67fEw8QGoigUs31NkkK+bxneWh1o8kH
         lHtszDsFb0SBVi+gX10LPiDJspbPHXagISbn+5FvK5Cy9YtAVThDe87mAo+dwNdzNn7A
         banw==
X-Forwarded-Encrypted: i=1; AJvYcCVjiHNS3h4sze6HC6Wf8ntq3lmWYBETPfHQ1rIH2WzA2zAFyzaD7XpcdfPn6AEH/UO3U96sa3jL9Yry@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/UyILDd5xlEiDMUIfGtptszejn+bAR4gcC/nXG37vg3158S4s
	4Qn/+W/q5hKPbkrwPIVWgaagFXSE7PodNK1v/WjdTLBhyvxtuoThsykqmXYZeJQ=
X-Google-Smtp-Source: AGHT+IGj06tp1NpXJ2lP04B1I/zlau7c3rADR7dqWsSS376r//UzXheRR/P9O/1v3DxV/tAu2lpFcA==
X-Received: by 2002:a05:6512:2399:b0:539:f7de:df6a with SMTP id 2adb3069b0e04-53a15459fc3mr3714161e87.52.1729355207477;
        Sat, 19 Oct 2024 09:26:47 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a151f0c65sm576590e87.125.2024.10.19.09.26.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 09:26:46 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 19 Oct 2024 19:26:41 +0300
Subject: [PATCH 1/2] dt-bindings: cache: qcom,llcc: document SAR2130P and
 SAR1130P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241019-sar2130p-llcc-v1-1-4e09063d04f2@linaro.org>
References: <20241019-sar2130p-llcc-v1-0-4e09063d04f2@linaro.org>
In-Reply-To: <20241019-sar2130p-llcc-v1-0-4e09063d04f2@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Conor Dooley <conor@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1998;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=vgPnlY0IikzOPmVwLN9lODbxv/uthexJm6oKQROqQsA=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnE93BYjEY4XqP0KZVJzk6aH9hIVcXbCahGqDAh
 B0zQEHakcmJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxPdwQAKCRAU23LtvoBl
 uPKhEACTPrRR0EmeM/yHbf9uozCAROAKN9UvPcTfYhBE2yGpIkM8MJgZeUm9+sYv9+Wxo7BQwBE
 sHDIBTpgVEUEzRJi9VqAQLX5lWpNBIMGyRWann6Bjm4LvkisdG+V19zUEgVTDJyVaovDsvV6Hvf
 sVbpCxEtnbBQYZpiqSUuk777+njiOsGsraHmDisWUJ8c077YrULQIVLf0CntLk1D56+5BDmG1In
 lEOL8nm9q938e/tJRoVPs1OAfGMufwvDpInppcnkJJg2zCTddHiWdSXNsRXFMHmmSpc/6HigXf2
 tUuphQk0oK7T8azDgfjr6tHBo7yw4rtuGlQjohOqkSLPoCiRiQ0U/+9grPH8Ys8rRGxuzyqDIjc
 IN2MUTDe+Sy2cSotIa+y3JuRFE9AV34CuSaywvy/z/OCiZgkEIe6se5IUUMFFwXiQKD/kJoeR04
 z5VJTqsQQIj/S5AcOq1hAjurFzryhlPiCDyPsU3l+P6LONPOx+1VlgTywoLnndXjFuIb2g9ktAx
 MVAiTiP0D4tFQblyIO/D0pm7bsv2SQapy/eaDTzs0ISgWXXJWCF9Cn+ZYfa/2rs8ja1gyOqBttu
 E0mzg1CGBrLqRbIFB9jjBIZqdO7QNJ4/nN62wpiBRm+UMkFp4RUhNZJHnhYalNHC3mQfd9Rn5aA
 Cizq/ln6LFDjlog==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Describe the last level cache controller on the SAR2130P and SAR1130P
platforms. They have 2 banks and also a separate register set to control
scratchpad slice.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/cache/qcom,llcc.yaml       | 28 ++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/Documentation/devicetree/bindings/cache/qcom,llcc.yaml b/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
index 68ea5f70b75f031cd8b23cf48d566c3a760dab77..2edacf28944c78b53b51744d787f5d529ad83f3c 100644
--- a/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
+++ b/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
@@ -22,6 +22,8 @@ properties:
     enum:
       - qcom,qdu1000-llcc
       - qcom,sa8775p-llcc
+      - qcom,sar1130p-llcc
+      - qcom,sar2130p-llcc
       - qcom,sc7180-llcc
       - qcom,sc7280-llcc
       - qcom,sc8180x-llcc
@@ -62,6 +64,32 @@ required:
   - reg-names
 
 allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sar1130p-llcc
+              - qcom,sar2130p-llcc
+    then:
+      properties:
+        reg:
+          items:
+            - description: LLCC0 base register region
+            - description: LLCC1 base register region
+            - description: LLCC broadcast OR register region
+            - description: LLCC broadcast AND register region
+            - description: LLCC scratchpad broadcast OR register region
+            - description: LLCC scratchpad broadcast AND register region
+        reg-names:
+          items:
+            - const: llcc0_base
+            - const: llcc1_base
+            - const: llcc_broadcast_base
+            - const: llcc_broadcast_and_base
+            - const: llcc_scratchpad_broadcast_base
+            - const: llcc_scratchpad_broadcast_and_base
+
   - if:
       properties:
         compatible:

-- 
2.39.5


