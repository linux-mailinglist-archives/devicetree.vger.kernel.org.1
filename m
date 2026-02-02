Return-Path: <devicetree+bounces-261675-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHLMBgJUgGkd6gIAu9opvQ
	(envelope-from <devicetree+bounces-261675-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 08:36:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 828E2C9375
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 08:36:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DCF4D3016812
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 07:36:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F05CD29D29F;
	Mon,  2 Feb 2026 07:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iUSJomn9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Cflg2KQg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 902FF29CB3A
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 07:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770017762; cv=none; b=FLSt+wjY/NJvMwPmmuwIB4Gki3K0JOLpd9vpU9hB+2h9fLY4yhaIttk3nWGvmuZhgJNlCfw8smNrC8DLtx0OLe0R4xTX3oFQl4RPHduvMGBT2KOqkOeeXwRhXkmaojXGi8olfcGh1ReLBm5cCl0s5OLV1Hn369Or2zo++1z9aJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770017762; c=relaxed/simple;
	bh=1HUUEjHgDcWjIk9i1IbMh0KQYREmSO/89fEdC+ob1DM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cxJfmUSFvLyIwPgKydhzh1qNZ8AMLpMWi66psIOJ/000LyTNXkGeu7UVP0CmtRPSr6XoNhmC/pA4JlgiCYAvonW2iEg6rQVEjjIn3yrdWKPVZDE0H9WYwTg7tdFge34WZBCCtgR7o3gXYGX/SlVIqKcZCKmnXDIw2rn6gAXMapY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iUSJomn9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Cflg2KQg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 611LguCl1181011
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 07:36:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=So6nutfOYbF
	5hqF4ny0RAy4gW3NAh5oEnV9tydHlSvs=; b=iUSJomn9igs3CU0vXqYqEGSfzh0
	Pz7PqSWB4O8Vp23BGAcJcD7tg+u0XvVwHqQQQyIdnkjJtlAk6CpKXDf9ayclL7mJ
	T8Bx89ifJTbPPoGCcJVvXki/FxgUvuT5wvAyEr0A9ehcha+Vpq4JR9AkrzlPCejI
	ZNEIhs3IH29rzwoqUGkQGlOB+Z9dQK+suuXs33go6phHZJDHn+P/DgCHuxKeY4WV
	ri+h3BXOYKSsLfRmrj/Q3xUnaZKmIv9QIauBWFT0g8hEJuEgYwpEXFOpfJYNFIB1
	hfg2zHpmIEW30ESfhYxkgfUWu4ac2Lt37mWSPQYK/XybDQP/jmueeSLxx1Q==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1arrvdce-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:36:00 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34abd303b4aso11327820a91.1
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 23:36:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770017759; x=1770622559; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=So6nutfOYbF5hqF4ny0RAy4gW3NAh5oEnV9tydHlSvs=;
        b=Cflg2KQgoRCkRwy9RQoNSAvOog/JMvqsA7NJYdnbfpCil+POhN3l1zHiHMHMtYYuxh
         h2wpLU0ZZ3u4JjvPqxa8wXJMqTN2WeLwKjaxLjUdij2hTftGSlTEpW57Q9Uy9o0oJMGe
         g6OIyWE75snEvzoP0mk6QX+FUJFqP6ldFC/a6xhJgUHvb8nteQzv/seBNqG+tKq/1BOz
         1wQvXF4tIsCh1SUAOXX6yqdid5tPaIIT033uIh7F8HQyyZsXEKKEOKzkk68f8IymwLu2
         z5cQvg4SU/QxbvtI6hyDU+PPtW0oIdULWiEKSNKgsSlNpmfXqGet/ldsHkDbviAztSya
         SnBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770017759; x=1770622559;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=So6nutfOYbF5hqF4ny0RAy4gW3NAh5oEnV9tydHlSvs=;
        b=QG+1bM6iWDUHdOLhlh177AdXo7ztdzBqTsmgqUov5QNuRD7+pPFNtxyKD9YDoTN1WY
         Xj19lOWnLXwrCrpkZ+uH8YIBE6UV+jenpN82ZUPQr3wW7R//10IEzy2tl8EaMhCfyiMw
         6k8aI5p6MDwE3m2dkr/izFpNz6i7XlE2G6cpqyDkej80E26Vwj7m1XzCE3b7A0HaVIk9
         i+L0gL5HkHS2WAt+atq5F9oUfAKts9usSs+YTqR5jq3C+PSE2QJp5WW+8wtBOYDvyXv6
         ICMI341Nj9/0frKZql7RgUlS/PvgWhnXl57/y0l7F0WlUgG5Q+xTr0lqnxF/Fe9oOL2C
         +Lew==
X-Forwarded-Encrypted: i=1; AJvYcCX9HhRuEmXIZtQTS2Uo9BWkT+OgBzXJf1an9gBSrXGGLxnLSr2dAD4r17w3NMXaGzW3H9ydFNtMxqeP@vger.kernel.org
X-Gm-Message-State: AOJu0YwreKlEbErVSnrmM8FzAUWULO4Cb7pgRhPjXAeQpW+QB8AfA9wD
	CPwH7JBpHBTkDcPePMqrQ3PE08n0spcTtflJscJtJOpcd3OktqBXhwgp+a7Ez1mK+fc6vQ4VeUU
	3FgQsQtjJ4jfgbcf+M/XCqmimkXp7EIbh6iTlzQ/HOQ9dOmSUrb511RFQSYQFxOZe
X-Gm-Gg: AZuq6aJZ1dfDX9M+UW+CSWsHCgqA6X3AKEyPaV7PYXYw6XAV6lpBUS9PWacjQxo5Ukn
	Cf8MwE7/8/aVVBN1FgIirX1EJgvMxZz1zOF6gx2XGH123ASF6e9KlXrAA4SYwUcisu5sKKKcYKd
	GmF8Ricrt8Kce1zrHd1/Tfg9HHOK5WHpb1EoGtAno49NWL7O/BEbkUFvFG5RdkJuAmaagwt7siO
	uDhIX+Qn8mSVGMfz+sW03nx4DW0R3hWPqexjj4lLkg3o/BHBaDbBMPB9Nle7ZAm92JVZJBMIDCV
	bdwHz2hE8alT0goz+geCcAylp7Lqg94nkyBdhjmFApPKH7sikoS5ufrXs8C9SsdnjZmL17YWw4V
	wagYcsxrlNaENiQpbBYUfsSYJgWTj8KsLP1yAlfJ5dA5chLJWzKRW/5O8V0MIgHofeH1zrxrBCF
	s=
X-Received: by 2002:a17:90b:4d90:b0:34a:a65e:e6ad with SMTP id 98e67ed59e1d1-3543b2e000bmr9911175a91.1.1770017759461;
        Sun, 01 Feb 2026 23:35:59 -0800 (PST)
X-Received: by 2002:a17:90b:4d90:b0:34a:a65e:e6ad with SMTP id 98e67ed59e1d1-3543b2e000bmr9911170a91.1.1770017759015;
        Sun, 01 Feb 2026 23:35:59 -0800 (PST)
Received: from yijiyang-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3540f3cc71bsm14129847a91.11.2026.02.01.23.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 23:35:58 -0800 (PST)
From: YijieYang <yijie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, yijie.yang@oss.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v5 1/4] dt-bindings: arm: qcom: Document PURWA-IOT-EVK board
Date: Mon,  2 Feb 2026 15:35:45 +0800
Message-Id: <20260202073555.1345260-1-yijie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260202-purwa-v5-0-1f5a93578802@oss.qualcomm.com>
References: <20260202-purwa-v5-0-1f5a93578802@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: L720YH5CPnxi4PWCd4h6RM-rM_l48vzK
X-Authority-Analysis: v=2.4 cv=FNYWBuos c=1 sm=1 tr=0 ts=698053e0 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=NXHrG6A95BBPE0CoaowA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA2MyBTYWx0ZWRfX1ZOwoLbMIAIQ
 TdmFuWmtUC5W2Ok/1uQ/oepddIu0NxsLHhQtepFObnmrGucAB5ePVe57liNa+20548HGwbBbFer
 ApqQ6OEcbI7bnkpcOg52jKuVqP+/CsmhcFU8EBVOtJ+Pml46kOPswIbLxgkiQx+1VlNMmExvFr6
 PPd7eVKL2pBVmeURVmlIUMvY2cZ6kXdIkrQo4RXJjTmQm+vkw32X0Yr95IbiO4/S8/t+3Lckv0N
 /hs3UkM1GpYjanRxNCy6wEQjmoSNZtz9SDCRIoWVG48yNwe20/cZJeoEoJnwMWLH45gGeXoH88O
 zQBM4KqV/VgkwRiBcPReqi8gv0xfKWuiJpGDse1tC28Dv+2bXg0nbN6IAnUuSZv/Oo3q26cE0R6
 udAuY+uRkkI3kkPiRwsqK/iXrW6d37HaM9rFXCiGvZVNzR9DgHw19EeBLMlHvqnnhOUxvc5FmNQ
 a8RKiI/prsBuWKQv5bw==
X-Proofpoint-GUID: L720YH5CPnxi4PWCd4h6RM-rM_l48vzK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_02,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 spamscore=0 adultscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020063
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261675-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yijie.yang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 828E2C9375
X-Rspamd-Action: no action

From: Yijie Yang <yijie.yang@oss.qualcomm.com>

Document the device tree bindings for the PURWA-IOT-EVK board, which
uses the Qualcomm X1P42100 SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d48c625d3fc4..59b8a4267c14 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1122,6 +1122,12 @@ properties:
           - const: microsoft,denali
           - const: qcom,x1e80100
 
+      - items:
+          - enum:
+              - qcom,purwa-iot-evk
+          - const: qcom,purwa-iot-som
+          - const: qcom,x1p42100
+
       - items:
           - enum:
               - asus,zenbook-a14-ux3407qa-lcd
-- 
2.34.1


