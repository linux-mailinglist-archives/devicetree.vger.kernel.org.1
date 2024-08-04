Return-Path: <devicetree+bounces-90770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 081E2946C6F
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 07:42:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5899AB21B02
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 05:42:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B69852B9B6;
	Sun,  4 Aug 2024 05:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EaaUbXZP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3049E225D7
	for <devicetree@vger.kernel.org>; Sun,  4 Aug 2024 05:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722750032; cv=none; b=DGZgo0Wxzfz4qmsgH52sAYdj1NxBMEQiBbI8d3TwJnSvW5XQGdAszNVHdwL5A7Cchzah07rZ7KxqQ7yfm4l8twm+9EW6hHRk6BNAzoRvwcs597T8yWusW/+6YI0ATptxO+HtxCivS7Sk47qbQJAfybBaTf5fxBOft7ojLEN2j9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722750032; c=relaxed/simple;
	bh=6M151A/97deCg4Tzy6kbdcdNo2uWiEunw9WlWKXXE4A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lBYMCtjVAvSDNUBPVhxeDN71SGRgnpQ8q9UBwAvd5LT26WmlW7S02aL8RoD3++W93Ss9AC45tpi6OZyd6mQwgnNnKQ5qlgAcjb+pJnOtCScG3CnEODQkdfFpop+ArwuPJGC//9HRN63hQnHCVthMScyq60qHuJJGW/6GoQoKo2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EaaUbXZP; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52f00ad303aso14144643e87.2
        for <devicetree@vger.kernel.org>; Sat, 03 Aug 2024 22:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722750028; x=1723354828; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D/cm1jjd1/iMw8x+MPa4aHpCJxIMLcu4Yu6VZJrkd+4=;
        b=EaaUbXZPMZBJsut7Ji/ZgKF66ShKG1B01Hy1HPgZiaR9u454YJRQTlX9cUlGlxloOo
         0ZuU6Q5JgKvBtExl90n/YZii9YMLkzKvNLAdd44Ck4TRVNV+3Rm32EeyswUmu0/fOEPq
         edYCrXtFHgj/NdmYp+vWKvQlTwdsN8IS+htrxZs7nleA6MLPEh2cps3d0PxRUgoWtcKZ
         DojXAFsMzVnqYGgXCEuADUjE5qhDwjFmqkiyDpROxamitAMujcjPNFWgp4SY30F6k2Qh
         5q+17f6D/bzgWWBq15q2aNxtSosS5LlpTak6B8iwNSx+F9Aux6Eq+TXYnG9rsLqlxh19
         fHFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722750028; x=1723354828;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D/cm1jjd1/iMw8x+MPa4aHpCJxIMLcu4Yu6VZJrkd+4=;
        b=KOAoq6qcdlh5CZRyak+KJHy1sy9eBfSJWSZgjMoeBBXA3k4+pC3+v4ziNJtG8HGYaB
         4QqIM4ec4QCjZfWZbMWQ4oKBGgvDSE5ZCboDJlWmyEfRe1cFIyVkCCRxN7BQP2VDkQkk
         0RCnT2l53peF1GbECSv8L+PrmXViqz5UL38HVg3zvUlLCM9jxZf2qvC6LxOA6W1JxhY8
         1LiPlT6fdx960ZqDboIhIYPRxbWA4yrbOwQjfsyyoMJfkaSiUH7yC/vpdETcKphPPHie
         0VNPsXCn5S6CtkHjdnJ5Dm6959lWExWEIdOmVCoKXSn0X28L5YKvqEbODXtt66geTbGc
         RiNA==
X-Forwarded-Encrypted: i=1; AJvYcCXq2DPSqBPYEJ6vq10n1cU1hTmntjaJ4vFAXg4A0Wc1E/lzAP6PJY+wmakWzJlz5YuMqnaj5lW8zMb/e+evjfj4PsavrV+To+Ldrw==
X-Gm-Message-State: AOJu0YzKTfVBlbz+NRSNqsfiSzu/NnWmgDkBgtmWj+iUEb5TLY86/Fgn
	sLfXchlkxfCmyunxQQFxbEet47zhf9NQ/JGVs+r0Dd3gU7d38J88DCqKxbAKnu8=
X-Google-Smtp-Source: AGHT+IE6GCHKaYeu075bskYasZyEb1ipCnNJJfXpONn3eXOF68PSgyACnVQniJRme2MpKU/LdTcexg==
X-Received: by 2002:a05:6512:eaa:b0:52e:be1f:bf8b with SMTP id 2adb3069b0e04-530bb3d42b1mr5422436e87.47.1722750028079;
        Sat, 03 Aug 2024 22:40:28 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7dc9bc3bd7sm292248466b.34.2024.08.03.22.40.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Aug 2024 22:40:27 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 04 Aug 2024 08:40:10 +0300
Subject: [PATCH 06/11] dt-bindings: interconnect: qcom,sm8350: drop DISP
 nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240804-sm8350-fixes-v1-6-1149dd8399fe@linaro.org>
References: <20240804-sm8350-fixes-v1-0-1149dd8399fe@linaro.org>
In-Reply-To: <20240804-sm8350-fixes-v1-0-1149dd8399fe@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Jonathan Marek <jonathan@marek.ca>, 
 Robert Foss <rfoss@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Georgi Djakov <djakov@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mike Tipton <quic_mdtipton@quicinc.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1599;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=6M151A/97deCg4Tzy6kbdcdNo2uWiEunw9WlWKXXE4A=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmrxQ/a5ai99IBr5oLB8ihNDDVEDnC6eztQD2HB
 FkuS5H6ISyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZq8UPwAKCRCLPIo+Aiko
 1ViwB/9juYoqen35TB+9r5HLnBBlnG536bV8RJOZZNMkwuu/waZjRhGhQ2VDNJczXk5zaGvPOvG
 drisN5/S9gg+LmPxTOxmaCZv1CQWFlrokspmyhOPC+aAksf2Qo2dmfMbTMsGQDYVBKrWtiCsame
 0gWlHLYx878V+EPtrF/d0XvSJznPWW74EKe90xRKbd5McrDXSsEwIhimLUZH/ZbhbZ+E+LmbGdB
 MagDA5tAYUGDxowGRVXnmmW87XayUf1XbWy6FJqt0XyWJJjHVm6R6ZISzAKPHVNF/95idOh10ON
 v68ACSaDApfvmxV2mBKHgVWLDfKCncRi2s4pDsve1YZjiwDV
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Vendor msm-5.x kernels declared duplicate indices for some of display
nodes to be used by separate display RSC and BCM voters. As it is not
clear how this separate BCM should be modelled upstream and the device
trees do not use these indices, drop them for now.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 include/dt-bindings/interconnect/qcom,sm8350.h | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/include/dt-bindings/interconnect/qcom,sm8350.h b/include/dt-bindings/interconnect/qcom,sm8350.h
index c7f7ed315aeb..2282f93607bc 100644
--- a/include/dt-bindings/interconnect/qcom,sm8350.h
+++ b/include/dt-bindings/interconnect/qcom,sm8350.h
@@ -119,9 +119,6 @@
 #define SLAVE_SERVICE_GEM_NOC_1		16
 #define SLAVE_SERVICE_GEM_NOC_2		17
 #define SLAVE_SERVICE_GEM_NOC		18
-#define MASTER_MNOC_HF_MEM_NOC_DISP	19
-#define MASTER_MNOC_SF_MEM_NOC_DISP	20
-#define SLAVE_LLCC_DISP			21
 
 #define MASTER_CNOC_LPASS_AG_NOC	0
 #define SLAVE_LPASS_CORE_CFG		1
@@ -133,8 +130,6 @@
 
 #define MASTER_LLCC			0
 #define SLAVE_EBI1			1
-#define MASTER_LLCC_DISP		2
-#define SLAVE_EBI1_DISP			3
 
 #define MASTER_CAMNOC_HF		0
 #define MASTER_CAMNOC_ICP		1
@@ -149,11 +144,6 @@
 #define SLAVE_MNOC_HF_MEM_NOC		10
 #define SLAVE_MNOC_SF_MEM_NOC		11
 #define SLAVE_SERVICE_MNOC		12
-#define MASTER_MDP0_DISP		13
-#define MASTER_MDP1_DISP		14
-#define MASTER_ROTATOR_DISP		15
-#define SLAVE_MNOC_HF_MEM_NOC_DISP	16
-#define SLAVE_MNOC_SF_MEM_NOC_DISP	17
 
 #define MASTER_CDSP_NOC_CFG		0
 #define MASTER_CDSP_PROC		1

-- 
2.39.2


