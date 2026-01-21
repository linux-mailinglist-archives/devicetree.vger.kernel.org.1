Return-Path: <devicetree+bounces-258100-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKteMig8cWnKfQAAu9opvQ
	(envelope-from <devicetree+bounces-258100-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 21:50:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 857D65D9C6
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 21:50:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 735A378C9A5
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 18:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 345EE41C2E4;
	Wed, 21 Jan 2026 18:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XbvDpOU8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SWTuXGLi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4094C41B361
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 18:36:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769020578; cv=none; b=hPoN5USzB+PVA6skAvvG53ydFDvkfAf50S65FVZBsjf1fBHrwZdJMrbJOvvDyeqs5LGVV42zyZxFSeK3K56oq+0P6c7WTbES6zlj73Y8PGGbVrJQebj+q1P+G4Ot5c43gKTWO/EMosLvaYg9piNjd944GKJzy/6V2LXnFtQh0ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769020578; c=relaxed/simple;
	bh=ZJDwIAd9ubN0TqTyRgpQBA5ygn+ZkTIIsUJvbfJB7Mc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OrEx/PBSXRz8MGaAyBtH2LhsCRLKUfFzQi+fvDZC80/J4CG2WL4V0YWgG4k+6y4PuABU+1nWZk17Qlm5kS7taPI2b8/VAx0E/ays9MDvDqK37es5AaQuUwbBA7I3bAyW9vI+dbcrutRleFKSgLr6y9oPr6Ja+UHsvdGN2RiKdUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XbvDpOU8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SWTuXGLi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60LACT2H3229045
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 18:36:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qdASJwP++iHL0ezr6b9geVxlqJ0ibz7Ub3TyWiBaIqs=; b=XbvDpOU86n5wBPID
	dmE6Rbt4D7ogOT1+ItYrqi/CZAPYAt75c6zD0PR3T2HO5Dj0g3GFJhZkX4BNght1
	VnnferdgfJZHffaV5qf8kNFi+4SBFB8IwZec2T13QelFYlMK6KLJ28bRjzOm6lpp
	/AAxCcdrT/lqOB1CcvBdoD4yV5ZJXGyayywrNnJTI9TUMTOuu7/MmsZ2cHFrecvI
	nmAdv/irzAkJXYA/SEpf3BTjWss2Ojmwb0tILAo9IF5lQAHIhRS96UEvfnMeyetu
	/UGft5Thwtj9bpoiinMhGYn3xjECBRTTRz9q6UJdE95Aovht50qGypAC4za2fDts
	lLIcOw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btqvpaxb5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 18:36:15 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29f2381ea85so2964115ad.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 10:36:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769020574; x=1769625374; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qdASJwP++iHL0ezr6b9geVxlqJ0ibz7Ub3TyWiBaIqs=;
        b=SWTuXGLiUdb/LSuZNOlSBWVJBkJdY0k7VHfrM4KAlOaAYImkgdI0Xts9n0bst2d2jM
         95IBQiTDpPxTdkUAsP/cu/obUwyetqmSv2v+ps3uC4inT0pa1pk0AwVBFPmGyoNWhdEW
         xyZSkjKTUlPTIHsC1AUGPQHGT/91bLc+GpodCqV6Kl7Vkc3bDM/H0uk67ic1fP8QwHFW
         hk1v9WK+EAkb4uy2ojmaJpquAi3nnXRBEpP/nzmTo7b5Rh8FOaZrGBr326zyG2ohWeAK
         R8fpicmSsuZZrvCWwrBMRF/EP7eBSSkUUbVsFi++DcRJP4YicXVS1Fz+CKwfRY14YltJ
         vtBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769020574; x=1769625374;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qdASJwP++iHL0ezr6b9geVxlqJ0ibz7Ub3TyWiBaIqs=;
        b=AtHmvlSfRtV40VW7jcbULNmqXx/IR5ChfLNAEiduZxiJtOg5/MiE1MKe9Gk38ewlEO
         FJEkxmS0fR/4DLsy8slwYbMzss5e4G2VAwXrsx8MQ3/RhC6gdAdTur/WKc6n5T4DNLsT
         2R9YJ2DrVUj+b7rEwo4o55IJ8kvoL+7d0vKahTJri/SzPq2u51F9QQ3q3ew1Sik1FpX3
         Y7QdKpC9Ox7wAurRGXU3Fz97pUcrM4V3NTOkXBcr0Z27CO1Zn+DrbONQCSe0NbOuldz/
         vG/rjIPE25Kq5NFtNo49PvY4lO2LMAdim+g47+K9PGNBTg2ewAxUuFT066Q7VrkNho7D
         smKA==
X-Forwarded-Encrypted: i=1; AJvYcCVmXezBwwT6Asw7agH65DfJg6Jw5UE6p09f0wVDqpG0KMapiACWs3EvxHNzJHSHIVxoQcQToaCn9SZ0@vger.kernel.org
X-Gm-Message-State: AOJu0YyQALSHsgnnFD9+IrnCMW7SIFMKVGKVM8FkQaRH582MnIvr46Rm
	XwJx0f19ueMiGFPkqz58B/LRAm9eba/L2ClLLE1+fDd8KPspshbJFtEQjsMREN3+UCPd+NRDaZD
	kSqkY2hhUdD4A1LbpyHf/Dz2LzsILkl2exYiZJqy4MEQJDZv3IBUKqv7/Vj9FKswf
X-Gm-Gg: AZuq6aJN2AcMwRhRWPa0l1dPqL9+JQhj+9V1nqVecgEAvdjKG8+K8dimXtxpojfHgt8
	wlK/8tVdj8JPPXQLJ/L1HdsZeheKSwVwSEUCKo6Ta4pxyR+GCLGNHPL7byemV5y8NvNQlAYrI0w
	m8A1EzaTPEgkzwOb5GfOAww8uvmIn/6xnK786tGt1cQJb7I/YQqMVWKarxV01FO7wATCdLud//U
	k9yJNDOGRL9jTjs9vEaNWtSIGSFU2XcWIzT3M5hGMVco6s0aqncxGv0fVl3w45oIc46sfBeIvzW
	pWRpUw/pkpsDQ6M7Ha8cpRIp2b6fc9O1a1EuxjGRZL6uCGLkDquo1G6/aLToRVreO8bVAKWljbm
	W8+bE+81izJeqwfA7Z6u41igOkIllYtceYkS3K8RllBEeuAW0GWoCUYdzcDyOUy/x6E3wSXTjJ0
	QHH9CQX916r0HTO1kO5bL2aQQgMCK0lg==
X-Received: by 2002:a17:902:f545:b0:29d:7a96:7ba1 with SMTP id d9443c01a7336-2a718918720mr173664785ad.46.1769020573868;
        Wed, 21 Jan 2026 10:36:13 -0800 (PST)
X-Received: by 2002:a17:902:f545:b0:29d:7a96:7ba1 with SMTP id d9443c01a7336-2a718918720mr173664595ad.46.1769020573365;
        Wed, 21 Jan 2026 10:36:13 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190eeefasm159551305ad.43.2026.01.21.10.36.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 10:36:12 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 00:05:11 +0530
Subject: [PATCH v5 1/4] dt-bindings: arm: qcom: Document Glymur SoC and
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-upstream_v3_glymur_introduction-v5-1-8ba76c354e9a@oss.qualcomm.com>
References: <20260122-upstream_v3_glymur_introduction-v5-0-8ba76c354e9a@oss.qualcomm.com>
In-Reply-To: <20260122-upstream_v3_glymur_introduction-v5-0-8ba76c354e9a@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769020565; l=866;
 i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject:message-id;
 bh=ZJDwIAd9ubN0TqTyRgpQBA5ygn+ZkTIIsUJvbfJB7Mc=;
 b=pNk3qujcsPoVvA2gkikIEIOwgJya+fZutB9uLnjSpjovuKSH8X2UvSVwJ1rBnjdDpbFXxDO1o
 alV4A7fhNjoDIckVryy1hq/05RWquWya7N/f3t0pLLl+iZ56EoU2osh
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519;
 pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
X-Proofpoint-GUID: n-yh2XxldJitBEP9ZqanrTVn6BNYBTCH
X-Proofpoint-ORIG-GUID: n-yh2XxldJitBEP9ZqanrTVn6BNYBTCH
X-Authority-Analysis: v=2.4 cv=cdPfb3DM c=1 sm=1 tr=0 ts=69711c9f cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=5v-pcvSp8lN47LZtJicA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDE1NSBTYWx0ZWRfX+uXCjCx27xGG
 EEXuju6t8Tkd2fqbv8DOQjw6LIfozBlCU3uSX8HyGWD1Kzav72RWfW5MTFffujDnhHx7pHe3tRW
 o++7SB2Da4iy89tTLBSPac3Z0nLwEuHtQyETYGqMcxvB0cLXTDuXp38BtbDulE+/IY375ZipnXE
 tJlfeTgriVC3/eNp0ZzyVhTNzdR1ygfHCLdMvI3xxJWDTCzhm4lPU6zd4rFRUu4sDrP6onvDruJ
 LwHZJfyRJBe7aVwb12QbEVsoGBoB67s0RIz+TL10aXjvCTvjPex0zjJFHgVz7FXmEC8Yq7bmShJ
 /pdYnYOVN1DUya7HgsLzgGR1d+l5TPCszeaLcgz7xlET4fimPKVKsRGcf78KW+7qpwo7wLXKBfy
 dHurhjBQYdT/MNCyxM7lXEHHpvfbVE1I6YOTWPKJQTOyrNjE/MdJE5pLA2GaMqjAb7e9S1GAiJ+
 qsHw8D3dhYPzltSNSxA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_03,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 malwarescore=0 spamscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210155
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-258100-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pankaj.patil@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 857D65D9C6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document Glymur SoC bindings and Compute Reference Device
(CRD) board id

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d48c625d3fc4..5be53b50f5ad 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -66,6 +66,11 @@ properties:
               - fairphone,fp6
           - const: qcom,milos
 
+      - items:
+          - enum:
+              - qcom,glymur-crd
+          - const: qcom,glymur
+
       - items:
           - enum:
               - microsoft,dempsey

-- 
2.34.1


