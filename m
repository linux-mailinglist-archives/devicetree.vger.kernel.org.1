Return-Path: <devicetree+bounces-232580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D723CC19310
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:51:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E2BB4050A6
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF3BE329C4C;
	Wed, 29 Oct 2025 08:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lPKoLdqb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Qo5CILlv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E6E31E11D
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761726342; cv=none; b=ZYuLMUC4fIz6MgjjacNl8Jd+YY1JTj6D6tjRNF1t6PUrnnPaPLN8YP43f3HiT9f/pizYy0xCpiSpvR4aH82mr2iQrenKmZQgvD7EgUND2W34/R272lOcYFrLuKemhtFZDG3ND7jiiCa19iDo1ZKUKfXRhDlgLTrzSHOcCIj8AQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761726342; c=relaxed/simple;
	bh=W4lOSMg903GYA1zxTDxFQF9gnP+6sHQAZV34jmuGdKQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OyEINHYdEvTKbgvFAXIXjwT9AxZdCl3ox9T77cpswSAVuIv/dVYmVOoXy1d342JWnt8pkNO7C77ZRcmdXWyzYBY9qBNSWdxZfCVcl2IBhzEuu90/5TKG4/pQWukmQ95oPhNsHnrJCiiTiWI7fTAF32fYZTAATyIbEuyijreF+Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lPKoLdqb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Qo5CILlv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4ut7R3692136
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:25:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JK7SZJX+MikCqFjK/k66SySTPy7ACr2CTGcmwo3Ayjc=; b=lPKoLdqbDV+aWPRQ
	SgIfMylcGd99Cm+LcN6qZzqnGPiogq3AJ0UX+WebPKXB+jVr3bPbILf1lMDGn3Qs
	BafXexIsoFsLKd98SnrfAN23o+YKcXt2ug10jginxZHkiLaR+bymdt3wlzHGxC7k
	DPOF9ht7Qq7I9o5CcBEq/Ateuzg+s7G3Z2KsAWIaPdAAkqobstOdFxj4p4+Ff8mW
	g5sb9veM/xeKlei3iS0i29ydkLguAmuRPuJaoIaCQyF64+vxVA35hXoYnEoCvGhg
	gxj2Z+6rtrjOcBRdw74augF2ph9FJjiyqdtAeUeUI5bi+Txne4m2jRAkaPSgKmzh
	L83y6g==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a2hsat-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:25:40 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7a26485fc5dso5404009b3a.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761726339; x=1762331139; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JK7SZJX+MikCqFjK/k66SySTPy7ACr2CTGcmwo3Ayjc=;
        b=Qo5CILlvRlXMGzZKcKbCaigZbMwGepdAw0MWkcuNOUapjkzg+iR4hbApR5AP2fpID/
         vuxhqjjJGSOrOCHxHP2exU3VUcZz6aSEShj9gTDMSx5iz3S7rOyit33Klir5gi9Xw41v
         4oG+dveGasQoWvT9PtlmjTsYp+pnl53Fm0LZc6UzQk0Ia28k+NXtP+OG+DaGTIgJTQs0
         qFhvKKvNrMFPFV5utPJTyv/uk0iuZFlSQdqAFWMCj3RHesrMY+AkByv93mxjHdWCj2Xi
         fQBlqe6ra6ZBBX9JSMesK3TqyUX8Zs7w7aKx5MItIO7KHQUd9w9w6TMKijHU2YU8VBZ4
         oy9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761726339; x=1762331139;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JK7SZJX+MikCqFjK/k66SySTPy7ACr2CTGcmwo3Ayjc=;
        b=iCU7Qt8yPS3A9P3xkH1ne51CvoZ8sv1o1KsITAgVZiRIK+SkoOtseQlEaUqwJ5js3K
         z3p/a+SAwVpTeXL1Idk7l85og13y2wNennNAWoVGFjr7KfboxCmC35Zzv3GAqHnqARbv
         30tdr0ur2M/H/MLjgarK8kcoUigaoXyDVXTvcmy2UHVsxKAN93Bpu/AvrsCI8rqzpEMS
         B0q2+kShzI3/7P5L1gnrmu/OMvuc2oAlUvh/X5aj96r/1HT2fSOqWcBFzJyIGh/Bkvn6
         eOG6Dv12PrDgIpKtLa4jMeeDLB1dGsDHWSx8vMy14dNDyfListqeIw1EwGfjPuBcdtEz
         BRvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUimezjgpP+0KgYNs5/vDNtxG36YOE8puerP5dHa3sdKrWvuJ0PQygedTFYofkRqWuufWmhaB9Ekhs0@vger.kernel.org
X-Gm-Message-State: AOJu0YxqnasR5Pb49MDCgAODBF9gFDS6A49V0nJg1sSBFMTmYyiEJ0lC
	d8fLTzyN7aVkpP8Q/pHxrey3eJv6kNXhPspWelju9/5RIs/IDxxyfkLUXa6VTh9mfeSqID/cHuB
	DYp1MH6wm0tz7NPA3i/XQkRqWtDTF5waWgMH3ZmVEiLXIaueINGH+vy1dbRY7G0Hw
X-Gm-Gg: ASbGncvCAJ8flSDZYDvjp3C1inje+bHOsrXDqaxG8gOJ3aFf7530r8NUAK90Wqr6LWX
	f5dC4joUOEyAN7XxGy8eCNKE/mTrbN7jbFQ3PsHVfGSE1YotMO5hifz7jEZAYBqC8JNkiXNeyRi
	IUw64epgrbhqsvjZd4+YSQIPwpu4LSU0N2l3n9oHJzpOu4qStnYYi8zZQc+5rSMzcPQi2OgQrt5
	qG0T1AKrS6PzaUSIzR9erCD7R1Jv5anb0IDr5q0+etsnhX2pr9/Aqo2K5F8DNqi3zFHFeE/u+py
	9owNCAvaEkrhX643eSani5Xu0sbsnFPPXlEmzGMPmnAgR3AL6tnuHfxHvhbs3tCb7LnrXrG2Wzk
	r4bbQuqR8a4NHjJJ0ZxH7Asw9Pzd3bUjFUuEbkwCLS7OdSppr1A==
X-Received: by 2002:aa7:9064:0:b0:7a2:8111:780a with SMTP id d2e1a72fcca58-7a4e2df8cbbmr2363264b3a.2.1761726339215;
        Wed, 29 Oct 2025 01:25:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECihEvvzOVIGmNK8hPCjT06tnNOOFSohNpSB5zChwhoVvZea0PYfRvBk669noNoCuIzhObKQ==
X-Received: by 2002:aa7:9064:0:b0:7a2:8111:780a with SMTP id d2e1a72fcca58-7a4e2df8cbbmr2363231b3a.2.1761726338692;
        Wed, 29 Oct 2025 01:25:38 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a414049a44sm14158850b3a.35.2025.10.29.01.25.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 01:25:38 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 01:25:30 -0700
Subject: [PATCH v2 2/3] dt-bindings: crypto: qcom-qce: Document the
 kaanapli crypto engine
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-knp-crypto-v2-2-b109a22da4f7@oss.qualcomm.com>
References: <20251029-knp-crypto-v2-0-b109a22da4f7@oss.qualcomm.com>
In-Reply-To: <20251029-knp-crypto-v2-0-b109a22da4f7@oss.qualcomm.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761726334; l=869;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=j9YVsWbXcS2a6HwO/+foiEbEjltuK+bIiq6tBsLubm8=;
 b=2HSGd1hA7of3GezzUr/8YAJJWPY3Tf/fyJngsluCXpx7q1JgTexKLVDv6j/j3oOcPS23To/8F
 7ezLZWgDuA3AEj6HljjgqMpGjAmGPojU8GXzoEHOs4v5JgTNmztkqEn
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: WD_MhFuvFlxtExS8V9EnRmvggZjKaT39
X-Proofpoint-ORIG-GUID: WD_MhFuvFlxtExS8V9EnRmvggZjKaT39
X-Authority-Analysis: v=2.4 cv=PcvyRyhd c=1 sm=1 tr=0 ts=6901cf84 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=UTvf6Pk5Os8-KCCN1KUA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA2MSBTYWx0ZWRfX9iq8elU7Jk7Y
 rJeF+raFD84BynSOt0RWFLsB8Rf5PLgMzBnS3M9hoew0KFFm+XI26aUzAcj4M73ikV8iyCZnzLJ
 TQx/L9kChxagIXUeZxuSlj4Q3t43dlnu0TFFAojpv1R/u5fvMJgZvK/+lm82dvzF6GviYjMh5JE
 mJbMIn/wi+iU9FjNSdp4ADoEOIfMjbsvM78kME5M7C1fOxp6QnyZ7hITAVntWXnJig3b5lXTzNL
 rsEzqZ9upbLxfxkfULnMiXgUG/7zi+KD2412jdQt/N9dse6bNzWqUAjyYzYUBLYrEHZ4W7dsuTU
 IjXBzZDg/+pJZ4O6otzHyMZeUkHBEcuvriCg85hRT010CiUeEp5WnBymklkU2e1dJNJI7eO9oQA
 c+/+Z3yPRpEdEOQ6WMmy80D0eszVIQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 spamscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 suspectscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290061

From: Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>

Document the crypto engine on the kaanapali platform.

Signed-off-by: Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/crypto/qcom-qce.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
index e009cb712fb8..79d5be2548bc 100644
--- a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
@@ -45,6 +45,7 @@ properties:
 
       - items:
           - enum:
+              - qcom,kaanapali-qce
               - qcom,qcs615-qce
               - qcom,qcs8300-qce
               - qcom,sa8775p-qce

-- 
2.25.1


