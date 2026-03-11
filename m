Return-Path: <devicetree+bounces-274071-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BoFJ2pmsWnsugIAu9opvQ
	(envelope-from <devicetree+bounces-274071-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:56:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E97263F64
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:56:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A39D3305D1D8
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:53:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21D4E272803;
	Wed, 11 Mar 2026 12:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HdLC+8Ky";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cpdHrZM1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3046242D72
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773233614; cv=none; b=HJGrM4KZtcAThoMbFzyWrlsW7HurinqLlMG0Aj4q88IoHM1eLk3hph4UhfLxuwCwHYKm3YPKL9JkHsiUlCBdHvs0rka9J2IpOHsl4BGTvC5wv2ZIuANIhIlXnNmWLSSNg41e/KDpUQPNbcWMIvehH9gznHEvYRGpjsTY797srzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773233614; c=relaxed/simple;
	bh=Pd7Hbm/FXObN75fvZURHF4pktPypvE6Fv9zWvkXllNw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Lv1m6AVdeXhCS2xiUGkB+ScU4jI5cuTVCFzvyGXb9C7S36Rxj0V83LTUF2gHZPhLWorV2t5PLevs6U8rsMVi/u44UbMxufRjzmgV3CaOOk/31cW0e+VAIoeu+WQO3bskh5wRzzSTcI0W/azRr36ZTx1tw5M8jKRwpAZXyLG2wIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HdLC+8Ky; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cpdHrZM1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B7brP11265877
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:53:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=PWh6IGq/8ag1gtw243P3Wr
	2/vj3d+dLlU0tnIp3rGZM=; b=HdLC+8KyPjBWdMGMhrqe+jOSevBoYUlM3AQU9W
	avRTXa7W5z3lMbHDlu36RZSmnb5XCVGrFaUPtH0gGa/CVnVAdNasdMxo+QexCOco
	dXl7v/Yl1tMbWYAlrb+OedYK6B3vsJmkKdCMtBvbB2FLwD+WNbx0Y6RPCvzH9d+S
	RHiY5zMFaWCGZiIblhO2ADlTUos2eoFTN/TeMl6LrsunlbYOBiWO7i2ADZXGfmoK
	zY80VbsDqdjaNu5VMf37rPed363WnnchET4uGBv4HD/+83QnNJtR/HUKrRSSryLc
	EsllqwqyCYRdLv9hRkHztfrQLxfsJ4v0PwcaUxmbABI/ypLw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctpkfm1ha-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:53:32 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd98d96382so193815485a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 05:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773233611; x=1773838411; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PWh6IGq/8ag1gtw243P3Wr2/vj3d+dLlU0tnIp3rGZM=;
        b=cpdHrZM1Qio6AmJG5Vb5Q5gdtVzd5gsYTjnms7r2NobjCFlpWp/xdMMohLeuFS8TH7
         dsSA9Dx9bU7P+msAUQoE3xy0sN6JRivNWgcbPaA+GF3oqLVP+OjqjZt/1/Z6hyhCvt2a
         HwGPicqoXaO8gh8rLfzOgS87tqjr9XZtXX/8p39vCwIcrmGG9Q/TH026i27Jw2p2CmYr
         k66ohAMo++igk7T1D/J7k12tdNodXSPs5YeJEqPvf5dOpbnO3iMwS8qxOzWQYzK9NHGJ
         vGzSQ5PF5pNPxHfG8W0BuCqEyRYygHzgm6FNeeG7l/JExeJqeZfWzu9s1EA4Tpkk4zWb
         vwXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773233611; x=1773838411;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PWh6IGq/8ag1gtw243P3Wr2/vj3d+dLlU0tnIp3rGZM=;
        b=sHgVrRm2voprgX0ZSUflo1xu/4uc56zMrtt1rO16oF/o3rW1PzHveY9zwDxcSSA4d+
         ylMy8834j988yZCex6sLGnEXEeXiKLO9HqeqvS0/oQ0gHLOSptW0hPLxEx0Zs4ppyWkq
         3ppVhLB99v43Oh/8MZ1rZm+qgEBkynzm3YH6CTCEUmQKp2aarL1swkMDc24joQULk9Z3
         FMGYwCJXzy3qdMZF9McPZv28tkrmQEABVUUvhcwqaF7EkqnNHjOopscyKMIVA4Z1xJ7X
         dnAsqhSsw1pPcR0MNOKvSpCOsJByfcLhmepW8JWxBAoSrcgIXJrElvNDZC6Pd8BNuMWj
         OG+Q==
X-Forwarded-Encrypted: i=1; AJvYcCV/neNEuX2EPO8zCk35QLZ1ULwzB1gRQ7zxjD2dxd8oDd27tdDsTeCFN1bJkooLe6o83PDMdXueQHfh@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+PUv5mEjJHaHGFS9QMJdDO158YdWwUTLytuFT0jhNXjXhbgg0
	wUSgtnFF87mJvN4sLTAgpx1EjvNw4bHEGHGac36PHGqd2jlnfzSs2QgkYGnwXesZNTKlXC8RVQ6
	HrSl5+eMpKY39CmvO+2v9FoPxIaVBBCm3VZpKA1KYXrNYyUL/mSd7QCXsiXtZyfs3
X-Gm-Gg: ATEYQzxAnktHAzpl2lkVn9S/q9RLlBTJi6lPHPttIy0p5LfJMmxtaMta4cJcrdHT+D3
	VThM+zdGMpJjpDEjbF9zB/PYIW0YRX8rVEZ+gDvo2yF039cXoySAYoMF3J5wy7uLQSzhkuxLhnb
	qI1nsHp1jcOoGM2y/kL+MjjGWuTeZiGzve+VvokygGhLEHx8gbV9/Jj0zgL7FsqHDLRv3OwLLdn
	V6plXhJOmrk+1Go3sjU3pOfzdrRwJwPlxqDvVYswqzJIff4fjqNiuLhbgx2B0bfo6tZlnj+olpd
	L3oDvcfsyy3IsVH4Lwd1XMhZZpVYJ7ICjUZLG8W/8Th5Gn2DN41FiNgndiuvAPrgaJvBiq+3nuk
	Ctyx1fXl5n/mgS+9Bh+77TlpuoiKUZQ==
X-Received: by 2002:a05:620a:1a17:b0:8cd:982d:410c with SMTP id af79cd13be357-8cda1a8a6aamr298192585a.81.1773233611070;
        Wed, 11 Mar 2026 05:53:31 -0700 (PDT)
X-Received: by 2002:a05:620a:1a17:b0:8cd:982d:410c with SMTP id af79cd13be357-8cda1a8a6aamr298189585a.81.1773233610495;
        Wed, 11 Mar 2026 05:53:30 -0700 (PDT)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854ad5ee37sm40833315e9.2.2026.03.11.05.53.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 05:53:29 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 14:53:20 +0200
Subject: [PATCH] dt-bindings: spmi: qcom,x1e80100-spmi-pmic-arb: Document
 Eliza compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-eliza-bindings-spmi-v1-1-1a20eec1179e@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAL9lsWkC/yXMQQ6CMBBG4auQWTtJBwxBr2JctHSE32glHTVGw
 t2puPwW781kmqFGx2qmrG8YHqlAdhX1o0+DMmIx1a5uXSPCesPXc0CKSIOxTXdwF/eHIL6V6Bo
 q5ZT1gs92PZ3/tle4av/8rWhZVgxKSyt3AAAA
X-Change-ID: 20260311-eliza-bindings-spmi-8d49b1a61d03
To: Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1385;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=Pd7Hbm/FXObN75fvZURHF4pktPypvE6Fv9zWvkXllNw=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpsWXDE0hd5D5VWsjquyXv0ycRjnuNt3sZPsQ+m
 ZbNMk1JmOSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabFlwwAKCRAbX0TJAJUV
 VoriEACgsBjkOSOSVDQ4PNolNMFZogl1ydVHx5SXHKTN4qrbT4SR6fh0XV6l7SuabkEcZOyppmW
 LgFLr1H3UH4A2PhNoNBBP1meXHN0bQ3xTr1AsaHvL2K3xzb1kN/dvlX0q8Akgf06HWMkWg3jCY5
 HgkHdROy+6sKq33Q76hMTjCgaf+673z60FdqMIi+MvSfByMGC177HPSQhrjdGmIZxC/jcOj8a8k
 vC8hJXpdL069dcf2IgUnFqIbdx1ZkgsKjOHInBvbue7u5XluYkj9XRgvo+3k1MgyOTApOa4mr7C
 9PXjToDpMp1HpZYDjm2R2dKptsVrTZHVxTTUl/LXAfcnFIJ8zRDV0HIFZLIgnxbzgq/CsCxo+X4
 1YPItX5PvRuJBYTwgLxkWVypcjcKTqZ2MsNTRnUzAgY76lz5ZBr9JQ6dlJ9PssYTF169/AQonMB
 Q8cx6FbjJyLqv8eNYGxE0yNeEWK/S7NilVnhAbAFTkfMgUqSlOp2QsGJKwxQMqnMbQqfoLbLqfT
 wx+yVkAfhGD2ugcPjNyQFdL6PeSY+C+5tjKRlka3lqCdhVbkett6gu38QqQAOumwIk8ZZ7s857e
 g7wNIHrl1QI8NiX6NcPQpr9v02yh/zqPHMVwNweIT3PugvBXKyxbwKgziZIXxHp/F+ruiOJ1sQO
 6r9XaLrD6Su69cg==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: eWOL2a5moDuzQQAg7NZNm3WB9xfT3GN9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEwOSBTYWx0ZWRfXwiU+8yecL6wL
 6W2al/H7NNQcVqnGWw8FmZN+WXDqnxeFm1Ls/iDQ0FxlfDcJ3nNnu1tQYtTp8FtcetRE47EFN3K
 2wj8uKqO3wnma7zAy+isp2unK+hASvp+rXLnl7s9saSOg8dANCwFyExqadHV9KBjUR+SH5XV3d8
 SpFwmpC0KqvJb0B7xNG0lai6eMtVyjQ4WhFkhOFYzM7o/TYqHy+PuRP0FAPIn0Dhe2XyxvDld01
 lUT0+OA5zEa31HReNbxZMqqR/IPgscHKWjnY2B6BtxiMnG4E4qOOfcEIzEINHzW9hmyb6SsUChE
 nDILYrC/21Q6M48SUpdc6v+aMHeL+qAQTNKxUmN/ULr6jy+F/w3nXd0/kmBawcrqGsm2Zv+sRce
 ykTXnXzDGCsl0SmgEJ2h5u2AkaJ31bIM1Qs680hx4vTKc0dstSIhX/8J9//VvN0AAEV/hQquOop
 +9R1PcwnN6spNoneplA==
X-Proofpoint-ORIG-GUID: eWOL2a5moDuzQQAg7NZNm3WB9xfT3GN9
X-Authority-Analysis: v=2.4 cv=Gq5PO01C c=1 sm=1 tr=0 ts=69b165cc cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=f2GZPE95ynGLZrnRSRsA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 adultscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110109
X-Rspamd-Queue-Id: 07E97263F64
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274071-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

The SPMI multi-master Arbiter found on Eliza is version 7.2.0, yet
driver-wise, still compatible with the one featured on Hamoa (X1E80100),
which is 7.0.1.

So document the Eliza compatible and allow Hamoa one as fallback.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 .../devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml     | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml b/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
index 08369fdd2161..f28cdfc9cf0a 100644
--- a/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
+++ b/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
@@ -24,9 +24,13 @@ properties:
   compatible:
     oneOf:
       - items:
-          - const: qcom,sar2130p-spmi-pmic-arb
+          - enum:
+              - qcom,eliza-spmi-pmic-arb
+              - qcom,sar2130p-spmi-pmic-arb
+          - const: qcom,x1e80100-spmi-pmic-arb
+
+      - items:
           - const: qcom,x1e80100-spmi-pmic-arb
-      - const: qcom,x1e80100-spmi-pmic-arb
 
   reg:
     items:

---
base-commit: 7109a2155340cc7b21f27e832ece6df03592f2e8
change-id: 20260311-eliza-bindings-spmi-8d49b1a61d03

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


