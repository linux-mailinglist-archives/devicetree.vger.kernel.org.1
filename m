Return-Path: <devicetree+bounces-266650-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEdPNfkOl2n7uAIAu9opvQ
	(envelope-from <devicetree+bounces-266650-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 14:24:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46ABE15F033
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 14:24:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 49546303DD70
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 13:23:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13AF033AD9A;
	Thu, 19 Feb 2026 13:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EDyECVB2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M2yCd7lp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61A2339858
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771507428; cv=none; b=SNDb8HSYIK6LPsDToGUjbjPiXwYEdIs60NRTJFxHJXloeyNfhCVti5tK3o21JD6fx1NEY4n3n5zrdTLq/O+RPv/bFkY5nZ3ol2vBn8d+AkMSZ+cTmaxfRj4YNIDu1pfX5UpcxjKu2TjNWSP8aB6VWBvNM2SvWKz6KkPdiMfDSlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771507428; c=relaxed/simple;
	bh=Tf2s2ioOrDRKV9la3WETakJW3VpMyIOxdWHrnolT6L4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PN/U0l6iZ4GmVcFUcTkpWeeWNE2i4NAYtIHwrF3l87s0qU3K7i7ky3zKcEpLmwXmWDJ5sgCIHQf/U4umTJkR4o1LAEZsjL+dVBLzQ0ZQ1PUd0UYGnZ7lz03ZoMat8BIggLhL5A64xHRG+N9izkUzPht5g46aKgD8ccQ153QhCPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EDyECVB2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M2yCd7lp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61JCOwbk1716451
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:23:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hdElgaqsrEQEm/JlwYpM13ka1q9XzT8KVVd3e8bUd+c=; b=EDyECVB20SQy3zmf
	0vWW9q6UOR9cxpbecCE5+WBHiY4winbv8ESv8Zw8rvGWwE/gDdfK4DE96jrDUFDE
	ova/qh3wtMxkw/f83v7mR+dQuIswY0GkS2unvX8BRWKrh0Upb3YSMnHnUsuz8WoA
	n9+m7KkgDbNtGhXuEWLq+cZrM9GlcOD1Cp/rfQz2IKQZTEidELzSh9ftF9yQuWuB
	S+9oMG4cCp1AheNue1t0YAsalOIA+ak+dvD9TqojKf6ln5mAwWsEpNftMd8T+BT2
	SwPwKzw6HUOX96v80lg2wbs9jZrJwPMbx59lOonHzXv6U4fxzST/NnzslWOFUaAd
	lZ6Gkg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ce2ghr550-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:23:46 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c6de1ee12a3so679519a12.2
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 05:23:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771507425; x=1772112225; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hdElgaqsrEQEm/JlwYpM13ka1q9XzT8KVVd3e8bUd+c=;
        b=M2yCd7lp3OzlZV+ZI8z2hM1HmyF3uUd5UZI15oWh5YPA9prkYSxA3+gZO13TCQ/BhA
         Kniau+B7SNH6VfaerqFKQyKKNxiJG7T8Hgmh9E1WE3piabeVlVR5g6OBgE7ng0+nMwUW
         gbK8LbHkJi3IkECiTMNIch4bEYgLPLFhvBc4AghYJp4N5+08usPjrbvaK8u5fJnLI2rZ
         +WZnHdHx3L5EY2V0FWxQI6VB5k16F5kzs9X7+7rV6w2l7AY46C2FLryCt7PX0irEUYvU
         NDWV4jhTF+677vyoVa3epSz1MoIW064hxZlO34MaVOPEnNgb6WJTh6pcFunomV8OFjnL
         E6UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771507425; x=1772112225;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hdElgaqsrEQEm/JlwYpM13ka1q9XzT8KVVd3e8bUd+c=;
        b=RDxaJ63a0YA+1WnIbM+uFkmkmbMnZ4xQ4WX8/cfZ6Cxr1gAYG46u1L8IMN+57n4hon
         tWd6eflV9Oygh1taLa0+4dEKbJmoiv7iwCamcyFKHF0FzBn4+KI+QPT8wv5NKSGgZOO1
         yTCuK5PznREO3dt1iFqb3slH2x8ngJpT8in8YPtsHlAr3LW6+ZJ44aOQfRo1kRKo7R9I
         CAmgoxrG+xbaQEwevUO2XsgzoAdS+FxMnbrY1hu8b5ZquYrHXPlhoJxT6+Gk43SIe7qO
         JaixrlCzhwC581smYq17SlzT9NsnZqsu+TyBFBmcJKWaIc3ljdzC8Ay/UVPhghxe8PsW
         xDIA==
X-Forwarded-Encrypted: i=1; AJvYcCVu55DbfetorSok3DXsVbGhM5DLHXZ8YrtxLE7svmY/JFf/o0i/acPfQE2DwqSjVEdzHc5tfGU1N/Vl@vger.kernel.org
X-Gm-Message-State: AOJu0YwDlN/ht0L2MJT52rSPF8aH8BxCvSVWEsTQVWiF8Vk34VfYOvtc
	Q61XMpZKOJXcw5G1DUBdvx4XP3SQ44WZvwtc5YXZA2PBUeMj69g8m7bKValN6EXvusajiXGhXBP
	2TzewlS3zL7yqFNx1aM3mpB284p0le0N03hg7JlE1cJgrIUFtVbyawSt1Ks82lmzO
X-Gm-Gg: AZuq6aJJgxCIOFRksKmz/37fNSzXQ5FgIPYU6p937YFfTkAXQrF2MF+N1M5sQA1Zvx5
	xhctxf8KkIwTt72nHRasYRWiB8gOpGiAbwY2nSBgntOKocYuP+F0PkvK0Cuf2lCZtWy/I8iqiQz
	RLm300p5XF5O5GG/thm76NBJIPIJ+IhU1LaymuSatTEbm5YCna7Ykvlnz4ITFNW8/P0hiZMzGUm
	8KYy4LgHdM6MeUMAt+RTiBj2KMk5zcrcJ/CcGVZAN6U1Fn0CrA+REiv6AW5dSrVP+UjEu4GyTA1
	N+xdsFR8tPLSoIly0aTc0UPsY134F2IecwGuVrt/mfwsFeyb+4ghwGfTvWVW3Oq4u/2nepopJVZ
	R/8UenLJSfEsL7t8vwmbKyVGxr2PFsiWnc5sNPpJoMviFGkGaISkg+FY+7BdrffsrH+EGHdc91F
	WWqTMSYgzLWFMnR0LwTCYvJnAkaeUBF0zxOYSwBWlt+A==
X-Received: by 2002:a05:6300:228c:b0:38d:ebdc:3558 with SMTP id adf61e73a8af0-395120da3cdmr2390367637.6.1771507425194;
        Thu, 19 Feb 2026 05:23:45 -0800 (PST)
X-Received: by 2002:a05:6300:228c:b0:38d:ebdc:3558 with SMTP id adf61e73a8af0-395120da3cdmr2390341637.6.1771507424706;
        Thu, 19 Feb 2026 05:23:44 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6e52fd0ecasm18489620a12.7.2026.02.19.05.23.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 05:23:44 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 18:53:26 +0530
Subject: [PATCH v8 1/4] dt-bindings: arm: qcom: Document Glymur SoC and
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260219-upstream_v3_glymur_introduction-v8-1-8ce4e489ebb6@oss.qualcomm.com>
References: <20260219-upstream_v3_glymur_introduction-v8-0-8ce4e489ebb6@oss.qualcomm.com>
In-Reply-To: <20260219-upstream_v3_glymur_introduction-v8-0-8ce4e489ebb6@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771507414; l=797;
 i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject:message-id;
 bh=Tf2s2ioOrDRKV9la3WETakJW3VpMyIOxdWHrnolT6L4=;
 b=lGVPateCHKjrbw+XN3dBb/yJjq7qLlRjdJxLm6bHlishgfVbI8DgyaH/Z9Srx9ldnIiSdTMpo
 oXIB5nlMHOoCVGe8r6krZVQERZerR9ZqudWQfPWjEaMWo4ZyYOos01W
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519;
 pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
X-Proofpoint-ORIG-GUID: IM-E9qE8BufZqEFahGKAaPoUh_6MKsz8
X-Authority-Analysis: v=2.4 cv=dqzWylg4 c=1 sm=1 tr=0 ts=69970ee2 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=KVNckf8Hb-gWPUCTgC0A:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDEyMSBTYWx0ZWRfX0P6jYwaWLSvd
 am+nMfHnLr29BmE5qTu1v8sg10igDA1/G0WHWZY9roXkth1POhNJH5P+Zb4S8Otieq0BcEASW1j
 7J9kHjQd9ZIeBdRtl+kkuFsLDz1kbR71owqMZ9o5KsoYiJJWquJudScxIoN/Wu/HZfCZO3rDtwI
 N49ttzTRvSk4Uz7iVuDHVa7UoVrZ9EmMneCM0QHNQe9suDXQ6jO/tRXkdZ5zu7kMZQSzXoKA76W
 wEjP1WYZsVBwdqiDJJj51CJFA9XBC9gdPI4WFma7VtsqAcleHBoVFCDAw2570KKnMgUlKDJ6evH
 QbC9IEQZH5Tzz+8IT2IvIkyNycaMXbXPKRiIEUjuT7Qn5Y2dBRUOCKVe36U/Qs/wlJYeHsXKjrv
 CSYozwRij23CreZ2/EYDrdGyE77gLoDvyZ2yWmB9dbO/ww8j1opgYCcxQPtpKhhqVW94RnwHCBv
 YKr1PoJ3Pm19Wlmv+lw==
X-Proofpoint-GUID: IM-E9qE8BufZqEFahGKAaPoUh_6MKsz8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_04,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190121
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266650-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[pankaj.patil@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 46ABE15F033
X-Rspamd-Action: no action

Document Glymur SoC bindings and Compute Reference Device
(CRD) board id

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d48c625d3fc4..34a19e664556 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -61,6 +61,11 @@ properties:
               - qcom,apq8084-sbc
           - const: qcom,apq8084
 
+      - items:
+          - enum:
+              - qcom,glymur-crd
+          - const: qcom,glymur
+
       - items:
           - enum:
               - fairphone,fp6

-- 
2.34.1


