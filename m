Return-Path: <devicetree+bounces-274165-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDvuFIyBsWmjCwAAu9opvQ
	(envelope-from <devicetree+bounces-274165-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:51:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F23BF265C21
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:51:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB73730BD1CB
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:47:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4BAE3DBD5E;
	Wed, 11 Mar 2026 14:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NhRPigTw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hjRzLPNY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652603D34B8
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773240437; cv=none; b=C+OHspwyOr0gBt7z+gsZE36b4eNASW1SnTImY121jP9Q5MDm73PWbBI3YAUxUqya/bgk9SDuVw5No4Srz+Vdxpkrq65w7A8DFLL/3fKCNUMuqjKHm/93j5OGjL7aYQnozyKUiQbkQYOWvqartk5KUo6pGdwHXbJoYGCTkRnOdfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773240437; c=relaxed/simple;
	bh=ljNAanNsQX3haUgfK2VNArM8xCcxc69jvU1l9y/w+to=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tEDXJRAW3goTPDT1kt8hDSThqCmhfrIQDwukMlMx1Ff/RxB9U4OGEd085Lt2Iu58DBCnYoYi91khPyNBHPkWgh+l11Tu36kxoRZfxFNOIG/1rQy4NMqlWSdwDv49tLJzIvYYCjgG+FnSoxQz4DM3jQTffwUUqYstbJxbTOaC+3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NhRPigTw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hjRzLPNY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B9jS8d2179445
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:47:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	44Jhd6TeZL4PPKiVLdK78+OKBcNZjGbvEfGHis15NrM=; b=NhRPigTwHLih9EER
	wE5ryBxfWWhnaoh22yjPkhScdiqLEKwf+Jui3KfuX/juZjFu0a7fN81BudsexAhD
	I9sAFYNW9yqisovv7p18UODuVs9M1Ix3WFQxUjGSCr56+4kCs29oVeTZoqelIRJE
	o2Gf8f4+UeG0TVGrqcOECHdLaTIV42Gqew1gER+e1dNvnTXSTrEy+h7Hxj8yL3+F
	6pI0ftbafqYyLE41UHSoDhC00nOY5fcATI4Yigym/lmgtneXrhkvT8LjwoDxfVtv
	ZA5Jc54jf7TKFKBCAANEcAKmwsNhyrjKSPrz3OApGHn0DFzCo89Q1lHX3Qs91cXG
	XdFGFw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctqvsv09j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:47:15 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5093b19111fso69522451cf.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773240435; x=1773845235; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=44Jhd6TeZL4PPKiVLdK78+OKBcNZjGbvEfGHis15NrM=;
        b=hjRzLPNYnIOtwN8ib7pKFvXxtE96vntFUkEYgWxtpzFWf1ocKY1KeXREknJypf1Iwc
         n4DJaZZORmR4WYLQPcNxpHq0cTflWBg2QRhovhWMtAttFISqtjqnpoI03EOjfEc/yCLp
         PLXEFzq8vODK0bLNT+YPLWvBllF3tPKRXYWRgKJT+hxF4zsxuLnIuxquu8ZWU0EhqQsB
         g7QU18+DUp2ElXHoftX5zWdmoddOklhQFyGDLKyWZQaLnMh8KJdrpHSRq1rD1FCUpVgK
         CLbmRzDWLenzudLmyaTFnkX8GGJWJW9pMZFfOzn2qF9jL//QU+h7puHuQN5HClUSyE4g
         plPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773240435; x=1773845235;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=44Jhd6TeZL4PPKiVLdK78+OKBcNZjGbvEfGHis15NrM=;
        b=i/L+Y5uLOqcSnbSpYnuKVK+K6h/Hgshs9eiQ1kiQNH65w0IDo0w9/RRRFQD4rkQ9du
         7mt5SmNVSEHie4mpFq1vou6TG5v05XnkdpNCHa/GIjxKt6UoH/M5Wb/oXrb8bN5ih6nq
         cVHufvOmfQnMmhGzoOeVtxbzVAr1pzIo42WnEfhY7t8cALC7KE5pYXia3yb4DHT04ll0
         5grncZUU6z8b1dhJJQFWScc1OtlF6CHYm5yPVxwBms3YJauFBjCUuJ4DFkBIb8TSkCwi
         4+KfJxrHCl90CUArvuy41QuIGsU+enVePxluIi5RLYC6UIPnsrPWvaIdfvbo0/xDlHlM
         b4DA==
X-Forwarded-Encrypted: i=1; AJvYcCVfk4MF49Oy6IwQZjdsPR9KuIMkA0E6JAeoIiyV59Aa6eM4cSnfuDUh0gNX0dq1dhN1FX/8CNFLPj24@vger.kernel.org
X-Gm-Message-State: AOJu0YwV8iZ2GmusFXnhvOyfCIxRzi8N2vn6ROVtklbpK6Sj2SR2RClp
	+rQlqcaPUOSQE1C3ybkRKpId89HMtOWpbPo0eekCIXswkDIX/AqyEWnx568zeyHZuQY9APLUKJR
	1kKE3cC8xKldr5Ncq57dRTdWqtUCtMncj0oiajfNb9oMN4Cy5xLjcQZLRj/MY2fG0
X-Gm-Gg: ATEYQzzTeBJp17u12snNCtN1z0XCdg5IrPK+ZBahFn2lUoizL8hmLiVGr5fBVHmIb+0
	/2NSsL6v87gwiwzXf6jwLqnPYCxRuy30mUMp9zd+/s8XiXYhfP/2bivJzfuWQcQghYbRJo62jAy
	Uo7Zy/ImNTsTUfT/Xy8c72fFHjM7gMz0+UIeiFHjLLXxRt9Avqo370dVudW6M8VPuJhDe/nfmEA
	iH4F19AA0jUZkNT8lVU1wYUIR1xtkH3FL3RN9JBUmrVekVWP/GrIYaYmJ5UjGCInfTlKr2ZSNem
	HSmc2ENUdPKuqYz5yhllH6fPDNfjGN8JgZ2LoKQRfAp+ZqhYDtKyU789HsaRTt9dBTMKTEbU4wx
	WFK/TG5k7rx7g2k4pS+OH4tDL/L9e8Q==
X-Received: by 2002:a05:620a:44c2:b0:8cd:79f2:dc36 with SMTP id af79cd13be357-8cda1a00219mr344392085a.31.1773240434590;
        Wed, 11 Mar 2026 07:47:14 -0700 (PDT)
X-Received: by 2002:a05:620a:44c2:b0:8cd:79f2:dc36 with SMTP id af79cd13be357-8cda1a00219mr344387485a.31.1773240434091;
        Wed, 11 Mar 2026 07:47:14 -0700 (PDT)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439f818d61esm7992501f8f.8.2026.03.11.07.47.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 07:47:12 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 16:46:33 +0200
Subject: [PATCH RESEND v6 3/6] dt-bindings: clock: qcom-rpmhcc: Add RPMHCC
 for Eliza
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-eliza-clocks-v6-3-453c4cf657a2@oss.qualcomm.com>
References: <20260311-eliza-clocks-v6-0-453c4cf657a2@oss.qualcomm.com>
In-Reply-To: <20260311-eliza-clocks-v6-0-453c4cf657a2@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=871;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=RKCYGsJFqEQSzos+9ejqQfu8ULxnCzq56BctAEfqjW4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpsYBazkQCjD1jdlLoYhC/2bidEor05LzBe6Pp7
 B8U64+yLeuJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabGAWgAKCRAbX0TJAJUV
 VnYnEADOAphzFyZKVCYegJ82QLijWrnVnJ87tBA+Hyyep/9t9juBWB3cWEwU8iqhdJ7RTrb9dUT
 DZkCBuvwQ+hkfVGjkWrwAE3pqotRu3ezWYwQJFDl7LQr2zb3PaN5s4dX9gT48S4GF8fpsDTwbP1
 mav7Zfj+HBMXEeROa6pFJ0j8ubGldybH3BIAsTIcWhbrnzliyAnRaZKCgiWa8UydA/VA2N3LuIn
 FpA65ZObUgfjg7iYxaBC91rHUENWCIfcYBktlVa5hKY5hbIhZ7iYF2gQNyWUyHgiRqMpsmcTJqK
 PqBWat2bn68DOb1Ngcw4/yE7SRETBpalOoDFi3B3KJ96zItLZ2yr6FNnWE5YYjQ7wElxMUPRJUU
 JAFbep+JhSPiIuN4QDTTzMbzEPOcasJQd/VN7eCWhjJuqpbrqQPwkR86pc1pulsLOlRiaueQWxi
 jTI7mI3o1zAmnn72Of7+Ks9sBC8MDs29obvvdUsb622ywxPh01MHO5vPVVUePlm4vkiuKNILXG5
 yiYqonHKkSFeVNtp0uNhTT2m5oYK3+7kBhnaBBRfQyMZBbwG/lPXVYQmAE+V4kfOyiM0zstY+VL
 GOW4msG/cAZ3Lw2bb2xF7vOg+yKzCTru2XMQAADHXQkWY4cMsH/LOJEdfsMPudmaBMIyf049YNR
 eWB632XSMVZw+dg==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEyNCBTYWx0ZWRfXwpJ2Neo2yQO4
 9nYzkLZxE5WY8pKWZIw7dqr8mFQ8ccfAc+5CStQpuJE1syIwyZlVLtb7G+RK6zW0jDg+zIjLQUq
 v1b894p0yZ22Zg/dvHjJx2cNGMG8nTn7EqGJECvB97dbE0rcJGWvEQhNVs7EMTEXlAG3++6KS5S
 cCZP0nyug2Yf2F3E6shyGH+EQJ9LuyyXpMJS1k14rY1t2xBC9Kypk2pkPz4YB0h5NCl2i3jvuCx
 qzD9QYXqxs6FqLJCeepV1Pvw0km4ohBuCKcxKwkPEIKknkMtHl3Wg9kEL7z/f3q/xoiDm6QNUnJ
 aQCWrdMTz4RYitJP5lHrU/dAkRQlCDbILBVHRPktVeDsOsQr/qDZqbNLWF3x44ANK9JT4hky03p
 e4p8LgMT+vSD0zwatpQVmiXj9tNi3VORpzOlOz8G4MuB3KH53YvHbSJ3OplRxj5c1jBGB5ZYg1Z
 tFUyBdiE0qkhMW6We5Q==
X-Proofpoint-ORIG-GUID: XJEBpL3SArlU7txFalSO2Hy7XQqBw3Xb
X-Authority-Analysis: v=2.4 cv=Lo2fC3dc c=1 sm=1 tr=0 ts=69b18073 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=PJhJesWDv2iQC9CHGcgA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: XJEBpL3SArlU7txFalSO2Hy7XQqBw3Xb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 impostorscore=0 bulkscore=0 malwarescore=0
 phishscore=0 lowpriorityscore=0 adultscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110124
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274165-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F23BF265C21
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Taniya Das <taniya.das@oss.qualcomm.com>

Update the documentation for RPMH clock controller for Eliza SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
index 3f5f1336262e..9690169baa46 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
@@ -17,6 +17,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,eliza-rpmh-clk
       - qcom,glymur-rpmh-clk
       - qcom,kaanapali-rpmh-clk
       - qcom,milos-rpmh-clk

-- 
2.48.1


