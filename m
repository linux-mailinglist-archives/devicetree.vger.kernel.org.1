Return-Path: <devicetree+bounces-199714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE907B11BF0
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 12:14:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0BDD27BFC07
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 10:12:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DFF22ECD1A;
	Fri, 25 Jul 2025 10:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="haLl9Imb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EF2E2EB5DC
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753438135; cv=none; b=MeRJ0vr/1X/y39aAbmizXJRmZTB7g9dfDKXLJOEXA+8qVKsJqS0EtP5URr7Uh76hLZvB0CDtESyEiqgMQdY5fS3aaJbvy4wrgzHY1xk/IReUygPoK3ats3H7c0+9fA+NX2GsTJuv9iSBm3hqQDRkPNqFZJnp45H7f6rjcaUhgEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753438135; c=relaxed/simple;
	bh=xKQ+/Rx/dzM6RV6e/DwULemIMqUa7j0+N1nJWqQg93c=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KnBaJ3+otlHUZvwqyt52ftAIBCA3FPgR6etvR9tiscxRjef4V1CBidQsAMAASPKSU1M/vxAagO/UesW5aJuXD/0axjdeRWLGe9QMA0FrcdOWRHh97VMPJEiBC7d7Kuz8td0b5Rl3H2xFrgVS2rGCk/IWAu7sH668505Xp+S3XeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=haLl9Imb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56P9M655010973
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:08:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Txr3kBSGXuJ
	M1NcPlL0RigHdmQCDNw7+9K0Rj1x3VAA=; b=haLl9ImbzgXKYq/6fRYTzUnyghW
	wTNkpUdG+3EAaaiGR3ISGOciy87wgq9dK8gpiE11dpuObxFt0grW7DbzZJdUrYRa
	iGlbk2rIsYWN4lOUB/E4MPJBLJVTYOWn7Ti6BEVHvLUlbJUiaCHBNeGDPAs3fOxW
	G8HH22BP2D0+JCZqIa9mS6c+2VhIDvUDolg3CKajjkub/DHJOU7M57RJfiTmjIZz
	3cGYzNoiVW+fn2CakPdBLJvAzwsJ4SjfSUy8+4MkSvJinqRhKLO/aBsLZKh+mmNX
	nYtP/IScabGOXj1HzORlssL7hrF9ySWYyvsn0zIiWD71A8hZHjREKq4lirA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2t1nkc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:08:51 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-23507382e64so20667675ad.2
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 03:08:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753438130; x=1754042930;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Txr3kBSGXuJM1NcPlL0RigHdmQCDNw7+9K0Rj1x3VAA=;
        b=FRc3fTHwxbf/OhnWLINUd9tO8sosTDW4eQun8/EG3L4yHgV4/o5NeNfE8Y40cC9Jrb
         H1ZasgLOjt3wJiraQSrSo8Cq8UjM5NZkfudeAXz8sF1CvSM5/C5KtT3XTD5hGN1hhl3V
         fltOeBqdQRfxIwr3sC4NCNCqB5BxYwlZCuao/omHq9CU6QjTaVf/slNPvv9tDF6NoGKj
         eMZfWLVJs7yzyaVCzybpmH1pqThIKPWNi8rrxHMxnMUXc+31GqzyLxVIrLblKcY4AbK8
         EWfXAD05Sq1B+Y1VPqQCYyWILXm8onKajVHqvLpMkFDVFi0Uu/ZRwFQq/3mRRqrxp/XX
         fKoQ==
X-Forwarded-Encrypted: i=1; AJvYcCX7rxW9tKfTpkbOx9/TM5Dq5xVTc7s8KsF3444QlszCTvvhWoA2mTE9gIZ9zEIl/ugNK8lhjh+U4X7M@vger.kernel.org
X-Gm-Message-State: AOJu0YwBrq9WzW2KzjUiG68RHDWF6jm61VkTp3WXXsPafgRc/V7l2ecU
	Eoz8TE7Y2hpXkiuEGigWLqnemZPINwo7cqDOW9tlcs8mX+76IYifd/H+zgUBGq/tjfRSdGqcOjo
	nM9ASXoGkjPH6EG5O9PuK0CwC+bekm1GGeoIEHtFDt0z+kc0a0krFZ9IoOeilv43D
X-Gm-Gg: ASbGncuXMR9TQ/ZbQV4RX97KZ0eYX/aNLt6lWkejoJNixvbvFTV71LI6jkPtv6a5mxW
	Iw865s5ss3+g94y3Yu9XpBF7EwikWbvvc/1twSXWb9f1JX2P+vTG4HHQPk4RfP26ID6wS0ht5sE
	L7w67qvGz5rtKcYDJmBOu7eyQ0xOoNdkynFqEjKLdIOfJDpFw4vQVFvb7Fh74hRfARR+rXzoRzj
	pacunq1B+9ByPqg8Swk+jeU6WhCU8Y8saSxqn9Pvh9VoE8j/7iJoCEIZ8G2ottJrPI+bj1elIQC
	Hmuke9QxgnN2UmOoKlLIfvoaMZscgy9kUj8A7CmQNzNXvhxQp7ys+3JAXapzil2nFLIORVJaJSr
	qF4g5jpouC2SjeQj7hMo=
X-Received: by 2002:a17:902:f382:b0:234:b41e:378f with SMTP id d9443c01a7336-23fb309b9e2mr11944835ad.15.1753438130043;
        Fri, 25 Jul 2025 03:08:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IElHL1J4HjZlxfV/xkGQlCThZW+w8mmt5K25h7rX8vHPVJbhFPxXe4QK00qDdLox5Muncmuow==
X-Received: by 2002:a17:902:f382:b0:234:b41e:378f with SMTP id d9443c01a7336-23fb309b9e2mr11944605ad.15.1753438129635;
        Fri, 25 Jul 2025 03:08:49 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fa48fd29dsm33641435ad.176.2025.07.25.03.08.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 03:08:49 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Jinlong Mao <jinlong.mao@oss.qualcomm.com>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <quic_jiegan@quicinc.com>
Subject: [PATCH v4 08/10] coresight: add a new function in helper_ops
Date: Fri, 25 Jul 2025 18:08:04 +0800
Message-Id: <20250725100806.1157-9-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250725100806.1157-1-jie.gan@oss.qualcomm.com>
References: <20250725100806.1157-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=BMKzrEQG c=1 sm=1 tr=0 ts=688357b3 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=vagHEfzm_U2ljPniXDUA:9
 a=0bXxn9q0MV6snEgNplNhOjQmxlI=:19 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: 36rhsR8LsKI1H6CXRBXvaQywkMhVoKyY
X-Proofpoint-GUID: 36rhsR8LsKI1H6CXRBXvaQywkMhVoKyY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA4NSBTYWx0ZWRfX39r9XF51cyYA
 xkdFvz44NwTPCoD22siM4MFiK6zbVEgWycrD5ZeS7t3F12bk9Y4YgF9lC4kmrUliI5gYUj/cKr9
 RV/muzY4JK0nPAN5xUZPT9oAELsLF6Z3w4Lz26j5htbteS/tUeVVsx0QEd4WRfNJBzukw1n8sMT
 et1/GXNLmPNpGcPLLd2q1PWs4QXT6kvb7+r0tTEykIJPxaY8O6Gr8xU/YYtkAU+PzDgCJ4xOwTu
 Bv8EGNLUfy3uB6eIsGeXdkMaGm4t0WmyorXdKaXkfgt0YXmGRSssqot+JY0nFiknAITPpA0wG+Y
 XLRRgdwy1iWg+kstFs+if41+5PNxibjiSs+6N2imogQe7LbsjoRwvxLUThGg90M47xmo29anxi7
 WahP5xZ2TL6E+pWsRyNmbQFAtnuttVM3XXtuYXugjvf7dPupkjouYtJNxbGwxB7Qd67NuTmt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxscore=0 spamscore=0 impostorscore=0 priorityscore=1501
 bulkscore=0 malwarescore=0 adultscore=0 phishscore=0 suspectscore=0
 mlxlogscore=999 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507250085

Add a new function to identifiy whether the byte-cntr function is
enabled or not in helper_ops.

The byte-cntr's read_ops is expected if the byte-cntr is enabled when
the user try to read trace data via sysfs node.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 .../hwtracing/coresight/coresight-ctcu-core.c | 35 +++++++++++++++++++
 include/linux/coresight.h                     |  3 ++
 2 files changed, 38 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-ctcu-core.c b/drivers/hwtracing/coresight/coresight-ctcu-core.c
index 8fc08e42187e..dec911980939 100644
--- a/drivers/hwtracing/coresight/coresight-ctcu-core.c
+++ b/drivers/hwtracing/coresight/coresight-ctcu-core.c
@@ -234,9 +234,44 @@ static int ctcu_disable(struct coresight_device *csdev, void *data)
 	return ctcu_set_etr_traceid(csdev, path, false);
 }
 
+static bool ctcu_qcom_byte_cntr_in_use(struct coresight_device *csdev,
+				       void **data)
+{
+	struct ctcu_byte_cntr *byte_cntr_data;
+	struct coresight_device *helper;
+	struct ctcu_drvdata *drvdata;
+	int port;
+
+	if (!csdev)
+		return false;
+
+	helper = coresight_get_helper(csdev, CORESIGHT_DEV_SUBTYPE_HELPER_CTCU);
+	if (!helper)
+		return false;
+
+	port = coresight_get_in_port_dest(csdev, helper);
+	if (port < 0)
+		return false;
+
+	drvdata = dev_get_drvdata(helper->dev.parent);
+	/* Something wrong when initialize byte_cntr_read_ops */
+	if (!drvdata->byte_cntr_read_ops)
+		return false;
+
+	byte_cntr_data = &drvdata->byte_cntr_data[port];
+	/* Return the pointer of the ctcu_drvdata if byte-cntr has enabled */
+	if (byte_cntr_data && byte_cntr_data->thresh_val) {
+		*data = (void *)drvdata->byte_cntr_read_ops;
+		return true;
+	}
+
+	return false;
+}
+
 static const struct coresight_ops_helper ctcu_helper_ops = {
 	.enable = ctcu_enable,
 	.disable = ctcu_disable,
+	.qcom_byte_cntr_in_use = ctcu_qcom_byte_cntr_in_use,
 };
 
 static const struct coresight_ops ctcu_ops = {
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index 4ac65c68bbf4..b5f052854b08 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -419,11 +419,14 @@ struct coresight_ops_source {
  *
  * @enable	: Enable the device
  * @disable	: Disable the device
+ * @qcom_byte_cntr_in_use:	check whether the byte-cntr is enabled.
  */
 struct coresight_ops_helper {
 	int (*enable)(struct coresight_device *csdev, enum cs_mode mode,
 		      void *data);
 	int (*disable)(struct coresight_device *csdev, void *data);
+	bool (*qcom_byte_cntr_in_use)(struct coresight_device *csdev,
+				      void **data);
 };
 
 
-- 
2.34.1


