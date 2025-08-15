Return-Path: <devicetree+bounces-205123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BD8B28079
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 15:18:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7BF621BC8731
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 13:19:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C2EB302CB7;
	Fri, 15 Aug 2025 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G1gtG4h2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3E3E26CE2F
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 13:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755263914; cv=none; b=ILk1OCpLs6ITG1UdXLqFqnEecDFWPGph+s3FM+QtXb/E+/qYzkaPO3Lrs3lHRRz1HJIb6YxO59jrK207gLH+pOsiEZD3sdN3KHfDzNxLQBKVsjZvnzfylZgSkl81wuUciS76YVp2P0tzMGvKSHIDcnM+EIk6nDXO6eU83X+acBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755263914; c=relaxed/simple;
	bh=h3BCc5LPt2vD2oa0GKj6H4bBZnHTi5frgwQGvlfz1zI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YXgxGeBrDlluqFYbwa/qWRV5B2sQxqO6ua+tkMLmTbMFQUOjwNHKrDwTPuogyQuj1h9m29v8/X6L7EdttDliAtxp5Bt8JmW1WXvnHUQBY/XtNQd1OMblZbo+aELTA7jwFqUb6TNN8k6ZXnfUEkCDhVwqu/Q5i0CszuEYQbFQpAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G1gtG4h2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57F9lhjJ026959
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 13:18:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	P+1xR4+o01om//MpBsIgArjxaTmVwUJRAsyjVTpgj+Q=; b=G1gtG4h2YC2I6wcw
	Xo/gDgyQXtASW21p+ds4xvg9/hJ2pXOzvkpvZZcdQ23SZa9RE2wBG7R3X/zGve1A
	78DZQdWBqWwDIlyTXtmvSmmaefc9BnAUXzrm5T66xLgG4lqSbSvs82oDoGwyh5vB
	BMjAJhCbKjAzLI9Q/xoIavzb15WqdGZwCFBopa4vvuo39cfqm9QfhMJpcU+ED9hx
	nd6w2cGJJoX/WeUW51ugPVRlaRZz6xSvxdci1bftGpuwZKpLvtuNVgj6WKLjQXae
	cI9eAcE+f5xR7uGsQEsh4goMorZHlVSJdTsWbiZeZpaL+ififf06km8fQgnfKFYU
	/183DQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48gr9rys7c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 13:18:31 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2445823bc21so41050055ad.3
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 06:18:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755263911; x=1755868711;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P+1xR4+o01om//MpBsIgArjxaTmVwUJRAsyjVTpgj+Q=;
        b=FOAqUF6O198HogmFfAbxY09usEw1d2yw3p5RpKmCAbcE9Ruc+D56pOEWsMy0FLjIol
         Qd5It0h4z5pZ/UBHVehY83gKlrZR6DZ2oGyo1Gb7xhin9KaL8KHXMDP7JqBM3oKgzXIi
         Z0+nzKwT5g6US7whmSpl5gGTBWv/FlYwH2mxICgYlX9WTnJRXuXWSUdIcKxVnEZ9TzZU
         RsprGYI557yOaYF3TH2IQo3lcJC+jUbOQzfRM0gbdD2vi9/D6N+K4GQkL7s0/d7C/BUE
         sQPBMK8rBgNbuaYhnvrl4EWZ7iwJxpdJ6B4IkcmDv9RaZGP+YQb348ESZFZI8nq2cBVB
         NAuw==
X-Forwarded-Encrypted: i=1; AJvYcCVrKqRUYgm+xELbDoW/17d3+w3Praf8m6u7wK3mKajqC+3sx55AwFwNdB/lcb7lHwOGX9JnZHwB7wFS@vger.kernel.org
X-Gm-Message-State: AOJu0YxI4inXeFB8H6hZ88Rth9aDw+uhGMM88IWTfsd/tbvpmzaeKwkF
	KNdkIUu0w+sw6Mg5T7S0hiHEY/uXE5PkINvWfXwswGEUUSqogj4AKXFVjq1gBmb/EPkhy6e9Nq6
	gC8neP8sZT3cLtBnAgWV78lQBJY/42jL2HKjFL2p4EZq3vvSXjybP0dWP307kueB2+JLQ825KIo
	U=
X-Gm-Gg: ASbGncvQ3cUF6jEfsxVAkb8a6EyPMiLeYx53pWdYw+vYUjg7Im0YneENDhHBcTywV5g
	I3QIO2Y4gG6GOFD8kf1UkF8Xe+svxWqKITSnM8VQ2BeyhPbjHRVEK1qe+Xc+c9MhzoUpLv29DPU
	uGBLVyKFPXj60kNRo328aEh2x7FNMh78fYFUtYsSgK+17n/yp6uFdpHuS6bBhNphvtMnK6ambay
	b2j83RmHeGMDk+slrD2iuVeb2viy3AnJqAQIj4GPJQXh57bJgkBYrGPAJuzX9CFEtABhFSuRArO
	WaRw8lS1QAyGg60YPLI4y9e9DvhQMLkkTUxVQupeMCsh7I3AdQuqyPWvi8HDobAsIXcPPI7I1x1
	8HinC0tKSFGqLUoHGifP1Hw==
X-Received: by 2002:a17:903:b07:b0:234:f580:9ed with SMTP id d9443c01a7336-2446d713eb7mr24836265ad.21.1755263910748;
        Fri, 15 Aug 2025 06:18:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHcH7yvzGJchx+kvT15d5YUpCxm84lyr0HWzPwSrVOLgR0FHjLigyUlx+TqREmE1ZxD1F5/+g==
X-Received: by 2002:a17:903:b07:b0:234:f580:9ed with SMTP id d9443c01a7336-2446d713eb7mr24835925ad.21.1755263910295;
        Fri, 15 Aug 2025 06:18:30 -0700 (PDT)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b472d7944e6sm1256386a12.54.2025.08.15.06.18.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Aug 2025 06:18:30 -0700 (PDT)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Date: Fri, 15 Aug 2025 06:18:13 -0700
Subject: [PATCH 2/3] coresight-tnoc: add platform driver to support
 Interconnect TNOC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250815-itnoc-v1-2-62c8e4f7ad32@oss.qualcomm.com>
References: <20250815-itnoc-v1-0-62c8e4f7ad32@oss.qualcomm.com>
In-Reply-To: <20250815-itnoc-v1-0-62c8e4f7ad32@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755263906; l=7610;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=h3BCc5LPt2vD2oa0GKj6H4bBZnHTi5frgwQGvlfz1zI=;
 b=L6M1QO3uxWCvsmlpAc7nM/HnmxBagv9W0cZsbsZBPJCSwwVXLss7mP6acRlSf2VThYC6pSqcJ
 gVp+CKtKrozD0olcJbQAsOrXzL3YxGhzVLZgKtZTe2IaW3IUWK+D6UH
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEzMDA5NCBTYWx0ZWRfX3jyiOVUhporv
 3XED7uXZLRdHYJehe0SJ4CyWwrWkMQ5tfNXNKEP0auZ4xNHcLkZMmAngDo+5VTrrVTvEhKToWkl
 Z8CV+YJXfrWRtVcwvP1d7iPsZhPt6Y1X+/fvgnD6yt99hsxkxD7E6KpUY3glUFsgeCYOxnDzt1H
 KavxQGGedZELo8Cr5VVw5NTAgDHn6SedolEv703Z0QEjgnMHzzlake+nuvh0T0i5F+vvGVm5MZ+
 CfxiHP/vp1g8FKGgQ4lJRFJ8gzLM9dAzoHINf1fDICcJsmFVxNxIxfIIFtGcJkgADhuamzSA5KF
 P8hZbtsT+QT3tQQ4AGtj/gqO8HeTHw63i5/v2SC9SGCGiUJ+kPJzIxpYOGSv82VpxE1Io+7jw6g
 RKxoUYXE
X-Authority-Analysis: v=2.4 cv=NIrV+16g c=1 sm=1 tr=0 ts=689f33a7 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=CwSfzSRg63tsHDaJLfgA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: FVgpMetxoaJeKiNP7pfCIn86PArUYXd3
X-Proofpoint-GUID: FVgpMetxoaJeKiNP7pfCIn86PArUYXd3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_04,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 impostorscore=0 adultscore=0 suspectscore=0
 spamscore=0 malwarescore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508130094

This patch adds platform driver support for the CoreSight Interconnect
TNOC, Interconnect TNOC is a CoreSight link that forwards trace data
from a subsystem to the Aggregator TNOC. Compared to Aggregator TNOC,
it does not have aggregation and ATID functionality.

Key changes:
- Add platform driver `coresight-itnoc` with device tree match support.
- Refactor probe logic into a common `_tnoc_probe()` function.
- Conditionally initialize ATID only for AMBA-based TNOC blocks.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tnoc.c | 153 +++++++++++++++++++--------
 1 file changed, 106 insertions(+), 47 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tnoc.c b/drivers/hwtracing/coresight/coresight-tnoc.c
index d542df46ea39314605290311f683010337bfd4bd..aa6f48d838c00d71eff22c18e34e00b93755fd82 100644
--- a/drivers/hwtracing/coresight/coresight-tnoc.c
+++ b/drivers/hwtracing/coresight/coresight-tnoc.c
@@ -34,6 +34,7 @@
  * @base:      memory mapped base address for this component.
  * @dev:       device node for trace_noc_drvdata.
  * @csdev:     component vitals needed by the framework.
+ * @pclk:	APB clock if present, otherwise NULL
  * @spinlock:  serialize enable/disable operation.
  * @atid:      id for the trace packet.
  */
@@ -41,6 +42,7 @@ struct trace_noc_drvdata {
 	void __iomem		*base;
 	struct device		*dev;
 	struct coresight_device	*csdev;
+	struct clk		*pclk;
 	spinlock_t		spinlock;
 	u32			atid;
 };
@@ -51,25 +53,27 @@ static void trace_noc_enable_hw(struct trace_noc_drvdata *drvdata)
 {
 	u32 val;
 
-	/* Set ATID */
-	writel_relaxed(drvdata->atid, drvdata->base + TRACE_NOC_XLD);
-
-	/* Set the data word count between 'SYNC' packets */
-	writel_relaxed(TRACE_NOC_SYNC_INTERVAL, drvdata->base + TRACE_NOC_SYNCR);
-
-	/* Set the Control register:
-	 * - Set the FLAG packets to 'FLAG' packets
-	 * - Set the FREQ packets to 'FREQ_TS' packets
-	 * - Enable generation of output ATB traffic
-	 */
-
-	val = readl_relaxed(drvdata->base + TRACE_NOC_CTRL);
-
-	val &= ~TRACE_NOC_CTRL_FLAGTYPE;
-	val |= TRACE_NOC_CTRL_FREQTYPE;
-	val |= TRACE_NOC_CTRL_PORTEN;
-
-	writel(val, drvdata->base + TRACE_NOC_CTRL);
+	if (drvdata->atid) {
+		/* Set ATID */
+		writel_relaxed(drvdata->atid, drvdata->base + TRACE_NOC_XLD);
+
+		/* Set the data word count between 'SYNC' packets */
+		writel_relaxed(TRACE_NOC_SYNC_INTERVAL, drvdata->base + TRACE_NOC_SYNCR);
+		/* Set the Control register:
+		 * - Set the FLAG packets to 'FLAG' packets
+		 * - Set the FREQ packets to 'FREQ_TS' packets
+		 * - Enable generation of output ATB traffic
+		 */
+
+		val = readl_relaxed(drvdata->base + TRACE_NOC_CTRL);
+
+		val &= ~TRACE_NOC_CTRL_FLAGTYPE;
+		val |= TRACE_NOC_CTRL_FREQTYPE;
+		val |= TRACE_NOC_CTRL_PORTEN;
+		writel(val, drvdata->base + TRACE_NOC_CTRL);
+	} else {
+		writel(0x1, drvdata->base + TRACE_NOC_CTRL);
+	}
 }
 
 static int trace_noc_enable(struct coresight_device *csdev, struct coresight_connection *inport,
@@ -120,19 +124,6 @@ static const struct coresight_ops trace_noc_cs_ops = {
 	.link_ops	= &trace_noc_link_ops,
 };
 
-static int trace_noc_init_default_data(struct trace_noc_drvdata *drvdata)
-{
-	int atid;
-
-	atid = coresight_trace_id_get_system_id();
-	if (atid < 0)
-		return atid;
-
-	drvdata->atid = atid;
-
-	return 0;
-}
-
 static ssize_t traceid_show(struct device *dev,
 			    struct device_attribute *attr, char *buf)
 {
@@ -158,13 +149,12 @@ static const struct attribute_group *coresight_tnoc_groups[] = {
 	NULL,
 };
 
-static int trace_noc_probe(struct amba_device *adev, const struct amba_id *id)
+static int _tnoc_probe(struct device *dev, struct resource *res, bool has_id)
 {
-	struct device *dev = &adev->dev;
 	struct coresight_platform_data *pdata;
 	struct trace_noc_drvdata *drvdata;
 	struct coresight_desc desc = { 0 };
-	int ret;
+	int ret, atid = 0;
 
 	desc.name = coresight_alloc_device_name(&trace_noc_devs, dev);
 	if (!desc.name)
@@ -173,42 +163,61 @@ static int trace_noc_probe(struct amba_device *adev, const struct amba_id *id)
 	pdata = coresight_get_platform_data(dev);
 	if (IS_ERR(pdata))
 		return PTR_ERR(pdata);
-	adev->dev.platform_data = pdata;
+	dev->platform_data = pdata;
 
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 	if (!drvdata)
 		return -ENOMEM;
 
-	drvdata->dev = &adev->dev;
+	drvdata->dev = dev;
 	dev_set_drvdata(dev, drvdata);
 
-	drvdata->base = devm_ioremap_resource(dev, &adev->res);
+	ret = coresight_get_enable_clocks(dev, &drvdata->pclk, NULL);
+	if (ret)
+		return ret;
+
+	drvdata->base = devm_ioremap_resource(dev, res);
 	if (IS_ERR(drvdata->base))
 		return PTR_ERR(drvdata->base);
 
 	spin_lock_init(&drvdata->spinlock);
 
-	ret = trace_noc_init_default_data(drvdata);
-	if (ret)
-		return ret;
+	if (has_id) {
+		atid = coresight_trace_id_get_system_id();
+		if (atid < 0)
+			return atid;
+	}
+
+	drvdata->atid = atid;
 
 	desc.ops = &trace_noc_cs_ops;
 	desc.type = CORESIGHT_DEV_TYPE_LINK;
 	desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_MERG;
-	desc.pdata = adev->dev.platform_data;
-	desc.dev = &adev->dev;
+	desc.pdata = pdata;
+	desc.dev = dev;
 	desc.access = CSDEV_ACCESS_IOMEM(drvdata->base);
-	desc.groups = coresight_tnoc_groups;
+	if (has_id)
+		desc.groups = coresight_tnoc_groups;
 	drvdata->csdev = coresight_register(&desc);
-	if (IS_ERR(drvdata->csdev)) {
+	if (IS_ERR(drvdata->csdev) && has_id) {
 		coresight_trace_id_put_system_id(drvdata->atid);
 		return PTR_ERR(drvdata->csdev);
 	}
-	pm_runtime_put(&adev->dev);
 
 	return 0;
 }
 
+static int trace_noc_probe(struct amba_device *adev, const struct amba_id *id)
+{
+	int ret;
+
+	ret = _tnoc_probe(&adev->dev, &adev->res, true);
+	if (!ret)
+		pm_runtime_put(&adev->dev);
+
+	return ret;
+}
+
 static void trace_noc_remove(struct amba_device *adev)
 {
 	struct trace_noc_drvdata *drvdata = dev_get_drvdata(&adev->dev);
@@ -236,7 +245,57 @@ static struct amba_driver trace_noc_driver = {
 	.id_table	= trace_noc_ids,
 };
 
-module_amba_driver(trace_noc_driver);
+static int itnoc_probe(struct platform_device *pdev)
+{
+	struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	int ret;
+
+	pm_runtime_get_noresume(&pdev->dev);
+	pm_runtime_set_active(&pdev->dev);
+	pm_runtime_enable(&pdev->dev);
+
+	ret = _tnoc_probe(&pdev->dev, res, false);
+	pm_runtime_put(&pdev->dev);
+	if (ret)
+		pm_runtime_disable(&pdev->dev);
+
+	return ret;
+}
+
+static void itnoc_remove(struct platform_device *pdev)
+{
+	struct trace_noc_drvdata *drvdata = platform_get_drvdata(pdev);
+
+	coresight_unregister(drvdata->csdev);
+	pm_runtime_disable(&pdev->dev);
+}
+
+static const struct of_device_id itnoc_of_match[] = {
+	{ .compatible = "qcom,coresight-itnoc" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, itnoc_of_match);
+
+static struct platform_driver itnoc_driver = {
+	.probe = itnoc_probe,
+	.remove = itnoc_remove,
+	.driver = {
+		.name = "coresight-itnoc",
+		.of_match_table = itnoc_of_match,
+	},
+};
+
+static int __init tnoc_init(void)
+{
+	return coresight_init_driver("tnoc", &trace_noc_driver, &itnoc_driver, THIS_MODULE);
+}
+
+static void __exit tnoc_exit(void)
+{
+	coresight_remove_driver(&trace_noc_driver, &itnoc_driver);
+}
+module_init(tnoc_init);
+module_exit(tnoc_exit);
 
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("Trace NOC driver");

-- 
2.34.1


