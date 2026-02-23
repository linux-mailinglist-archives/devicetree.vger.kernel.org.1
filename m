Return-Path: <devicetree+bounces-267297-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNRmEmISnGkb/gMAu9opvQ
	(envelope-from <devicetree+bounces-267297-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 09:40:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 611BF173275
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 09:40:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 05D173007B3D
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 08:39:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93A5834D4F9;
	Mon, 23 Feb 2026 08:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="omjqY1pk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AbeGFjzN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC7334D4C1
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771835994; cv=none; b=n1APHhJgcVt5/PGZsXuCEbjv2W+im65iG/eF6/jjTNG5gA8Pkt5abNwbvpSavM1v+x/0kZ9n/uj41NMagNvYW5PPLrEEtsflM91aRWs4PnGeXFQp0FeYxK3Nu4RL58mMhyo9lwuAg9x1AMy6LjB69FLbVdgPdQHyzQwYD+lPc8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771835994; c=relaxed/simple;
	bh=grILvU4H7RpDG7Aav0NPtZio9xIoXx5x1CUd1XoPRG0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=XWjdzRahbQmS1TW6xxemVI3Zuk5Smhp8hXzNKlKokHf8ZaTa49y2IbFx05Qa0cH0j9tEIy4ay34UZ4+JSzOAxs6QV8RCRHFTRcxVZj5fiyrLNkyD9QL4jlA9+jtKslm7HsTCAvWGWwMJ+aXE6AiqwGJO7SOjt+nZOMIXT8u62H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=omjqY1pk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AbeGFjzN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MMTEAU3003192
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:39:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=tG5+bKknP/D/SI+HXxAYZS
	QtxV6PMcnXC0l9j2QrbGM=; b=omjqY1pkipMoQIMJ4ND9S3inKJbZCc8/iO4dDj
	4Z8PVUcwyb2wIkvElo7EDgv6Cpb7H6Lmgjm9Arh9M6rhC1EjPxolcl86tDz9KgsM
	aNsrNMB84d3GRIyI7FyMWnTX9rLMxytQCgKtiDDi8kKNZsoOUXVZC86nH3lLqu26
	itPdB0wYl4gRdheA62PIzZ6YeE4b+z/27JI1EGTXYnrxgM3PLVkbotKXnoCAW7rn
	trl9qXie92K+PuGzIpa8Jdu180DvVzjpdTdW6B5G7DVMNfYwPlNB0wDGADFGhjpY
	JM+86cDJP5kk1a3g+kVG5rjbAYJI20whtmwvZUErcRHd93DQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5vj3xr1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:39:51 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c71655aa11so6349769385a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 00:39:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771835991; x=1772440791; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tG5+bKknP/D/SI+HXxAYZSQtxV6PMcnXC0l9j2QrbGM=;
        b=AbeGFjzN7NQVaO6tZtmuY83B6HVymXwcDl257+IreQPE6Pw5uXUXftnttFudi0Rkqc
         2bqNx+3vG8/Tih4wkYMFP5s0Iq+wFjK81HDxM6QF7j5+kc7RNc66zGhoVToUhNavgtJ5
         yClrlzhoUwHIfCerc3i0Avj0xiIIQR0ElvzFeIhs1t9JcoxwrILtndcrEOddvH1Zc9Kg
         3HbtHXUS0SDv6pFWAbHfzJ+CVhV/or65xi6yAbXw4Wk/swwKKrnlgdkeAQsAQ+Yp6YkB
         mytqyngfMmiOtJZC6rc5+ZmzD1hW4Ufbp18DB4Z3KxNz53gDcqxQSrZ4DPZeoc1VeV8m
         w3+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771835991; x=1772440791;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tG5+bKknP/D/SI+HXxAYZSQtxV6PMcnXC0l9j2QrbGM=;
        b=JChcwnXVUiQbkomT27mvXsRygj/K2kmmGT8iWvbG388oYHyG/uE3Fkwar2hILymRKH
         j1wkqoVrL2NfaOTDSfB8M4JOxg1bKluwj//vt5ntxN5RNkbeZvHnIsoz/Yd+7jf9Dshs
         7Bv20rF9XEHuqFwbEUTbk1ADg9fZhKLdy2WTw9M7RzwHG+BQljxI1Qy2inRVEWL9+fyH
         XuRfEEqdOdpziq2dvCN711gNUV+dQ0QZQ7BOax6NffIxblZxmYUAOelfv3WmIHE0NAFa
         bHOIHSmVPYunmh84GCLkNCuUgUEJ4+ke8C76TszEto1A6/CA7MwfLnwviuKBJ1+wA9Sz
         Ii8w==
X-Forwarded-Encrypted: i=1; AJvYcCWFfKcKWofWT2A+R4WPHd5lwfH2w1GIys+bG/1LL1gjwP16Bc8TY+9W5YpKdfXKRvZwddPe+LYJPZh2@vger.kernel.org
X-Gm-Message-State: AOJu0YwiUF8Riet4M/1gC1GhTMfyCx/KBDEcijSgatqi6n7GKk11bSCw
	k7XNxbIkIZdpuk5L0MxaR/al91HC9Fwbgg+4A7NALfPnbmFTqnmd3TodgU9mvyvlmtowo+TF6cB
	ferOCbXeJBtVdarw5X8yEhROzSXbXINzR9zEc/ng/nvFfS/KIgRpebMz6XGYRrskl
X-Gm-Gg: AZuq6aJalyfK88cwH+nAxgyFxi2igbcZOWQ1mu3a4+0EoH0cRPCTHLXShzE3Pxf/Pht
	OrIJ6D6T+gVzeELgFHcrIblebMLNZfCSEnUx0GLGacNn+x8jI4W6bzCR1kuditVGb5A3Z994Lx4
	lcO8uvXXJAoUp+W8zjMummphLmgBbkuxwKbnGnYpUJjDStLquXEZ1n9j03sBipf9WQyYma7q+W+
	fGTZrMQHnfmUTTkDsUjRDnFycBP1r/KC+Db9wVfy0/8nQi+Ac+VX+Ja9SmS/J99EHnnwAagIa4j
	ri9RDag4cDILf18i+cMhAgmB0oNr0a9qxIJ5MN9pTyxRbSRuNMsbY1zDQBfxKmT8kZhcwQ7zEg5
	ivRdrfNswlzu4qETLoYcH/Gd//KwB8Q==
X-Received: by 2002:a05:620a:4551:b0:8ca:4444:26e8 with SMTP id af79cd13be357-8cb8ca8c3b2mr1144745085a.63.1771835990587;
        Mon, 23 Feb 2026 00:39:50 -0800 (PST)
X-Received: by 2002:a05:620a:4551:b0:8ca:4444:26e8 with SMTP id af79cd13be357-8cb8ca8c3b2mr1144742685a.63.1771835990008;
        Mon, 23 Feb 2026 00:39:50 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970bf9f77sm19573840f8f.5.2026.02.23.00.39.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 00:39:49 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 10:39:47 +0200
Subject: [PATCH] dt-bindings: qcom,pdc: document the Eliza Power Domain
 Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-eliza-pdc-v1-1-fcb17464fee2@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAFISnGkC/yXM0QpAMBSA4VfRubbaTmK8ilwwZxwJbUjk3Q2XX
 /39F3hyTB6K6AJHO3uepwAVR2D6eupIcBsMKDGViErQyGctltaIXEmdWIs60wihXxxZPr5XWf3
 2WzOQWd8B3PcDj3+v3W0AAAA=
X-Change-ID: 20260221-eliza-pdc-91084ff28782
To: Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=952;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=grILvU4H7RpDG7Aav0NPtZio9xIoXx5x1CUd1XoPRG0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpnBJT9pG5x2DCUfbdxdCVc9fVBsJymgHEwLEFY
 2UMP07udVmJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZwSUwAKCRAbX0TJAJUV
 VokyD/4zpHSbWpc/krPY57RcrXpNiT38JKaSkO3cAuI49taVXD0DaXh4DEIoUnyJvN+V5iodx3f
 MZk0TL1YDx+R2k1rlL0cR5U84r76aBwurKDDE2bWc/FmZ7na740yTX0umJpFxRO3RHiLDpAAlgR
 xct3mKQjXXIMg0iB/NC/8F/DqT/jq153rYQiPCi1NmKZsUhbYpEGAGDsPSVovZsw0LhbdhCDyCe
 kanBbe1WGRo41BnTuh9bqfH9cFewVtjJF1zI4UITFP8g9CU4zjcQUlYr83Z2uNCLoavjQuq1RrR
 sbb68zmRbqoiidEyBL1HSWjHu0+c3YjOuyKJgrBZSQC4kLQsTR4wmCsqKIrGDRpQvHalr7mMgJU
 VES37XrRFlm+DY5deVYZ3IHFPTKagV5+hPgtN/wySkLfhOmVDDGfuY/WSMfH5c3Iy2XMDqGpJfe
 twtzE3WytSiXOLsuHmRLw9qLEDvyk6LXXP4R9onDGEJa/EYfh/gPbAdmwlqJ0xk99hiwgAlBQGL
 zzM3BD4PnR5RlzJZ9wJDuSEYDeAClJrMw2++DDyd8V31RupX4IUu4rYOFnaTHphILN2OirCOAFq
 OBv7dUGqgvQ5mJo0K4YqGTHAkpHllQzFprjsJ34fUWm8GJ88Wn91Gn3s3lNqH9TI6Se0PBxCWU0
 eCfrBkoro6iE2KA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA3NiBTYWx0ZWRfX21KjyVhd5MEI
 J93stIZWFJ9x+jOETuVcILSvgyuzXMwa6OzdWqm2SrpJMoa5KFPWJNy5xbJS+eELORA0y7iUM7n
 U3/p2iiH9mryOLPAve6gCdjKUbRZ8esia5IRAO0pcurc/P74lAYzmwvn2bWz6rKhFeYDLPnKpLN
 b8bdZkmm+awg6Af9sB36xyTZnoGZ/vVNs1wWa6fyo90YMfihILYrVuXeRv+pFRc99Oa1XNY7Cr2
 8kHXJ7wmh7q4hH6VhY9G2kdOCqfwTH6li7wxkI4j0Eh9Uy4+FMd5Kc1ebfrM5Kt8yKCQt3vYyDl
 1gay1qe4vOVGDTidl9/DwI0QEyHJBKwCr/hBQtX49obizvbFxS7eUzRwrAx+E+uDiPs5v7rujrj
 2aYo+inVlQiBkfb+27BHfkroQTw/0fDgjEBBJRUSY8GPNW2TtusPzuZYybtiv4aKNM6gG+jaNZ4
 yyjr36vVe91RuQdncgg==
X-Authority-Analysis: v=2.4 cv=T5KBjvKQ c=1 sm=1 tr=0 ts=699c1257 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=Pjt0bzuEMq89orxaCbYA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: CGHnHHRzWEe2uGf9tsNUhNzmEvvCxRhE
X-Proofpoint-ORIG-GUID: CGHnHHRzWEe2uGf9tsNUhNzmEvvCxRhE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 phishscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230076
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267297-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 611BF173275
X-Rspamd-Action: no action

Document the Power Domain Controller on the Qualcomm Eliza SoC.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
index f9321366cae4..5ad68b2c6fc6 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
@@ -26,6 +26,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,eliza-pdc
           - qcom,glymur-pdc
           - qcom,kaanapali-pdc
           - qcom,milos-pdc

---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260221-eliza-pdc-91084ff28782

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


