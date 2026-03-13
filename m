Return-Path: <devicetree+bounces-275248-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CI8KDlUUtGn2gwAAu9opvQ
	(envelope-from <devicetree+bounces-275248-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:42:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9702841BE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:42:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D66953367405
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:27:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BEB03A6B73;
	Fri, 13 Mar 2026 13:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M7zHNuPM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PP7S0M/T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAD7A39934E
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773408249; cv=none; b=RDsNtBbT0xGjpxMyaXeHhY4RbZybJscwxzKebwrQnQ/eEGuUkRGjVOLv0HK5vB/4gdpr3qxCfS986y/iMnHE1fAtgrIwByVkzGHwUUa48MmkOSdXN2RyldPuheN3F4VCJuGO1Y539mdVyVdPP0y5QjQmbFqZfoaVxxn52OycUCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773408249; c=relaxed/simple;
	bh=awssoOLX2hyFvkI4vDBZ6gn5gwKYmLjvJaDdHsXjp2Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=H7V9Lz95V7xJmURVZZPLBWiuwCFTQyjXYuCG/NLhUsgPZ0mfCCpG5w5Nr/s5JGye5eRoq+rBfHf/Ya88vR6wb14QHyZfZLJfY7Og/xyr7kGd8/EQaNSMMxSriItNxNk6jM8wwhZwyVOuLyRJ1rWvggY34rxwhw7BFUQ/JJf8cno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M7zHNuPM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PP7S0M/T; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D7iMAf2262606
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:24:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BCDKqOoVrGCzz/kPg4ndS/MQ/dmIlT+UZRgUfG7y0OY=; b=M7zHNuPMy4QZT6p3
	Zn0YKpIlHpcVkA0xxU7gHKxauTf+1JV4j6Fe1VZGldng8OQl5Z2Ncqf11Hi4IIw9
	o63zdJqyLa6B42zTpEDE2gPSMwoFUhhpzAkLIbEaxW4Y1X/TUaccAAPcBET/oRe2
	kue2se3ZCOi6evQGAMAHcYNPZYGVYRQrYr3DqeZoH4jhqUZvplaID7hLsXS51EAK
	doY4Lc2oTLIS6J/W16u4a2vNtJ9u47fvAs0NaXQhcbh9xO42MGiZVSM3ci0uSp1P
	Vh8IqMH83cunuDAaqiWM57WjWiB/JQJSeRaYf13iwN10+teWzw2e0mI/kE5LKB3X
	IdXHtA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvef4s4yv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:24:07 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb0595def4so1647397885a.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:24:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773408246; x=1774013046; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BCDKqOoVrGCzz/kPg4ndS/MQ/dmIlT+UZRgUfG7y0OY=;
        b=PP7S0M/Tnh+nUKy6NLZiiXevxjE44jiKBhaMmnM23C5cF4fn1xEYgt/Y2yB7erb2SK
         mK22ywW+tT8sbsdap0/6rnQ+EbSNdtiybR/xEdD6vFK4y1il+GLno/XC0NxqD/08Ms1w
         cJfG6QBg7b3JAXJVsRKLLnKIIcWZsXJk4Np7mSA2aL5erZdV12ClNCyHhxe7hnAjAqrq
         c7ZZCL5yeewZnj150cJLt/sKnADwthEAdV2ArpPS4Yw2t9g+yryAa4AdJxwpJBGNZji2
         k+p5/HueeJeNA53l4G4npjnRG3yFl1b9gPUIui7f/upNcrca/5hIN+UZjV9FErccvXIm
         Py6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773408246; x=1774013046;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BCDKqOoVrGCzz/kPg4ndS/MQ/dmIlT+UZRgUfG7y0OY=;
        b=YynbW8N9+H+T6iymXgmoO5qWnzWQEliJQ70EUg4YYV4sJk6a6yJaUVBsNaF3nnTN0P
         YQZne5/ysaa7/eaizHz6We3bQOFYlwTn+zeJAXnFrg8obIckLFd8zD9QnFrysMQ2mije
         0L5ftiEiXsR+u3uC9Xy7/fYNQREK74bknLawR/dq5f1imLp+tSclOO2fPzYTlu0OqS+e
         mNcXEAzCHjPJDMiWLHSK+RzPhsA1uHqBw161pdoSIBI88hd9sB1l9TkljeQFAflgWBrW
         OzWd/vX766iL/chzuIgnozjbEEem3Vqaist4p51R0hUP+N+Fb+Pg6MkiGyIzBx9Cno/Y
         nnhA==
X-Forwarded-Encrypted: i=1; AJvYcCWr0+rreB+GKXjpyDqm1buC8sVFrNbAaaq8l/unQG+Fn+qrKSHdn16GoV3iT5GI0nvTeumEuvHHuqCc@vger.kernel.org
X-Gm-Message-State: AOJu0YxYso0TGXdghgUxT7LrTidw1/VgijIuHUEfA6FQmMsiizNp/cL7
	wn2BhQHKdC1HzVG7P9b+zZXsIk7HkhG4bdwigs2Qkp1ZqRXKvbMP376htfyafWyZTJYzZMeWTyi
	+DlyXs5GjGcifRo+NLd6NL+tH72DpUdWzfgu6Q0JiyALCBTROALhn60cfO4OKQeYqk3/rPu7a
X-Gm-Gg: ATEYQzxCbY3GPORp0vnVtZJaso/IKjKT6I+Wg5klVgLJCXlYgr5v7L3e3u7sEzID5jH
	Q3TAp8Q3Q8nE7ZREhrJBxKqzk49KLFJ6/kWvbwjTSIutjDW+ZHfzPmUiAR98KDFAgosRJ/Ai7q8
	d/p4ASg/zj6oSeSf/GYjRQ+nG/ePA02BpOogSXyBKLk0rYUX0FQDfxkqgEBiDNPsUQun9Y51UPY
	f8pUxPifGC/iuS+qI/ecchpZJQjenvlSBfr0uOtNQppcgsRdkRDLyR+HQ8ZU5AHFMyLjCWcWEN3
	U5mtAxPpcOvDyVGoSZAVeYIGRqTMQ9XMgeXWIa4Fux5GoHXERGNiMF/FP74hIhQJMFk64rplBzX
	076zxQC6i9nM6e7XJ+nvKQrGC33Q=
X-Received: by 2002:a05:620a:25c9:b0:8cd:9322:7c4d with SMTP id af79cd13be357-8cdaa776c6fmr821673685a.5.1773408245862;
        Fri, 13 Mar 2026 06:24:05 -0700 (PDT)
X-Received: by 2002:a05:620a:25c9:b0:8cd:9322:7c4d with SMTP id af79cd13be357-8cdaa776c6fmr821656885a.5.1773408244282;
        Fri, 13 Mar 2026 06:24:04 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe19b936sm20294793f8f.5.2026.03.13.06.24.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 06:24:03 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 15:23:50 +0200
Subject: [PATCH v2 1/3] dt-bindings: arm: qcom: Document Eliza SoC and its
 MTP board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-eliza-base-dt-v2-1-bd91367d860d@oss.qualcomm.com>
References: <20260313-eliza-base-dt-v2-0-bd91367d860d@oss.qualcomm.com>
In-Reply-To: <20260313-eliza-base-dt-v2-0-bd91367d860d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-7ae85
X-Developer-Signature: v=1; a=openpgp-sha256; l=935;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=awssoOLX2hyFvkI4vDBZ6gn5gwKYmLjvJaDdHsXjp2Q=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBptA/tihw2Hj469Vvl5vGhwiC0T/WKiWfBrhPZw
 7KvRudW6zyJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabQP7QAKCRAbX0TJAJUV
 VtgMEADMJa47Ea361vJcip6SpB0h9rFWRYbVyzLmQZ9xC4jd4Rel7s3B13k1iP0b0Ye52xDRLcQ
 cz6G5UShzgJ3/XWsv3spH4ma7TJLZbwOyloaUaxj0huBb5OZGCeGfV9SGhyn/jeIh9QjVsO3sU6
 qUFqFhhaXJYV/OXQNZv25deGvzvT7A10djBniuNLxaYtXPtSidmvspiqy3hF4QmCUFEAXCND+qR
 F5AFmbWGi3fuxMW/CgTyZGPEc2Y6PAD7eNL/aU3CQxhmEhMTvxhgkJAc6YAPkDpm0qjWXbp/ngr
 Rh7M4MA7Drfnn7bDKGSOkj79wbvhyahSP/qqpw73Ej/ePL8Ub1bJRHJUEnmpSe2UdPtXyT/YQaf
 QGmY/jgPYvTSnioKEOIQL2akXU1kDOXGsmdqZTs34HYYO3lPYl6Bwq2rRjwgSnXGrWK8tgWyt5y
 zb6QSx4W9LEXiGrBMdzMFBpbVI4LV8Yr3mCPzZnvYiilju688o89PwHh9cIczmMKu2MhnIlc9pg
 gKFjBtRzYgCu59dF1XOfscwLkOTWIDGcNQc4eLLO89Ft4/yIiH/8YGKpziZfBEhW41klvS/jONT
 qBDisZuBauAYnEezcCR3TuV5o6nY4ltBv3cEpvdONG5cf8uDO0/AaleQC6e+tRyE8s9NnWOcWph
 3hqwaXbaE+7cTLA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: ZE5PuBBZWwne_mp6CNoUB7-kLLHt6E7_
X-Proofpoint-GUID: ZE5PuBBZWwne_mp6CNoUB7-kLLHt6E7_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEwNiBTYWx0ZWRfX9ouF9qe9gsvn
 B0wR9Jvc49lCq6nq/sOa4ISVLMPxsSyhi5WB2WQA11ba1AmFKjOVzQyaXq3bStRirLEA2Iqad2C
 3D9EfSozDD/wRcv78Zv/KND4OEQsxgqH9ljB8/xscdwSW01rwg0yjCMWJBn7i3ihT1RGry11Eov
 Bcs3cqOjiRQpTRmyjCLsBo+aKe9kb8b7L3/Hi0JqOnavyxpsbYNPBMVvYPELDsHBY2AWqFvNpQI
 9Aqc+ZyTpF/5aP6YVd38qfkGLmxxnFcYVbgxx7/ezuiNzrHDy21MtnZWNs36carydXGHYL5tnq7
 fKpj65vem7PddZxGp8RJWzEfx/1JX/BWWLN8HFAvgEW4nnyAbP+4cs5pgkKCuUbvL86aSEf7Bkv
 T2aAbb0g95sONEMLODT7IF/YHeeH9tEJuIaKJqLubnM+5jrA4UDMFhxWGCxZ8DhochY3BVyw6TX
 xcNnokYC0kEewLF2+/g==
X-Authority-Analysis: v=2.4 cv=S9nUAYsP c=1 sm=1 tr=0 ts=69b40ff7 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=g0bKRNXCHv9dgr-Vmo4A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 priorityscore=1501 suspectscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130106
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275248-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8B9702841BE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Qualcomm Eliza SoC comes with different flavors. There is SM7750 for
mobiles and then QC7790S/M for IoT. One of the boards that comes with
Eliza SoC is the MTP.

So document both the SoC and MTP board compatibles.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d054a8f5632d..458c98d2c2d6 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -61,6 +61,11 @@ properties:
               - qcom,apq8084-sbc
           - const: qcom,apq8084
 
+      - items:
+          - enum:
+              - qcom,eliza-mtp
+          - const: qcom,eliza
+
       - items:
           - enum:
               - qcom,glymur-crd

-- 
2.48.1


