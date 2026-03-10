Return-Path: <devicetree+bounces-273537-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCGkKEAqsGlHgwIAu9opvQ
	(envelope-from <devicetree+bounces-273537-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:27:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B45251ED2
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:27:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 680573346FEE
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:22:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8367B3C4566;
	Tue, 10 Mar 2026 13:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CUa1GG6V";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DX+PCw0G"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F25683C4542
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773148147; cv=none; b=F/v7gigyKd84vv8ziSzhdwmX7UKWkyPT/YlZvALF/XtG6t5xFwcD2D3eAeAwpBRFBPKgz+tEZJyutH+9Hd6b1feztwe6QlC8ysONjLRAjKlnpi+Kzor9BpsCbw4PgpSI1lp644eWLWubGkLge5BvEERb2D1VNOOA2rXoM0QXAdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773148147; c=relaxed/simple;
	bh=epeFhju7+aDFnufQMwVuTG39+Sk2uEMEje1WbEU1r2c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XkyYbo1EXopcXwR1uk9xz0LuCtBxisDyAtpKKD+JFc3J9tqxbknJrWmkZQLnzR8p0bL8Xn8dWE5H6cL7L7awClhyzX+44zFNPGklb0QGYrzl4UNkPM+FHr1w5ETxGehaaNr9xwddimUm/sh6jGwdwTUlXGyDof/vGD1e3UehdR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CUa1GG6V; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DX+PCw0G; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACaVlS963384
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:09:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1N4n/cnHPxWjHM+LFFWE1Pa7AJc8ppj1t0Akyp/z12A=; b=CUa1GG6VcnvcgNfF
	lqiRpmJmZZ8HWutM3+QD08FoSQ8jYK+G3uuYkWDle9UnWxxltR/lJrD+ToGw600h
	b6D1cRmp83bkb1KDzD2aAMuhOZcNU9vqv08JYUQ1pO/ts+g+QLLuS7xZwGYe0P3d
	pZCIwATg8sAJsKuEOby9qCI3vLGVxqaF/0sY3p839AgZpuVj7iXhoA3oDEklCsx/
	KyAvPsRPl6UXLQc/9jhP9+5p6R2uCwTA5GZX2+5iGbPt/8I6mQsaS98Ld/S+/dmw
	VtCLRqhXFYI4H1I2gwplsIDNGgt9hZyHbrMq8CuMDKMc2KGMsMxVYpY2zK97opNp
	crk+Yw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct477k9n1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:09:04 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd820c6a4fso2133866585a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773148144; x=1773752944; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1N4n/cnHPxWjHM+LFFWE1Pa7AJc8ppj1t0Akyp/z12A=;
        b=DX+PCw0GQqi/g8tq0KOv4jK9OyNMN+8wxqsOqFNlA0BZptpTn6zhmdfM1Uo4pLaK/c
         f6DHXujqSlMM8G+YHZc5Pdr72MlGxMlwvXbkcOdk+izp0c1kqIDNRg/0OLr4nxiioVXI
         XvHPMQmOEoGN5sHcyUbfYqDpQ3O1vg1u29n3d1wspSrz7GvWNAK9xqFxLUH3T7IejJ2D
         hXvB42bP290ZrNt+BV4J19N11YohauF2QfR1W44Byk9nYYSv0XciaZqi5cilbePhPQvh
         zBOgaHQZ8DThXP4f46auuD/mommWcyRqJIWZTnMJtj+SoMOE3TtMjc7IMPcVtcKyrdgj
         UTRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773148144; x=1773752944;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1N4n/cnHPxWjHM+LFFWE1Pa7AJc8ppj1t0Akyp/z12A=;
        b=pOumZLYkVX4CaDtbmhnyeSHTDXEmobUkdU8Nc4xb+D46hCGlq0yUVGS3gJxbSq5UFD
         X7vRHpkh3mbWG+6EXIpECAfvjwwV6FWuHl6BXXlik5RnvXjvuwmYHjb4+lEzWQHO6YPJ
         FubeJEiFcCxPLrZc6HcvSQ0eqERkEEE0KVJzSpVq8WOpLl8e02Z5U7Jj7V9Fwbn3ea+U
         Lfrtah0A9RLpJ/zdKl46J8aLixsCPJifveGbV0CnKbaageAvegY61mBW2nXfY5FML1C7
         kXF5lT7P2Z25iLDEHFibzPm/HqRp9DUJhMaVpIo2uBUl0OWHh0+l8bNdJGmZ0AqTB7zW
         az9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVOs5D9O9RUhYm0k93HNNJyyGocpsS+dAFz3gGcf094Hd/ha9YZEoVwEMEzAQBzVjPvxzDZ8jXBy2id@vger.kernel.org
X-Gm-Message-State: AOJu0Yzyu/Exz+59caOZOZ4Lb6vwOOLy7/dGQECyc0/fM8nhLCuVsrcS
	T1t+rS9D8u6x+2UsR4HogLHBOUshKYLCwBcmP2ix01Tr4i1Ph64J5W8wA7IxShlR9J5cv8MFrOv
	mh+J7f9Nt6x9Sa2aoTQT1C4LLsLqwmj8aJQLoptd//eKozHwrU1tffNk6h/+PITQZ
X-Gm-Gg: ATEYQzwuao98HJJZ1m2UXHvSsKtglytJh8dTip62sovIcqCX7QG114Kg7vpboBejrWN
	hpwYIPpEiyjxTL2AtvOsqogGhV99Pcu0aaZM4p70nZ5uV4FxKQdmotBd5M5ElNq6VD3Me6bFFY+
	Z7xqlZT4J8+IxRbim4jnC3aMp4FYNoYbgp1Ys4PPOdXtNcxV9yuXBsXmx2JzIWCHFdvdt8+mscm
	jWFMkQDMDGlTzFeS9d8ajTJi/Rd7FbOLhxwl6qNgJ5X/BZuaKc36voqB+utbreQH/k0sbMRV8+j
	upJvBYsE/8bKagiM57mX+zFIOvEWVohWLvDcePp3nPoqJjmTUhF1/wTTjAcYkZIybpLF/tpNDGX
	GK13kU+4io/9HovmocelKVXnVHRFr90P+eg6Avlg0bLir
X-Received: by 2002:a05:620a:1a29:b0:8cd:8d50:16a1 with SMTP id af79cd13be357-8cd8d50200emr706034085a.55.1773148142793;
        Tue, 10 Mar 2026 06:09:02 -0700 (PDT)
X-Received: by 2002:a05:620a:1a29:b0:8cd:8d50:16a1 with SMTP id af79cd13be357-8cd8d50200emr706029585a.55.1773148142310;
        Tue, 10 Mar 2026 06:09:02 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b6f6b7sm99472385e9.9.2026.03.10.06.09.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:09:00 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 14:08:47 +0100
Subject: [PATCH RESEND 4/5] arm64: dts: qcom: qrb4210-rb2: Drop redundant
 non-controllable supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-qcom-dts-supplies-v1-4-5071a7052ea9@oss.qualcomm.com>
References: <20260310-qcom-dts-supplies-v1-0-5071a7052ea9@oss.qualcomm.com>
In-Reply-To: <20260310-qcom-dts-supplies-v1-0-5071a7052ea9@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3055;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=epeFhju7+aDFnufQMwVuTG39+Sk2uEMEje1WbEU1r2c=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsBfhn9OaP1NmC8o3gXRT4EaJPRfowHdDrweVy
 0v8EPjE0o2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabAX4QAKCRDBN2bmhouD
 19h7D/0YxKWM1i3to4oBKMJAnW50YlYxrzjhC6H8gVKl0o0yMowdmMFmzYuvEtk8jCwM4PNT+wt
 PS7nBK2ojHt2BI+HAGugR/lnN1MT24xOLrIMXwyGTBmgXCHJtAPPo+/9ne2inInhTbXQi4BkACB
 mCTVLyogdfixbVgqoEKJqzOuDKLEzeA4cpMkkBdFZ59416bcIxcvtFAK7i6QTSmBtzB6dt8/aua
 nCpygybbLs57w2Rsmg4VRC3lKFp1vJ4Wj2BxlZjRU4hc7BH0/5EiMeKKhDlHozOobq+qsMjCX50
 PUM8zWHp0rYKvI9OteZwVih/MCQ1evnMdZsYbocSz/kT7qn7KM9fZsc71MmnSxkYkwOKU7EIc8c
 sgMd77qLcvYWLxfqqxcL0ofEa3GvI/lxWdUUsBxI9Xq1uZ3TdBPHLdNuCCmBf0f3tSiwg3cLzhV
 8VYJYaNtLtu32795slsg5vfjLh/puLU0Ruwt5Q1+bXAtUOXMXCWPVlos38xVfn0BpUJvV5Cwp3I
 IrZguazf2IwObgaV0NW0Bw+9kFaSZZ4w0Lfut026a251N5qU449zph7OAJfffRgKOOSTP/vnP5x
 Gg1CXxhXk8wZ9RZ+cjTFH9EIqkPtPuabiJQwdqqZTzwV3hHXW8xi977QwIQ98fUuWO5Y/KfFlTU
 9+hC6akDAIYAbMQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDExNCBTYWx0ZWRfX3xzrrUX4aqCh
 utgic9kyeYnAqopG51wwsvmwCWI6d3tHl+akc2Fac3ykB5h1190s8bkpondAvfG8gwQ8knv7Oa3
 HBwr3snOsJ2LBmHJl7oQDKRcwsHiW1aaHC3f782RgL33J7pjCz6/5ZQdsxXVkxFiOIqk49bLgrm
 0Q96/TNR893yaiC1eozH5n810a2eTLgehJfQ5uhOP3QVVGPWdZK+bzUxDmW85Gmi58dgF42shX3
 MpDup+UNsHoMyybag5f+TuDNqGSlFv0G2u93xnnrOCo5tzGhjPRdQ7BNMNSNH6fHy9WetBO/29G
 LxggKyF7rxDeF1+Pd4mCIEy+9z2SS21uhv1nf+gBijaSbzSvi3ObLfbqbCyHpFK+GduXMrtlC1D
 zfxs8sK4tJLt5af59cJn/OvucwTJ01iUKv+l/AUQlhmfMfMohiitXyTmnMGWFaLhbDP6Zxn+aFs
 hsx22iG2XPyLf9kfcaA==
X-Proofpoint-GUID: 5BVbWJuXt4paq0cOYB7pK8-ixiZajhP9
X-Authority-Analysis: v=2.4 cv=KLxXzVFo c=1 sm=1 tr=0 ts=69b017f0 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=_9iiUgdG0rMA4LjK8P8A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 5BVbWJuXt4paq0cOYB7pK8-ixiZajhP9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 impostorscore=0 spamscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100114
X-Rspamd-Queue-Id: 33B45251ED2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273537-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Drop completely redundant non-controllable chain of "regulator-fixed"
supplies, which serve no purpose except growing DTS and kernel boot
time.  They represent no added value and because of being completely
transparent for any users of DTS (except the bloat), they should not be
represented in DTS, just like we do not represent every transistor
there.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 45 --------------------------------
 1 file changed, 45 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index 5f8613150bdd..c2142264ad79 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -158,7 +158,6 @@ vreg_hdmi_out_1p2: regulator-hdmi-out-1p2 {
 		regulator-name = "VREG_HDMI_OUT_1P2";
 		regulator-min-microvolt = <1200000>;
 		regulator-max-microvolt = <1200000>;
-		vin-supply = <&vdc_1v2>;
 		regulator-always-on;
 		regulator-boot-on;
 	};
@@ -168,39 +167,6 @@ lt9611_3v3: regulator-lt9611-3v3 {
 		regulator-name = "LT9611_3V3";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vdc_3v3>;
-		regulator-always-on;
-		regulator-boot-on;
-	};
-
-	/* Main barrel jack input */
-	vdc_12v: regulator-vdc-12v {
-		compatible = "regulator-fixed";
-		regulator-name = "DC_12V";
-		regulator-min-microvolt = <12000000>;
-		regulator-max-microvolt = <12000000>;
-		regulator-always-on;
-		regulator-boot-on;
-	};
-
-	/* 1.2V supply stepped down from the barrel jack input */
-	vdc_1v2: regulator-vdc-1v2 {
-		compatible = "regulator-fixed";
-		regulator-name = "VDC_1V2";
-		regulator-min-microvolt = <1200000>;
-		regulator-max-microvolt = <1200000>;
-		vin-supply = <&vdc_12v>;
-		regulator-always-on;
-		regulator-boot-on;
-	};
-
-	/* 3.3V supply stepped down from the barrel jack input */
-	vdc_3v3: regulator-vdc-3v3 {
-		compatible = "regulator-fixed";
-		regulator-name = "VDC_3V3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vdc_12v>;
 		regulator-always-on;
 		regulator-boot-on;
 	};
@@ -216,23 +182,12 @@ vdc_5v: regulator-vdc-5v {
 		regulator-boot-on;
 	};
 
-	/* "Battery" voltage for the SoM, stepped down from the barrel jack input */
-	vdc_vbat_som: regulator-vdc-vbat {
-		compatible = "regulator-fixed";
-		regulator-name = "VBAT_SOM";
-		regulator-min-microvolt = <4200000>;
-		regulator-max-microvolt = <4200000>;
-		regulator-always-on;
-		regulator-boot-on;
-	};
-
 	/* PMI632 charger out, supplied by VBAT */
 	vph_pwr: regulator-vph-pwr {
 		compatible = "regulator-fixed";
 		regulator-name = "vph_pwr";
 		regulator-min-microvolt = <3700000>;
 		regulator-max-microvolt = <3700000>;
-		vin-supply = <&vdc_vbat_som>;
 
 		regulator-always-on;
 		regulator-boot-on;

-- 
2.51.0


