Return-Path: <devicetree+bounces-206280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C45B2BEE7
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 12:28:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A3A171B639F9
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 10:28:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86353322A0B;
	Tue, 19 Aug 2025 10:28:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CgRXPRg6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6922432253E
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 10:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755599280; cv=none; b=FQJzvWOmDTDgVLQHRQAcF+4G9Rm3ubBVvV4EBPKXONAaHs8KO1TeWhF/Lhbk1IJxynZTMO1Y7lFbJVudXTu1p18OQXZyHlfg8EEkRyMsnmACHuOrFKHEq33eVnF72o9tZH9N7QOwACcerFnWr+th3LUPCoOf0Uo+sjB08wsa0WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755599280; c=relaxed/simple;
	bh=aeb1HeIqyluMB5Tc3xSFFSxmbMvpqRevsC6opdMzqIE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=J3zadQVaZQRWVHCNiadZ4jpLpNHnRN3o33bUlTjM36K8gmH+PYZ+GSD5gU7ZzPAoipccM2PIhFPapehIe64CpciJuHAZ6NM2tR1N+c4H8gWEYd6ypdfvDBQ/3xL/ry6ehAjZ/iFIC+MesHuUEGnnSLYDQwRMFgBjIsSC0FjyiAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CgRXPRg6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J90Xaj007219
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 10:27:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p+qsoxEYY18mT+CkjNKfZowUvZ+FdImgNxba8OIq4rg=; b=CgRXPRg6ua8etHru
	KaOK84emkqdNBHG72yoi+fz74E2bkKu36T3AQY5W1RxGrW1FT/VtHUxpDgnydBoE
	DSerWDaTUCjvfAgdGONcCXKcXnfq5JbhYlQFXF5v7oTfsziXGlpwR3NVo3iR1sqB
	9UvCI3MFBJQ4eGW8mmoZLnLRJDn5CclMEyds+Xf7wR1/Xj/2/SrOkTE1aDeq03Tv
	Z0STm9KdzXHUyJKQmbdZBSysf4VSd9vYwPv/uJyH8AY2/aYqsRW8YDxCj09fDOs9
	Hupwea6omyOfG0AlpVjZmp7yeZhSfsV5kOLT9zeYDTcDT2b3RkbRMkfWj2Hs50/P
	Chvmzw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jj7486sw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 10:27:57 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32326e46a20so9824022a91.3
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:27:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755599277; x=1756204077;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p+qsoxEYY18mT+CkjNKfZowUvZ+FdImgNxba8OIq4rg=;
        b=N5txbOQ9zp52ym2XC+GcaGs1wo21cSt2G46SXtTgo5+uNsil/M+cl9KO0FgpV8Phkp
         kqzkF0AGfKLSH50XPrq/S05if8pxQLMUWAVYnz8gwA52I4QvfNwViodL9XGX8C9PCawW
         AZF6vL8lbPtNQVjLlGCd27C77gzoTf81+3DDqtvGO9PJ9BFy0ouhSn6JmEFH9Dw5jyTV
         uRR8Z+t/3mDwovnT8Zt3zMHMV46kQJTIH918mLGBNsz2YRX9NNl7ZcAS6Hi+xdzLJYCa
         VpVmtgs/+Xzs7tj79zha1PppWJtTqakEVYQiMTdE7ELs7bSfxciwFtFy0RLGB2eirhym
         TKRQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2JQ7McT50AVYWtTEKGX/iHHvzxAnT4pgyQRgAQkgO6H1N6gUInh951jlTDzC0W0QrAnB7pR/rDKaG@vger.kernel.org
X-Gm-Message-State: AOJu0YyZnKDL+VZGf+UHO11HDS1RP1RNOERQXIwWwID01Lrqlswua4j4
	UrsjIFsQLsjLCIiwNIx1sIQ0HTzo2OBD+Sg3Wc/cYzclcSlCFd94Npn9Z6ykvHAj9WqeCZhbRaT
	H6McpHgdM1z41S65yBeA6lD1CuS3fYwUNoFVc0Sm0HT4EHiPpw2EMpi58LTnYmvlp
X-Gm-Gg: ASbGncstZiEbUG0QLz9Ft+yWU7E9qryk05TIbB5C19JmI9BgiNsEwChu1zx5mDTiUyH
	4/nGf3uEnG1NFSHjmCQ7tEJ//ytP/v0caF9j8i5EHb/g22fuenbmzo2Tul2fMxA5neAqCYsBfbR
	MsWHvuJSR6pmOuo3PcDIHOsgxkA46TzLtiiz2KZjdZ0BKKQAq8OKzkRJn7/Mpkhy/tkx0SNV49t
	9rLkLcmkK+GjJXbhzPmPr5v0IKGzq/7V8c9Wkab2woM0F0hz96bewGJq61nQT0CRSFnbZ9Gkmb/
	1PBiXjXmpOAcpJoUkvv8veJxrEESC55X1rQ+OdjIFEfyun5Z44bJADj5mvqwTM86jfokL2QrkNV
	d26i/kbqLbYRNLZvSJXiVOQ==
X-Received: by 2002:a17:90b:224d:b0:323:7e80:23e3 with SMTP id 98e67ed59e1d1-32476ab8382mr2941620a91.36.1755599276619;
        Tue, 19 Aug 2025 03:27:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGXJDwBsD8GSfAUtZj4btl83QcxNgu3y5FrH+g2NMjl/MsNUZaffIO4c6+IrNg1Dkk3M4rs9w==
X-Received: by 2002:a17:90b:224d:b0:323:7e80:23e3 with SMTP id 98e67ed59e1d1-32476ab8382mr2941594a91.36.1755599276086;
        Tue, 19 Aug 2025 03:27:56 -0700 (PDT)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3237e3eef8fsm2499643a91.18.2025.08.19.03.27.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 03:27:55 -0700 (PDT)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 03:27:45 -0700
Subject: [PATCH v2 3/3] coresight-tnoc: Add runtime PM support for
 Interconnect TNOC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250819-itnoc-v2-3-2d0e6be44e2f@oss.qualcomm.com>
References: <20250819-itnoc-v2-0-2d0e6be44e2f@oss.qualcomm.com>
In-Reply-To: <20250819-itnoc-v2-0-2d0e6be44e2f@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: kernel@oss.qualcomm.com, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755599271; l=1698;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=aeb1HeIqyluMB5Tc3xSFFSxmbMvpqRevsC6opdMzqIE=;
 b=7Xr7Ler6KXi3Pi0R7YwkGnLWV3b2IUBIUyPeg9SgySlabcH0jxo4isQ1KyhuLimOBIhhRYOFf
 DFE+AHOldXoAV6KvsAzhjEoB2OXbdZ80vGWw7qdS4ZLpis0fHUGAfTQ
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Proofpoint-GUID: Sg_1F-1y2_vBdOXAXCNq8M4Ib3u1sT6H
X-Proofpoint-ORIG-GUID: Sg_1F-1y2_vBdOXAXCNq8M4Ib3u1sT6H
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAzMyBTYWx0ZWRfXwJlfrNxF0mld
 HlZ3T6+2G8Xr66JHUECtIEDDO7qd00Zj7ee4IXxx1NmU/EqxWo6UTAss43/5H7izDtQ2A0+zUYu
 Qy8RQuwVixQZM0WVlZGCdAFBU19oFyDim2PXflLROJyKInKIMb+xwn4VooD4DWHUg8KCXiAHoad
 FdwxQ5b4I15TcSGrMiOdrkJFyv+5spDgNgbhlVZpeAL0IHj3ItrBbhPH1NqOHwwUP5HTxd7IAvv
 57PkMn7lJOHKyz4EaN1SQE+6VnKTyWTC38LBxdWiiwMFSdbhujq1wmLXOXLElWZptIqmMW1jSPF
 v5HuMAJ4dRZoUt4wtsWQmRNy+MFtNYhA1cA8r3w1plN9WEljUf6jJplzq0oEsxpXQsdNZLWv2I2
 Kfqg04CS
X-Authority-Analysis: v=2.4 cv=MJtgmNZl c=1 sm=1 tr=0 ts=68a451ad cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=qearADheJa7ujHrKWl4A:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 suspectscore=0
 phishscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160033

This patch adds runtime power management support for platform-based
CoreSight Interconnect TNOC (ITNOC) devices. It introduces suspend and
resume callbacks to manage the APB clock (`pclk`) during device runtime
transitions.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tnoc.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tnoc.c b/drivers/hwtracing/coresight/coresight-tnoc.c
index 407595e893096d8011dfcefd74cca742d9b96695..d57de1ee8b1e378c76cd90faae2c45fcf4069741 100644
--- a/drivers/hwtracing/coresight/coresight-tnoc.c
+++ b/drivers/hwtracing/coresight/coresight-tnoc.c
@@ -300,6 +300,28 @@ static void itnoc_remove(struct platform_device *pdev)
 	pm_runtime_disable(&pdev->dev);
 }
 
+#ifdef CONFIG_PM
+static int itnoc_runtime_suspend(struct device *dev)
+{
+	struct trace_noc_drvdata *drvdata = dev_get_drvdata(dev);
+
+	clk_disable_unprepare(drvdata->pclk);
+
+	return 0;
+}
+
+static int itnoc_runtime_resume(struct device *dev)
+{
+	struct trace_noc_drvdata *drvdata = dev_get_drvdata(dev);
+
+	return clk_prepare_enable(drvdata->pclk);
+}
+#endif
+
+static const struct dev_pm_ops itnoc_dev_pm_ops = {
+	SET_RUNTIME_PM_OPS(itnoc_runtime_suspend, itnoc_runtime_resume, NULL)
+};
+
 static const struct of_device_id itnoc_of_match[] = {
 	{ .compatible = "qcom,coresight-itnoc" },
 	{}
@@ -313,6 +335,7 @@ static struct platform_driver itnoc_driver = {
 		.name = "coresight-itnoc",
 		.of_match_table = itnoc_of_match,
 		.suppress_bind_attrs = true,
+		.pm = &itnoc_dev_pm_ops,
 	},
 };
 

-- 
2.34.1


