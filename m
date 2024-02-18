Return-Path: <devicetree+bounces-43192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B9008859742
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 14:57:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E1C51F215F1
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 13:57:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED8066D1A2;
	Sun, 18 Feb 2024 13:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VAejksZq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D006BFBC
	for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 13:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708264601; cv=none; b=QRoKStb1ET4+F7zqX6ujcw9gyT26EmWMtvgCrg7k0zcX1WyKlFeQntNtQtuNVrN+KibWo6nGyD7anom9Xg+VhpH16mTns6NLMphfsWaU1AnLfLJwu006TWqaTU/yx8fzfQ/jYhIjN0wHs7ZdSnJI3fKKiMyb+uYFjp7t8/bSZsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708264601; c=relaxed/simple;
	bh=qjeaOhaCrY4VcmImvKR8DYCqB4V+aBVBAJGTPiEhh3o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=buwvhmbi4N9XYTY6xtFZgpaMYwzAsskcOTfSGhTXIsxPFPoA9rIW3B4PdmkJHoLmEra2dZW3o3xYmBMGbY2iUdXEHSboq/Hsh/KbuQVSk6IKA1/iekwpJQsxLKdr2Gh2FYiPpo3DMgOtSilorcRUjiaSZcg1oTL3we4l/xV5rG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VAejksZq; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2d0f7585d89so25495181fa.3
        for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 05:56:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708264598; x=1708869398; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p9uxpSXtWjR5vbZkonahao8rqtm4NaLba001ReJHo9w=;
        b=VAejksZqpPsqFVEASFewlrdJdlSIPsGS5NTRKHkRaMRzWsssoqCZuM419JjrvWclLC
         550blbTsotsh7ZPTzYLyl8mna83/KNkFiUWG1xGB89Y/ftwY/Lfxd0xy9yR7vQFPLm+J
         17eHu9cGyG1HRPb4x4TECO4GSieM58XdwDP3zUB25Z14DCJnc8Pq8Hdr77dD4yPCgbUT
         wPy4kjJBYA7g+eT+5Gi7pDt/Bo7h/jxYHrPiOr+7gXPTjpYfiR1H5DqZEbJPqK2J0UaB
         WBdWa2XzbdDr5vi7N9MqXPiJLBctddKbl5aPmKm6jyxT5ClXGPXuK8nH3K77gfBdku3e
         ybLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708264598; x=1708869398;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p9uxpSXtWjR5vbZkonahao8rqtm4NaLba001ReJHo9w=;
        b=CgUTxCKZlyMDdEJCIWoBiRJyDc33ofRg2CT3Hiz6z6u1i5+mEOLYo8xBqh4aZ6dC66
         vvUVkaFORvKPh6GWqOxqmFC70Hsy/wnGsPcpHuGr7Aytm2ZmHCnU5tTayI6oaoWl6ZSR
         b50W4bjVZa+qfuc0OEshYKhPO1cSvNUa3VU4gPeeqctUjHDzGdro+eR/2RGsm+aYH5Aj
         S8eZoCrgH7l8HWhDpSU0x57L36/ylgAMIO7NMwgXYsMtVK9rHEkX1bJtXxAf9RVR5aFo
         tW8B8HmyXfQZqd+WZFV/Jht/YjwJso8s/esp0qKUHdRGBxPLLF7Wvxp5R+0GW9U1Busa
         KZMA==
X-Forwarded-Encrypted: i=1; AJvYcCUEwjkH3twiykoY82iPqFSb31KvpFHhunUBNZ1ymjtsZoTH0Kos9bL//Sj5KGDcCU7Yro+Zqq4FcZkS/tfUuwaiWx3b5qUHSIAzEQ==
X-Gm-Message-State: AOJu0YzeT25fg2oXUAZq0xXNNn2N+YWyDS+MO/9hUs/tibT2cTN0l2tx
	vE6pfijs5uvQND9GOjFuWWJgiPx8etIt0EUwuP2kPnG9y5BD9zxyEhstAI/706A=
X-Google-Smtp-Source: AGHT+IG3o8o/a4+lttK6f9vGAipl3Rr4H/zqGBtpaamLytI2dyMtTrm//xygZ83Nh1MHwPq+Dvj1eg==
X-Received: by 2002:a05:6512:358b:b0:512:ab03:1b with SMTP id m11-20020a056512358b00b00512ab03001bmr1277442lfr.53.1708264598338;
        Sun, 18 Feb 2024 05:56:38 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id w9-20020a05651204c900b005119fdbac87sm548698lfq.289.2024.02.18.05.56.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Feb 2024 05:56:37 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 18 Feb 2024 15:56:36 +0200
Subject: [PATCH v3 3/5] arm64: dts: qcom: msm8996: set GCC_UFS_ICE_CORE_CLK
 freq directly
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240218-msm8996-fix-ufs-v3-3-40aab49899a3@linaro.org>
References: <20240218-msm8996-fix-ufs-v3-0-40aab49899a3@linaro.org>
In-Reply-To: <20240218-msm8996-fix-ufs-v3-0-40aab49899a3@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 "James E.J. Bottomley" <jejb@linux.ibm.com>, 
 "Martin K. Petersen" <martin.petersen@oracle.com>, 
 Nitin Rawat <quic_nitirawa@quicinc.com>, Can Guo <quic_cang@quicinc.com>, 
 Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
 Andy Gross <agross@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org, 
 devicetree@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=930;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=qjeaOhaCrY4VcmImvKR8DYCqB4V+aBVBAJGTPiEhh3o=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBl0gyTvsrx5bGHb1ytmU2tJaqUSojI5Rdb4BQFM
 VzRV8pyBdSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZdIMkwAKCRCLPIo+Aiko
 1bhFCACSfsRIe8ROLD7IVDgsrBnAdV5w1za3tCYtlJuN3c/l8kg5s0wBD0dvtYpzbf7/nGe9YwW
 9RbcQ23zHcSZt7y7BOt4C9LsWC9AlHuKh8R0hmdEE+OeoVVZC9O7ckvaq9jP+ODA/PmFVHzih3r
 h/adx6BnUk0T+2u1bykv/2jvtx/j8s8gENDKNY86o6UvX3J6XZTIqH/8o2mI7m4Gpwh8Vw2V58r
 ysWqR6Bu1VHHXzZnuqSAML3sbJZ8OInzzGzwW8778dyDmfI/YsXE9nwwoxu4AwFfSCRAACohsGI
 c0JR9q7tRydt/ThSpwX1YaTVCN38kZmoH/yS82DaPi/SDlou
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Instead of setting the frequency of the interim UFS_ICE_CORE_CLK_SRC
clock, set the frequency of the leaf GCC_UFS_ICE_CORE_CLK clock directly.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 401c6cce9fec..ce94e2af6bc5 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -2076,9 +2076,9 @@ ufshc: ufshc@624000 {
 				<0 0>,
 				<0 0>,
 				<0 0>,
-				<150000000 300000000>,
-				<75000000 150000000>,
 				<0 0>,
+				<75000000 150000000>,
+				<150000000 300000000>,
 				<0 0>,
 				<0 0>,
 				<0 0>;

-- 
2.39.2


