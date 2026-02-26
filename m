Return-Path: <devicetree+bounces-268588-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oKQ3C5TRn2mSeAQAu9opvQ
	(envelope-from <devicetree+bounces-268588-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 05:52:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9671A0E80
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 05:52:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C18730616FF
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 04:52:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EB633876D9;
	Thu, 26 Feb 2026 04:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aVzMzRd9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="g/tgm5iE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4BC389458
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 04:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772081547; cv=none; b=GiqLvIc7uoUa2OK+ITWQxfTBzj4mtlHblRxL4Y1+HUwHc2KeGM9eCgqijd+FM+SS3h/x/Lfb0WdsybCrZVwZM5My5xF7KhkdOD1yJllsOG6tABRHH0zaHpnn+MOdql5VShudN74mJ7+FtjOHpzXWB8jFLWtaxJKqnbqc5SVMhSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772081547; c=relaxed/simple;
	bh=vLdj3B1jQPRgWbscBTiqCTeFKntrD1geF72D+7wghxQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NykgdxpyQrGduECypGM6+XBdTo8536hEinEE/KExSTP+TFAwHTDu26kza0evigbTlvE1N7WrtvSb/XrbvHaNMU4Vo8mEE3oqum6UR/ZBhx9KFuZmZW34svHC6iMBdZRDrB3SYIBcyx1JxIQUDFKLzfYcphPY6UxXgV8TwmrTh9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aVzMzRd9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=g/tgm5iE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61Q4VPVF576413
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 04:52:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KWV4k21xN90qYzLHH1hU2Cz+AC1ZwZNUglGaqJt87Cc=; b=aVzMzRd9PhyVp58G
	8ECnNAIC3UYVT/m5vk0bVNAB76qkfWGGHk3DnLwt2nh6JnH+HJ3iZSOZs7iWxLPP
	dX27EY/XawnbmXnAfnpsJmQ/4XmQs01QsLZY4D/9ALKRVQcGz/Teo1IXQ1Z4IaD4
	ZJdZoFTZcWNXJK4bmCMUxxg5Tb3gaIs08n53e8NBop0VpRDCOsDqBmbbL42/2Tzi
	spufJLQ1AHv2N1bjk6klKwcIzJv0QmKIepYwPBYwglqRutdtlGsAcEVzL4i2gZA5
	0etqA9OjQfo2eNnTlnkyXycGfZAWX9l8FYvgFvt49JLHOsbKuXrS676/+AmxXCvl
	PJH9CQ==
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cj350j863-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 04:52:25 +0000 (GMT)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-67999892f00so11836829eaf.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 20:52:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772081545; x=1772686345; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KWV4k21xN90qYzLHH1hU2Cz+AC1ZwZNUglGaqJt87Cc=;
        b=g/tgm5iEauXoZK5O3xz82TVSr0qVjGEKpvLwluzXoHH15DzL6wqY5hJouR3UbDRIHC
         X7uFmqIz9jdE2kA297FkPZkBxvbmYgv5JFkFGnFyHkNiJ+nNZcV6iiC7Dqc/GYfxRF46
         2PrnQNonA8QmkgQY16eHIp0SkL9krYn0p4/ngmwNINt/xCIPXLlfHcu8dryyrtsAh0ar
         HIeEOOPfExJ/5CJFCA/1saBgGldgBI0hsvHj+xIzx/lRUxQ1VksNwe2v16kzWwBBmbvE
         AB5FDNIYPr7pDVbgV8abAZnjxj2kQA6NhJTk1IjPSRddcA+/uSDcLTDCFyJWjBnu4ECv
         jCPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772081545; x=1772686345;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KWV4k21xN90qYzLHH1hU2Cz+AC1ZwZNUglGaqJt87Cc=;
        b=VfLFrFqQkzWIPYdTNcop/9DAw5peLbh8xX4oB4x7E8mkYgIIbwbe0ULvGO6C+n/mFQ
         QDvzRaSgdfoy2dc0xPjFmgQu1ZCd2mmao8s9hMKHU2JiH6N68A6XpbVbsTXmKuBgLHE9
         WdVKKUPd1Y2E9BeD06ZaZrSHvutb2M1NntZ/5+yJaCONZGgDjMQjdJayH0ZeAr1uVwHO
         8lFVZlnqkKKW2HFiiTaH0rSTHfarlT1kaTvcWlmIPiMjmB0OZRyLmDFU+jQcSGASn1DP
         NDwSeJtQVLw+7vk+G144Y36xSwFLRxrvmjAj6qAd91RjQiMNNJFbz3v6GTG6m6YufMSy
         34Tg==
X-Forwarded-Encrypted: i=1; AJvYcCW9qUGe9iSEAsCocqf5iCEPASssEi9mWIfJgBc06VQYSrFNtP5v9IV5C4HtRJPV4NeGmX170Qd8lf4d@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2m/h5TZ+BD+qNFcHJBxNTsMSdvV2HIlSuHwimk/UzrsxrMx/A
	CtG92IGFR0YIidy1L8vosfdCM1VfmGJlscW63Nui/aLPPtmlK0ClGggIKGJs4NdI01BaD+vPEVO
	HOfcQw4qStS2uDK3ypiVknphzU0ptBnA8NG+yRCWj+0gxLFrjgxW5wuT/7wz365me
X-Gm-Gg: ATEYQzxctBKbuYIpe2qo39y+uPtgzsRygCGZ10rK7PAxRQdJG6q+7+JKLxymMsxWgUJ
	5qYi7t4FrkHXVIIatGPh4Ahm1iz1qGrq1rn5SMeNt/nz/PU2RTOOBNg58Ikg+CoEf2WxcOiJC4D
	OsLu115CfOwzruCVTKDjSX2oEsJ5yAnsZ2cDpIbHuBjTxPzM9vL5YD8t/yKA+5OlrOqRLptQsrS
	rZVaszXWDLuI/EpQo3iU2fHp3LlLS5W2gEWqv3pztp7puRYJRo+C73uSJ0Bwn/t6spIXdUFoBHn
	4UxrCb8At0wSXrKatUllK7X0jjEkNUmZEJcIxrlOsh76tvrHJrtZ6Bq37ej7bZGYVLn6C3hbWeu
	FaMNFUiA/XxF5NGVyeRJRT95dKpT5gc8vjnSsjk9oOyTNkqc062bQJ80rd5zBdalD7LCEOQAwuQ
	==
X-Received: by 2002:a05:6820:62a:b0:679:a560:cac7 with SMTP id 006d021491bc7-679ef7e5978mr1648681eaf.7.1772081544732;
        Wed, 25 Feb 2026 20:52:24 -0800 (PST)
X-Received: by 2002:a05:6820:62a:b0:679:a560:cac7 with SMTP id 006d021491bc7-679ef7e5978mr1648669eaf.7.1772081544385;
        Wed, 25 Feb 2026 20:52:24 -0800 (PST)
Received: from hu-djaggi-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4160cf239e0sm978431fac.1.2026.02.25.20.52.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 20:52:23 -0800 (PST)
From: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 20:51:06 -0800
Subject: [PATCH v4 1/2] dt-bindings: arm: qcom: add SA8255p Ride board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260225-b4-scmi-upstream-v4-1-50cfba9e6a0f@oss.qualcomm.com>
References: <20260225-b4-scmi-upstream-v4-0-50cfba9e6a0f@oss.qualcomm.com>
In-Reply-To: <20260225-b4-scmi-upstream-v4-0-50cfba9e6a0f@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>,
        Nikunj Kela <quic_nkela@quicinc.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772081541; l=915;
 i=deepti.jaggi@oss.qualcomm.com; s=20250501; h=from:subject:message-id;
 bh=QnmqT25GQywckMFAOnXMqflitvwpMCh13NozaygAWDg=;
 b=oUVCwuFWJgpitJfbjxQD24WtzSepqs8Y6OnE3bXo0YVrsI7KtqQbty5125SOY35hJ7E58XUQS
 TEeUsLlNXNHDQ8mD5gbtlgh0abe1LXpp1gWMo6Rh4OPE5eoAqaY3yFf
X-Developer-Key: i=deepti.jaggi@oss.qualcomm.com; a=ed25519;
 pk=+b3H5UC/u0pUK5+btJ+35nW+6vKwJV1CfjJ1CJWuOZw=
X-Proofpoint-GUID: O63qNWgLcoi5O5yhuwLtn8VrFyeXrH20
X-Authority-Analysis: v=2.4 cv=Zs/g6t7G c=1 sm=1 tr=0 ts=699fd189 cx=c_pps
 a=lVi5GcDxkcJcfCmEjVJoaw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=wDsz3shVdOXW4ZV74lIA:9
 a=QEXdDO2ut3YA:10 a=rBiNkAWo9uy_4UTK5NWh:22 a=TjNXssC_j7lpFel5tvFf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDA0MCBTYWx0ZWRfX5n/FIjt/RD7k
 s+Kh5pZtqD4HMolL/NDU2WoaVh5pPc68vK//CczbCyGyyvGmyOIgIBWzcgBJnSxd9FT/4O41los
 zY5uZhe7zRmgftM1f9dPbdj42MIk51GQuez2l160xm0M1szLw3rZlhG8kL6nK1vZTQ00AiJ5DqH
 prTFKliadq0FLp8ah9xHDDoWHeRDR+0y8OEfIuz5VQMDyo2TvNp38XsEZQGoTyfCaeHyPnhq2EP
 qKQb1qRxKBouABOlV+TBMMVAqBcrnkS9oLD/OWjroj7vXwlVGtV0gJJPqWXowFqulJhVEQJbcrd
 l+5s3ruNNiIAhHrvf6ehy/ISVQrR9+bixgKDv+EEiqPpwyHxa/lZnoj53QV9AeAT/rpcZ8g2Yia
 F3t9n46blKHosKglHLMlkrthc7dbocqNIkeOr6jzT+er+A86LxKwBRX1OGQgcURnUAfWNvGV5Vu
 YlMntu0csX7v/fDMoQQ==
X-Proofpoint-ORIG-GUID: O63qNWgLcoi5O5yhuwLtn8VrFyeXrH20
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0 impostorscore=0
 clxscore=1015 priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602260040
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268588-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[deepti.jaggi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CB9671A0E80
X-Rspamd-Action: no action

From: Nikunj Kela <quic_nkela@quicinc.com>

Document the SA8255p SoC and its reference board: sa8255p-ride.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>
Signed-off-by: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d48c625d3fc4..f9a04769e20b 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -891,6 +891,11 @@ properties:
               - qcom,sa8155p-adp
           - const: qcom,sa8155p
 
+      - items:
+          - enum:
+              - qcom,sa8255p-ride
+          - const: qcom,sa8255p
+
       - items:
           - enum:
               - qcom,sa8295p-adp

-- 
2.43.0


