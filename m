Return-Path: <devicetree+bounces-211408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7610CB3EEEE
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 21:53:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B0D8C2C1213
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 19:52:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2716B32ED43;
	Mon,  1 Sep 2025 19:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GNi9Q9F+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E064A26CE3A
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 19:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756756252; cv=none; b=HTCo1V49Fm0oMD6KfqYR7U65BcBRQZThKQzHi6Rlx+JAaFjDfsrMV5oeD750otOBIzPp6pSj2ZqFokyeUOkFAkISKlL9SUg0MKuV1Z5DyJ4azvn2eslQc/igaKFS8zkDLnDXpTE2tbkcviBd9g3110/lmYbpImqeX7kt8fjojIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756756252; c=relaxed/simple;
	bh=K9dT3P4cNGVclh9ZLKH6/pAmPhFcGE5GIr90ZQ1Ay3I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kPPxKrcw35ecsQzsn+uDUABIs0uqCRGn1O2XynOqtf5GoBsZxXt3gKqHk5AvbjPX4pASzEvhSACcCr360P7PVWm/YXwLGct5P7KT3+eoL0RPnpncB8VFfMU4rcc9C7VgJg25X/du6lJDfbnj17Xk7mje+r9LhUQYPKtw6XacRHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GNi9Q9F+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 581B4LNU008909
	for <devicetree@vger.kernel.org>; Mon, 1 Sep 2025 19:50:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=FZYZhkYWY3P
	hyDI6yRMFY6/iMZaM5cm3CUgvdVWFgs0=; b=GNi9Q9F+br0bgEBbcvvcudpwI03
	Th4pzfWza7xwfz/InzqMH0HGD3NzuKpLoQzCryW7S5ZPawRESuFEfLxfgHyL3l4n
	eqZkqAi36nNBXjTlQtEgGkOgVvrkTXuoUUqXvhUcrc6gf+/zXFNQkAaA/OcHjWrP
	nBFH39w2n2jHLXWZjJfqkj4zElV3A+egDTniLlrz8ggAYvGsTQcJsbziyTKqu2tn
	+sKUogw64J64D/bkDisEqaV/i3PfyAKTMux4wtabx1New+zEanfclCRScR8qXZig
	C9cNaUW1wzzYpRyaD3uelQDi3moWhjeJ3X1xfdqwRIyN3G3OakCN/ZHnazg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uscuwqfa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 19:50:42 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b2f7851326so117547541cf.1
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 12:50:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756756242; x=1757361042;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FZYZhkYWY3PhyDI6yRMFY6/iMZaM5cm3CUgvdVWFgs0=;
        b=Dnu3vILjRhdJ7Qt2qW9vMqANumxI9fu65zqWS17XmjshRbQUNbrAAr2FVdSKO8eACU
         uFyikbQGQNn+zl7in089bz19Q3Y7bsck1u/ghX1lUPDzfdYd8AQpWhugvBNOU/t6yKEp
         h+/KmP+5hbe2mIeKfjZKo5S7DeAhU/F1iskEX6ksSrdv4SYe8oQJU4jZk45BYQG7vJKa
         ieHplHCQxvJNCe+ljB0vRIHfo0rlsLYpvAPyy9C++acILBMdsRwdr/rgdJbL30R7lsr4
         qIK0YjYwT0vnRK6mpEIqQvHQi1oEk+e41LZNGaJYJIqUBFHvBUCW7LnCedwRGV96cj0e
         jLug==
X-Forwarded-Encrypted: i=1; AJvYcCXcvfE/sa1/VGkicq7FQYR2gt54Tq7Y7tnZXjf/yP1CgsNwmYBfwBw0aglPBIXqzMink17f6uJ32JwA@vger.kernel.org
X-Gm-Message-State: AOJu0YwJX0efkxNPOfHhkmEkGoDuu/yFcp4Ss9OTBLBANYDehOfA1fKa
	ayfoKtpLCK0Rthh+FFstIhrzKr7oZwOCpTHoCO1GEJ5saZ28YbwZKwFpM0+Auw/VfBuq/aoGJK7
	1WhdWC/QaL/x8OG9DJLW3EbyUYX1kPlKpUdyTrqYZIeY6O+8nTtUdZAven+7VE9PY
X-Gm-Gg: ASbGncuu51AHu//CDbqHI7e+yzVqxQWbSFU2vH8WW8AE7+N1NmM2ZTVd8YG6Wwj1D7F
	DpijkTKbsA3xvduTUZA7oMNZaJJV4n3qUVSW2sJ7L4C0Eb6XeZTROHrMwTLX4D5qIImL9+Vzgkw
	eqHOk/vCnZZLx7EP75JKKNGJoS1U0EQe8R9TaRDie0ppav3f9s5IRPYI3QIKw5KfB2Km0vDuFFw
	RzB89Hb0FKwcAbmBWRUoBwi3B2QCuYYwkgW2xgAeUp0uVEc0CLvH9/zB3UpvozN0/8QKsKylQWc
	u6cBZlpbsjnTqfsEuZGvRxt4aDtxJ7KMXvz54Ikf7MDZ0YwtQRwncw==
X-Received: by 2002:ac8:5ccf:0:b0:4b3:45d2:190c with SMTP id d75a77b69052e-4b345d21f5amr6627881cf.24.1756756241819;
        Mon, 01 Sep 2025 12:50:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHg6e5dCNjKIORo/d6nONnGIE0eMigxf1K77Q5IjgAIV0Ef4xNH5Q+y1VZ5OQlXqkJvKs9ggg==
X-Received: by 2002:ac8:5ccf:0:b0:4b3:45d2:190c with SMTP id d75a77b69052e-4b345d21f5amr6627581cf.24.1756756241360;
        Mon, 01 Sep 2025 12:50:41 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d7330e4bc9sm4653705f8f.10.2025.09.01.12.50.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 12:50:40 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 1/7] of: base: Add of_property_read_u8_index
Date: Mon,  1 Sep 2025 20:50:31 +0100
Message-ID: <20250901195037.47156-2-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250901195037.47156-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250901195037.47156-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMSBTYWx0ZWRfXxMqZ2CDcwSNo
 PLbJOSo1c4jkCB0eaS2hdgGELQyt69220c31jlnoHi0BQZXbxGrPRwCbJ/5Xl490hH9OP4uewPI
 cgjOluhkwfi/NZR8C5bxjppLJaHkIvGUd71AMz/FDM5khsYcej9svg8zVoBoRg63e5NJnwzLtO+
 l7Su//Evb7oYZM2UGV85Sd76y3Rb2hFJ7aATsXpMiqcavKW6X8Dnnfqbi7kNTMzV726DC6GMsOU
 orytkIK1oPKek3hrFkat7OJw4hE9Gex2j81uMfMZAX2X8e+/31PFB+EDVSachneNO6/FOBMRWDK
 PX6gdVljgB4F73F2nCTZrsR0KDk5B20Tmy615OHKsC8yGspMoTRdc6lKheqvlw44XT4MAvsZ/RK
 zXeqNrpa
X-Authority-Analysis: v=2.4 cv=A8xsP7WG c=1 sm=1 tr=0 ts=68b5f912 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=3hxEEigdzuJGYQGY9uYA:9
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: gkK-wzRjoQyYkR1fER1hZ06oyRJ0ICVm
X-Proofpoint-GUID: gkK-wzRjoQyYkR1fER1hZ06oyRJ0ICVm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-01_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300031

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
index a62154aeda1b..9f921d01a125 100644
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
 
+static inlinen int of_property_read_u8_index(const struct device_node *np,
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


