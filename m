Return-Path: <devicetree+bounces-216568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BC5B552CD
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 17:12:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DA7421D621B0
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 15:13:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2B4F22172E;
	Fri, 12 Sep 2025 15:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p6l0e4hO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB6BA256C9B
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 15:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757689829; cv=none; b=cI61kK9GMRpPp3KECt3KgKqMj4hzd/McO39mSQa3UgDatjy2Jsnzg06n64NAn5rZU/DNi/dnhvSgTtD04/AG/3MUMt6K2NFoWL0m1GZJqblVZ6AHtGIkhKlwXd0n4Zur4gp82wt+1bf5+vuPRFEaX73CdNBLTOXpETVlhHkIEkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757689829; c=relaxed/simple;
	bh=UKnrnaITdDqPZ68aThZkj5EHl6fWFAOsgR33B94Eji4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CkZSsy00X8iGZ4OEE8U489hRb2/V+mh9XEd0I1o2zGnSYSe9uKfYX502FzHv1L7TSd5G8JqQlvUfZgbOBcJYs0oN8BpK5+Ce8MRySU35tWlA1322T19YbqN8kOdJy1pbiuTHSYMk3tEHFd8cW/z7hXhTipnN/zwx7qBVc8DVgPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p6l0e4hO; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-71d603b674aso13425957b3.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757689827; x=1758294627; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/4llYgtc09L9A5EYyW7VZ9K8LmFJt/10Sl5wTfADcVo=;
        b=p6l0e4hOTJp1G8KL22RFNd3021RY+ntedu0Lzqm9lcXYV8vd/Rq9UchDOZNDdUtqWs
         /vZHnWD0519FCS5psjAV9EUBs6a2Zf8/20nZ7lOMj99SY+Hak+yZ5A6d64MHXcrx3UMI
         Sz4J0ddstSHH7cJNbtWh7mdbAF+9Il4tvtnN/PgmQBp6iSyxb350GVPeifG3v4Mh8R3/
         dZJxvOz+fboFSQt6+cDTTyMym7CYVjItnXAhl9JAJY/yggXqvbU5yyemW6KwTO1PE9jM
         SkNd4AgCifUcd4tiair+kbtxku52cT1X7GYGj+txrDWb056Vd+eGxWEGsnXjBJ1qa7/X
         s/ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757689827; x=1758294627;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/4llYgtc09L9A5EYyW7VZ9K8LmFJt/10Sl5wTfADcVo=;
        b=Zu2HTwAZwB4M1J8PE6m3h6/c3ijvvbODl6n64mh1fFyriLjZH5TRz3WfO1VGwpiGk5
         RtxbVcX330tjRLSRxHcNqZITwnZvebrEK5OLnEWcHlGKRK3xaQtE3QT5/lDN6uMwDdkX
         g2tMB6zOHTc20auCP4pEFpnkIvcQe81Y0biQDjbW2vSTL7JIJ83ask3YLzWm/UV4EpPo
         LqvDd28/BV5ucQN9yd0NQjZ76D3Ec3h85Z7+AfZwNvV32cDcgYLRZN6xjiM8N7qf1Cdz
         bFdOt4FTx0vSRudiSnURzcKB9IDplCoM6cAZ3fW0lThJTijY2P3ypqL5yF/cW1laSFAx
         8Fvg==
X-Forwarded-Encrypted: i=1; AJvYcCVIdLoAzIunwOPX17vI1Q8FOH/Ste/Ki8QGoPLrFga+DtYJHZkijSyx0Sw/PXOPRNI7C0hdwDxdlIps@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5F/XzBFkFZxgRXfHnF0gzZoVd2lkYadGoHuDUvn/GWAI6WHEL
	iav5i6xlnreiZBN5yyKitBe3/VLZ2BBG34CzZi+3Xskjsvi/BheahiJVjPqEJC6klZI=
X-Gm-Gg: ASbGncs+JI4e87YblRykZHyujcezXGk0vju/5U6ni9txf7FU2esXFMNlXvDcDizuaKT
	oQaxaBKwOCJmr7oMHLo+OLTOaEHa+cv7twB5bkHBLaZaHGQQB3d3yx96X4JItWysscilR3C7vFp
	EOztYFr1Z0IEDpTpYpNgcP9CpjW/PA+BinH/TDymwC1ex9H/L2/Hyq5u5mq6k4wuYfjRhdq142u
	VvyMOQANlaxPrWLp6MMXyErNH0Dv459XeFe9tZjDFL6rXXhQgmkFSMCRfwJUN69rxIFyvazt/Ko
	sqNzEPDfeEL8o9VKbvRg2lYNK7wwd8640jyjNs4kTExGNgu1orSiouY4rESQzDgQcY6599uUPad
	AnWvuk5PdgzR3Zak4AUkHlnHTQVx3rlundQ==
X-Google-Smtp-Source: AGHT+IELEo3IIrw2/QnWmoSL7oBay1esdy/6RcSnsiIQj9jdk3byMst9Z0k97wU9qaWUWBvFOqWfkQ==
X-Received: by 2002:a05:690c:6406:b0:727:c325:c5dc with SMTP id 00721157ae682-73064a12b20mr30549157b3.29.1757689826814;
        Fri, 12 Sep 2025 08:10:26 -0700 (PDT)
Received: from eugen-station.. ([145.224.119.89])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-624841586c1sm1302244d50.6.2025.09.12.08.10.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 08:10:26 -0700 (PDT)
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
	Eugen Hristev <eugen.hristev@linaro.org>
Subject: [RFC][PATCH v3 07/16] soc: qcom: smem: Add minidump device
Date: Fri, 12 Sep 2025 18:08:46 +0300
Message-ID: <20250912150855.2901211-8-eugen.hristev@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250912150855.2901211-1-eugen.hristev@linaro.org>
References: <20250912150855.2901211-1-eugen.hristev@linaro.org>
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
Later on, the minidump driver will probe and register itself into
kmemdump as a backend.

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


