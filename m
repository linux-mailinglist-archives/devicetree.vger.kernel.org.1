Return-Path: <devicetree+bounces-259971-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yL4kBJ3XeGmUtgEAu9opvQ
	(envelope-from <devicetree+bounces-259971-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:19:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 740A4968B1
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:19:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B29A1309174C
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:04:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA88E35D61E;
	Tue, 27 Jan 2026 15:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E+1M+Kuw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NzETJHhU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B03B830F924
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769526237; cv=none; b=ayokQYeeOuQQF644s3IWahzHggx9ro5UYgPmbjCaJ+mNskhA0/LFORWD380vPX+kLa2d19Wb+WZTH3BL4E7fdI0DvPPsE8ioCG5cmRvVQCfKcxdmyyTT9l69VT6u/sBGBEZzKn2a9v3bW82GK112u2IAELz8sjDJCf//irirMfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769526237; c=relaxed/simple;
	bh=TXhrdFbeddVzdxJSPpc0JsHd7W0RNI6taFa1JQtw2Yc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=liSG8E0neBeIlJiRNlIisrA+id0a+clZXvPvc+JhXvk7b7nn1TCD3wZp5Uh4/lgGEWZbOQg3qPJweeokKDN5t1iOmSA1muhaRX4orQW4mxlhw3o60ixZKJHfTrW3xEKUpqlFExYBBJhK9m+/yR+UK8CBg8plC/XqHlRiUvdJ498=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E+1M+Kuw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NzETJHhU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RADY0o700158
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:03:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2iv5v7qMHW5GfC/WnNxMH1dhiF2D/1Y3QmH5tjUTyJo=; b=E+1M+KuwKk9/1Y/H
	aspobEv2MDCb8azGJUc+0JuTyGv2FAc1/7ghtKu35j4piOts4blZwlL8sBC6nDHR
	VdSfIWfANB4cC2am566fS5u7VQCVo0q3S2gtzO9sZj5KrmZjK+crkIIFZpFLS7J/
	Dxi+JROufmbh/INQ6imHEOwmPNsMlTskJNwp5ZvYuDClL/yjMEkt/J5WsyViZGiz
	BXhwNagLWi3OdqUR5fIuBKQWdzFbwd4/PV7JxRrUbU0YW7UVqmz9IeeFqAj+t2Xs
	a2DIlFTJV94OA4RooA4JY0w8Ir6DHeoOAIiu+JFV4xNOpbblxTleuqlJ/uvy59Jq
	HHotJA==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxew3u7p8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:03:54 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5662e5d9a84so6259298e0c.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:03:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769526234; x=1770131034; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2iv5v7qMHW5GfC/WnNxMH1dhiF2D/1Y3QmH5tjUTyJo=;
        b=NzETJHhUIfLpT1U+E7GeFbqOiPh6R9n9GtRQ3BZaoUGOdxLRxDCvpdIZDTu6/aoR/x
         lZTdbxjbop+ptijogC53NJ8rAYWGK4LGaYqNMz23H6+2AxfeFNWHLX6bL/xTOe4+SVuo
         KMkskAuRppcvHNkRgni8ycgD5Un8agvf6z0gykjkzbRbvVmu0maea+O5OL2W8kscIrmL
         xfBCUnWKTSzjk4EUiOpelKAGu0g1DUc/WmD2XEyqcQGCfzi5y2h2bgCIXIejNoRXQmJb
         VOjUe9D+uE/UnuxOylot7ZrmwiQb72+G05hg2wZ3dLa5Ro9aRi6ovvqIsbEMcgrs4plI
         gj+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769526234; x=1770131034;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2iv5v7qMHW5GfC/WnNxMH1dhiF2D/1Y3QmH5tjUTyJo=;
        b=qRgd8zK+++X0Bb/TbaUa/kvHuNTrkBzzSUrx5n8wpZCDeojAb5ZN996Fau8G+xji11
         zRLuBzG8L12uW7v/KjHKv7vzjyDY5o7tJa+DHVYoSBVn+oi3CvTKk17BaCeAZExANUkz
         gOV37g7+hUI9McHqsHYpznKkHhlSbOwUSlfEeIXKNo2Os38CWVz927FRhUO9c/vH4iMQ
         NuzmT0Mo38joiHIw4EV8VydXMeB4YLv0N1cp89g9Ui0XCuwmHuZu+edjVQW5H8Toc+iB
         Mm2Ug5hSYhtGohFXJxJ3ZWk98btIIv9z3ocAmLBCHr5XXWv0uQ++yLuMJbyIs0I1/vvn
         I4mg==
X-Forwarded-Encrypted: i=1; AJvYcCUKco3e5w3lIuuzTvocT73BkgsrRUERQvSM2TZbJ3+ixaQV9cabQPMiDx+PGGOyFfK/rnM2yDtwLk+l@vger.kernel.org
X-Gm-Message-State: AOJu0YytYeao8WyScGA4L+b0NV8QEVBURH45rrxR8eIjFoGZitGgVBFv
	i8YtMmJc3bn1d6xjEpHcSBYNBhYsuWL8e5i1E27hC48ZOOshZjKOiEpNogvLvtMqEMVoMymFOAW
	uw3en2NeUfaM+HD2S7dpsBi6Nw9wMPcUZjyfxgRrUFBtVMqzImrvbnNTHHTlyKAj/
X-Gm-Gg: AZuq6aLeSkotr7MTf/K8j5xdd0Hz4FRFhE9oTYuXl6xnMyJlzd7sEPtFdp7B6X4z/r3
	Pyeubw/tTr4tF1Xnc0e1v65NJCBt2qRCT6QN54SNUz0fJWTELei01AUmYrb8Io5vZ6GeD+6ejzG
	VsEMboslVRRGK/Ui4re2oR3iu6mwi41JG6+C3t/qENQiRjZebxp6RGW2ePzx9e7H5a5yQioB1hD
	oR8EqAxnaE1LFAT6S/AlFuqG9PaeUrDI4mFeQnVXP9PTRSkBYMCApf5R8vqxcuPub2z0dLNjhoA
	IiYExosWlD5WGfmEQ75J/FenvFgW37zKuJsTY43aP3Ks8y4+iYQID/pdXjYmpzeKrdIWuP0gi1g
	oOdnswklusuTNPBMoVQ==
X-Received: by 2002:a05:6122:3d12:b0:55b:16ba:2854 with SMTP id 71dfb90a1353d-5667955331fmr606622e0c.5.1769526233686;
        Tue, 27 Jan 2026 07:03:53 -0800 (PST)
X-Received: by 2002:a05:6122:3d12:b0:55b:16ba:2854 with SMTP id 71dfb90a1353d-5667955331fmr606505e0c.5.1769526232948;
        Tue, 27 Jan 2026 07:03:52 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c02cd8sm36895097f8f.8.2026.01.27.07.03.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 07:03:52 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 17:03:21 +0200
Subject: [PATCH v2 3/6] dt-bindings: clock: qcom-rpmhcc: Add RPMHCC for
 Eliza
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-eliza-clocks-v2-3-ccee9438b5c8@oss.qualcomm.com>
References: <20260127-eliza-clocks-v2-0-ccee9438b5c8@oss.qualcomm.com>
In-Reply-To: <20260127-eliza-clocks-v2-0-ccee9438b5c8@oss.qualcomm.com>
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
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=801;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=bCIXMNVOJjQxQPQTzx/P3Zuxeig/F3AxRLL0jD2jhYU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpeNPNyQOWYUKaRb0NayzR25nHoATCx63h65d99
 +HXFdLoQB+JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaXjTzQAKCRAbX0TJAJUV
 Vhm7D/4x9NYwxilpuCTTE6VxAJFVCVWskNbl5fQuiGty9dBqXmFePjcKN3JrT0WOVKmZ/RqJsa2
 4Qa3vhFJxYMJeRFHLrC2f+EyEDu4CDKyg/yF6uBHmobTe5qtNHlOheka+A4kr8VgKEhwp8GYYhn
 7ruQ2x2MbfZpfyjep9zI5UDvbNjVkP+qgAgGejHAG+6Ud9UIUVdOGX0bxdxnZPXSXddsD0TtcJR
 OOHbnd+HRgX/Pl+NB+JwHhZoAGsD7IcH1HsB/wuKcG6gNRSzNogVo9HDbS+oonHpIrCm41Qjmak
 lAdmTZIoJjPeFkEDzUvmohKbTkyamFPxfUknOJCmRaJUibgnbLMMciJM8X7c95bYkLXtgEKDAjs
 uo+pwJeZvw9e2PpzSgBv1jZ/kRwVrdas3WIO6R99p2l3RlHBKBJw9jP1driQdxG91tn4+2eooXo
 9saNNu7kvRf//yRSswJIu0JMP6cVDRQQEPepYaDPXQJpcjjSy/KH2o+kU9Zakhp0tRAzKEqbotk
 YGzY8fs1Wlnrg8IJewixrVUhzNQBfQIkmUvQ8f8t76iHVo6t5CbA8BG9l/UXCu7H01k+PHxzstS
 H7YPwoLY8XltM0QCpHbcvia6BpFFqrAnSrt/xVFaNtBvWKNwctRUyBrtklx+hsbEp6ajxY0GCMa
 6laWVsdDATnrLsQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: 1w6vqbPi9AG4MWDWfiwwxp9U0ISSKQx-
X-Proofpoint-GUID: 1w6vqbPi9AG4MWDWfiwwxp9U0ISSKQx-
X-Authority-Analysis: v=2.4 cv=J8CnLQnS c=1 sm=1 tr=0 ts=6978d3da cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=PJhJesWDv2iQC9CHGcgA:9
 a=QEXdDO2ut3YA:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEyMyBTYWx0ZWRfX1Z9Be3ubCDPf
 BsjsQhUX2TwCqm5c1jfc5pa7od2rfNw+8G15T2Jowj6M1thcE6YY+Q+/YBWQrmFKx5gF8UI9AQ3
 J803f+6NoP7pPk+M0y95aQ/edSgURJOXesjnEUiQm5poU/LPxmQNLYH/upm1tbrbFqsm/alCP93
 sajVFs2eylPNCilbiY2NtFS8NwHmz1WbFeJoJGG3wRvWPe6KIOZcrNt0ZdA8zisEAPT2US6dhTt
 wrHtH3BSPb/lOPmhj3i6BRrLPqFE7/V8cH8sUiMPM0pJkSRndjMLAqXI/myEtGnRXYenMzqhXbo
 FQnu7gYI3lZc3OQAAcuY3gSjTmCk1V3YIAs1QUw0Tk8CvewVfD1/aTpyT6CPD9jCAukRCKIBpqP
 t9R/fnHFqt2T69EQxL58yd8UFBdkcxoPFf8GE9B3fO6chCavW2X1vzPt86h3DJZgqVGwTH5XK6b
 y2aGToZkCELLueA7OeA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 bulkscore=0
 priorityscore=1501 adultscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270123
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259971-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 740A4968B1
X-Rspamd-Action: no action

From: Taniya Das <taniya.das@oss.qualcomm.com>

Update the documentation for RPMH clock controller for Eliza SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
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


