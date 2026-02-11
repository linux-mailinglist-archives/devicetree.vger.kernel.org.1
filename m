Return-Path: <devicetree+bounces-264779-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKteG3WEjGmfqAAAu9opvQ
	(envelope-from <devicetree+bounces-264779-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 14:30:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 932DC124C12
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 14:30:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4FC4130293CF
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 13:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A078231A21;
	Wed, 11 Feb 2026 13:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MqdGGIQD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NsTibFTQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753AB25EFBC
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 13:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770816601; cv=none; b=R4DJ0vNJqD0TjYnZOshBt3+Ta5IlahQUOZ3h98BG9/YsuoIaQG7W54Wz3YRR50Rbe76MNM11zGjNVwKMYFmAB0o0kaEaMM8VfaoLxxQvrgBNGOCixuGkpqnXESwXH0c8czwyEaEqvQi0/yDVt8KmaqbLNofduOLpMaDqb8yhpws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770816601; c=relaxed/simple;
	bh=O4eEzxfJ06dTN4TZmevXD4WpG9wx6z38RWNWZWKwQ5I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Y13sab7rpR8KGI9oeuGMx++jgX6ZQTsBiAeZbHGMooNdaFtbZPMz35EzbD9zfFCR1lY/Gava3Ou9bpO8KD/kBgQnIZ1J22WtzFwXWGU1qGrtBwp3mrB7Uia2U/2UfeSu7fJvB0D8yZymWLNyRCha/aaUCkFMAXYdrFUiLKMy7ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MqdGGIQD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NsTibFTQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61BA7j9E4127432
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 13:29:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Mg7jJNgLIUo
	B6hOXMTj2nXOzrwCGa394XSFokHpCUZI=; b=MqdGGIQDf40YjM7//P703kk6m4N
	MCX8+fyyA4ksYP4UJOrHespO1x6N26tRa6mlW3Wu4PCYpmDvFOgAZObv6yTBTw/Z
	PxLny9f4cplxyWe0SjbS4jxoO8Vm0qKkdGyTWdJW5NYK9ZfWsBwudfs7Pt4xZArt
	lwKkAel38gVUcFlR9fFW95JqU9z7kGYL/eWUhGzL8KZn8TPIFncOuVdMrezGiLH3
	RVcDhNDJCNOQG1+1znAHnwYyWqTvsZhcB7tZ2Gk9hlvP+9Rd1S7rPoa64+wOjDHk
	dO2MVVvejmuEZNp4IfoCmABFDQtA3HHL0A2f9HqQIqo1mFjwymNbu9VQNyw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8gvm1w87-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 13:29:59 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c6e1dab2328so973400a12.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 05:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770816599; x=1771421399; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mg7jJNgLIUoB6hOXMTj2nXOzrwCGa394XSFokHpCUZI=;
        b=NsTibFTQ+9BGaRT2YLkPf3gUrbn0piyi20iSGyfBuBgkuzdCk+lnfQsGP2XToOaxz1
         B4tgx3HoJ7DVpDOrSH8GH6IFypCCxeM1Fp/8Qtb6c+pouuyAO9Lc3RhoELcUG342gX2n
         6cmHv0TYIrFTY5i2+AMkUmkjeYCmNQQ2BGpEtZsDm9ZGsWjdfnv66bTjBVZZsuk2Kc/O
         IC2ASWpoueJMJlsDyxI2cpT9+JgeJ10zQkx+rm1kRRdOpel99xXhGC+88ur79J8oSgvP
         rR1gJa7btpjvVeU/P4lkVt2+HQSNI8fWMl1g/WYWXtKUoW9VPLfipAQth3BuP/jHMlPe
         BaFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770816599; x=1771421399;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Mg7jJNgLIUoB6hOXMTj2nXOzrwCGa394XSFokHpCUZI=;
        b=R60sbXDBaq+KIagOWVQdfk6xrQE8NYTNLurHtkUHayL5VRt1Hbeli4tx12BZ7ZFnA+
         I0Ew78EXA8/YICWXMHmdQvmLodXa3ecFwC5e2ym3WiGStgtpy0H1u32kkCUCtLDIJHnV
         yo4dBLolUTaiJ58uphVJjdlGALrcOEbrTj2a+C9ZGA3oPtR9jXPQy4QW9TIX1IlriUGX
         VsdJHW5d0ZYMNdBvKFoSTGavLE1KBagrcObs7ZUmDrm3Pc9WNKBXIYVAkIlMmNVvw58Z
         Z452MXFKwbBHMmIKwD9VlXQlML1G4K0hES4JRHhzc34dhbncQA3SdsLbCANUC8sIO0cC
         vqLg==
X-Forwarded-Encrypted: i=1; AJvYcCUiRvQuRe5ysqpAbv+pOXN9/Vn4WSROukHBmaBhvp3aHkUb62cm9sklYNvLtyP82OeHlD3Yg/0DSOg+@vger.kernel.org
X-Gm-Message-State: AOJu0YxPW0YgLdAUA0nOhvbrc61LGPAkUV/kTzwcL7Cig+ZpeLFrG6vA
	VgwTnfAYcBtk911e8WxIMf0GATRXvn9RHgV35/Cb1AucUdkeUQu6et2o4Wo9+yRx4OkQ9zwgk/5
	HR2fSVA/IbWPeVmgvNPjEKTjK1nZjGkV7y/UuGWdOP9Hq+WUputEncQKBv6ZbOFip
X-Gm-Gg: AZuq6aIIvHJ+9AaMWRQHrsTWB1Old5E+03ovCFVAs09NkHPz/T8NMOYO6d+Ebl59Dyx
	NtzADiphQvjjcx++8GpOYA5FryIOnwkOD67DCO1Ss69A8TlooIcq0fwizmVYQ6fVnCpva1QzK18
	JvD0nDfLCb8iil6Sg+1gEb19Ttmw5c9k08vK6v1qrnustSBZMovDUhh0dg0I+V+srxH5++z8P9w
	el7yuMzkOpZg+3aUP26pLCTldFSi1mdz9Icq0kgh7gOHYiCFt0FFAjbCiKFmbPpDpfBf921bLSe
	XNP5izGew83VvZTnrdQ+kabQOAez9TTK+R3866KfZyqB7rIToya0Uti30RNHRgH0a5160q90TAg
	gnrd9E/2LxcFKoigbmMVBbfYYzEbUH/eA7Wlgr2cjJDbaNDif1H3ZCqyT0unhhhgn
X-Received: by 2002:a05:6a00:7493:b0:823:9c6:1985 with SMTP id d2e1a72fcca58-82441634f48mr12870431b3a.16.1770816598805;
        Wed, 11 Feb 2026 05:29:58 -0800 (PST)
X-Received: by 2002:a05:6a00:7493:b0:823:9c6:1985 with SMTP id d2e1a72fcca58-82441634f48mr12870409b3a.16.1770816598164;
        Wed, 11 Feb 2026 05:29:58 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8249e84bc1asm2143655b3a.58.2026.02.11.05.29.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 05:29:57 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V5 1/3] dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC compatible for x1e80100
Date: Wed, 11 Feb 2026 18:59:24 +0530
Message-Id: <20260211132926.3716716-2-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260211132926.3716716-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260211132926.3716716-1-pradeep.pragallapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ctiWUl4i c=1 sm=1 tr=0 ts=698c8457 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=uoUYCPJ4ct4VCx-fAfYA:9 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDEwNCBTYWx0ZWRfX/KXe4bFDCrjt
 PPm6/rjlwB/8m7r48eidoFyL7Ued9sq+iP1kexLZz6qho3JDYmqQxrvx/hLbgGdF1oWj7+WVyX9
 FcBxoe9NAm71pLS6BNKrwUvpl5KA5NKdCUyJdXNsem6kQb5VK+TVZkp2mFg/pwwlLzg7nUTfG9l
 cTcT7lNnay5KnIulArEFPFT63o+WBO/lKbOgppBEEcOyu2kc7c03nBb+Zx+lI29Bq1vFLFOyZME
 lhPfEGs1XOUu2oUpxjE/XIK6YE0qlLp3Da5e+7e+8QbKHM4bwf37+O4lYGOwM5iEXTAYmotYd9D
 YnMZvC6te46KaCsyUIowH7c4hIrBVhM+lqqhQI/jmGwoRAe2kmwQHpsWfnaXp/kD32/kCR1KJei
 +jbhD7BD/bT2fx68/222++7HSipR6U0sEPTea82RqEsgkbVcTlwb7natpTrEw6BT6cVel84APQh
 m8QlE1/oGoM9Gk/60Fw==
X-Proofpoint-GUID: 259bPg1XIA_Mtnd7ZHYw64cA9pkuGfr2
X-Proofpoint-ORIG-GUID: 259bPg1XIA_Mtnd7ZHYw64cA9pkuGfr2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-11_01,2026-02-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0
 malwarescore=0 phishscore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110104
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264779-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pradeep.pragallapati@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 932DC124C12
X-Rspamd-Action: no action

Add UFS Host Controller (UFSHC) compatible for x1e80100 SoC. Use
SM8550 as a fallback since x1e80100 is fully compatible with it.

Qualcomm UFSHC is no longer compatible with JEDEC UFS-2.0 binding.
Avoid using the "jedec,ufs-2.0" string in the compatible property.

Acked-by: Manivannan Sadhasivam <mani@kernel.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 .../bindings/ufs/qcom,sc7180-ufshc.yaml       | 36 +++++++++++--------
 1 file changed, 21 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
index d94ef4e6b85a..fe18e41ebac7 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
@@ -31,21 +31,27 @@ select:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - qcom,msm8998-ufshc
-          - qcom,qcs8300-ufshc
-          - qcom,sa8775p-ufshc
-          - qcom,sc7180-ufshc
-          - qcom,sc7280-ufshc
-          - qcom,sc8180x-ufshc
-          - qcom,sc8280xp-ufshc
-          - qcom,sm8250-ufshc
-          - qcom,sm8350-ufshc
-          - qcom,sm8450-ufshc
-          - qcom,sm8550-ufshc
-      - const: qcom,ufshc
-      - const: jedec,ufs-2.0
+    oneOf:
+      - items:
+          - enum:
+              - qcom,x1e80100-ufshc
+          - const: qcom,sm8550-ufshc
+          - const: qcom,ufshc
+      - items:
+          - enum:
+              - qcom,msm8998-ufshc
+              - qcom,qcs8300-ufshc
+              - qcom,sa8775p-ufshc
+              - qcom,sc7180-ufshc
+              - qcom,sc7280-ufshc
+              - qcom,sc8180x-ufshc
+              - qcom,sc8280xp-ufshc
+              - qcom,sm8250-ufshc
+              - qcom,sm8350-ufshc
+              - qcom,sm8450-ufshc
+              - qcom,sm8550-ufshc
+          - const: qcom,ufshc
+          - const: jedec,ufs-2.0
 
   reg:
     maxItems: 1
-- 
2.34.1


