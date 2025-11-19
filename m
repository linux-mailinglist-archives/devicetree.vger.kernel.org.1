Return-Path: <devicetree+bounces-240316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E020C6FE86
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 17:02:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5E2695001CE
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:50:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 768513A79C5;
	Wed, 19 Nov 2025 15:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h67n1qs9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFE63A79B8
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 15:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763567168; cv=none; b=MFPQg60e/DwQDFy77DMLLcI64OWCaRtxCr/ZOuq5ne3IVv03NgA80roadVyBMCxUz5tQoTj/Dog95tnMPq31i8j0biDQaWZmQIAgnL4KzPleyM5ddycFv5JoL2xAdQz9WLTGvIDdW+Dx/6ZMS2S5LRrYH+Rkajv06wH3Kpp8kI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763567168; c=relaxed/simple;
	bh=BG5tLoxomZq6QyZmtX+DmOmp49QzG4CslaIEh2rN2og=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XD/hDLRuB8J56l5maBTrenPb2Nm0RroZaoi6w20fwzZ49jqw4g13Jr++9+B+1ax/4HVq0HDyMdTxNSYCbAPuh0p7MsGD4HsfgTO+BQSjxeTdXdbv7dKr+m1aHjiaHmvINgiHYKpQCFFV/hrRolwD5vPZG31JA8kPLjCHmABXUcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=h67n1qs9; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-42b3720e58eso6292785f8f.3
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:46:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763567159; x=1764171959; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rqVd/I23ujzds6aG+1Lfyj/OLmPD/Ehk8Zy8jv9bGeE=;
        b=h67n1qs9Ihf0s3aPMinZSRCAczRQpw45ihMWMfjlNIvhknSfGnG+w+mMTwEi2c4pVy
         DL0+rKrt3+DReC07qFokF5Zkip6Gxvmbs6ndgMAcyZWTrgMwyDTjzLCMzlMYA9iEa8Sp
         Qtv3Ml8J57ag90nIHGke7OMoWVl6pkSuHd+H9mOYHRulvjzQRwMtGgelh1C/+3AXs0Vp
         mPSyP3aEBR4pq7oTf94IHwIeM5TfZSJDalWq7B2Kt327N8QvEp4zkM/wHSsLopjX5SEg
         6CImGXk5cI/2l+iH0yRuOdj8QppJoe8lro4QThyAmtoqPuVU4Oz9R0Ce1/nthGUifyJ5
         gWzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763567159; x=1764171959;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rqVd/I23ujzds6aG+1Lfyj/OLmPD/Ehk8Zy8jv9bGeE=;
        b=LeU5bMGKK5MPj6q5VkK7oCgZFZRhcIF7cJaceDxRCkRnPWCdYbgSX6Wa+dr353o31p
         UDaH2/RPCwCXGWN6mDA5xwNaknryHc+RZA5HmZNCGOxTD82BD3VcZP75N94kbM1Ovkrf
         01miljLfEpldSmIpLcoK5dgCH7YqDufN3b2RhkNFMOQBTYm9UL3hNBH7XbrfaP7o8jFX
         BzhtH5EYZQ1wgMVKDXMyl2O3XWFbMa4q+/OGEQiPkrXSsNXMwqDyQAjzFNVFiQSY6wrq
         XgjFYp9TJdqaKMqP+QJz7vb0esCcWPO6EbSHJpcgNmM1sfyXUj2AcHBQW5qMh2A3dAez
         zbBw==
X-Forwarded-Encrypted: i=1; AJvYcCXD8Uzh5jRnRuo5BsXtmcnhaftRgX6LTCL5KGaSvsAjil/sXI9+LL9epH3BhWBuopIeUxpKZMnVQxaC@vger.kernel.org
X-Gm-Message-State: AOJu0YysLZ3wEC9FC/1fFwJNJPdYuOY59GeLgS/SrQbIU3OVjuyYsslF
	rOHh9Hld0mnacmGNDFy0cS3+rBfJbsMs4RW5Fis7bAPvjMwu6kKYNO74++G5wYtKHe8=
X-Gm-Gg: ASbGncvO5AsjiLCVsCsXQkynqmGhv4mJO2bLUpjh8laammOnAVorqtOBV/BAK19k+6Z
	h/kQj5bNV6w+FZQ8OdjKBRhVSuv+MqQDhml5WDhpfr8gz7CoWSmJAch8Q7w5UTvTjFWcmVcvWDo
	hJaZ5PW0tnViXq1fQwngu1IdOKQpeMDUUYs3Qqj8zT7ELIe4tjZoSr0m0GrbY5OXjRtc4j3WnPQ
	t1dWxokzoHy2CjMWeBzBMlSwiQFhC+qHJiDTWImk3qXSOG+AOpoF5QW+zuCaEGBa66neHHSey0F
	R+eRIyNoeZHuS1BsU4l5KTmAPLpoa/wLIacOf2HcR6tnrXS/iC5IDEmr9dOJtP1RArSwH6pQxtn
	d751Fwe4Yg5RC0Bby0MTLOp4j3G2fHl3xq+m/sG2KOAlP94hYptBhgoNs+pYZilPBhSdKHPZts0
	QAivR9cOTayaFo9SaOoK3bBM8m97YGmw==
X-Google-Smtp-Source: AGHT+IETZCFytuhcxmwyAYMbvVQ+k0LcHrDBKuExYdhaEVzislepliPqczS5k/WGmFJtVck24Vggmg==
X-Received: by 2002:a05:6000:2405:b0:42b:3a84:1ec3 with SMTP id ffacd0b85a97d-42b5937ff2emr21375859f8f.29.1763567158737;
        Wed, 19 Nov 2025 07:45:58 -0800 (PST)
Received: from eugen-station.. ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53dea1c9sm38765632f8f.0.2025.11.19.07.45.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 07:45:58 -0800 (PST)
From: Eugen Hristev <eugen.hristev@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mm@kvack.org,
	tglx@linutronix.de,
	andersson@kernel.org,
	pmladek@suse.com,
	rdunlap@infradead.org,
	corbet@lwn.net,
	david@redhat.com,
	mhocko@suse.com
Cc: tudor.ambarus@linaro.org,
	mukesh.ojha@oss.qualcomm.com,
	linux-arm-kernel@lists.infradead.org,
	linux-hardening@vger.kernel.org,
	jonechou@google.com,
	rostedt@goodmis.org,
	linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	linux-arch@vger.kernel.org,
	tony.luck@intel.com,
	kees@kernel.org,
	Eugen Hristev <eugen.hristev@linaro.org>
Subject: [PATCH 24/26] soc: qcom: smem: Add minidump device
Date: Wed, 19 Nov 2025 17:44:25 +0200
Message-ID: <20251119154427.1033475-25-eugen.hristev@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119154427.1033475-1-eugen.hristev@linaro.org>
References: <20251119154427.1033475-1-eugen.hristev@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a minidump platform device.
Minidump can collect various memory snippets using dedicated firmware.
To know which snippets to collect, each snippet must be registered
by the kernel into a specific shared memory table which is controlled
by the qcom smem driver.
To instantiate the minidump platform driver, register its data using
platform_device_register_data.
Later on, the minidump driver will probe and obtain the required memory
snippets from the memory inspection table (meminspect)

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
---
 drivers/soc/qcom/smem.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/soc/qcom/smem.c b/drivers/soc/qcom/smem.c
index c4c45f15dca4..03315722d71a 100644
--- a/drivers/soc/qcom/smem.c
+++ b/drivers/soc/qcom/smem.c
@@ -270,6 +270,7 @@ struct smem_region {
  * @partitions: list of partitions of current processor/host
  * @item_count: max accepted item number
  * @socinfo:	platform device pointer
+ * @mdinfo:	minidump device pointer
  * @num_regions: number of @regions
  * @regions:	list of the memory regions defining the shared memory
  */
@@ -280,6 +281,7 @@ struct qcom_smem {
 
 	u32 item_count;
 	struct platform_device *socinfo;
+	struct platform_device *mdinfo;
 	struct smem_ptable *ptable;
 	struct smem_partition global_partition;
 	struct smem_partition partitions[SMEM_HOST_COUNT];
@@ -1236,12 +1238,20 @@ static int qcom_smem_probe(struct platform_device *pdev)
 	if (IS_ERR(smem->socinfo))
 		dev_dbg(&pdev->dev, "failed to register socinfo device\n");
 
+	smem->mdinfo = platform_device_register_data(&pdev->dev, "qcom-minidump",
+						     PLATFORM_DEVID_AUTO, NULL,
+						     0);
+	if (IS_ERR(smem->mdinfo))
+		dev_err(&pdev->dev, "failed to register platform md device\n");
+
 	return 0;
 }
 
 static void qcom_smem_remove(struct platform_device *pdev)
 {
 	platform_device_unregister(__smem->socinfo);
+	if (!IS_ERR(__smem->mdinfo))
+		platform_device_unregister(__smem->mdinfo);
 
 	hwspin_lock_free(__smem->hwlock);
 	__smem = NULL;
-- 
2.43.0


