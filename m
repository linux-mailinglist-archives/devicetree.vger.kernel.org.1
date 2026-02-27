Return-Path: <devicetree+bounces-269071-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SP+lJsk2oWnRrAQAu9opvQ
	(envelope-from <devicetree+bounces-269071-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:16:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 459AE1B316D
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:16:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AE7183035BC1
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 06:16:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF190387378;
	Fri, 27 Feb 2026 06:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jsU9Ql3y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZD9pSFg7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87BB233344C
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772172998; cv=none; b=FB3h30JVNCqwXb6pdT/jx1th3ivUioipE/ERUZYV3Y29o3VaG9rk7Ebk+6WT9XAUz2w8SOhRG37QMRTEylnfWO/kJRHMF544c8Iqd4KR7B4zdbf/YO1feQdZZIdKY5fazZBvPqXc+CQTBjUa9gJ0OEJ8A9BAFPfbfx6ePxvjm74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772172998; c=relaxed/simple;
	bh=D1Gi1McYR1m65rTqXdYBG3amvrj05iPto+b2RK5eR0I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ntODHs78TdBgJu2ZfBPhGLgL0sxDAcnNA70JpmLRbcNx2hQDzKoMYBNzBAAS+Jzdcwu5Goxs4iYycvMOgwU4nq5rbNnVNZY9OXV4IMCuT3GMT58uoLYMqrxzhzbqhK1Wb/xf+h+/Ac0VEKtjdZOlbVsUXCB90YJ+MYCDoAsos3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jsU9Ql3y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZD9pSFg7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R2JwTH1600681
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:16:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=LtpuUMj+X8N
	gU/uMTBj7nNlXFHnl4hMIn+8zl6Agua4=; b=jsU9Ql3y0a4jDVez5OQ2vAje4EZ
	cwZPzl+DGWPPo35gSaOnVNvAHrLu3+Grfdfj2miudCd/xtkc5avNclC0hbbbL1jm
	o5cJRVxFfhmBjEtm+ZBFukSOMR2YhH04HU+UbC6Nbv7GQinYxHLXKbVv6KVLrwM2
	MrDkgpe+OdUaqyOiOw5JP/9QAOa331qjBLkpirDyFwpe43okOkrSpv1O/R77xzH7
	0rfYmAqU0QhvX0KdkZ//BNIMoWeVaPoTqWE5uO7E4ohdHwhW87dGxKtpah95RDS+
	0jCPwVAvb9r42gyAka7eLrwjowtArf37fBEnwMf4xxpegqOkBGLqxxQjFRQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjt99tdgw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:16:36 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2adb1bdf778so17073075ad.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 22:16:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772172996; x=1772777796; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LtpuUMj+X8NgU/uMTBj7nNlXFHnl4hMIn+8zl6Agua4=;
        b=ZD9pSFg7lj2lCHtEHfFHumDqQYQ1VuCGeFGxy1WI2lqTXY7+JDTT4cBs4fH7tfAl0X
         JmI4X+RSfBXT717VgKr5Kmno35wsZXGmWhJWDd76mQDOk2RzmTkE8DBQnFaBvLO7W0SJ
         qS3307MucIkIVqbOLxiXB/u3RGC2JqhZ7meJcs19JFupyjlFD9XtTn0ZZnicNYx2Oaln
         LGtXM+6USfNzg3S7UbVvCt45oPVPcOkUZUVrpYOlNExGPqeYm3zluuwNRcmX0s2R4ieI
         z188IDtsV5v0sYtu580ON8wIrAKbYVqnT6seM0TxSDvw1KNNX2N3cPjBjzSqI6QdGGbr
         TgNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772172996; x=1772777796;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LtpuUMj+X8NgU/uMTBj7nNlXFHnl4hMIn+8zl6Agua4=;
        b=OztZX4/x/3hreCdmlHFJxmvoOsJdx52MB4PRM4F+E8C15EXC2r6IenhBUw8MCPoI5z
         jMoWRyCBQqQ5iekMf/XHA8vG+IC93sBNhMFd+bKb7dzwYsiYcoyvnOMym556lS5jlZ9A
         0CBqGEArZisyNqzwj6wzE3GBs5pmY8wnLlwcpJUgZFmQM+0TG70+Yw5JJGibC3oOQy2y
         5m5pkYUC2ZlDtBUk8H98um26nzWx3CCN+EvtNZ9nPW+iExrOplfT1hYAUSAEUdYWiyc2
         E8TauKafmTVRrvNovs/nj4bpn+BtanjTci/+a/REyk6/A2zTHPd88NeJBjI0933PFYoV
         Or5A==
X-Forwarded-Encrypted: i=1; AJvYcCW+HdkiWgi8YJ6p4NB+Ig7vx3/KjpwIprlBxb+t7X+m6iqEBe5wBMy29V08n6+Jz13JnLsuOHC4S1cv@vger.kernel.org
X-Gm-Message-State: AOJu0YwN/XKxb69zpSwZ2bzHdG3KdK1XRUl+OTK4UPWwoihl2hXgEGy1
	1StnxJTT53akr3IbHTfiO+AdufFIvh4gqMB968el0rKvfKUq8nt8MZODkyDOhK7KTw2QSZGCCQt
	YssThqD0uvJJgt/V4J1YWeAwKIBpBJrBw11Jlb8oekGS3cnPfSp1OhLVfISf3Z5e2
X-Gm-Gg: ATEYQzys3GyERPFlSFc704Inl7SDF6GnQKpDK+LSxeX4ai49FWOyhkEs2t0g4QYhgHl
	AuHGlCnl8QpKQAHyq52eTjcnDNXL949+MTdPT24FgjO8GKSleFBYYnTCrc7J8cQkBdVUgcNjPCL
	LcDVfnzC4wiFM5XIkUvVSvQRT10SdWbwgygFuJd4Gg09+t/HiC0VcH/PkXI0Ew+nN7kANPHx6kO
	UiYbK632OjQ1gbZP99p6gV6rRzw6t9lNrU3ZT/goo00SgWUevDzW1N0XO02gyjKVpTUX/MPu+Hu
	Od8YTjW1W3o9C/4d20FSqyIrn8h5hNPtZuQkZF2Igkm9Pz7aXPNOx/izZGBxdt5atokEPOSefCA
	aWgszC+rDZ25whTS4dUr1O4ElIIb3C3jbi9lqxpTOj/Tl5oFOl4NQ+40=
X-Received: by 2002:a17:902:ce03:b0:2ad:cede:2fe5 with SMTP id d9443c01a7336-2ae2e405766mr12515025ad.13.1772172996205;
        Thu, 26 Feb 2026 22:16:36 -0800 (PST)
X-Received: by 2002:a17:902:ce03:b0:2ad:cede:2fe5 with SMTP id d9443c01a7336-2ae2e405766mr12514645ad.13.1772172995649;
        Thu, 26 Feb 2026 22:16:35 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb6a043dsm64813025ad.54.2026.02.26.22.16.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 22:16:35 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bjorn.andersson@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, aniket.randive@oss.qualcomm.com,
        chandana.chiluveru@oss.qualcomm.com, jyothi.seerapu@oss.qualcomm.com,
        chiluka.harish@oss.qualcomm.com
Subject: [PATCH v6 06/13] soc: qcom: geni-se: Introduce helper API for attaching power domains
Date: Fri, 27 Feb 2026 11:45:37 +0530
Message-Id: <20260227061544.1785978-7-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260227061544.1785978-1-praveen.talari@oss.qualcomm.com>
References: <20260227061544.1785978-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=IZWKmGqa c=1 sm=1 tr=0 ts=69a136c4 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=PijyICl8wWZdqj615XkA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: XHh4c_pOZi394QRKkb__0wAz1O-boEzn
X-Proofpoint-ORIG-GUID: XHh4c_pOZi394QRKkb__0wAz1O-boEzn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDA1MCBTYWx0ZWRfX8JUGW6JJ+8Vj
 pdtG0iKzLC7hELVxfccKqCehfHEcDah9g+52O6BCfrD3CBznjSN9I5wsfvXbh3NAhUUNcvKzEeh
 G4WygwdL6NNQiFroKWPNoJcAvf2oVxdaHr7NImFDxLD1KpYk7uMeb7ewG4oGZd7EshMf0uK3sQ4
 55xI/pSnvBoh2nryyvnko5Mu7iwR0v+fJxt8XpgsnutDePUOFO3dI4Ya/G4g9CU0C7ZVXkD/Dx7
 VDgDsn/a5RUqEUnqe0q+xnyt49uUPhrGX8pSGWB58d65PaLoB3rsJZYHtr6l3sJyZFgpEXI1DP6
 1vvIJEXfDmvgI7WgPx4R6EpxxhF95pJnt2QKQilfJdby36i4nB1EH14v5GjLGdEr33Gx8A02O4+
 mhZqvntE6wq6xAqOnxpqpVMGb1WTs0JitMKUTaGyorEkUvvjAvGQGSwppUVLm0UaiSKWxt3urFZ
 uJ+ycxrRMW7b2A9L/cg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_01,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270050
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269071-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 459AE1B316D
X-Rspamd-Action: no action

The GENI Serial Engine drivers (I2C, SPI, and SERIAL) currently handle
the attachment of power domains. This often leads to duplicated code
logic across different driver probe functions.

Introduce a new helper API, geni_se_domain_attach(), to centralize
the logic for attaching "power" and "perf" domains to the GENI SE
device.

Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
v5->v6
Konrad
- Updated return values

v4->v5
Konrad
- Used devm_pm_domain_attach_list()

v3->v4
Konrad
- Updated function documentation
---
 drivers/soc/qcom/qcom-geni-se.c  | 31 +++++++++++++++++++++++++++++++
 include/linux/soc/qcom/geni-se.h |  4 ++++
 2 files changed, 35 insertions(+)

diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
index 6e58568701b0..13ad3a51b58c 100644
--- a/drivers/soc/qcom/qcom-geni-se.c
+++ b/drivers/soc/qcom/qcom-geni-se.c
@@ -19,6 +19,7 @@
 #include <linux/of_platform.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
+#include <linux/pm_domain.h>
 #include <linux/pm_opp.h>
 #include <linux/soc/qcom/geni-se.h>
 
@@ -1095,6 +1096,36 @@ int geni_se_resources_activate(struct geni_se *se)
 }
 EXPORT_SYMBOL_GPL(geni_se_resources_activate);
 
+/**
+ * geni_se_domain_attach() - Attach power domains to a GENI SE device.
+ * @se: Pointer to the geni_se structure representing the GENI SE device.
+ *
+ * This function attaches the power domains ("power" and "perf") required
+ * in the SCMI auto-VM environment to the GENI Serial Engine device. It
+ * initializes se->pd_list with the attached domains.
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+int geni_se_domain_attach(struct geni_se *se)
+{
+	struct dev_pm_domain_attach_data pd_data = {
+		.pd_flags = PD_FLAG_DEV_LINK_ON,
+		.pd_names = (const char*[]) { "power", "perf" },
+		.num_pd_names = 2,
+	};
+	int ret;
+
+	ret = devm_pm_domain_attach_list(se->dev,
+					 &pd_data, &se->pd_list);
+	if (ret == 0)
+		return -ENODEV;
+	else if (ret < 0)
+		return ret;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(geni_se_domain_attach);
+
 /**
  * geni_se_resources_init() - Initialize resources for a GENI SE device.
  * @se: Pointer to the geni_se structure representing the GENI SE device.
diff --git a/include/linux/soc/qcom/geni-se.h b/include/linux/soc/qcom/geni-se.h
index 36a68149345c..5f75159c5531 100644
--- a/include/linux/soc/qcom/geni-se.h
+++ b/include/linux/soc/qcom/geni-se.h
@@ -64,6 +64,7 @@ struct geni_icc_path {
  * @num_clk_levels:	Number of valid clock levels in clk_perf_tbl
  * @clk_perf_tbl:	Table of clock frequency input to serial engine clock
  * @icc_paths:		Array of ICC paths for SE
+ * @pd_list:		Power domain list for managing power domains
  * @has_opp:		Indicates if OPP is supported
  */
 struct geni_se {
@@ -75,6 +76,7 @@ struct geni_se {
 	unsigned int num_clk_levels;
 	unsigned long *clk_perf_tbl;
 	struct geni_icc_path icc_paths[3];
+	struct dev_pm_domain_list *pd_list;
 	bool has_opp;
 };
 
@@ -546,5 +548,7 @@ int geni_se_resources_activate(struct geni_se *se);
 int geni_se_resources_deactivate(struct geni_se *se);
 
 int geni_load_se_firmware(struct geni_se *se, enum geni_se_protocol_type protocol);
+
+int geni_se_domain_attach(struct geni_se *se);
 #endif
 #endif
-- 
2.34.1


