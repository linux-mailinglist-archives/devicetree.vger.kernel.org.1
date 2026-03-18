Return-Path: <devicetree+bounces-277005-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBGOIhFfumnFUgIAu9opvQ
	(envelope-from <devicetree+bounces-277005-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:15:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEC12B7A9F
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:15:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 82AAE3003D35
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:13:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75DD13783C7;
	Wed, 18 Mar 2026 08:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KyE1dyHk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Rj6WsNS6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4334B2BE7DC
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773821615; cv=none; b=VwRS2uHJLCI+ATSKK90RWd+IS4cZ0ij+0LnzM3wLVY7mLncaGxKi2TFn58FgDcOKco5Bn/zLB7OdHyZySstF8g+ME2Tks/e4/tOjIxe+8C2Kbh+gdw+5F+UJGrcj5ta0AZK8FHqwuHn4OUkHgcUVCzheliAAgdvURVjPPK26iek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773821615; c=relaxed/simple;
	bh=VqRy0C6zladiEiSl0DOLfQtClSjSMcxmIJ2XaFwti1Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=J0EoW0oGLEL201qePohlRGqcm0mCXHcxPr51UqAFDu2D71e3V9ZJUvJ6rkt5so0fRfFl0v2bDOwT60LHVsK2+mK/v7zYxAKFfZQ9+yGIhHS162Oniqp6jiKaylGbmI6fl2+hMTsMlIicZW1/dLbR7Y5+1xGw13YsYU1JeRGuvj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KyE1dyHk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Rj6WsNS6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I6ZHBH2878115
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:13:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=19WDjJedxyFYNJIXHx2GGb
	sPdTBU8eZ+K17q1lrM3dY=; b=KyE1dyHkTM6dKVjFsXpbD44PBMBuh1jNEITcZM
	x455AM4xl0deAL3KDn+R98ABSUslEOAMrdr8OOeePRWXAzMcDlp4OST9e3INrsGg
	Qm4vAeEAneg8Mahb8R2YVoJNMTPt84/IfG9hVEgYmOwiE3PMp+ve/egi+HDmuttl
	27oq12Fq33S9JZAJUN9GrFsoBPTlaBMSPxCCUqBviCPzmmbvswVqQSnFcWDM1xc+
	mTT82daUPymv2IrY0+Cnyc3MInOodD6QWNsnosDk35j8JVXs2D5rHvJTmLPUAADB
	1h/GIVGCItEQ2PGfbggNqTG/jteYj8/htaNIisvA+thHvrNw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cypwr0eh1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:13:33 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb706313beso239658285a.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 01:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773821612; x=1774426412; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=19WDjJedxyFYNJIXHx2GGbsPdTBU8eZ+K17q1lrM3dY=;
        b=Rj6WsNS6Ekf/T0nEuKR1A+GHIIvwJGwMM9vNJNVyjI0OzgciI/YL0/kLyh6gkVTiS9
         eOhL1kgrLbPiOeI81ARWPmz0EZ1wiaD+9VhpMBuxXA8+0Ka1ytIs7h5jj6wj9MGcSVim
         cua4GDy/NTUC9WDVd8N/h8n3fJKu1uKux8bPK45VBny4B9fNst8Gf2QduBIbgUQfSjrw
         p2yMu5Pyzh5mgZ4szGFdZaxGWzuBzJ1Do5JknnwN1gjqVfsPCAU2EKP5am95+/trDDKK
         j5FVi48UvI663SlmfnWBq9cLJdPOBB0KILkxvvBd8AoLzcUNgIPMmFJae3TnVBLMRoyK
         rX0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773821612; x=1774426412;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=19WDjJedxyFYNJIXHx2GGbsPdTBU8eZ+K17q1lrM3dY=;
        b=Ku5Uh1nielJm5IzIkYeyGrEzXdWgnVM8P/bWAIUbFNKQvikWPUDkH2mx+WqiZutGJI
         Kyro6D+/reuCmCMkbZi1BJ5tEaQkVMgPwrRBuZcSS29aOoV+P5SoBpDXoptDQFyKkPmt
         OCrMxBOr1641z9bdtTGbetbM3gOSXS/seb277woDaHPhcsTwXJCj7Z8K+95O3ki6/Q2A
         xXH/h2vN3cyS8LoZn4WIL2RjMirm6gnQB/sBQBkbOz6dRqP7x8jM+d/effDVwix/NnVT
         rK3RSxCmJoGQ4OMSZLf3hB5RxRF+zNPTcszmlOpCVpmSCiOk9p/T2qib+LWxXr6v7BLQ
         5kUA==
X-Forwarded-Encrypted: i=1; AJvYcCXMeLIut3MLinQ4k/PG7KhYGNyTdTRMs1Bluw9wzskD0NLFtArW3hUqq9a/LRoiIYTGZOOkQjoTtOtu@vger.kernel.org
X-Gm-Message-State: AOJu0YzmiW0EClICF/4ZlHYqk7Utj/9gxCc4o/dwErKdnruMvhhbGYDW
	W/Y8nG/eu/kSwAiogWZ++4ujWFl7dIK6J26IixIewAR1WW7JFIoH9frhDSIH9j4Fkh4UlUew2UA
	W4I+6YeGWgwCZ0zQ/XI5uoRjtH9EjHl0eiPDCaCdX1p32o+kPKypovjghCr3OBNs/
X-Gm-Gg: ATEYQzxVoBhtKg+qHAI5mKNs7g1b1AZ/MwHP3LKk00iL0bDMTmDhrmvQ4i4vOaeMpsz
	YEDTo+G+MzK0vhpVygeGXp5u0L0exaIqv5aCiU7bKGHouF9npnNrcoIFfUTXwX2qTP5ewyY2GI8
	C/xYkhwzsrIK3cnEQ9uiDyDUrI6hVAqw+Kk0keyiBIWm54Bfybsg47MsxmSsw0lIPkZeuiKxTqe
	H2hrpvG2ycDUbZ7v2DwOhBwCcLUFQH/t+EUaSSat5I60TpSk5o3SI3xIq2qZL7YA6qVh/ILxwcj
	MzRduM8qm050r4ckvW1rlhVcuUAn8fo1qqPMVQXzEECyMhQMxxtv8Loxkj4UL9ZwSrbulq2X71m
	TTzqn0cqf/sBLliNSmDDpLwiOGe8=
X-Received: by 2002:a05:622a:95:b0:509:5859:2917 with SMTP id d75a77b69052e-50b148879f0mr28816451cf.57.1773821612360;
        Wed, 18 Mar 2026 01:13:32 -0700 (PDT)
X-Received: by 2002:a05:622a:95:b0:509:5859:2917 with SMTP id d75a77b69052e-50b148879f0mr28816131cf.57.1773821611665;
        Wed, 18 Mar 2026 01:13:31 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4613243sm24849175e9.1.2026.03.18.01.13.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 01:13:30 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 10:13:22 +0200
Subject: [PATCH] dt-bindings: usb: qcom,snps-dwc3: Document the Eliza
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260318-eliza-bindings-dwc3-v1-1-92bdf233cb87@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAKFeumkC/yXMyw6CMBBG4Vchs3YSoIWgr2Jc9PILY0w1HbxEw
 rtbcfktzllIkQVKh2qhjKeo3FJBs6soTC6NYInF1NZtX5tmYFzl49hLipJG5fgKhq3vYeFs5/e
 GSnnPOMt7ux5Pf+vDXxDm34rW9Qse4ossdwAAAA==
X-Change-ID: 20260318-eliza-bindings-dwc3-4b6e4ea45b93
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-7ae85
X-Developer-Signature: v=1; a=openpgp-sha256; l=1568;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=VqRy0C6zladiEiSl0DOLfQtClSjSMcxmIJ2XaFwti1Q=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpul6kma5YqxOa98y/l615PKIyrgRGFzLWAWcg+
 0XNLQ/gUL6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabpepAAKCRAbX0TJAJUV
 VmABEACbFRUUIgdPMGegK+ho5ZLLgsPH4EasFSuWFC/iPr6tDlEXyS7IzpFFuCc4Ew3YYGo6lOp
 clNFI+GKmv3ZVA7/hm3wT2voCkG6BDt5bDv0Iry0FG3liAQVuDQuTyJ7IsgP4w1sQETUNcz5rBe
 uzHaEF1d7ivT5E81MLpvvnIbwQgh/K2UAv/0LoFn7PwiQJNheJqwl/3QIOg8xMakU/pGHrN9N7W
 FKIgYQWmEV9bkP8LAfmx9fpWFpHRHNO0J1mPdlug/zlitIVK/xZW6XYKW1iBT/A3v+AsU5H6nF1
 3m2hEXmMEQ0GG9GTkeImH53HKkr7WLaGgNFXpgorrrFyTE2yXH84eZOffmPjUOhKTlCYtvKbFj+
 0qEtDLa83FOZPhCbRfC8bMPOh9upho3+GQSNQZlU42O1vIyrNsVMPNoFER96xzYX/SoStPLmYIH
 eOh3lrQC/GMG2D8GXizn8+Hcka6gB6piurKn+ETn5U4EHcpCq2Z04xVEGKrnlbfLMDGorsWHYqR
 V1D6Dygy7c3k7rhTTr0xmMwAD+LfEGqE7HqaIY4LXCtYlJoTVKCamcAfUs9YSttDBxzZw4h7Wu8
 rgGeCCfuGqgPd7MlcjB2CYapHxvCd4PhyFF94Hv0Uwj8wPecg917Abxg87lLbxfYiExdA8+Jk/U
 aHUGid0idn8BKRg==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=bIcb4f+Z c=1 sm=1 tr=0 ts=69ba5ead cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=4brKZRnnUR1JoLn4V7cA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: oPuer31Gvl9w6i10XNuqDjmJMcdZUVcg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA2OCBTYWx0ZWRfX35rkYPiIr4uv
 iXO4Mmbp+tfeVdsDYn3K4BpVD0BtPhjVU8QvBRv7jxHIwXxQQNfjrJQoI6+WIob13QdRWZkcBCg
 Uz6bFzYzEJ4cjsIJDyfrDaqMB+CkA5IiInUaKnJB/Shx5y3LYLx18YiuqAuJ+Tj05yCutd+jVFV
 uRQCa286p09LeR/XV9krua+XyUVs/m1RLcyKfc0BcpH0Q+oSSVQx4t1JfHZa3Xfh6qmMN9HXbnp
 wBvcq66kwI02+DaJbPVJLsJf6NM08gW3jL7ERdOt1eTtO6fSg28Bqd6RsLhIe15d+0cy6JND9ln
 AitLxDBi14hicyzlzbdbWwvF/8DXVHswfFiVJSAnXgR/26ewAU6y6OP1NojCqFtajgq6fJ118YK
 W6AV1qaITy03czD1ou2ROny7osr6JPCvVRkLdFM6NUBQaJprrL3nWPnrRNEpkXyGYRtlwPQKdzM
 QOX62J/frcmbdYkgOww==
X-Proofpoint-GUID: oPuer31Gvl9w6i10XNuqDjmJMcdZUVcg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_05,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180068
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277005-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2BEC12B7A9F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the compatible for the Qualcomm Synopsys DWC3 glue controller
found on Eliza SoC.

It follows the same binding requirements as other recent Qualcomm
SoCs, so add it to the existing schema conditionals covering the
required properties.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index f879e2e104c4..e67a967c677f 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -24,6 +24,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,eliza-dwc3
           - qcom,glymur-dwc3
           - qcom,glymur-dwc3-mp
           - qcom,ipq4019-dwc3
@@ -346,6 +347,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,eliza-dwc3
               - qcom,milos-dwc3
               - qcom,qcm2290-dwc3
               - qcom,qcs615-dwc3
@@ -507,6 +509,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,eliza-dwc3
               - qcom,ipq4019-dwc3
               - qcom,ipq8064-dwc3
               - qcom,kaanapali-dwc3

---
base-commit: 8e5a478b6d6a5bb0a3d52147862b15e4d826af19
change-id: 20260318-eliza-bindings-dwc3-4b6e4ea45b93

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


