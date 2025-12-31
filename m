Return-Path: <devicetree+bounces-250803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 640EBCEBE88
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 13:09:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 05420300F88A
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:09:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7631A31A570;
	Wed, 31 Dec 2025 12:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EfKy7lF/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hqHX2G2o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033EF72634
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767182978; cv=none; b=Qi138AWopNfe5BK8T7NmkyZAQGhABnPIEW2GRh0aQ396r0h8sCB7h+5TSwwQ6PjrEvIkcPY6vDWhypjAFx145pPlHIEDHmg8Swm3SG26MuPE4lFF6q/ZFcjVO6UGVr7wEYBBzTAxSsg6sqq9CLw834jtFs3bep2+cT7ooiD+0ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767182978; c=relaxed/simple;
	bh=5tVAYbbk4ujR3tKDh8kV+Ea0mucIG2Q6S0JVvG98nok=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Nl3rDLYAjMUIJ+SEGt76ReKx9untgsenhL7DgeQvz7uFRCuZMPCe9IxR93LGwbKVC+mJk0murjQy9ZvCARzsDOGKQcDdIaDn5BV1/7TCmczD/47Scn2YT5f/Uo0dSMpKuli5g7+8h7ay5CyueWIddIoh+c0QdGbPJ5CYFHEDpHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EfKy7lF/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hqHX2G2o; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV5VMhb3539503
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:09:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=OICKW+jOWCN+RwRTVDdarfWROoIU9V0xGdq
	/47Yu794=; b=EfKy7lF/sZeLFTLrBiNk+fUZ48Y+1GckZvREy4LmT22tLDradN6
	jh9dbpUhH9FyMHJV2RHjRHS8UuW+bF4HPtxLqynr8uG/8eKM2kWIW5MJ4PTO0Isv
	Zxs75soNb818pu4XbBh/iWlsAaYNIMiw+w56CaJGY5Au8Bq7lCGmGZWqbZ78uAp7
	qMrbN9y1MxR7Xk1Li7gSB+5cGpLQcfW7BaQwbaejJAYQgbspwnaug7ui/LgRc0yC
	/aNTvECCdlM7pZzu/RiRS94MDFEyeumSZaiesQzRxvqFvl8Y4TpVtyz4fqPHLKX9
	jYVo0ZrE18xVlfexziwz9POMSfTjF9L1Bpg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc88ykgfb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:09:35 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee416413a8so114989091cf.1
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:09:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767182975; x=1767787775; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OICKW+jOWCN+RwRTVDdarfWROoIU9V0xGdq/47Yu794=;
        b=hqHX2G2o3k/ez04QbSd/roH8hZQDmxsOEs0eh6zDYSV2h8pI3CFET1DPQwH0MkB31R
         X+MOG7xz435q9RRUI//VH6+9AbRECiE7SV5TzJDEpKKcBNcchGI+RmQAF2/YiGlgB8ZG
         8XfFeWdgDTH1hI73tmg9y72X2k6DrqPLzPKNpQx96OqC8ze2wcoAu6IxhFaI7o33ctX7
         nXV84iNvGjz/g8tPlYw0Hsqb3t4xPHhAMnuHZ1YL+p8PNiw9MguQ3HaFeZV9xUDgae5w
         CrZB0WZbLLQ/i9md5NxOEAd8mvVDaH8M7B72hJs9zEwIxF5jZnxKRINBrMotX1KDvxkh
         NwZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767182975; x=1767787775;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OICKW+jOWCN+RwRTVDdarfWROoIU9V0xGdq/47Yu794=;
        b=s87lU1he/73dECKAgivjixblBPG7NULhExhmghLFjHGGirAc7okhQmKYX9b93m7Mv1
         GsYiRUjuWHmQie9WCFbkUFQuqesBHiN+vPfIParhLn4kTbfFmKJjifTLIj74zegYI4Jf
         4YPxed6rZxPupoTmAvr1wUycKHLHK7SbJfHqy77swrgTM/CqFuOVL7unGRx2HUFst3Ur
         GaXwt9ZPjsRFqIheJxaMWshsZWMAPJLjpRClXLBCe+ksSdUEtcIg9M2Ky3nKH2sKChlh
         ZUMVTYw2WAmITPD2ZtAwDCWUfXdML3V50nT22txJhJnM+drf8jLxv+4mmNfKLDfEmpHL
         KIKA==
X-Forwarded-Encrypted: i=1; AJvYcCV5TyIAcHGvDlPpbEVNl21cUA70e4F+9n1dpU2m6onaUBVPhJ68Pk23EtcJDVOQSvfIdjB6pkzJVMjp@vger.kernel.org
X-Gm-Message-State: AOJu0YxvigjM/zAdqH/KwDQX2Q49/DUhdfkjXmVX2/0x2bMotRQJekv4
	xLr9wvHrQsK1gp7zsPCEap3npo+k9UO1kBY6CtNx6XOH15VylfzEe+ICgI1Ntea6U0eOTECWXwW
	h5+c1A5IKxTAt7bGbyd66an5WSBAV/0ffUY7HkCSfIF8PufCLBsKXPOqbIuXYP90Y
X-Gm-Gg: AY/fxX62QI1bEmaf+QrM8m2WLwcrs9xzSGHXPWmIby+iwAasvpt7gFOd4f5VT3k3LO2
	OkR+xkH2ysSQxyWPMiC2rsocaZkZJ3zizLcYAFwyBzLFNnB/N8LrLFxL1vOCNBEipj3IkqAynPP
	4U8cpecN+MlhMaAKVHDhEylfpoMALZble189XefzkYxB5D6rOd6UHdp6PrRp51CG9WrHFh+gVf/
	BdDc74ZbxZ+PngXlH7MweRnXMbaNizQqC37cFvkTgzxLC4/XresTLJ1OEslEORZaOxlGJVQuz7l
	Hr3fKorEJNOYhwnwgpEb2e6+8saabIVzlj8amlQH6JbziygKztIhdKsCvBeJDnvOkOVtK3Z3hKg
	mXQw1/RuUjoys1y1HznsQsElanA==
X-Received: by 2002:a05:622a:87:b0:4ee:2200:409e with SMTP id d75a77b69052e-4f4abca8a5amr555685621cf.4.1767182974961;
        Wed, 31 Dec 2025 04:09:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHoPD0II5KMYvY4TgmXpjm+DJMNb+uvzfPibKMBRQsCm1ASi1faBzBEAWlIZF4U04RBJSZ/8A==
X-Received: by 2002:a05:622a:87:b0:4ee:2200:409e with SMTP id d75a77b69052e-4f4abca8a5amr555685391cf.4.1767182974496;
        Wed, 31 Dec 2025 04:09:34 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be27c2260sm677549975e9.15.2025.12.31.04.09.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 04:09:33 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] of/platform: Simplify with scoped for each OF child loop
Date: Wed, 31 Dec 2025 13:09:27 +0100
Message-ID: <20251231120926.66185-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1411; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=5tVAYbbk4ujR3tKDh8kV+Ea0mucIG2Q6S0JVvG98nok=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpVRJ2J2l3he9zaKSbEN2h37zvAZi7pxhaWYlDo
 5xGKTwXGKCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaVUSdgAKCRDBN2bmhouD
 12exEACAzfng70voGHQ4r/lYH8YmBNVaR2fDjgJaURRPvv4vWsz1uj7GuOPnBnCvo5b9A8FV/al
 x3dcJnDHyl5YtfWOcepiKQgvpyhbcXaeRR0oTgOlBnrwJ4yoSRLuhbO7Hqi93YS24aA/UWL3QWx
 MC3a+3dL0aD/0GVekhNozlHplQmovq6C/9dC+e0YsqKSEv5gOLkwmAo/HfmOkYPIXVxNcYRWtyu
 AwRJ7xyNWH+gFp+vqS90T2PwivFF+jrzEnj6c+zuZfHtMbIEEOOYjX7CpjMUrREW3oYwIL5Z+C4
 Gexx12Sa/+VASN/6HzmVfJrtXMQNByk25WLs4bIqtUXlmrTgPu4B2zCm1jExi87VfZQlwSVx7zE
 SrBCt8nnW290/0AvxN/qjE81HcZdYGzitZXxFcIoNxQY1K1xWbnTPTwHcWGB0mHp69NOeFlci6G
 QNG7FG2t4gw/6HfWgZ7KeRyv6gJZbUkI6SZCAn4La6vA5EGWcvPGSxlRgfU//CMyFZ89NsiXCUl
 h8i0+NXCyNVbr8K6mSS0gY8zhCkS69f1AUJwkSY1UD4GfWszVzLrlAgQ0wfsmu8tvuWW2hnvAO6
 JCy8m9KBW0BdMTzCVvslzxaL7llBVhLhqkX8pK6VxrjP1nW7ukd9W7GR26eV+HbuntwLjRnMCu/ nar/z2l/B3sZUTA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=POcCOPqC c=1 sm=1 tr=0 ts=69551280 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=kVq6N5mEIK0mURhpU1kA:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: WnyxnyYu_TmOnzQsdTNbWFIWzCy6L9eD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwNiBTYWx0ZWRfX/7fbv+KqFKxp
 te5fAt+xZIDIh+ofuHiosK0CP6ZAjaOxZ/aDJRh4jp99EG/0zVKS/e+eu8JJ1Q22u7YpJxtTAfT
 8Oemsc1EiWlhO7qV+scQX87/ifQWkL+Zsz2X2Za/vEKRmMvdo5x+QdPWOkY2shX8ITrasuQ5bGM
 FBbPhR/pbOjzWo+q7fdg6xxYXgR/aNeoN+LyQBeYwNDao7Wrlt6NKY3TOe1IW5nApTJEoEd/ix3
 P05XL5wlqKfwGfV1XapHatAu+Oy5Idv9s6x3oZTRdzk6cNHHi3jv9htiSikHdRF2gxyO/vnwrS3
 RDrjBze0U8Q2Vq7XXxrvhuVrzdfq1eJ/439XNqjl0xNNsX2ahv0Hza3i3gCADnpO+Z8J/2l1Fnp
 +IcQGZ/3fxtplmqnLTwcS/ik+y56KN2xq1EdaDWHgRNwDYX5SplCnCVQqUgYdUKNhCfacLCzwDp
 zsNE41agA2EO9dbOcpQ==
X-Proofpoint-GUID: WnyxnyYu_TmOnzQsdTNbWFIWzCy6L9eD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 phishscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310106

Use scoped for-each loop when iterating over device nodes to make code a
bit simpler.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/of/platform.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index f77cb19973a5..d4e169b3b5af 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -394,7 +394,6 @@ int of_platform_bus_probe(struct device_node *root,
 			  const struct of_device_id *matches,
 			  struct device *parent)
 {
-	struct device_node *child;
 	int rc = 0;
 
 	root = root ? of_node_get(root) : of_find_node_by_path("/");
@@ -407,13 +406,13 @@ int of_platform_bus_probe(struct device_node *root,
 	/* Do a self check of bus type, if there's a match, create children */
 	if (of_match_node(matches, root)) {
 		rc = of_platform_bus_create(root, matches, NULL, parent, false);
-	} else for_each_child_of_node(root, child) {
-		if (!of_match_node(matches, child))
-			continue;
-		rc = of_platform_bus_create(child, matches, NULL, parent, false);
-		if (rc) {
-			of_node_put(child);
-			break;
+	} else {
+		for_each_child_of_node_scoped(root, child) {
+			if (!of_match_node(matches, child))
+				continue;
+			rc = of_platform_bus_create(child, matches, NULL, parent, false);
+			if (rc)
+				break;
 		}
 	}
 
-- 
2.51.0


