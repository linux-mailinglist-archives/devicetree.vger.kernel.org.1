Return-Path: <devicetree+bounces-225839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 970C8BD1825
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 07:49:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1E4514E8632
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 05:49:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BA132DECB1;
	Mon, 13 Oct 2025 05:49:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lLBuu7un"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCCDC2DEA79
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760334583; cv=none; b=alLa6XWriRgH6o0CBhmBb8thNIiPxNjSY0EQkpblACJ8Shfn8cxzqWZv1B+feauj3UPTGkvxhbGT7hEf+RIgo2Y0XV7yz5Q+mZBPmp0Ap3XIUplx5F0Ql55BcVk7Z2CJ1IeJOjNfixYHxeBNk7Wl9ugNY2GGxgH9oe2HfqnCEaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760334583; c=relaxed/simple;
	bh=UF8V6doJ/RVN7TVX01GECuJetJlOb+tUpatIsE1mFk4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y+sZis1GVEvY/FjCSOWErhd/croOLK45u0arMb5KG7BE5seSazuM4Nd39ikRtCfhqPLbwduCQf9vTnAGSLeabt/UfwWr0+bZUK7JPUyMRSH+IAxv6EJx49WW44RvB2Szc2HVIOtW7q5D2DkpdG1vHBl7s8WPCRsdZ+emd1YwUNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lLBuu7un; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D2n5SJ021336
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:49:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pqM+UYl5Ep2S79EQYGJROVHEhouK99FGYuaHbmtW8fE=; b=lLBuu7unUB644u8V
	PBEcQL6gNjlZMPJbY/I6wz4Kh0zrMv6wWyNcoEqgP5TsMT2IgSuwZ8RNSMu9LTEE
	Kb7+s2ZZ7yeE42JWCPfX9QoAasn4Wi1GJxCBQxr7QfIcZl0n1u5Hwx/ffv/h4j+y
	7n+6ycap+g1Q/lZHY6kCBCbvxCkA9ZcVXMxu+A0qZlPndpSW+pwJWaDFWWKE61g/
	wJteoWEyt+rcWuDMdOhkrdEKy6+9OzyU+wO38F+YmeZQQNHGdcLQbzqDrYsgaHQq
	aQDBVTzp4PcGSlK4qkyk4TDXxCEzpOn7r5xjzM++0lzbPI4X8YdFHCt5DO0W45Vw
	Q6Lrhw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgh63a54-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:49:41 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-78108268ea3so7954793b3a.1
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 22:49:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760334580; x=1760939380;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pqM+UYl5Ep2S79EQYGJROVHEhouK99FGYuaHbmtW8fE=;
        b=DGir8L2RD7dkMZHOGiQRmR5T5xeV5TnqofqPDsdwYDNadoG+F+cDn8N1hfmzZgTpLW
         NP5r3w4PqAev2ZwfcF0X3YYUMBZ4VFdj2cOq1QQYExvSW206a+sZKQ9Fr7rVWLQR1oQ3
         KP126KNPsMeLXpbr1jo1LegRnSSunrTE97qJbHgyQAX0XGxECU/ISYul9rQ5hicqpRtb
         KH3dDDabQOdKLZ1bZXA+36E1DGpKq468ranNgRNRN1O+x2nu/ZZyodq1nO7sfJblFYC/
         9Tcn4kTGJBoBQtibfU5pGJvjp/OzA3RXhihXsmqfIT5FK+4FxanoxLjTFQE9qsV8NwNy
         e5bg==
X-Forwarded-Encrypted: i=1; AJvYcCVLs+7+0cvP46oa5G/EI7TmsJw+G/v06ACJNktMTeuVnqD9Msw8aWxZabXiHATW56UhcGpeKIzEHUMC@vger.kernel.org
X-Gm-Message-State: AOJu0YwqKICT4UsKcWPb0OXOUBZe22pjTSeQAzYGUoiBy8zhy2E8+3AK
	lbSPWnSly+fJ3PDLT+z62Z0i9yVod7EeR9nIozvhdqrA4ZtFsHWWU9dX3SjtoW+CJnU3l6V1GgU
	vMlzaVb5u1TxmLo4/0fSi2ZN+ZQAShzM+JwJLVv341Mjhekd+mfvj/Wg3l372+z2O
X-Gm-Gg: ASbGncs0S+0xLouJSVTGgejbXhpeK10535SeqeKr0Y8sT2UezHd+XD3RD/WADOG6LK3
	N4k2Ck30lR5ov2bnnE/q6Du4xk+SymbLJV54wDPc1Us5PkRV5Tplfog4LGe03RlfQczh8w+7O12
	iSxafjucaeLeaeMEWQxpIqCVbFe5k5eXj8BQCI3D/n8rZWvU4bIv9mMgYb3gg858MigyO1xBrlq
	Js5w29cBJwY+lvxV0FA2Ga8HaxWStzYlET8g4+6aU/UqMc+hKjSQ8Rf+N/7UQKSviIIatR03gWA
	+3rbu0NiDRmzfVuiB38z1+UtvaYdY6NHolVr+7B17DY7VbUYyOWUnZvmo5XhBEQYlf82FrbrYJD
	1rIl/EKNAp+VYyxfjK8O8+C/piXc=
X-Received: by 2002:a05:6a20:7287:b0:243:b62c:8a7d with SMTP id adf61e73a8af0-32da8c0698amr27327322637.0.1760334580046;
        Sun, 12 Oct 2025 22:49:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHNREKN6Vo4YJPJL/MKRuYdcr7vpsGeVnUs9KAW10bUA1dnxRhSmO4wSdBnBVPwOwya2HqrGA==
X-Received: by 2002:a05:6a20:7287:b0:243:b62c:8a7d with SMTP id adf61e73a8af0-32da8c0698amr27327291637.0.1760334579581;
        Sun, 12 Oct 2025 22:49:39 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0e1336sm10129898b3a.59.2025.10.12.22.49.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 22:49:39 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 13:49:10 +0800
Subject: [PATCH v7 1/9] coresight: core: Refactoring ctcu_get_active_port
 and make it generic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251013-enable-byte-cntr-for-ctcu-v7-1-e1e8f41e15dd@oss.qualcomm.com>
References: <20251013-enable-byte-cntr-for-ctcu-v7-0-e1e8f41e15dd@oss.qualcomm.com>
In-Reply-To: <20251013-enable-byte-cntr-for-ctcu-v7-0-e1e8f41e15dd@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Jie Gan <quic_jiegan@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760334567; l=3773;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=UF8V6doJ/RVN7TVX01GECuJetJlOb+tUpatIsE1mFk4=;
 b=CtJZtP1Y5k1hcRal6gfRut6w/2WtFqP35DPw6mXyuwdY+O/ay38ux3ChldhebpmlOMoAEYO+j
 1v9jSBUD14mA+oV/pJl2XNBYyE68WQjKnb7lxIn3LgpW4r0QAvohSvc
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Authority-Analysis: v=2.4 cv=H/zWAuYi c=1 sm=1 tr=0 ts=68ec92f5 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=qQZ2XtAyJf2dEkEvaVsA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNiBTYWx0ZWRfXz2prpg+KZF/q
 +/b44cOAZnKDReI5I4Gv59Rho+5eLx6rSI/fej4LJIz3QPo/hJ12I05x++rvIzOvkcUL6S/y5/j
 4o25ayetMqY0c/wHtWtEN3/Y/nr0GrrV9MyhVdcZ5nvMejDu8VpqkW1ogfKl5hW6iSoUg26tYHm
 OGTVLGNEd37+GsY0tGf+HLYISlD4uAgAzNn2NCZ5X2zkerMQy8WkMgjoShHc18TbqfZjgwNlgVY
 O18JDrgjtpVs2HuXB3rP0tJG6ERkIIn4CRXtPI84UgCkhnL8Boyd41NF7MKqT5hbYs95BvdXExd
 llW/GftpYfsdXWpulnhWADSqNWMCEcvJG04AUwrnxb2vW6xFq0um2bmPeCeBoUzAk9VxojAvQ3L
 FBpYUzW7gEySU/kNRXw+Ilr7bh5qZw==
X-Proofpoint-ORIG-GUID: XYTUWq-sEEg6fNZNtK7RrR8MRmT3L_uC
X-Proofpoint-GUID: XYTUWq-sEEg6fNZNtK7RrR8MRmT3L_uC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110026

Remove ctcu_get_active_port from CTCU module and add it to the core
framework.

The port number is crucial for the CTCU device to identify which ETR
it serves. With the port number we can correctly get required parameters
of the CTCU device in TMC module.

Reviewed-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-core.c      | 24 +++++++++++++++++++++++
 drivers/hwtracing/coresight/coresight-ctcu-core.c | 19 +-----------------
 drivers/hwtracing/coresight/coresight-priv.h      |  2 ++
 3 files changed, 27 insertions(+), 18 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-core.c b/drivers/hwtracing/coresight/coresight-core.c
index 3267192f0c1c..eb6870425abc 100644
--- a/drivers/hwtracing/coresight/coresight-core.c
+++ b/drivers/hwtracing/coresight/coresight-core.c
@@ -581,6 +581,30 @@ struct coresight_device *coresight_get_sink(struct coresight_path *path)
 }
 EXPORT_SYMBOL_GPL(coresight_get_sink);
 
+/**
+ * coresight_get_in_port_dest: get the in-port number of the dest device
+ * that is connected to the src device.
+ *
+ * @src: csdev of the source device.
+ * @dest: csdev of the destination device.
+ *
+ * Return: port number upon success or -EINVAL for fail.
+ */
+int coresight_get_in_port_dest(struct coresight_device *src,
+			       struct coresight_device *dest)
+{
+	struct coresight_platform_data *pdata = dest->pdata;
+	int i;
+
+	for (i = 0; i < pdata->nr_inconns; ++i) {
+		if (pdata->in_conns[i]->src_dev == src)
+			return pdata->in_conns[i]->dest_port;
+	}
+
+	return -EINVAL;
+}
+EXPORT_SYMBOL_GPL(coresight_get_in_port_dest);
+
 u32 coresight_get_sink_id(struct coresight_device *csdev)
 {
 	if (!csdev->ea)
diff --git a/drivers/hwtracing/coresight/coresight-ctcu-core.c b/drivers/hwtracing/coresight/coresight-ctcu-core.c
index c586495e9a08..a23ff6a6f83d 100644
--- a/drivers/hwtracing/coresight/coresight-ctcu-core.c
+++ b/drivers/hwtracing/coresight/coresight-ctcu-core.c
@@ -118,23 +118,6 @@ static int __ctcu_set_etr_traceid(struct coresight_device *csdev, u8 traceid, in
 	return 0;
 }
 
-/*
- * Searching the sink device from helper's view in case there are multiple helper devices
- * connected to the sink device.
- */
-static int ctcu_get_active_port(struct coresight_device *sink, struct coresight_device *helper)
-{
-	struct coresight_platform_data *pdata = helper->pdata;
-	int i;
-
-	for (i = 0; i < pdata->nr_inconns; ++i) {
-		if (pdata->in_conns[i]->src_dev == sink)
-			return pdata->in_conns[i]->dest_port;
-	}
-
-	return -EINVAL;
-}
-
 static int ctcu_set_etr_traceid(struct coresight_device *csdev, struct coresight_path *path,
 				bool enable)
 {
@@ -147,7 +130,7 @@ static int ctcu_set_etr_traceid(struct coresight_device *csdev, struct coresight
 		return -EINVAL;
 	}
 
-	port_num = ctcu_get_active_port(sink, csdev);
+	port_num = coresight_get_in_port_dest(sink, csdev);
 	if (port_num < 0)
 		return -EINVAL;
 
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index 33e22b1ba043..e51b22b8ebde 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -156,6 +156,8 @@ void coresight_remove_links(struct coresight_device *orig,
 u32 coresight_get_sink_id(struct coresight_device *csdev);
 void coresight_path_assign_trace_id(struct coresight_path *path,
 				   enum cs_mode mode);
+int coresight_get_in_port_dest(struct coresight_device *src,
+			       struct coresight_device *dest);
 
 #if IS_ENABLED(CONFIG_CORESIGHT_SOURCE_ETM3X)
 int etm_readl_cp14(u32 off, unsigned int *val);

-- 
2.34.1


