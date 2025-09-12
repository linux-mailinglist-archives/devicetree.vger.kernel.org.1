Return-Path: <devicetree+bounces-216313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C23B54575
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:32:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 25FE27B4F56
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 08:31:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19FE026E715;
	Fri, 12 Sep 2025 08:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OSoZgAXK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E86A2AD13
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757665956; cv=none; b=Y8TvAzfa3+6MRc8yPdAZMkhuPsf3FbS9cvSiGoXxJNS7SbOHfXsd62u8yzrRifaP+6GZVmNOOOZktebryRV+xRKk4fKJkELHQYMfUiCdTG5deDD2bwSt/PizDhp+TiXCyLikP5gKutD4gLKf0EiJsB5c5fULMgY1ADv+WcTEBCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757665956; c=relaxed/simple;
	bh=6dzcJu5beHXFPE2ysDUwBwwBtBpB4yJJYn3tCF46Fow=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OcWie8CJ3g4IN8TpZwu6IMnYj7o4LDvu8QUu3uFbYKdptofPUeWOHCdx75VZOpmUZpLUL38NZpUdr5kB+Y04K9/ro2oJv3CivNr/RlPXxTbh0V5Ax3dg+/ACoVjk1opTiPimd/c5Fd4iofvdcvlDS6Ft1gi2qdwMhByOAFt7sDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OSoZgAXK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C7LGj4005468
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:32:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=B6VI6rYD+l1
	gAQRdPHYZqiU7gvDzWifBcr0RacDOpag=; b=OSoZgAXKmdqUY6KvgQqtrGReG4d
	cm4zghAOs5ox6GVceNxcAUbwQV2+Y5gemn2EpBQHlZdlm1HoaJvZQDTxwwiVH1tj
	Ht33z8GbxpXPB0iIQGp3zX51CgCK4XCJYZ82NBDkKFsGPdRKsDEncKhCe4lX7GvT
	dzb7Vu3DGKpu/IVggLM7D8yGSTy9IE+usRNXyEf2LnikXfqNPRpK7NTNLgiSHvwY
	uNM92GkNLS8p0sgGfmXCslbXp074YuhrSJTP6hjuVtyPktrmttlF43rtWGfamxyG
	xdWzNNgHdpJ9f/xHE/Tvt91MvQPCnyiQPBH4ZCbUPqgejR/KBYsaR239FBA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491vc2ewgg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:32:33 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70edbfb260fso30559186d6.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:32:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757665952; x=1758270752;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B6VI6rYD+l1gAQRdPHYZqiU7gvDzWifBcr0RacDOpag=;
        b=dVJ5weI8R+fMeA3gXq2GDDo9IybCL1Q9s6/s/Krk+qxAE9s7JN54dx1OCmzhB3P7uN
         fzF1oobAUFpLOM7od91x/0ZZ/fbR2hz1zEQk5H7Coq5xBU4dAyIP8ycoMD4Lk7nBL3Vl
         XspUfKAvoSRlqGNflrRYw+dw4l64Ia6GnHv8nl9JvzSaU77laxhdNHs+FmpAXo0H0AfL
         SFXmHsaapZD3fYdZPz0BdOA2qRS8/1DIISt0o1ux7gCM2ZNJEZDe0JBtlwR/lt8icIaj
         1wXlNXyZQ0pPNGszwiJ06W+pbZQZ015qRMFPn+TG2/wUU0XjNVqEdXYTJX9ZXuUzMxaz
         n3LQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1Jf+jRBGBmfgQHE5cLWUvtiqyz4ZxYVCxBjhkZlfAy5NWVOplRlbLgz2/hgSbmtOfKuPt2nkgBOCA@vger.kernel.org
X-Gm-Message-State: AOJu0YxdyD8yuThJ84Od8ebvwcq+ryt30v+o8AqecKc4WbPiJDSpfFAZ
	mGcRwFDfnydToHjP8SeLQhsKD/tzJpE50qSBfiJeQ4+8y+/hlYR++BhraribG0x/eV6v9ZRg/cf
	4gJMACY+Ac1sPXZA+GsQftXTPd+vaiUcWvrEqXE5rkJ+H2UYoNBKCmm5cbhP5AQzd
X-Gm-Gg: ASbGnctks+AQWE2/dqow2ggezB2P7RmULE4u7MDVS5eTyNaAPdHUgF4ZppZj8mXH1hj
	9l6c5ujlBES4DDwPE6o+iFfVhT6DdGtH1sbRcPqDNoVyos6eWf2o+7jSC2uZFKn5nwWRuJUZaBH
	SqYKwL7vk9Z6hm6u/i9k3NfKQqt0W30LQa2CZxDye2/xh4JAjLLpWmWyvd3IfDGfJelu5DFF9DB
	j9nMi3+vrrBhajdO/t1/PjTyaHk8HB53q9466ULiBVBzSC58jvbhVUiuF+xeY6YZnYEuwttzF3O
	9tuq+atohdpALjjRvkw0eh4FfflCyTv+rt5a4Tq478f++tTGn2WSNw==
X-Received: by 2002:a05:6214:e6f:b0:763:e314:63ec with SMTP id 6a1803df08f44-767c5af17e2mr29399156d6.67.1757665951435;
        Fri, 12 Sep 2025 01:32:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0qy4hjjfisWxEbcXf4ENJkYksaMBthTfpP/gGk+hCjiWoQIz3yScOjbpnmM/mruFNXXqz0w==
X-Received: by 2002:a05:6214:e6f:b0:763:e314:63ec with SMTP id 6a1803df08f44-767c5af17e2mr29398906d6.67.1757665950959;
        Fri, 12 Sep 2025 01:32:30 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e017c1dd3sm31247265e9.2.2025.09.12.01.32.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 01:32:30 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, alexey.klimov@linaro.org,
        linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v4 1/7] of: base: Add of_property_read_u8_index
Date: Fri, 12 Sep 2025 09:32:19 +0100
Message-ID: <20250912083225.228778-2-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250912083225.228778-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250912083225.228778-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=FN4bx/os c=1 sm=1 tr=0 ts=68c3daa1 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=3hxEEigdzuJGYQGY9uYA:9
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: Lep07oqJEYRpXE5N2-FoHLP6K5aL7Zav
X-Proofpoint-GUID: Lep07oqJEYRpXE5N2-FoHLP6K5aL7Zav
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA5NCBTYWx0ZWRfX3QwzMv7SNgLA
 vw09MCzHIqjqcV7gJg0hI8+n+o87+11qfxiTTFQlxEjX5UUKnKsmBZ1KR7KzM0eoU9NhOw1O7oQ
 +vOf5pCz4Qyo7kRKTTvl8kM7jFUml0MjOJZw/02cAXZlh9/26Ok+VHZy80KpL/RjKHMBbKJFG3I
 wpuQFfIavoAuBH7WJXE3a3QYzVsecgHft1PYtejB3pGOM4aeBd7+0wMoYwqcQ0ishfK7oosEFo/
 70HSjXtmDmnd1FtMkgQDfgtSGTRrDg61EbAw7d6C1XBtUljoVYVZSVEF5vhatXI8S+J6b3f7Ddc
 mstIj4VGPPaj/mxcRA2lnjYqp/gy+o5qv4DI264mYVXqGthonKxxEtECuSeBhgMoOmkp4zDutwg
 770fVvY4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080094

Add support for of_property_read_u8_index(), simillar to others
u16 and u32 variants. Having this helper makes the code more tidy in
isome cases, specially when we are parsing multiple of these into
data structures.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 drivers/of/property.c | 33 +++++++++++++++++++++++++++++++++
 include/linux/of.h    |  9 +++++++++
 2 files changed, 42 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index c1feb631e383..4e3524227720 100644
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
+	*out_value = val[index];
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


