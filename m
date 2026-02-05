Return-Path: <devicetree+bounces-262998-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6F+XB0qMhGl43QMAu9opvQ
	(envelope-from <devicetree+bounces-262998-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 13:25:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BFAF26EE
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 13:25:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6FE49303FFCE
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 12:21:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B4623D3488;
	Thu,  5 Feb 2026 12:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ETJ6b5lQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iJqy9/Pk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49D43B960B
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 12:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770294076; cv=none; b=ugitbIlwuaPKY5/cYosGNn0kszzet1NJnddDJVnTbS98BwjaaaZtUOF42XosDrIlMzXxLbwRUFV/ynWZ21x6lC0gpsw9DDCU0Ve9YSZ/YBioBEKhhqzuU5cqowh/CQY7/hgCuck0u01Ji9oa5PZy7kEdw1Vk7Sg5UwmdB222tN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770294076; c=relaxed/simple;
	bh=ZJDwIAd9ubN0TqTyRgpQBA5ygn+ZkTIIsUJvbfJB7Mc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mkx3zkFmO7bWT42rMjrE/kxtX30F/aRvmRLvxPUmxShvWxdwLA4DOLY9Qq6RWoReDbssxbQ4SVdX8X0R5NgxlvdLW0Fyf03s5mvYyFfSbAMWjQYMiCGQaLn4QfATaN54eGJ/ynagzq42A7l3W8/Q9s0ByV/RTr1cDlMoAQcivYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ETJ6b5lQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iJqy9/Pk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 615B4eqx3078463
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 12:21:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qdASJwP++iHL0ezr6b9geVxlqJ0ibz7Ub3TyWiBaIqs=; b=ETJ6b5lQ+Eh82QIh
	M2FhHN50sLPhNHk5Y4M7i4Ea3KU9hx5p0zIpVPWiI7VI7nLYvz4aAWeuzZ3hONll
	h8eFLMmJq1KaEwqxO1gG9pE8UddrK4QIvBWyHs9gvAlSeOQDEYQt1BSu1cTGNjl9
	CaQ9JD0tz9mVyeljZG16gb4SE+HMNS4oLm7PHQwU65wyTTPZ9BZVCIUR14DTVI8B
	XFKG+Dkitbj4lLE7MRF+8+azUdZIc4QpE8fXkfOxBykt6hBkRjJdhH57ea9Xhvs7
	LTwH1wjI2KLIPhaKffAcLx6UbqxDbNObvlX6dKW0Ap1NaSiP/RpJDohVLE9lSVX0
	vJpFjA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4t0t06y1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 12:21:14 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-81f3c36dd2cso833821b3a.2
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 04:21:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770294074; x=1770898874; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qdASJwP++iHL0ezr6b9geVxlqJ0ibz7Ub3TyWiBaIqs=;
        b=iJqy9/PkKdJIlv/EjQ09U3044GocKZmzj8mNWY+mrnehUTo6dy+xusCnIa1Qq3AQtd
         R4Goh6K8qbbYti65XCiL/M+73+Igb9TMyvuPF09QOBqzCCD/us1DErSP0aDcIRzk6t31
         UNTc4Jwu181m1i2ejW62weJlM5DyfdKRUQcA3ajWSFPAdmdx8Vo2dYVIK4HJCcfHoORf
         q0HbcFrbTEhJ25THV8k7cqbmECwNe8t6DXUMoU3lAOXrWcN8xVqbZq+SfHPQGbq/fFYI
         0fkM2dM2Zc4BmsydLMe9Vvmm8rA1zNbYeZ+lSqsymsRbkA8aTOmdVKtCFwKcNKD+Fqly
         0X9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770294074; x=1770898874;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qdASJwP++iHL0ezr6b9geVxlqJ0ibz7Ub3TyWiBaIqs=;
        b=bsAsbCBKGpOGbdVe79czqxNBnXAXWypfrVUZ+UggREA1bqrPTjFuUgDfsfzvuAoX4R
         RRNg3z7sYu0w65UXiNJJGP9vB0XF9//arAiiQqOUvRonPsUym6GguWoLZrxQKbJku6ix
         MVG9G//R6t9MxCgFzkB+kJOzW1CAXzVsDv5HqymLuX41YRT6HUsrgV8FW43mH40Gm+DL
         6rmMhfErTwq0SSWdE1UoEjGj6TIFXL7oQoHipZYzTSVvvvR7j69y+Ta5DlgTMjnIVX32
         3E1Svb1RWvMTXxUbAB6q1fKQTVIERVRYKILeTsAjihOL8S8tPUV53Fdr/1ftKM+aKypu
         yQ4g==
X-Forwarded-Encrypted: i=1; AJvYcCXMKwSsehMu0lhNvehUUpokYVskUt9klah4TicFkBEgB9WYMpFgEib8Vdm315aq+mZMZaWWJzfOpGUf@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6YUeEUAsZ4PaDpLUW9Bo0OACkmJCRCFnm1i1I1n/a11EuptAe
	B6yxkEJ37akvZq0hF70yL97VWgwXLVI6ZVakxOlJBOsU5xcP72SwTU2raLexkfZjHCvKe8JuvtG
	L9ckzsXlq0hch0l3FGtuUBjCQbBFaOpgi74HB/SNk0vze+7zJnckmwxiwRQb+p65S
X-Gm-Gg: AZuq6aJsl0g6S9YV6pdEfACuOFXam5w88lBU+M1Kh+5Ii14xljbrA5z9LN/6JMo8Oe1
	BhoGzXVdCyo/UFPcCtvYmM1AWkhYIztZr7SwDmmaLoCVgdAt+bk2iMVqdynCXW4dE8i6nYSfzuF
	6tDxAgIqYzgWHg2o8Dt9Z2LkX4DtgzoPb3bQRC1hLvKXK7lNGVuCBt5itjcVMgBO0bLTWITVNdu
	PO1vHuk4txc0pJpHfy1c5RLpoF94XIf7UiqfVV/mR3oNt4vGj56W5cXGrLhqK3O3cDysCzIJoAi
	fVh1i/SrFeNIKRcOjwAzegSck4FU9ACivwEfT7Dd0EpgugjOjEygWFnWTjAT3jmlmZL9znZzY43
	O3ePRpYJQNee1ETVTalD5kzQosC7FIgYeoHeol3Z3F+4nw3uK7yywY+aDHiQ6wdlO49tuAeJCj5
	YDle1h4Y/OELkf+pF+neU7XRvUnK/XhA==
X-Received: by 2002:a05:6a00:391d:b0:81e:96c9:1320 with SMTP id d2e1a72fcca58-8241c7425f1mr5906174b3a.69.1770294073492;
        Thu, 05 Feb 2026 04:21:13 -0800 (PST)
X-Received: by 2002:a05:6a00:391d:b0:81e:96c9:1320 with SMTP id d2e1a72fcca58-8241c7425f1mr5906149b3a.69.1770294073015;
        Thu, 05 Feb 2026 04:21:13 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8241d1c8c55sm6262715b3a.24.2026.02.05.04.21.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 04:21:12 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 05 Feb 2026 17:50:41 +0530
Subject: [PATCH v7 1/4] dt-bindings: arm: qcom: Document Glymur SoC and
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260205-upstream_v3_glymur_introduction-v7-1-849e7a9e6888@oss.qualcomm.com>
References: <20260205-upstream_v3_glymur_introduction-v7-0-849e7a9e6888@oss.qualcomm.com>
In-Reply-To: <20260205-upstream_v3_glymur_introduction-v7-0-849e7a9e6888@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770294063; l=866;
 i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject:message-id;
 bh=ZJDwIAd9ubN0TqTyRgpQBA5ygn+ZkTIIsUJvbfJB7Mc=;
 b=BsomlnsGiA37VHWxiAQQFu+fMYOTc5oDlin9eGR27Gr99KtwzNgvCi6VqpN0gulPFZYxfy0te
 d+aXHi+uMLEApLX5i4rZqEH6TZ5cHuTn4cW8GMwBvCdyDuRETC+TpdU
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519;
 pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
X-Authority-Analysis: v=2.4 cv=WZMBqkhX c=1 sm=1 tr=0 ts=69848b3a cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=5v-pcvSp8lN47LZtJicA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: nWh5FtMe0Onsmwxpw7pnSFi_BfdTbbXS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA5MiBTYWx0ZWRfX+O0c35AGp/Px
 IgCr+d8ho0h8jkJdMGsWMGIBc90EFBXhMEHcFceXFBaeapNFqnFcLjJq77Anol6x6Z1WTSdidhk
 XkjYzAtNkF6N4KWQ/jfHA8IPK3A9M6nHh/tERMYG0FkGKH3NtGuJBdKwK8dGkiCQPBaYSLkpA08
 ZkTgsnQE1TGgO+iduoatGURBiqkdCsio6FNwqU4VgZmdOpHhFPiPMsf2S37TkwY/WnJ4GYd8S55
 KYpqk05hK5JMK6zvqZFBRuuZlGV3XuQeyhL7fVf9Gej0dXJBzkochEaREspGH0z27AEhSWmWklf
 6bB7FFmbrcSgkncCaV7Vi/lu35qK1fm6qRFnNp7IiSVONojpjYNq+1ojfjccfK3mg9G7QqfPfAR
 /ajL5a1TvJfskWx8UsGTbYCLufGgU9JHAihuTDpmDPQodSTQ/cRxHQ9hwPXmoB/zx9wd4nZkrgn
 xjaCouomm/YP5f7fA1w==
X-Proofpoint-ORIG-GUID: nWh5FtMe0Onsmwxpw7pnSFi_BfdTbbXS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_02,2026-02-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 clxscore=1015
 bulkscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050092
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262998-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[pankaj.patil@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 75BFAF26EE
X-Rspamd-Action: no action

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


