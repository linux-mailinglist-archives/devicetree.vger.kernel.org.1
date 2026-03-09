Return-Path: <devicetree+bounces-272914-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHzgOPC6rmmxIQIAu9opvQ
	(envelope-from <devicetree+bounces-272914-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:20:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EA3238B16
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:20:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CE395301DD7A
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 12:19:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B4973A785F;
	Mon,  9 Mar 2026 12:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iawTLr6z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZVALOoJj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334EE3A7828
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 12:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773058789; cv=none; b=YkNbL4ha6aU00kO8RyfRB0FiZI43+b5NKT2+NSoVWatx9hCZbXmt+4fNVCVJGODvtl/7YEQjavK24sr+2ZCycYWvU2OpS5qM2wBDa1MDO2QAz/3R1c5/E4ELmrGrdgfwOrA1+Ab+EXqseK9XA2gSHluDNWUJkFpMH26UJYlz950=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773058789; c=relaxed/simple;
	bh=Gcqi/2MaS3XQT4/zJmN7kvMgclwCCecyrWkf1Z5mMCo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cxY0vIpGME2uxwpV1rn2elatMahjwFa4Dx0MsGUorATG+d/wersa+WtC8JdhZ44LJbAuM3kxnZVoiSXI+RmdXP4ROlyEA6p0sg1Frw/axAJWs2T2+QpDT7SuccsCc5ZQRg8lXqpiCj7iPQG31gDfGLIbpLTI9H/DVNDw0WCQPOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iawTLr6z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZVALOoJj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629A6d452195107
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 12:19:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=yvmoD/TCiAJ
	xVaC8AcUQDnwLM+aXe1XxGAJalKWaXdo=; b=iawTLr6zLDY0wv1SVmrO/ugMNUB
	BiEs81oWaknsDNKSIqhC4/lKJo+QrKMytOq1mT3eY8Rg98SWTuKNfd8DeM9ZXm31
	6CgkrgVgvEh3mdjrVjbElb372426M0nuxW9Cwi6nEh8EIknchQctDgLO91QNpisA
	ztB1ODJbwjDPfYna9QsmFzwbtDHws3nibwpCHvsYoGyNv2MJnD/iWrXlU7TBjumh
	G+bK4sY6bpJBnSBkC46RJ2v8YrQcQ3vjZ6OrHa3XOofpvhwtFhppTSA9yOUrbiP5
	rrk024ADCy4RbigpRtyQdw6WwvuKqPtDlyLjvQO+RUzV1F/6uHY/YxImY9A==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csv5u8e0f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 12:19:47 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ab344e3164so54763525ad.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 05:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773058786; x=1773663586; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yvmoD/TCiAJxVaC8AcUQDnwLM+aXe1XxGAJalKWaXdo=;
        b=ZVALOoJjRqEnoPanMGBG8uxfRbw72DlP/A6X2o+sKAvfbwEqJZLMO5yCWbXGZ7g5n3
         uhjUoSNQJ8Mx0QlezBdlS+1MQPPfdQ/6TKSpjc7nCnbP29fMdAuGIlLIPpzxxfQugN+j
         lfkYVPO5Qs5QjnUFc4REk5DurdWqynB/5oJFZJVgVypPT6iC0KQyXwoH2c2yUI+e6EQi
         w3JiLfhc3vZ4E/zQ/kGCdz4wxCKU0hXCT/PqVkjeSn6vAxbJsviX6QXiGjQO5mzgnWsU
         mGoTfKkCSHrH7EWll+QcALaj87YnErMtJDY4ChzGg/Ph0hlujGXRPBullKe7j9mkkZh5
         0v+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773058786; x=1773663586;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yvmoD/TCiAJxVaC8AcUQDnwLM+aXe1XxGAJalKWaXdo=;
        b=PsicFdz6kXPBBjA4GM5xleG31uTHpPeuq5q2lt9M2OKrcGwwQgC3eQwqwOf1y0FNba
         QJFgO6s060FWI20XPkXnqCOuW9n7Q+IV21SFqE9GjbNIgJSDJQgdXUirU50QkHyeKk75
         LwdOyc2qJwh9lFGbxjtshK3EjaleRWF3gr0/HWD7dAmJkMnDrtc3pLcjQ4a/1ql9Pi03
         7IJ+CjZ6mh+TOtartroF55b/2byjy9a/rQyN8SusR6ylU+38+85MEkRGUw6Jwbo1/JQ3
         TBObSxBrbbk6l33QsPnIYF83ZuB9st1iU406xN/KYNECXSOwF0oTMQuBlD+96FXp0+VF
         Nw9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUSNM3g82vV2+lyxRxVXrgb/qvMDhCQin/FTfY28LYVqw5zNPChfUMOUe/3I5hWZZzbMY52JdQdHC4e@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9MfMnmP09ZvWOSl13QpCwASb6UMj9D1CniSXb326SwQlKmwkP
	ZVsfWG2yifqEHwpiaW4thkSsA540tECQ8pqU6QGmujJ1sLnXm8MZltxjWU0+3Zf4F1HCpYY1THm
	WhFkOq0ILeOvH2tFS+h78XuhJtoFwKqqSxiwlkj3ZJ3IrmEAJe/KQfruHOacGcrn0
X-Gm-Gg: ATEYQzw54JTV9/NBd0zegvt6lFW1Y7bt2jVjYodN4o0HctMDVYfWwGzBzV8glqjNDKv
	f3UPoj+7pxsUOivAT1dk8z6L0vuLAvURjDk5jz88PL7u0O3/DEl4qd8XSEsa2ha6mWJB69q+Qsg
	8ZWoNFt3MXWwSQ505I6kZaFJ2B69+Dp8/NybGsfp86XRrFFwCSE3mQXbva/BshSVGhGmakgIcod
	jHeqVUQKK6bbni6ReOapuJQlqQwwQVxnWgg7RlS2kK9V3j8tPHckfG9dT2BB8sN2UTDrEjDJx3g
	BIknvZZB+B0HsPkz95wwxd9R8kgrjlU8BN2/36J4CodZDvp5etsg8HsYfvZjCqb2Z3+b46ryigK
	bECTZE16yVjhvDAGDXfUHly7gn1VMU7Ci6Q81NPwmjZIInwYCVIxw
X-Received: by 2002:a17:903:906:b0:2ae:3b4f:e5b3 with SMTP id d9443c01a7336-2ae8248582fmr77924295ad.4.1773058786256;
        Mon, 09 Mar 2026 05:19:46 -0700 (PDT)
X-Received: by 2002:a17:903:906:b0:2ae:3b4f:e5b3 with SMTP id d9443c01a7336-2ae8248582fmr77924105ad.4.1773058785654;
        Mon, 09 Mar 2026 05:19:45 -0700 (PDT)
Received: from hu-uchheda-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83f7429asm115762575ad.59.2026.03.09.05.19.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 05:19:45 -0700 (PDT)
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, umang.chheda@oss.qualcomm.com
Subject: [PATCH 2/2] arm64: dts: qcom: qcs6490-rb3gen2-vision-mezzanine: Add model string
Date: Mon,  9 Mar 2026 17:49:36 +0530
Message-Id: <20260309121936.1289615-2-umang.chheda@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260309121936.1289615-1-umang.chheda@oss.qualcomm.com>
References: <20260309121936.1289615-1-umang.chheda@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 835gVM6meqDEhGtzKXQXfBVyFDwWwPbL
X-Proofpoint-ORIG-GUID: 835gVM6meqDEhGtzKXQXfBVyFDwWwPbL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDExMyBTYWx0ZWRfX0On2JcsZG7CV
 LCr2Iq35IiWvkc6Nk5M6z1Bb1/J6aYNxwiytGfWNm8vF0p2hXdsFyWsYNDoTgB5UHxI0I0ez+Gc
 hMx9FzyOG3S1x69YvBmqNrigCxEvVqORuSsBhlcQYWSLvl1R1V0/gFYUpe3vCdKuBfu5Edn+RWI
 0ZHaqL/5bNgWZprxF3hp9XpJYWfpCPu+1DlfT2DwLrDUlK7UPIGbtBNlbiJycuXwWEOgI4C9t2n
 I+UqGbCQ5m0OcCVRvUn4goH8eU/qwSiLrz4JCJwX4L/9WTy1iVwyu7XLkbIq61WZv9WgBWFzMJw
 PsE4A7uXEUUgHlkiOvt9VLTZkrlbIm+KxABM/w6mKY2cdxuZZx1tpXQaTxJJ+Ac13mY0o/w6zSI
 KYOLtN4HZM78vzLbL3IJqxh7PafpPCoCNtdwpRJ4T7mzRGYxMC7gK4jr2eaHcJ52Oy8/FwVGY1g
 +d5wB0n8RD0K61q3y2w==
X-Authority-Analysis: v=2.4 cv=Xr/3+FF9 c=1 sm=1 tr=0 ts=69aebae3 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=-e78EVysecpqTJ-8J6AA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090113
X-Rspamd-Queue-Id: C5EA3238B16
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-272914-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[umang.chheda@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

The RB3 Gen2 Vision mezzanine DT file lacks a "model" property,
resulting in the hardware always being reported as "Robotics RB3gen2".
This prevents applications and user-space tooling from distinguishing
the Vision mezzanine Kit from other RB3Gen2 variants.

To ensure consistent identification across all RB3 Gen2 mezzanines,
add the appropriate model string.

Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
---
 .../arm64/boot/dts/qcom/qcs6490-rb3gen2-vision-mezzanine.dtso | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-vision-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-vision-mezzanine.dtso
index b9e4a5214f70..879d5d853bea 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-vision-mezzanine.dtso
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-vision-mezzanine.dtso
@@ -13,6 +13,10 @@
 #include <dt-bindings/clock/qcom,camcc-sc7280.h>
 #include <dt-bindings/gpio/gpio.h>

+&{/} {
+	model = "Qualcomm Technologies, Inc. QCS6490 RB3gen2 Vision Mezzanine";
+};
+
 &camss {
 	vdda-phy-supply = <&vreg_l10c_0p88>;
 	vdda-pll-supply = <&vreg_l6b_1p2>;
--
2.34.1


