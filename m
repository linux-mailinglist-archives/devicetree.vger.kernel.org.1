Return-Path: <devicetree+bounces-246664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DDDF8CBEC4D
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 16:54:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D3CFC3033D5F
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 15:48:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C05E308F23;
	Mon, 15 Dec 2025 15:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WCYma+9O";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BeTaoq0Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC9D2D73B2
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 15:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765813697; cv=none; b=cpZuu3n0PqYQdYJYiRAudAKBqkgvM1KhUOjB0mJM+jt4T5JH22aHt+dcRRJfHlCBM4R1wmy8Xi4AyvP47AvrALuD69BNuGndf8Yb+ym13ZUj9nxSyo/ITXhX6DWh/AoRKweMQS3VvdBZ9fW6WSD3ZtB1fW7gMU1PD9Kf91ZTFtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765813697; c=relaxed/simple;
	bh=PaqkILqKGADfir8JxUMo7WfDEijIpUPCPgDzFO9ihRA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ky0Jzq8sFvwvhTtvbJyGe5Juizi3Bb/ecsSj5gZc6sBzN8GUfTkB1Ee3sSPa0iXWhHG1SbBsOMdopbnKZU2gsLxvVzruowJYy+AgBljlzHD1dyVP9sGXyobn0Q/OVb3Sz7sFAqCQXpXQftUJO+K0mT/5dCrxKSQwiXoW4YiH8wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WCYma+9O; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BeTaoq0Y; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BFE3osx4174109
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 15:48:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=qiSSuOwiOr+W7xxYg36HfkbB/JkMshIdv5P
	s0bqLyPQ=; b=WCYma+9OUQ36PCEcfS+axaa2XZPKwNbPKVEe7pKrYJajQ1wRixU
	hY719sG4Ql5h1jkczvU9BebPLpbmPdeL2KfF5g99LD7hn4iqD3MMLw97BppxwQOD
	90deKTfX8Jf1vXTZDWycdWJ5WnJDunYlqU0ULimyKu/0Yah2seTkktG/6cC0IPuA
	HlS5cfOEtDcSwCvd69o1gx4eke+h9ZB/yuFgXTNhkIFQnmqlnE0RMjuEtnniBVeW
	oIvC87tmttKcWRZa8dhISPtylHZ3lyM1DCzdy62FuY0LqsSnMui3WPXeLMOGAnPo
	QeHKoHTerDbBCFWJEU1AGrg6N2UHQPeVa4g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b2ks00a6e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 15:48:15 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee0193a239so37624591cf.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 07:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765813694; x=1766418494; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qiSSuOwiOr+W7xxYg36HfkbB/JkMshIdv5Ps0bqLyPQ=;
        b=BeTaoq0Y1jk+aKe3loegFawFfm7P/wTOpJj5N1K0m+WAxmdjwAj9rq95mLSSb3FUli
         Q8odF0v14kC1bt8LVLE+BQZAUVxKKt/CdylKJHHtmXQ5nin6/o3TcX4uzD2hdjUTjEJn
         QHxIeWQ4DWxDS/qzBb+mmKLaMyGHFIkLJ3sS7Ny+8gzylDzwadYSa+kskrBhTWcEPYtS
         YEBW6Awzc55zanBPswZkGvebKpte1wjzubMjY1vcfMK6RakCl4cgH7ICaLCPwfMNz/md
         a0sT++cpJmhNhroS8wtlxDi7cKCke1hrTZsSjcKGbI3VJKfdsNzmBmUTcN2WT1GWunb6
         masQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765813694; x=1766418494;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qiSSuOwiOr+W7xxYg36HfkbB/JkMshIdv5Ps0bqLyPQ=;
        b=gKJiKHsZAC2SU0c0fT+Ija4U2HbW1pWjGP7hJRkk63mcioa/BWsv+qOLXCTVZoGVjH
         EkMTzn5cRBvQ0C95+urzXGkjlPyufaAmSv10pAdNk0vcxfmmK97ikGkyFB8kN8RSNzxb
         rFnhMxre94o1/QAXCV6LmbQmeLXzilWylGXC4aASOXtT4uJk7q6DfRWUtG+zFA1rYTpR
         +/NmmY+mpnvnWGA3RAsNCuS2r9WWnn6LEJHOri0Fgzi21YzuM/OdFjMkCJYDZY80jFyP
         KdHzuQGyiweD6E5cGmjXWEiTpjxxddN0bv5hWrm7jYJ4OR61oAHJLCd0z9jAj3ZIET7W
         N9zA==
X-Gm-Message-State: AOJu0Yzqrg040v6Jv9ppn2EIKf1ue7gBhjMgYTmH+yxyIKXWak5d1Myl
	aZ0X9E+uzry98S/ynfyPTlZZA5TJVbTsv+FSzgcmfs9caRb2tQZ6J8r86sccoSXrqlB8lDc18Mp
	zu9lZCyOIQG4jXUc/032sLUdzx/albnROLwtPuJDQLLR3o9wJYiTEv5WidrXG6pgY
X-Gm-Gg: AY/fxX5w4MqN6+pKKrgLFsoKXeI8HAUtJBq6ZTVmq8ZwEQROV4CFCESFWNh5DrO6Uvq
	SG+y/lZqdabtgQsgqTZAWhQx3YztawlkwxhWHk250k24n0GpnhDqvTD0NU5HiPnBeekYq7gxTiN
	pW8uAIQsa4COgzneIFBW+UhD3gc+bue99Mc9wWE3Q7+vv8lu/1UWjQ/o8c7mnVOdNULrZ2XPgEj
	Q+R0JUv1+pxGY2Ew3+WTnqFU70ygc0lT4nrgUz8t3mkeTGBR4EZYLa5T7XDRSHBWY6gj16Af/Ah
	nlN856pN9UWwfavzqSKsZdwIqhdGLwvCh/HEm+Dxe+Pn4wqg4mCBaLKNUHuED4Yu5PLrSxJRhDr
	yopI4m1cdpBkMWCQTFuioURxNkDwMnQQF
X-Received: by 2002:ac8:5c89:0:b0:4ee:11bc:bc9c with SMTP id d75a77b69052e-4f1d064f89dmr153197251cf.74.1765813694086;
        Mon, 15 Dec 2025 07:48:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHnN7tvayXMK2FJb1MX10SCXo3z8HxClj8RLxbcwvoDnIJpNn9kGhdntfvra7FTVRTZyN4a8g==
X-Received: by 2002:ac8:5c89:0:b0:4ee:11bc:bc9c with SMTP id d75a77b69052e-4f1d064f89dmr153196901cf.74.1765813693489;
        Mon, 15 Dec 2025 07:48:13 -0800 (PST)
Received: from brgl-uxlite ([2a01:cb1d:dc:7e00:9230:746:c30b:f2e5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42fbbeb5298sm18713228f8f.20.2025.12.15.07.48.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 07:48:13 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: [PATCH] of: replace strcmp_suffix() with strends()
Date: Mon, 15 Dec 2025 16:48:09 +0100
Message-ID: <20251215154809.70041-1-bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: fw_XmhPTa32vooNM92KqoVUxCyCbB6Dp
X-Authority-Analysis: v=2.4 cv=eZcwvrEH c=1 sm=1 tr=0 ts=69402dbf cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=u7-1JQUhpAEVokYvez4A:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: fw_XmhPTa32vooNM92KqoVUxCyCbB6Dp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDEzNyBTYWx0ZWRfX+ShcTtYrQw39
 dTraJVv/FehAR/SfSL++i05bnrvAzghSSmtIwz67P5u0vQUT7Ace8Y7mUNJVjn1pZf6AFWoCNcV
 k/7lmo0kPR4D2qnV7bfCXMej/QLkdUDhXypEzclK7wcPA3sRvb4d5La9tn/RoobvzYm4BMPhA11
 +vsFeBoOYIrPxrxsn5ZjLWlSu7JKq+s71k9nukrumk8qul5EtdoGPQKizNVW4yu9B/7vsVSG0p6
 EKgiJr8nNnU46I8Eer+niJlwIeJT6xK71xG8UapHqo53fRtpMckyjgTbq7y0Wiz/TFXLVUBvpi6
 4gCYaORejhoFf/p/xcVO2cmq4H+YFQDeOu0mzJazCJ8ZebbvcsitcoJrM9oK5InHT3YNMXMKgO8
 b99sEJ65nK8pZWGhyykbwaEjw593qg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_03,2025-12-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 adultscore=0 bulkscore=0 clxscore=1011
 spamscore=0 phishscore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150137

string.h now provides strends() which fulfills the same role as the
locally implemented strcmp_suffix(). Use it in of/property.c.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/of/property.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 4e3524227720a..0a68223954f09 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1294,17 +1294,6 @@ static struct device_node *parse_##fname(struct device_node *np,	  \
 	return parse_prop_cells(np, prop_name, index, name, cells);	  \
 }
 
-static int strcmp_suffix(const char *str, const char *suffix)
-{
-	unsigned int len, suffix_len;
-
-	len = strlen(str);
-	suffix_len = strlen(suffix);
-	if (len <= suffix_len)
-		return -1;
-	return strcmp(str + len - suffix_len, suffix);
-}
-
 /**
  * parse_suffix_prop_cells - Suffix property parsing function for suppliers
  *
@@ -1331,7 +1320,7 @@ static struct device_node *parse_suffix_prop_cells(struct device_node *np,
 {
 	struct of_phandle_args sup_args;
 
-	if (strcmp_suffix(prop_name, suffix))
+	if (strends(prop_name, suffix))
 		return NULL;
 
 	if (of_parse_phandle_with_args(np, prop_name, cells_name, index,
@@ -1416,7 +1405,7 @@ DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
 static struct device_node *parse_gpios(struct device_node *np,
 				       const char *prop_name, int index)
 {
-	if (!strcmp_suffix(prop_name, ",nr-gpios"))
+	if (!strends(prop_name, ",nr-gpios"))
 		return NULL;
 
 	return parse_suffix_prop_cells(np, prop_name, index, "-gpios",
-- 
2.51.0


