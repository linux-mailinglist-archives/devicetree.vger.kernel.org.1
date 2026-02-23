Return-Path: <devicetree+bounces-267301-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBVSFfoTnGkq/gMAu9opvQ
	(envelope-from <devicetree+bounces-267301-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 09:46:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB4517343E
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 09:46:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 87F963012BFE
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 08:46:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0352734B1A6;
	Mon, 23 Feb 2026 08:46:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jCwqAXMU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HDZU33DA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C536618C933
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771836405; cv=none; b=fCFzd9FdLCrY7XItI5lmHiFumGn52zFrynfBVvdUp4x7uDz+govvpXrO6jc7uQpqJvsGU7pgUjkB+W3BibjONXuUlrjvKFZ0YpgsCOdv/ERZ9U5IozjJyPAhd0NOVfVjXooSe0Cw2nL/8TYPF8TgMKLPTnDex9lbXn2vhEYdJqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771836405; c=relaxed/simple;
	bh=8AJH83rXVfEXW1J33bR0nuh0ov7Mv+Ai5lWlF96GRHc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=K9dUjaUZ0RCBGUGS46BED/00E4IQvaFmTJ799ZmQUOR+7PxuJKOr4yKDtHjp8Ub1swNdDmXMp8Qgi1M95H1p2vGqgtECxhefTlGHvvRg4fDyGwc7+z+IdQO1IR+QEEQolcSeSMxNhe4Q3rdYPi1i0/Co2XA58A/Za1kt+Q0Hk7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jCwqAXMU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HDZU33DA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61N0katU3271586
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:46:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=n82k/w55FcgX53/IQIrWIx
	Dm3R2DN+nUhmvaKVw8RtY=; b=jCwqAXMU9nDaE6lanrFtjPTBEz5aOVF1yvjS0t
	vHqw0UgdoC/mZT7Iul4bm2wpBCkPpXmAJhr+NHTVf4cTfdRyyO6cmd7+FWOkJSih
	M6y1zY8iEhp85VHK4Zi6HtzAWU+rme7600bWU4dmJMGXPhl0phNaoTBlUQb5DSNu
	4TI4uv9M9iA75421TmyXmC4qcMUx9WlbLotml4Y4CkK6re7IWdbhkwqQt4Ksce5+
	MOI902ribAwL96WYxz7GYJ0oxcdEOBA14ejNK0zBVP6x78vtGWzPnf6WUT71oImO
	PxmtH/L+ERXGr8gN5DJG0tVYemJHDkZGHZ8pCYW24RDFLBPg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5vj3ygt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:46:43 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb3b6b37d8so3766923885a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 00:46:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771836403; x=1772441203; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=n82k/w55FcgX53/IQIrWIxDm3R2DN+nUhmvaKVw8RtY=;
        b=HDZU33DAIl3F8rt99QRMyZuXYLfpv08SKu2sopPVDsoZNDRlgMMBDErGdPG8sUNQjx
         EQagJPNzgtCtsAHbmPYNmR67oVU2cCSDszzqu+cXHnTa4vYZFac6ZkbH7NGufMUxQ+B/
         zgpCO2V3hIKTfVzpagZXLFnEcetMLPbPL8I4D7+LJXLCesSvjiePvWJoToIki0tjxC1m
         RZBUIMIIfk75KIe3B1YRJ/dPxdzXlAM2LpLGE/wqm+oeU8OebR9rhY3QohfEGUYeGH1l
         N8i7frEz3dW3HzgOZIQQK2nwkFcvRN8sM0BD/ARgcoRYc9LHP9CEziEyQHy49vUeGyf7
         +Oyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771836403; x=1772441203;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n82k/w55FcgX53/IQIrWIxDm3R2DN+nUhmvaKVw8RtY=;
        b=NLCdo0Uso85hqG0ojZ1GIt12n5hRx/C9U5VHNu0cXbWiiaTJt6GfXcL91ExmXa+taI
         OxsPtrPVJxFCxAEbbC9u1mI/k+eOxXrs98OJBNehhU720uUZ3aLz+TkAUYS1U8/giAIc
         eyQCUyCNwkP7sYmpdhoIGgqG/YleEBuASHXsVkVLin/7S0r9sdkNOEkop2RjCceD5OY0
         EdacMS843/v1CR7DssBLl/wK91W3xOieZINX6f+tx4gYYwAyeuAd65xfjB35y+PuScIs
         aF9jy9Ye9UvehKijqY3Oe5LxqZ1Jef8RuX1MoqA/Wr3TUXvZNsa2xyv854LL9ekKpbPN
         AKWw==
X-Forwarded-Encrypted: i=1; AJvYcCWZRmkITls5GDcTIN6RhsFuZGFdMxZRC7duY/nHG6k06z2FglyIP4xfpIZIugOOYydUVdytrZUqDDy3@vger.kernel.org
X-Gm-Message-State: AOJu0YyCnI0l8Fg7KIJ5ivSBvacKfm4dviUVNeb8Y6FRXjD9GHPHmQ+X
	J8W+bqIu8WdC/RBPot2qtfI2639coXlDExHTz6JvfzNqy/KcT/hCsXVcXbAoI3/BaA1lwsh1lV1
	NOvlFTnla4KRfmUaDWV/fiKjP15KudfSssxJXdApNlVOpOx4aGN/NYEGwAOj96vtHZKLqT5cZ
X-Gm-Gg: AZuq6aKEiXg2cfdAlhoRzh+YZHHxkJRhGVIjcELSL0+SSYjIkDCmkpxUHaydPGWmbkY
	nhNaY2vCujshQEmXsdzM/hN22KU89ZZjU8JWuzMkSjnw98rPecqXw8YxlnI/j10qiG2iJSv4D9Z
	rJ4zPBCXoN3ghDSjurgRaoMgseH+l8i0TjY1ofnz9cyW246kMgeGIJQlGD8McOd4vxVkLKdNwrr
	Zs5OaWlZHK9ayoz/gxxoDw9yu+9c76hZGoUBmlB6GOUUCS0uihMk7vlNwnT98UT6fnZErsKoHWu
	MAuha1mDSXvvDTHXMURUPeQwOdYV64wxNqy2TZwFW04QH+1qe+6Ngeo5sbu/avkyixtLuqy35vO
	9hrD0B3ZmXVHlKTyJtn2QsvFTQ+246g==
X-Received: by 2002:a05:620a:4045:b0:8c0:cbd8:20b0 with SMTP id af79cd13be357-8cb8ca18f94mr1010153285a.34.1771836402945;
        Mon, 23 Feb 2026 00:46:42 -0800 (PST)
X-Received: by 2002:a05:620a:4045:b0:8c0:cbd8:20b0 with SMTP id af79cd13be357-8cb8ca18f94mr1010150785a.34.1771836402375;
        Mon, 23 Feb 2026 00:46:42 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d3ff1csm16370928f8f.20.2026.02.23.00.46.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 00:46:41 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 10:46:39 +0200
Subject: [PATCH] dt-bindings: arm-smmu: Add compatible for Eliza SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-eliza-bindings-arm-smmu-v1-1-7a35a76201a5@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAO4TnGkC/yXMTQrCMBBA4auEWTuQTn8EryIu0nRSR0yUjBGx9
 O6Ndfkt3ltAOQsrnMwCmd+i8kgVzcGAv7o0M8pUDWRpsESEfJevw1HSJGlWdDmixljQHn3bdG3
 wQ+ih1s/MQT77+Xz5W8t4Y//67WBdN3ChCx97AAAA
X-Change-ID: 20260222-eliza-bindings-arm-smmu-07c3143fc6f5
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1003;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=8AJH83rXVfEXW1J33bR0nuh0ov7Mv+Ai5lWlF96GRHc=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpnBPwntu1jZtnK8ugi9hs0WbYg/8SVKBq55Fzr
 /vn16m6wdKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZwT8AAKCRAbX0TJAJUV
 VumoEACoxr8gPTQ1ALnN+9TxkqknqMgEDfZ05rcBASrOF90m/1O8Hu/FgATUyOdUYKLYM1BmSp+
 FkgsaNhrN5dQ7iWKEgUNm76WbuUiNnsq6AvMkSgbfCxZHD3F2aL3CJqB6FyIk+lGHs7LOXTvw1B
 xNRI+dOD3pL1EEedUG3U8vd/sRbxpZFTvaS8xm/9fTgWwWk1tV7q0ZbeDUT5XTMpVHQkIfuzqDF
 STTbOiumq466QlNR9YKrCyY++aSVGvt1eHw2w5w1kdWLUghTlEi8cs7FvGPvz1zjmBlh98ZA41+
 EsED3oSE3Vxp6k45cLlarvp2AlPcAmBrTk84AyE2GrtvrHyWVB5nCRHPnPQtZP9pzboSCN9tCtc
 cphD6VY5WT8jrGCgM6Y5yrb6d4YQ4i/vYOg6yBNuYwPtb2xaRPs4dmNQqrgLQomYuXY1YzckFrt
 tWDubq/MU4M1Rnc60wGVNOvtnkAnWqOXqTt8QW5ajsLMldrUuO7ZtaPRLdeH+f4dTzbQ/jWWe9B
 weLPgKvGLECz2Efo2vq38NMK3yfysjDHnjSl3tgRX6anAr92myxlWrNjwkG8dYg8rTfm9jmtsh7
 6O7RlJqS4nIjHPZtVB5O5UfFSeJb1yfYHmb3ThFqVi3Wi1b3b60ayatm9zPyFk9WSY4RlY2e0MH
 +Rpvu6wHmDPAJkg==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA3NiBTYWx0ZWRfX/kcxMQbV9yp+
 PtMYYJEBiVBMSmBYiQWqKGfBM21yaZzYKjudO4rV1OzrRBiK3+2LfH+mOQbZ1zRy7HLWBE7DS8T
 T03j4KlWGRsONQnZ09hg16QoQG+Tk9Yj7NNbImjT0zcJ3HzXjzM/p9TADU7BUPQSiQ3J5r8Tcc4
 XBJxkmvckZ4tsx/N82EZpbdIG9L01IYN/C/u3YuTc1nXtWxf02IXwwSej8yVF+MAtmMj3fi+aNV
 92BiZRbadioayQA1EUnzCsRwYsK67MAHNpbvUuOnfCLsd8sE5iCdCibSLf0Mjlhkb8rMxD6UFto
 E54j4llPdDUgm+low/jTj4WsbYNymx2QbSxqF2yWf5isMBjqlTH1f/lM0uYtcTeZwHE94E1ogmY
 nDUivuVYLfKLEuo+PMpcLi/vice9OKG6tlpwQQRu8W5smtsKA5IlaDJgQQBfF2uxbb4D9TLU3Y/
 Ie/PRJMvoXdSWMcNQ8A==
X-Authority-Analysis: v=2.4 cv=T5KBjvKQ c=1 sm=1 tr=0 ts=699c13f3 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=cTTMG9H1hPCtB3K_XmwA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: wCkORmM6vkdAwJxupsI9wuciEliTUk7j
X-Proofpoint-ORIG-GUID: wCkORmM6vkdAwJxupsI9wuciEliTUk7j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 phishscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230076
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267301-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BFB4517343E
X-Rspamd-Action: no action

Qualcomm Eliza SoC implements arm,mmu-500. Document its compatible.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index cdbd23b5c08c..27d25bc98cbe 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -35,6 +35,7 @@ properties:
       - description: Qcom SoCs implementing "qcom,smmu-500" and "arm,mmu-500"
         items:
           - enum:
+              - qcom,eliza-smmu-500
               - qcom,glymur-smmu-500
               - qcom,kaanapali-smmu-500
               - qcom,milos-smmu-500

---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260222-eliza-bindings-arm-smmu-07c3143fc6f5

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


