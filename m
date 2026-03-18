Return-Path: <devicetree+bounces-277037-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DE6CkdlumklWAIAu9opvQ
	(envelope-from <devicetree+bounces-277037-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:41:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C2E2B83B8
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:41:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 520DB30314E8
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:40:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24A9B38736C;
	Wed, 18 Mar 2026 08:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BCZVmgr5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EeesUhjJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDAB738756C
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773823221; cv=none; b=hB8xUlVkpDvma+QvFs8ucilttFiwN3UYoY5UCmVnGFdbN2RGqCu8XgXq3EHVY5HJ19+022qY5Hf/MSmgZ0Jn9DOFyZ60xCbayhHIm8oldQvKEJ7gXNSSn7ZjiTp5hvyuYnZiV+DZUzYmmh0b5Zcq4fWK2lgmpKzKK34btD2EcG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773823221; c=relaxed/simple;
	bh=gm6tDoWzjlGe4E5qZfKllZb9n636Raf72Fz9PM69fbE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tXwgvkO+tUDpXuAM1NNfu0etykDOzWv8Q0TZ41S4ZClaQ+57hsfh5f1+RWUUmxoVA24hhTU6W/RakC8QBpT9rr8KphWI8LZmZRan+bkeGXGdbt3khDSi7VCRnUfZIKez4jAw5xMlW5nkEztMTDtrZFBRYVm8NdV9Z1trt7rZzZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BCZVmgr5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EeesUhjJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I2fknE402533
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:40:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mdeI3XpwqfrNzutHdUcddj/4yu2W4O4G5Fu1PQyqbh8=; b=BCZVmgr5Jldh2lZq
	rfGFeJNn/ftx002CsRvP1ziuSNkbhtvSY7OTDpr2YSTfYkQQMk27n1RqdOB7B019
	xqEkfjAEgbEkOAhxcDNQqDCibfRfrcjaD/fRiOj37RZmVoo9QAsLjzbzVznvIAxF
	6Rv2mBOHndcvlXPQ0ppNSaZKYowjUIrNS7rVBKd2xk9xRvd0GNK77G5+sT8IdUXw
	sqbEGJj9GP8dsmqPEesEink5KqxA/gXrwYCe2xNpcpKUrseiWP4y2BjkAssFMw+i
	YvKGI5D7S7SOqpfVwt5BstFTEtEhE9rTZaMeTw9isOLbVyv3bsbgU/Sj8BZvibSS
	W/cqVA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyc4dtuqe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:40:18 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c7423ba5342so2015981a12.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 01:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773823218; x=1774428018; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mdeI3XpwqfrNzutHdUcddj/4yu2W4O4G5Fu1PQyqbh8=;
        b=EeesUhjJcFyn1xLgZq/mUK7VYFhQYwkEHU9Otw11YDZLeUDaYaxGIJNSvqFCv/n35A
         DTxNIQ91VGt7r7icxl/Gsx5R6ci1nznd0Qh5lKggiLK54NHMfh2y5Ls6gwRFGdcV0c7K
         LqD0RfRcT/9AHf/LV3yId4H2lvbi6X5eWDNtSvNQPgq9beB5K9hB6U+hVt7Steaqr4WR
         WPTBUZ7mZT5LtUwIH8d2+YncdFF1kTumLstiRC4cziyZp9Le+xtRpHWOiibiDURUJncN
         u8nJkwJnuO23jq/kR0WMLJzNdQIaF00EmOOrhvfD/EdV1KQU5QM5pvnJlMsyLeBQbu6B
         zzsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773823218; x=1774428018;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mdeI3XpwqfrNzutHdUcddj/4yu2W4O4G5Fu1PQyqbh8=;
        b=VzHwpdAXApuegJFuO2EZe+t6iEeVu2HxhAq5a0H9ZXXrvnunfu7njz7lMukJFPTTcP
         res3HVAZuthgTpd0i5v2c1+f0X53E7Uew2BZ2nKMvYyevLUimYCLDMykErr6/LTDEpUq
         l7mtO9QjNrEtNm9CFZDO1DTo2t+kU6kg6J3RTN04LEHdK8yNpEo/QRbzgLvJBBmUzdHU
         CzMNYDE1o6n17iQwgI8qGxH5XHyTBbzbqmjv9K5GbkdZwhBS0K0ClmNEAo4MK6lTCbIS
         JkxTFzQmVDoZBLhaeAA+6kYoKJ5SQ8OGjJPlgCH4OAMsPz2AduoJ7Rt9RG8ekKnlwgxE
         pbHg==
X-Forwarded-Encrypted: i=1; AJvYcCXepGLOggxL71yCwKhm0TUA6BndawP+cUMcK5jMVnj/9rsTINALfsCwW0kPh3jJLgBA7hgH4RteXQVz@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3yA7k/1MyS8Ljwe3FAez2594EJ79a66jURmwScPwza59awIqh
	gnP1ndRxKQ38eEpIG6loP498gy2SRPQAF2f08a1bo/a+i8sukZbaqG9lTsM9qTRwx/0lsfqAHpg
	Djg1OLlJ2RVCdo7jmCwz9xZ2uED3GHdikzcSQknKeAF0/OERY5uEI0URTnvE2IlNJ
X-Gm-Gg: ATEYQzxFLLnpjH/Ma1hBePgJXEMxbVXilRLVHSmvQVhmtBCiTq1IzpqmRSBP8RAxbTy
	Is1E+mQMx0jfzd5qaw6OAkSRWxQQ+go1MbH6D+f8lICjIPxTJr63JsGRBIrFN8iC0KTgxhP/1Tj
	Ac42b8MXBncnwQLYGFVxVU0UmsU9yxiRduSTZC9rQUi9znRMcl9Z7E7bU03STNVWcFAuKEjG4n6
	eMT3pFTx3P/eQk2MduSzYlNnCJJ4XHIQ7w2m11EtPOddBLTHniYmn9euKB/TzBKKEPpmpmuj6SU
	9UC0qR/39u5BrvTcPxcsTinwjMBJQ0Bp/5lzSTb/tseFRLRs9+ASA6cf1b05/DX7ZO0aX/4zNA5
	Nzk3sea2UrrDi5fiRpoq3MSDgvjAuD6wQHpDIlrLRS7ogF2Zw42SRB81LCjNNgGBoSaBhiQrmG1
	1JNlm55m8zvYxwWn+HaFVOnIzDjmHbOfSr3iwaQGSrmrG7UVfH/BxxER0R
X-Received: by 2002:a05:6a20:e687:b0:39b:8545:f0c with SMTP id adf61e73a8af0-39b99de9c3bmr2468666637.26.1773823217683;
        Wed, 18 Mar 2026 01:40:17 -0700 (PDT)
X-Received: by 2002:a05:6a20:e687:b0:39b:8545:f0c with SMTP id adf61e73a8af0-39b99de9c3bmr2468637637.26.1773823217290;
        Wed, 18 Mar 2026 01:40:17 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a6bbb2802sm1863498b3a.31.2026.03.18.01.40.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 01:40:16 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 14:09:46 +0530
Subject: [PATCH v2 4/6] dt-bindings: firmware: qcom,scm: Document ipq5210
 SCM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260318-ipq5210_boot_to_shell-v2-4-a87e27c37070@oss.qualcomm.com>
References: <20260318-ipq5210_boot_to_shell-v2-0-a87e27c37070@oss.qualcomm.com>
In-Reply-To: <20260318-ipq5210_boot_to_shell-v2-0-a87e27c37070@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>,
        Linus Walleij <linusw@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773823188; l=926;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=gm6tDoWzjlGe4E5qZfKllZb9n636Raf72Fz9PM69fbE=;
 b=RRlXgQpcv7YVGSfbgDM4go8AH2F8+29JVWxmuAXvxGFoNF2ar3qMRMF2qppYl3vtGJzwuuG0H
 lfwR6l9DWc2C//NZQGb8sc8VMYcsJUH8bw52Ugv51P6vEny1RHn/9+w
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA3MyBTYWx0ZWRfX5wQKG25yGruH
 R0zd6ZL4DB3lzgNiyteFc2xWp+DQUhkh/TXyLICrfdm0rhKMUCINi34ZMJtSxbqYNkO99X14iZ/
 EfsGEA3QVUViviWZKqUF3bVn2Z5n3fJ07Kl5+RA3hoYaDLk4UTHRcu99nu44zu93Zfy7FKaMkZO
 hhIhm1Qax9awhiJR37JMAmukzY7ykishgOntdWLZLjzLF22KvcvNbgO3I0L6nvC0awJtvoizrbX
 H+7GzAyrZUDhBXZ1NaiQ4CkL9cmp006JaD5LIxcqi8m44Bgc8B6CMQh82umKS0RVGi6OQ3X2xFh
 kKEilqOEWlv7KbrsyfOojqWXAzlNqVdQOFQk7GMX6Eo1ABXEegU1i5E2SdolvWtapZOxz4Ii57Y
 YMz/EBOZej20DVIvNkKHgkUu4V51i2TpYOqNpQOrDCor98XLumv0GkG3bsIkQC6KyhmlGoNXWNB
 pxjeWP8yp7FB6BoBBvw==
X-Proofpoint-GUID: cewVgKgOaGFAg5ti6hvet2KZujGd3w2u
X-Authority-Analysis: v=2.4 cv=DfQaa/tW c=1 sm=1 tr=0 ts=69ba64f2 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=ND75c01xaBhBG1K22twA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: cewVgKgOaGFAg5ti6hvet2KZujGd3w2u
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_05,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 spamscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180073
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277037-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,pengutronix.de,gmail.com,gurudas.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 73C2E2B83B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the scm compatible for ipq5210 SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
index d66459f1d84e4d99c7f72415d08bfdaf1d701948..6d9b71a9b9b3fefd1951b963f34942243aa48ccb 100644
--- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
+++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
@@ -26,6 +26,7 @@ properties:
           - qcom,scm-glymur
           - qcom,scm-ipq4019
           - qcom,scm-ipq5018
+          - qcom,scm-ipq5210
           - qcom,scm-ipq5332
           - qcom,scm-ipq5424
           - qcom,scm-ipq6018

-- 
2.34.1


