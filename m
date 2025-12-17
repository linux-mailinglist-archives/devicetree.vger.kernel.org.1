Return-Path: <devicetree+bounces-247472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F207DCC814C
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 15:09:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 641893090DED
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 14:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 779C336BCD1;
	Wed, 17 Dec 2025 13:43:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KcjPAu3n";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c9v6XuD7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46096366DB7
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:43:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765978997; cv=none; b=O/f7xpXSqXvjI7A8BQuj5u3UssOJwyHqwgJJt7kTUIj5Q2/wyrPshuhJAFdLUL/oduuRY3CiuHdvih6Vadtyyfr1cEXbWUdWmAXTZO7ial/Y7V5v5F+Dx0q3YJxZAzuHInUfuW/Itj9iInGxYBQGr8ChpXJpJLilUIr8Q6WETDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765978997; c=relaxed/simple;
	bh=xzcy3HjWUqXX71bMT9BpZUGsDULODmY5SAKDf2KyML4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kSCY0poFXwTWKso/ECMxlrOH3NFbN04fPzL9MAXq+JZZcpl/ZAlrPmq38xabrfh44tYYhXJ253Pp4mQuVLBMQekQSScgpF/Cu5AmkWEEbUaJty0jkbSigTceONaPT7HfDeFTi/8CSrb4QGIw/NCe1Ra+xUVapOCaOFpZInPZM+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KcjPAu3n; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c9v6XuD7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKolu3048732
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:43:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=cdziwOSusQZFFmsDftNk4xkwlCTEsElfD6j
	qGnoVzgs=; b=KcjPAu3nTvTGPBI5IuCIKSh7FcQSxEJXF0KRDkX3+15Zznlkya1
	PyY62sD2NeNmTV3ly246H/yP2S4PTo6qkTuVHLyj17py67hnPMiGdGDs0K9cVxde
	Rl52Lrf92W/7W/QrYofN9uQZr251ZitYVeBqWmoTBwok2zuywrah4EBk3JRKhV0y
	XiJ+JekgnEByFL79rA1S52UjXf9bS3hC4cqEiTFOHS6M4jqWookQCFbb5f68RLHh
	nIeJjdwO54QZS6sI/198V2pDICci1QHBJ1un4Yz7JdabCRH78JUrAdbIcP5ieBaR
	vnvDdPjJ8X7J1WxJeCXvsz+lVYAUVdJmrSw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3jgqa3rb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:43:13 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88a344b86f7so113958896d6.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 05:43:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765978992; x=1766583792; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cdziwOSusQZFFmsDftNk4xkwlCTEsElfD6jqGnoVzgs=;
        b=c9v6XuD7xZHe+NpMrR1di8i6DqnGI+sbAt0wzjNHe9u1cmxQgkuU9Oq4KYeCzVPIUR
         KD2tp0pkS5F1YgIaxy4/rXq/s6WKimiJ7FCkpaYDst8OFvvb0ci2UrIPPrcvOj6Hj+/g
         n58an6ljsEUrxrkiRrlt01yxrpZgaixmr4c96JzN3GYrZXOuagVU6diWcT/AtPzTA6y/
         HoJ0WlCPvCjXeVyyassO1UEVKFJtqHR0l6p+JIhCmqOWG61T0kB/sjIaNMXIZWrKLUbu
         UGhFm3tS02Ew/aV3+V82554Qv7IbyTUthcQDCytZzXVBiFLIjA7E6FI78JxFq488Ustm
         xrEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765978992; x=1766583792;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cdziwOSusQZFFmsDftNk4xkwlCTEsElfD6jqGnoVzgs=;
        b=MIyS37gOgh4GhKBFbDS+rvOTUU0AHxz0F1VDfbxUxfzIwQ+2PC/b+TF1NgazEjPRsT
         Zmv+PXL55Hv2xmsH5a/B9QyduVC8rOR4Z3Lw/eaBawpNV/Pc0m3t6ZSZJKhw1qa6Ok+o
         FP7YRj97ddKdITPxRqBMVHnxrsUfWKHqASo0J6U17NQivKNcyWOd5WRqQ8doWT3CJ3CY
         wwOG/lh0aYJPEqFrt0BGPzEC7xEZsf8RQP1OX1q+3E1P02/o6ZZW2LuhmtI6HJTVFRqR
         gexuuY3x7cabjw/tX6TuGObcI3bhmudbkoSCvDmnkWzlYrP2+56DA10bXhKcl9/KvqTf
         tTUQ==
X-Gm-Message-State: AOJu0YxmR3Ka4vOOL6HtDDqBXcKHxpnbBY9GK/bHKO6s9ZiWHTHK5nh1
	W10DVOFbPFNbLfhqnNHOIsGLQeAMOYIEgTVdPbZG8im+ZS+7O5ASJJS/tLCX2zqzxgVEvx1yGnt
	1ovnGsumH6rZjesDcpkA3NoLNCV9sONvIIvsCzd0H+03LFw2LW2Ie2nOeB7rhZ0fB
X-Gm-Gg: AY/fxX7gcREcYqmq07sAhKN2D7FOQqe/TIWC4dOl0j7KwjrSPBCdohd+dsyic+aT70G
	UrObIb/YAQ3dugxYVzHaBIMqk+xCmhPIWHwivEwL+tBZDLj2aSvBp6Pwc4YCTNPYumS4mSDnk7t
	DuZh61WSzbaMc1PtsYb+oeeaASQgQAoLWSK+7EQM3BcqSgFWGYvWLKQ70JzICM01MdtHkcNy9+8
	iIqstkIPLCOWkTD3qA4mQlka6lC08tZCHDoUZzcEnlquTYgLKBEVn/gHTotPzvsgEv7K0TTNvDk
	/bYhoirJbP2ET6XU3rtmKzxie26L63mk4yv/rqu+wSMg0iyVbdEGHa+Rs5LgcG/gO9sESEm/kaV
	4/P2sL2YegMn0WPFwxMw9RUJTCVAeQa0KL/XP
X-Received: by 2002:a05:622a:1791:b0:4e6:ebe3:9403 with SMTP id d75a77b69052e-4f1d059d261mr218026671cf.41.1765978992314;
        Wed, 17 Dec 2025 05:43:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGs5UKb7XzshQZgu3oZhlbIG5d/CYa5SbbpOYCX3AHnIMwcfk4nwbnQU4m5au02CHMdtcpjXQ==
X-Received: by 2002:a05:622a:1791:b0:4e6:ebe3:9403 with SMTP id d75a77b69052e-4f1d059d261mr218026361cf.41.1765978991819;
        Wed, 17 Dec 2025 05:43:11 -0800 (PST)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:772b:e322:5e20:58e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47bdc23c2b0sm38598635e9.15.2025.12.17.05.43.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 05:43:11 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: [PATCH v2] of: replace strcmp_suffix() with strends()
Date: Wed, 17 Dec 2025 14:43:08 +0100
Message-ID: <20251217134308.33839-1-bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=VLjQXtPX c=1 sm=1 tr=0 ts=6942b371 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=u7-1JQUhpAEVokYvez4A:9 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEwNiBTYWx0ZWRfXznuxb1IQVjSJ
 vFbYDK1ezK4MvBD8+1fepZjJgUkCuSazhcDACDINkWiSdhVGxo2hwh5l+iKMfABCo9gn7JHmbVC
 3DUGfk6MpqEBnpBbTCts8dZV99ffO1WB5UJhRxwvXv2KELm9/u+VOHV6rvnIKpoMD+fVy1y8x4s
 Yu9FfXOFYcpdLrtvtCdbO0qxr/QywDPvzh73vMeDN1XZoKxsBRpl2DblRA3D/Rtj0kdKgpU26Ay
 r94cHoEdz2IzbFnL82ti1cZVifF2Xe851WBO+asZ1irzi2t+tVlx4q7wbqb9r0fHtsc7GX65Bl5
 YknyFfyO6jGWoyNFHHphHJrDzBJFvnArbFqeZLpdrF6xn/ItOcpr8lt0fIdKfhvNSqXW/h3ij+h
 5cC75ppxSmb6OwNLL9wf6H4H0Wg47g==
X-Proofpoint-ORIG-GUID: v8lhDoG618xATDsxzDcWBZ0J1bVKKRZj
X-Proofpoint-GUID: v8lhDoG618xATDsxzDcWBZ0J1bVKKRZj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 priorityscore=1501 impostorscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512170106

string.h now provides strends() which fulfills the same role as the
locally implemented strcmp_suffix(). Use it in of/property.c.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
Changes since v1:
- strends() actually has inverted return value logic from
  strcmp_suffix()

 drivers/of/property.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 4e3524227720..ce5ada040d7e 100644
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
+	if (!strends(prop_name, suffix))
 		return NULL;
 
 	if (of_parse_phandle_with_args(np, prop_name, cells_name, index,
@@ -1416,7 +1405,7 @@ DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
 static struct device_node *parse_gpios(struct device_node *np,
 				       const char *prop_name, int index)
 {
-	if (!strcmp_suffix(prop_name, ",nr-gpios"))
+	if (strends(prop_name, ",nr-gpios"))
 		return NULL;
 
 	return parse_suffix_prop_cells(np, prop_name, index, "-gpios",
-- 
2.47.3


