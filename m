Return-Path: <devicetree+bounces-43190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E8285973C
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 14:56:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BABC28106A
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 13:56:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1AC06BFC9;
	Sun, 18 Feb 2024 13:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="POrB4Alt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDEAB6BFA9
	for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 13:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708264600; cv=none; b=Ebp+7jOeAS98QWClW+Ir0TyEjWVvWRtCLvTw9E09P+Zqr/j9SKHG7MEvVatU8y4NlKdC9yzXu2XDmVCUEmKduvnnbZdDz0ShuthR34/rboyWO08yawLXDpKqDKV7wczAP+hb0C5kNdGp4WI0swPImwhQ5ySpNj2Z/XbeFI4cuF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708264600; c=relaxed/simple;
	bh=OUfLfMEset8o73Jx8kovtS30aE9Ds0RnhHYqCvWeuGM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KkW+0H5Kp6KbOpgZUwj1YD1gCweApoV/oRvRNX/c7D2NIknJBO+tnK9ztsGvKBYgSqZFyIbEb1P9Y9TWItQzHF5uPsKsOta1gPIzx+8TMjp/Yp3WJ1PUeUgW8aeFwA0MosqqbX1JMof/Slq0+oTmuFfLbvPy8yQKY4rLpgC0etY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=POrB4Alt; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-512b36bb97eso53341e87.1
        for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 05:56:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708264597; x=1708869397; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uqRBeYbyylaZ7PDbJp+J91shmKsfLHhb9CuS8+GePNY=;
        b=POrB4Alt2S7Nm6gPxRow50gBD1HhpA7OzlFHlnsVhdhu0WKogXw2lz3/oOX461Lqr3
         vepWyjwS7SqKwXRJPkKkiSs85DUoCDhLzdzltvNCz4k8zCpY8DiEz96Z6+t3qRunvAAY
         3BubE2oAipfymPxIMlvEU90vvTb6IncsFlL/aWReM9dEF6ME4ndKYPEXuZ1MricQUgdW
         pK4yT4CXgiW4gyFtJ02tGGnYoXP/XQIeqGC524EeUK9+LSm9IelOkTvsifp/9lVndiBa
         dPcU0EHnYIeTNxxSwiza5V7QUOGr2FeKQdIiZ8QB80F19B1SViTIn3ImYIn+xNYtdHGD
         vFgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708264597; x=1708869397;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uqRBeYbyylaZ7PDbJp+J91shmKsfLHhb9CuS8+GePNY=;
        b=tgYSFqTsQH9pK5D/3spoMG2k9FPVMDWQLPN9vAxRmYIixAGs4O6AxEJn2NrqAavbry
         1yk9d6TlSBwfWM+VNc7/ZX5LFftjUT7N++G+oc5pVTTN8MP4Rz2jLaeM5jq3Ivyo9rOP
         1fXs4iC0raE86BkW0d72E4Njr3IQVd6ZoNrI7sd4hT2f5bZMgpKb+O460cGD6FloOF6h
         wZQEZLggMoVrNaw8/RaWAr4RuTMOHq7xRRo84QOkczfBaOBRkyORukbgaT2jh4JQNbMi
         YpBwnEyFtwOxSO1WbxF2mq/pf1UGOMUnGV0g/Ey7/9CLmE/BEc4Z7Jx/RBgkrMSf0LaI
         fZ0g==
X-Forwarded-Encrypted: i=1; AJvYcCUpM0golm9Grb1RcvHC8jJdZeLY9g+MaWSyo/e0YkBETeIKypzDPBihoeVNX+8SCscnNgAnQfjDn9CyXvnKEBd9pyNvEOoGOCUURg==
X-Gm-Message-State: AOJu0YwMbBdeNOe7U2F8+2MmWVFzujoky05CLdq0pfc60TXBDblTB4St
	tOVtx07vKMlfApxBvODBwHGRrBBZkFQBsg5fmDKrcSXOIpHKZF7wEX9lxoq3k1M=
X-Google-Smtp-Source: AGHT+IE+9ai+sqmSXR524ojQE/qJ7MOmjZNCjx1zJdt2Hd5IfCQSnKtzmwZqN/NGnKcZio4CJw2Q2A==
X-Received: by 2002:a19:654c:0:b0:512:b0c1:3bb1 with SMTP id c12-20020a19654c000000b00512b0c13bb1mr670853lfj.26.1708264596986;
        Sun, 18 Feb 2024 05:56:36 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id w9-20020a05651204c900b005119fdbac87sm548698lfq.289.2024.02.18.05.56.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Feb 2024 05:56:36 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 18 Feb 2024 15:56:34 +0200
Subject: [PATCH v3 1/5] scsi: ufs: qcom: provide default cycles_in_1us
 value
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240218-msm8996-fix-ufs-v3-1-40aab49899a3@linaro.org>
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
 devicetree@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 stable@vger.kernel.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1456;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=OUfLfMEset8o73Jx8kovtS30aE9Ds0RnhHYqCvWeuGM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBl0gySSREozfep8A7NrOOtVqd0iLHfccL9+OfKE
 H4Q5SQktQ6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZdIMkgAKCRCLPIo+Aiko
 1T1YB/9wENGUoows5oM6gUElMB5NjuHyVhs1Lb20K9p55z9PfjygLHv4YnsyAMxcz/ncCvyvfiU
 uh15MvcBJ5RJeyLiC0ZU1PEegXMZ9TfqAuGrfpjPZmd1FtvLbvX5ezoEXhxgSVuEjVlA3/Adaws
 9xO76cX4GLEagx2v2FJjftPXj1lR7ngVaf4m1ZgMJMBC1iSycp9dwdIv3N9f+4BiToEuhqVn83b
 fkRUNFJr19qXyUrttfhSDjBqUc98zn5UIfp307pABRrdLqy8z9PLjQpDJNlV/wdksEtDB0zGpmu
 gE+gJwCJNvAsZqDUInCigGW67H7AcqEVhG6iWmHL52i7owAv
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The MSM8996 DT doesn't provide frequency limits for the core_clk_unipro
clock, which results in miscalculation of the cycles_in_1us value.
Provide the backwards-compatible default to support existing MSM8996
DT files.

Fixes: b4e13e1ae95e ("scsi: ufs: qcom: Add multiple frequency support for MAX_CORE_CLK_1US_CYCLES")
Cc: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: <stable@vger.kernel.org> # 6.7.x
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/ufs/host/ufs-qcom.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index 0aeaee1c564c..79f8cb377710 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -1210,8 +1210,10 @@ static int ufs_qcom_set_core_clk_ctrl(struct ufs_hba *hba, bool is_scale_up)
 
 	list_for_each_entry(clki, head, list) {
 		if (!IS_ERR_OR_NULL(clki->clk) &&
-			!strcmp(clki->name, "core_clk_unipro")) {
-			if (is_scale_up)
+		    !strcmp(clki->name, "core_clk_unipro")) {
+			if (!clki->max_freq)
+				cycles_in_1us = 150; /* default for backwards compatibility */
+			else if (is_scale_up)
 				cycles_in_1us = ceil(clki->max_freq, (1000 * 1000));
 			else
 				cycles_in_1us = ceil(clk_get_rate(clki->clk), (1000 * 1000));

-- 
2.39.2


