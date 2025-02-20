Return-Path: <devicetree+bounces-148781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CB2A3D622
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 11:09:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6C776189F007
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 10:09:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCA271F1500;
	Thu, 20 Feb 2025 10:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XKIjMOwq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6EF71F12F8
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 10:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740046129; cv=none; b=jJDiRPezhsuN8kJA19A5xgX4sBfBtinMBkA11RmNDJG4V4jtXMMh2angWlku7xnzbXPmPqH6CzH+0+Tkxlv5SWi5DsFYTXaRbK2pzXyW00vlBfvXgTT6fRN3+ZbOf/jGx0XeFCGMNWFGep/zF3aF/LN4/jfmf5My2+ClhCo7Xq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740046129; c=relaxed/simple;
	bh=FgJVBSjYusgZgNG2tQQqs/1on/o8VH1/MQqBVN+UdAQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KYxaItyjSIkY40hnOCzoxYqQWGh9+conVYboQfPlbGvZ8G30VX6AZsZLq63qMw9y4QximTOFOeuldUokfwKcvHSA9cq6Xx8dQHBN1RP1Mi/39Ul6uUOaaXecjacwCTk/lwJo2XnW0VpFDmBSNd4qX9Ioj2JHYwJvBU9FyKham+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XKIjMOwq; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2fc6272259cso1169996a91.0
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 02:08:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740046127; x=1740650927; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=meTtqveZhiyJw9ezonjEpVoABcseZWYpFPvHUuAWv9M=;
        b=XKIjMOwqqPHLUlzVmfabnjG/y9G6wrDOnymNeaMNeNcCKdQ2HRLGVOV+RqSLJ1vupU
         Sr2DIg+L5yO7JvzqMB0oSdQbz50EEWqu7Y+VvAieeI7s5FDjWIuuSHphYzMgMRwTebbz
         PtArFsW7juJbbWExLE16zgXDy6WpkC3zsDiLwHuh25Dq5Sb1T9ACmabWaonZgWEh7myv
         1xrEY/4KuqDSZtoHNn3WKatRev10B/PtbcjK8MfTNx79DQCrvqywFnx9rVi8xbEK6axS
         QN+E89VEEdguQ41LPXNHFrChGjiVtniHNJu9vSbn5K0CXHmQT1nBQJ4IIWr3xmf801s8
         qw5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740046127; x=1740650927;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=meTtqveZhiyJw9ezonjEpVoABcseZWYpFPvHUuAWv9M=;
        b=W37sgYjz1kdl6Xwi7izOH3HaZcko/Dg01kxn5s6R/dr1v6svYQeMjzHw1rlWvgSIUu
         bGGW53n0Y8oqThTPDrhfu6Hs26QzaESwmdgxneb07t7fFYrA5tZE2OIj4ybUkMwGcpHD
         LfaOVK3zgrtLdotQwDTUXVeW9GSCsXnncy9RNyoaN/Fmb0yX7h8ChzxMEfYSvMZIDiTg
         403Z3wouKoji2iR0xMG2haHZZrooir+CH8uDyb+wp+gaBfR7H3TPJVOB/Hq/jF6E3NB4
         Q/Tak360Nny9IuPGdI/JNBwZE1Vd3EsSIDiB671C9BxtGrZt7Wy6GRTHp7NYwXCcoOsO
         UKEg==
X-Forwarded-Encrypted: i=1; AJvYcCW6b7m6Xpr8IEkCIBG6iWUUF7TsK9VQk8t3pCWhfRG25E1wBKx4q9br41Eq/xfleTCltmiWO7A3sa4R@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9O35YffG4sMlebhnOsNpR8DOZKc0EENPBJammdgYYjAFlow4Z
	bRNaBuLUrED6xSzrZLdmvsynwqkQAGkxVBFC0y8QUEkOQVsfrjULry6Lyz/3NVE=
X-Gm-Gg: ASbGnctK2fa08m0vd41W8pvokkLAXXETG06/jjqQKdUkfpQlZ4CJrkewduomYze9GF/
	ctpldRx5LR1WhftHsFJhjc9kmEJPZ3f8hgyp3mUfE56w6wQc83poaTONR+N5VQIbsBHHxgaZR8r
	zPx7fOLn6KfR7ptaSv2jp2oDBa6XteOK1oeN1fH8frLnlewwlmPFG9TMIzJmmFx8ibSANcMnu+q
	b8g986Ppee2MtjUNnOMAXst0mhms4hoWc6NN93x4wwmDjQ9sDWiBZIpWbYGe9cETlmA63m9HvP/
	e3saiT13pFGX
X-Google-Smtp-Source: AGHT+IGD8wqaCpXBwdzW85qDe+j1va1f9U+T7g4YEj1TqycqH9bnYqKAjfpfwmdIfdAez2gbLo1Zwg==
X-Received: by 2002:a17:90b:3b83:b0:2f9:9ddd:689b with SMTP id 98e67ed59e1d1-2fc410493acmr28089738a91.22.1740046127187;
        Thu, 20 Feb 2025 02:08:47 -0800 (PST)
Received: from [127.0.1.1] ([112.65.12.217])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fbf98b3305sm15304645a91.6.2025.02.20.02.08.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 02:08:46 -0800 (PST)
From: Jun Nie <jun.nie@linaro.org>
Date: Thu, 20 Feb 2025 18:07:55 +0800
Subject: [PATCH v2 4/5] dt-bindings: display/msm: dsi-controller-main:
 Document dual panel property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250220-dual-dsi-v2-4-6c0038d5a2ef@linaro.org>
References: <20250220-dual-dsi-v2-0-6c0038d5a2ef@linaro.org>
In-Reply-To: <20250220-dual-dsi-v2-0-6c0038d5a2ef@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Jun Nie <jun.nie@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740046076; l=1495;
 i=jun.nie@linaro.org; s=20240403; h=from:subject:message-id;
 bh=FgJVBSjYusgZgNG2tQQqs/1on/o8VH1/MQqBVN+UdAQ=;
 b=oaEXnf20Cz3Ju+1zO2v+vtkcbrG+X7KDJR0PpZRcUkf0QC2Lo0cvU97aOJrdgq8tfBzlaNeD0
 vvilHqVr9BpDIW2cesJxDngRIMCexsZ2QgBOnuum6tB6wsLrIJuhgMm
X-Developer-Key: i=jun.nie@linaro.org; a=ed25519;
 pk=MNiBt/faLPvo+iJoP1hodyY2x6ozVXL8QMptmsKg3cc=

The DSI interface can be connected to a panel that has a dual DSI channel,
or to two separate panels, each equipped with a single DSI channel. To
prevent the DSC configuration for the dual panel setup from disrupting the
current configuration of a single panel with a dual DSI channel, add a dual
panel property to support the use of two panels.

Signed-off-by: Jun Nie <jun.nie@linaro.org>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml      | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index ffbd1dc9470e2091b477b0c88392d81802119f48..e3f2eabde27609a66d6d81fafcb14e1bc014613c 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -88,9 +88,15 @@ properties:
   qcom,dual-dsi-mode:
     type: boolean
     description: |
-      Indicates if the DSI controller is driving a panel which needs
+      Indicates if the DSI controller is driving display device which needs
       2 DSI links.
 
+  qcom,dual-panel:
+    type: boolean
+    description: |
+      Indicates if the DSI controller is driving display device that composed
+      with 2 independent panels and needs 2 DSI links.
+
   qcom,master-dsi:
     type: boolean
     description: |

-- 
2.34.1


