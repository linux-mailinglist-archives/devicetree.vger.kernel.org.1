Return-Path: <devicetree+bounces-244543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D65CCCA63BF
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 07:33:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07CBF317B788
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 06:31:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2E9C2F39B0;
	Fri,  5 Dec 2025 06:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ECUyuHV5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hgHpz9IS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E446027FD62
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 06:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764916313; cv=none; b=GrnenMNZb1VDrfGGyyD88lmr0+2rK6rqlNFdgFtPcHNXLAYGSzsC0W5ePA/EmUskbBPM/dB3QvWP3n3C66jR31JqMw3beJ1UB7LZlL1muZGujyYVthn6BemLxwbTppRZaHsPEf13bbnnQ+cFDl0Et1MtXxLYTK3jMJK98isiKdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764916313; c=relaxed/simple;
	bh=UraQRW0HxMz552nMZZUEOzDqeHa7MsNxPseKkAxEQ1E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UerxabkDHi5yxJAHqveCU0/5gbVZBbDkIKYxSgL3xJ2usqmWEHoN+gkrhzSi8/X07iErdurPTHI8p+BmVIpMLpYUIJIXjgC6ESDk7tRHiCKu2zQFnPz5FpmCVzMLbgJZnPp2fN9kBlmSoyeGSSe7ukst6D6OuzZYRCFDvOnqsMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ECUyuHV5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hgHpz9IS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B553n9Q3522580
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 06:31:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v5IfNS+DNYTu2kOs5OLgHjhbpAMzsb8tTPKNH84lgX0=; b=ECUyuHV5VdPy3ey6
	FnXiiuuVY0ufFjH6tHVDxgD1M9Q6zxyZN5QeJIyoC+rA1ivNwXEduelkaSOT0zT1
	XfCb1MDSDVbjxnWS+ipRlPPOQ62Fd7dOaDkuD+ZK/REBZpCMNmELXbDKLSu4cygQ
	oxeezjO+wU7dLrKy0sbLbNC1I4iKm756qdgTQqfGSmnEVeS2JAFbZhBDY0DqIMqN
	RgvXMMkZe8ClLB6/Re2I944dF6AUrO+ovZOnrAiFGsIGO4u416LHxBYSFd7b1K1R
	JaGdiitnTMMHroMv7ZTwAkRCKfzONiacSpZFrAFYNAG0DeDmAXlEMbgoezehTspX
	qLcIqw==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aurwvg6d8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 06:31:50 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-7c7599be25cso3280370a34.2
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 22:31:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764916310; x=1765521110; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v5IfNS+DNYTu2kOs5OLgHjhbpAMzsb8tTPKNH84lgX0=;
        b=hgHpz9ISZPwQ4x7pD2R4BcHY0jwnPfWJ4+aZSdhQnNRnCDErAi891+wfU+an+j1xkv
         VxzYXEWoHzScn2jOp4lhdaa2Vkv7yBXvbgeuy1MpDOSwoia62G7BUcDeUzwvv3YwJI3H
         wEqn/IXISe2YhQ3CN7uIa+1CrlmuBYMAa/OvSZ+yXwwx6uZxHYl3m/99HKW67GOKuPrH
         gFj8Mp5nFOl2/NTN70ChPGYgA13mvn8r6QoYqj8pB3nB/8xLQq99oHQzBj2hukwohoGE
         d+gOmO/PqqxITEpBgxasWgCZ+YLRxQNW8eK0DbtAQjTL/tIFOPmMN8B1WzSlXUB5NLHn
         /5TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764916310; x=1765521110;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=v5IfNS+DNYTu2kOs5OLgHjhbpAMzsb8tTPKNH84lgX0=;
        b=d9MgfHMvV2LI+hUJgw2ERgdF73zZJqDSPMy9aecYoE2+ECmsqeXfBmF3UR5qRu25lP
         8sox3d4CpMmXkQxam0q+LAFP8HT0D7xvZ7w0WX/z8xa8hUtuxTBucHi20thkmZqZEf4+
         wrDQ7d5bTQlj/C9WYLM8rsO3fKFq50m6ZkFdnXS+L49eosfhfTKA8qKa9hmcDztAtClK
         u9tBBnd43GifXpS7/gBR2qyebQ1HXtD9K/FCXl25d/lONKEtM3XriwtRiv05ckYYKgyU
         mvNAXVaCiS0RVUNgf66s4i2bhJS6qzG7o7yz6652Lda77lmdNb9LjI2OKEXoFm4k4xei
         Iktw==
X-Forwarded-Encrypted: i=1; AJvYcCW5LquYLjo8ktqA9hs4QWbfgVIWL6cIE/YTCp2XDOBSGJWKgVFvpTkuxcjquq4TXcE62G6kcTXwROjQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0pE1oPJEkfwD6BIPBMHRzpguwBK+xYM7hER5pSf5nieJsnxjm
	cNaMlQG6lumgljHPK4mJQtwoMgjPCGvtFq2PMMGV9WVMvpTElKuruyofkfLyeD/DqOytK6ip30/
	s8xCHMy+fVKhjL7DI6PxBCw8Sx0A9Y09Bghcp7E3E96f8l+i/EsA8ZIMspjZi2X0P
X-Gm-Gg: ASbGncsyc4ZsIsLBcI3quDJMx/Oii68NoA61HPH0Os2qkkEdwmCMFj174NPivkDhb1K
	RYhVPQNhf0hiywfXfB0JSLA2Qx9gK9Zwgr498aoW4MbwMvImu4qkkm9KSeND5mb4eVwia2lTPCx
	erm8nd+3YwdKgCe0HP3YWhpBhvH/tNHikpsUapyw8HsKPChoPSR/mEOZ/KDygP660+LufTPqxlj
	ampaPN5skB+zvLKWSu9dHeNaZ0dXtU+PVDf51UEatD/2yCRHuONDK9BOkXx2UAYXjJBbc9MCNP1
	UCUcsyPR6scvKzqvrLD3XeUzT6QtioZTcPEWf5RqjHdsTR4QZ+1ccxfuLaTqHhSBmoaL3ObWHzy
	5e8TN3RCj04g66COASK++4pc+Z/6+RWvbkZ0s4MYEojcEknf/Q3IMWdnvvbvs
X-Received: by 2002:a05:6830:4121:b0:7c7:69d9:d8d3 with SMTP id 46e09a7af769-7c958b14598mr3621424a34.12.1764916310221;
        Thu, 04 Dec 2025 22:31:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEmcoFse4hqn7sciuWhsZTMSS0ff1gERNKC989dNHJAgTQduOQUG2UOm0Wwy+zIzf23XkmdmQ==
X-Received: by 2002:a05:6830:4121:b0:7c7:69d9:d8d3 with SMTP id 46e09a7af769-7c958b14598mr3621410a34.12.1764916309854;
        Thu, 04 Dec 2025 22:31:49 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c95a8f85e7sm3223326a34.4.2025.12.04.22.31.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 22:31:49 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Thu, 04 Dec 2025 22:31:19 -0800
Subject: [PATCH v2 1/5] dt-bindings: arm: qcom: Document Kaanapali SoC and
 its reference boards
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251204-knp-dts-v2-1-596d8398c6d3@oss.qualcomm.com>
References: <20251204-knp-dts-v2-0-596d8398c6d3@oss.qualcomm.com>
In-Reply-To: <20251204-knp-dts-v2-0-596d8398c6d3@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764916306; l=903;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=UraQRW0HxMz552nMZZUEOzDqeHa7MsNxPseKkAxEQ1E=;
 b=ZK8qvLLUrljEKOqNUSG/MHlaBHc2LNKUPtJKSnruONL790Y+44rc6hFkZ3yOEelNXnOE44tJy
 7qbgbliPoaNApOB4FznF1k22EII5ye6ET7jXOpaES4Bw0uLoa1I14Io
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA0MyBTYWx0ZWRfX6lv/oFE8HKJs
 9CN/8VKw2AjybxphG8GQboIy3m+iF/jGHZhRh541/E2i6NoMCrXop1XEfvNLzLdNOg838mH5x7c
 Z+twpSZSE4G6BFGGFbMCCrqzjdXsaIiVJE5GmAMCrd1VT0Pl6IliIxK8yQHKkGy09hpr1fDU2YQ
 qHmC7klzJlxBX8zKVie4KhwOlSvwACjGok9aFUqYL+Yisfxx7winfrBabfqyncSlZKlMU7kznVt
 S9konxDe6OmmXUObUsFgeVGJTKEG6aXtj3+A+CPFvyxkidi7gWlYf5ClC3QQCgzDqGTexHF8x0s
 BqwsngSeVkn52lUaJjP1gZ4DrM3oNrk6cb9nkcJurHBwXfFElQTlN2z1KvIRP6hoCOey0HqSbHr
 9yoyvDckWQdzmQymu2y3lJuQmi0iUA==
X-Authority-Analysis: v=2.4 cv=Yd2wJgRf c=1 sm=1 tr=0 ts=69327c56 cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=8VIqy9Yext5eKz7IjugA:9
 a=QEXdDO2ut3YA:10 a=EyFUmsFV_t8cxB2kMr4A:22
X-Proofpoint-GUID: ZvzukV2IjJugYm4wtVUFBT9tYeShzyHs
X-Proofpoint-ORIG-GUID: ZvzukV2IjJugYm4wtVUFBT9tYeShzyHs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050043

Document the Kaanapali SoC binding and the boards which use it.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d84bd3bca201..da287cc9119b 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -327,6 +327,12 @@ properties:
               - qcom,ipq9574-ap-al02-c9
           - const: qcom,ipq9574
 
+      - items:
+          - enum:
+              - qcom,kaanapali-mtp
+              - qcom,kaanapali-qrd
+          - const: qcom,kaanapali
+
       - description: Sierra Wireless MangOH Green with WP8548 Module
         items:
           - const: swir,mangoh-green-wp8548

-- 
2.25.1


