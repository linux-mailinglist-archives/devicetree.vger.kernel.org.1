Return-Path: <devicetree+bounces-211801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BA73EB40A3E
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 18:12:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E58D01BA20C1
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 16:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5096F3376BA;
	Tue,  2 Sep 2025 16:12:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ElV5BDSN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4627334386
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 16:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756829556; cv=none; b=rTJtNa838iUjY5EoS6FdVJfag1ZBPMeATpVDju1yDgoRQcLwVyR5Pa2ReNAllfcLicovb0vI/drNy6ovQke0hlJShqokxyhV5DjiINrhjgNh4cJQGHRurJkYCpIdSigGucR87GznkzPdivDeT1Ev7A+EJzr661LRm1PJjXU0g5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756829556; c=relaxed/simple;
	bh=nVcE8cWRXOB48T5NMOjigsTbnDdQssjbYl79J7cZkxo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ff+8J1bK/xCCib6haHG/hn/exoh6e8jGSNBz50zEHoXJZBl3C+GgSCy92Rtrzg/gFarq9iS4IZxPEtkwXWYgluBo4VyS/CR5L14vc+sZmDGGLCD2bupaOo8sYNAWNHz+s62MDYHfi4iaCEatyj+VMH7nzYvt/0oitiKAc4BWlN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ElV5BDSN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582EqBPq023436
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 16:12:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=h2Gn3rEd3us
	JLYmFOFpxHWy5o4BbWHYKvNrDEsewIrE=; b=ElV5BDSNr0UmK/0N7CtPtFCI0FF
	T+KUD+RNwy568tpiTe3+eByVd9vmKPQncBxdGB1oE6iHtKfQApajizP53cIz97of
	frdjpq7pTYf9rolcQYGlexXtiSCvA9VS4uiBX+uWcBPMQeXJxJBU4Uv9x8tMLsra
	6O5bHEwkjn7Dhi81VS42pldwbjJ5ZHpdmuOt4jGRbM3m0nchMyCraIZGt/wA1BVX
	6z0mUDGnBS13MVmTPol7OFCz6UcrMbfP7eHePbBZBGy73MYLPEx11U2WUF2qRLbK
	KDQjA/lW4QguNEE99orAZXi81eSKWic8PnXGO7dzmmRSgENHJz26skA3hrg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48upnp8ma2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 16:12:33 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b47b4d296eso1824541cf.1
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 09:12:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756829552; x=1757434352;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h2Gn3rEd3usJLYmFOFpxHWy5o4BbWHYKvNrDEsewIrE=;
        b=cQ4gRhiMXYKACIkcUENdOJl7uDU/mR17MxAdHx8X26m9moxI2Aqn9c0mguSbcIGo9C
         rMY1k33q+bHUpWNOaTA/Z0IwP1rf4jqs2ased/ZyfvEAhxIuWDSM5CAdt6HBZQmXaHSf
         kUnlaPsA974ElOGn1VdBytICyJ9miKSaM/NdWJcK4ygsZ1gwLPTpFlxulZEqCIXOno3t
         y5fxc6r03O3TwrqOQ74vgArBin93RtIHxMidwq5ggdy3blDMJlNIOb5d/2BO/rfjPgkp
         GYg0nB8bs4NIQCyp/3Odc3IiEm9HH4z1X+cNm8BtOR9Vvvg9+fH04opfXKPoCowSHXg6
         kh+w==
X-Forwarded-Encrypted: i=1; AJvYcCVDwF0/4pR/mXNtLKAtSaB28vX7XHsUInHVmJoHqmSjhHDBtjFt6jk9saGBZepgYXN+/KO2JpwuAwPk@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1hSYd3wi7DBB2/emy5FALilCPg+bOEwiskrO6sQQluzM2BsLT
	Ltu8Ejo1STHUdEyWZpXIXL148k/riVXtxxDZOZJwLjR9k1JA8v0HvNnz5cWJ75GvFFF3esycqNg
	VmnhZDuNkbe1Z4WnmIqJbp/0WmTWOy9EJrAnD725YWphZCPH9z8WH/PoJjwSaTmA8QermxrwA
X-Gm-Gg: ASbGncsI8yMEQNacLWME+qm5dxcHFQp3vJbVf6kYtxm8zDUOofeQPabqB5Wz6EdT2UV
	8IVQ7piWlpvaKi/BmVAC1pfeR7PW4dIYovkjHtfOwSQgyJcIZNt34SCo62By9W1BJ/rvh8vm3t5
	l9eR7G3rFrvplF5qFBZ3FwY27O5uy4dmAwjne0TUHp/38XxPIef4R22DI0MBPpf0I9+fLD2H8xT
	hjJWTgH2NkrBBX7n61niakFKjckFFQQHmNWeUAu75y3errGHGzMpZPFVI19+EQz2QyGFn7fh+BN
	eCSu1d0OB92Ap2k21OWGLqJCr9InGZgZ6y/MrXwEzTNAVsuv5Xd4Iw==
X-Received: by 2002:a05:622a:5b09:b0:4b3:81b:c5ab with SMTP id d75a77b69052e-4b31dcd8859mr133724661cf.54.1756829552234;
        Tue, 02 Sep 2025 09:12:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGq2usZdYeCp2ppJqxGqoRr4BkZnJXxtOGXHJVqsgRbfjafw4ZUoIUXNQykrB6encxNvBvqg==
X-Received: by 2002:a05:622a:5b09:b0:4b3:81b:c5ab with SMTP id d75a77b69052e-4b31dcd8859mr133723911cf.54.1756829551677;
        Tue, 02 Sep 2025 09:12:31 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b6f0d32a2sm309894655e9.9.2025.09.02.09.12.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 09:12:30 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 1/7] of: base: Add of_property_read_u8_index
Date: Tue,  2 Sep 2025 17:11:50 +0100
Message-ID: <20250902161156.145521-2-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250902161156.145521-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250902161156.145521-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 7rT9jM-Lyhi1NG7KZa1X9hHBNZOXfIMX
X-Authority-Analysis: v=2.4 cv=Jt/xrN4C c=1 sm=1 tr=0 ts=68b71771 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=3hxEEigdzuJGYQGY9uYA:9
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: 7rT9jM-Lyhi1NG7KZa1X9hHBNZOXfIMX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwMSBTYWx0ZWRfX48sJN13sHHxZ
 tS8WeH2orOFP5t3GcqFzaGZKig/ndMGQvDM0GKO26ncP8uIFOox9c3coSf3Gq71F25twrgbFIFJ
 QOAGU266qR0daDaj5ZIqQAmZkQ2p1tBEHZUGqldqV5R0rZ+0gOccTOY/k5hmNSxOHg9ajxOFp1q
 rB1o+S3E1n5hVGX9f6mBujUDJyOVOUn4TcoUzQjMl0yYaP/MFDfGrJ4VivZhlzcL9Hw0Rnwl/MP
 fvcSZefE3vFVshq0U8egSPiaEj7wgei4/kRt2m5LqTczmfR0EUdYztdX+G1Kp+gtQOniY2f7sbT
 k1GW1TZkmEDariB5Lt6nTbudXs4CDME72dMJvR6JB/Z4xtv+mf7Ydz3D6tHeoptgJDirkK2II1O
 I1uS2pGa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_05,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300001

Add support for of_property_read_u8_index(), simillar to others
u16 and u32 variants. Having this helper makes the code more tidy in
isome cases, specially when we are parsing multiple of these into
data structures.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 drivers/of/property.c | 33 +++++++++++++++++++++++++++++++++
 include/linux/of.h    |  9 +++++++++
 2 files changed, 42 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index c1feb631e383..a644b24d5b75 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -147,6 +147,39 @@ static void *of_find_property_value_of_size(const struct device_node *np,
 	return prop->value;
 }
 
+/**
+ * of_property_read_u8_index - Find and read a u8 from a multi-value property.
+ *
+ * @np:		device node from which the property value is to be read.
+ * @propname:	name of the property to be searched.
+ * @index:	index of the u8 in the list of values
+ * @out_value:	pointer to return value, modified only if no error.
+ *
+ * Search for a property in a device node and read nth 8-bit value from
+ * it.
+ *
+ * Return: 0 on success, -EINVAL if the property does not exist,
+ * -ENODATA if property does not have a value, and -EOVERFLOW if the
+ * property data isn't large enough.
+ *
+ * The out_value is modified only if a valid u8 value can be decoded.
+ */
+int of_property_read_u8_index(const struct device_node *np,
+				       const char *propname,
+				       u32 index, u8 *out_value)
+{
+	const u8 *val = of_find_property_value_of_size(np, propname,
+					((index + 1) * sizeof(*out_value)),
+					0, NULL);
+
+	if (IS_ERR(val))
+		return PTR_ERR(val);
+
+	*out_value = *(val + index);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_property_read_u8_index);
+
 /**
  * of_property_read_u16_index - Find and read a u16 from a multi-value property.
  *
diff --git a/include/linux/of.h b/include/linux/of.h
index a62154aeda1b..0c95e26c7191 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -316,6 +316,9 @@ extern struct property *of_find_property(const struct device_node *np,
 extern bool of_property_read_bool(const struct device_node *np, const char *propname);
 extern int of_property_count_elems_of_size(const struct device_node *np,
 				const char *propname, int elem_size);
+extern int of_property_read_u8_index(const struct device_node *np,
+				       const char *propname,
+				       u32 index, u8 *out_value);
 extern int of_property_read_u16_index(const struct device_node *np,
 				       const char *propname,
 				       u32 index, u16 *out_value);
@@ -639,6 +642,12 @@ static inline int of_property_count_elems_of_size(const struct device_node *np,
 	return -ENOSYS;
 }
 
+static inline int of_property_read_u8_index(const struct device_node *np,
+			const char *propname, u32 index, u8 *out_value)
+{
+	return -ENOSYS;
+}
+
 static inline int of_property_read_u16_index(const struct device_node *np,
 			const char *propname, u32 index, u16 *out_value)
 {
-- 
2.50.0


