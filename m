Return-Path: <devicetree+bounces-312456-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LPZwBv0lMWr6cgUAu9opvQ
	(envelope-from <devicetree+bounces-312456-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 12:31:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DF668E509
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 12:31:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=CK4bEQZw;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=TiyDP0Y9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312456-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312456-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5B33830974C1
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:27:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B37143C063;
	Tue, 16 Jun 2026 10:27:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C3D43C04D
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 10:27:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781605648; cv=none; b=Nc921rPPP2JHHl5XzefycLrMfqwGiWxomsrc9Kcfn1L43sQHS6aN/Uy/2vywOj4okwPysh/cNhIhS6OmebTZ4m9ydI0841do3QXp3xlOYXdSZSLIW6Rzlq4J7hrDi6v28QTqWMs3aa6bGCJm64vmkHb59mKIFyDVHjv4b+faW3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781605648; c=relaxed/simple;
	bh=hRjyfW+pWaCzWIfJ0WuK8pyDWdFAwez43dr4uN7mgi4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AMfq9x++bSrqQCIwSg0TtFC4J5sSnVNZxei6HMWtVSp4KsCNnP3x8jTMmuHNkue7G8bZMzE/qOqblwzoBij9mm4eeq9xwF9vaznjy/F6NCyR2ZLjZjFRekOYi4KDfG2fB1EiZHsbfazr/2fRjeYOHzTPq0n2dF2Hszy1UryNwtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CK4bEQZw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TiyDP0Y9; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65GA9bLI1415511
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 10:27:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aBTjcisRuYeYcYREUyFPfGR//czmffBsiUT775cdtGQ=; b=CK4bEQZwusmxmCbx
	rCdjw2FyZAnEYMkgGeycumV46w5u5hVUPkvMPLO5N89V9EE2wvH19ao8OiDSeapg
	DLNPhc5l+S+ETvKiGOVAHGrcJlCSG4Ky9mw/FLDfVCti8w35ge4d59i+GNQooWtG
	+A3xWsgH5qsN9IZ3iSP7ayhbnRQv8xGy+RgX1hHgMXexAXj6M41nIIT1eHpKcM0n
	0i9csQhOZqkaOifD0QJsc35MNe9maUN0Gts4uVPHla8mzSr2Zy4TIVO4hcXgPjFx
	9mGPRFgtv72M0BXZURtpRwdFxNVwXc1T4dbi1PTZnlIXD0QwXqjiSrYqzMVfwUGk
	Q/qAVQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eu3ct0bj1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 10:27:25 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-36b9d265308so3290870a91.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 03:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781605645; x=1782210445; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aBTjcisRuYeYcYREUyFPfGR//czmffBsiUT775cdtGQ=;
        b=TiyDP0Y94C3wd/IX0FQU29QtksuNj/Go7kLRsXPqTn97IBtf9tcB67DJ5sa9uH7xW/
         1kyLckuLn2JJPVoDQepxaDkEN9qZt1pJh4/iH9uRSx/SYgjca9ODvN0yXk1XC38HP0YY
         lw8kFKJqmYT2Xm5EeZScxIryXcmmMByU0RnoqMPNpvUE3QmQ5m8dyFVVZJ4l6YqFNPmu
         1FSeEDoMQFg+gFrQ78T9mo5R+lcjpyH31OCyBHq24lg/6YufcMAZaxbdO/j/jio4xZjR
         xEEJ1T/Dpyb67h6/GaWHJS2faNFU+68Bli/cjfmDpsR2DTECJeOJGe0v/AiGtEPtRf+I
         YY3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781605645; x=1782210445;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aBTjcisRuYeYcYREUyFPfGR//czmffBsiUT775cdtGQ=;
        b=JqPKF31q9sHnuO7MGtIRvtHTTxes6cPgN6TodICp2GwlPItSPhMC9EbIueefjXYl8q
         DtEUSPetGvXWM6mHXyZcXQBJAFZOJupEf+3NCfN8Tqv3S/34AX68CQ2RSwNbYCdj/fj/
         +qr6Mgsst7Xypp73ke9CwFC42O1jdPYuslETkgx35s4J2rCmJCyDgZhQPIoCesSwN7IC
         pSL1nB02G9NF6EzWAQlFRWBCmCCDVdz3UuVv1RT5iCSDVayj6ZkeustA6xGS/vmCOMGO
         wGSNCPHL2ih9YZYp8Y6PH/5VxhuJSXettpmcQHt3CPT9H4cSnZD27o2uZbjmi3PZNupF
         6/TA==
X-Forwarded-Encrypted: i=1; AFNElJ/juTsRqzz1WcGrAsEnm5922G/mZe3szN17PoT8yi5JqYPIJJnFkw710YugqVlHSp+Sl6WsMGvsA1d0@vger.kernel.org
X-Gm-Message-State: AOJu0Yyob9ewC2IA4zS/Jg3ypkJFOsCSg7ZWcqDhoEy1Ab/RJLOlyPtN
	O9aJhQrRyFepMWAiD/0X1NGhZH7BXUwzsgZkq82KvsuwV1Qq/uCTGVhdd283PbXVBt2UsmQ/2sN
	PRxYq8bQCz4FUrBQWmX42aWGirliDx/ew1gdG5vjuz1M4KU6WBLEnExLtt/JnE4k8f1uNwTgX
X-Gm-Gg: Acq92OG37Wk1R2qiZPcCXCwaccJAENM8kKnBCpKc2L90UoIptaBT2xoauEZ8jWhVbCJ
	v9lFIVYaqzJdgY0pIhAKF0skLzKqmcftpbe1lpAUtU2M5lzmQYXYoC81NX8JoyaRMzzzCPKVjq7
	D0Yipd28FfTfXDtYq51v8zqAvr4dpGHg6tN7RlAmj+cI+YbzXPIcKfGLcWs5FSQ+HKOJ4PK5fIS
	4PIMLC3dZgmN8GelOQ62F3l3XYWHHktz8Lye/PccrXLVlSV+TIBRvtF4jnyY4oW9UaP2aUkTqal
	im/4aC+iVMK5C7m3fUZePnxOX6Ncdc5ZR3apLCSF0dHPvvEzvMaoHu/LwUXprLJwEbAjb3+Uw75
	YnEw12icgLCyGJySSWYp2qa0jiUzqeE24ORvXDPCWMOph3iWaXw==
X-Received: by 2002:a17:903:acb:b0:2c0:a746:7b16 with SMTP id d9443c01a7336-2c6641e3058mr154941485ad.22.1781605645359;
        Tue, 16 Jun 2026 03:27:25 -0700 (PDT)
X-Received: by 2002:a17:903:acb:b0:2c0:a746:7b16 with SMTP id d9443c01a7336-2c6641e3058mr154941125ad.22.1781605644866;
        Tue, 16 Jun 2026 03:27:24 -0700 (PDT)
Received: from hu-mkshah-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c4327ac79fsm118343685ad.45.2026.06.16.03.27.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 03:27:24 -0700 (PDT)
From: Maulik Shah <maulik.shah@oss.qualcomm.com>
Date: Tue, 16 Jun 2026 15:57:13 +0530
Subject: [PATCH v2 1/3] dt-bindings: interrupt-controller: qcom,pdc:
 Document Purwa PDC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260616-purwa-pdc-v2-1-8dda7ef25ce5@oss.qualcomm.com>
References: <20260616-purwa-pdc-v2-0-8dda7ef25ce5@oss.qualcomm.com>
In-Reply-To: <20260616-purwa-pdc-v2-0-8dda7ef25ce5@oss.qualcomm.com>
To: Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781605637; l=1107;
 i=maulik.shah@oss.qualcomm.com; s=20240109; h=from:subject:message-id;
 bh=hRjyfW+pWaCzWIfJ0WuK8pyDWdFAwez43dr4uN7mgi4=;
 b=fFRUprnuGz3w+3LtuXZ6Z0g4LAvOdR8d48CRzTbJSZLR1SlLJv6cYP2rbc/nCUZbvJIA5CJzH
 r8wLxqPOgMvD59K5zJ/Fh2HIP4JYCRVZxcyhgLvS498fQIxFc0JE+3H
X-Developer-Key: i=maulik.shah@oss.qualcomm.com; a=ed25519;
 pk=bd9h5FIIliUddIk8p3BlQWBlzKEQ/YW5V+fe759hTWQ=
X-Authority-Analysis: v=2.4 cv=SoCgLvO0 c=1 sm=1 tr=0 ts=6a31250e cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=vCmKDeXsP24Y5dEMWNIA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: CGMON-FES-ONB2v_e6XsucjGkSr1Xbl4
X-Proofpoint-ORIG-GUID: CGMON-FES-ONB2v_e6XsucjGkSr1Xbl4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE2MDEwNSBTYWx0ZWRfX3/Vgsf0rtkQb
 vnsh5sdL2PXFKYdhMe1pxtNHzWisJIqpCATSiKsia1fWWp/NHecg180AYG1KxYPt4aJAaa9+k+Y
 a56DjSmqYB+2pXl8AgqPM4LLmTc1jYZwmIw1r82necOcboOaPx4VTJZVUFYwpmE8ySqKaJpOdB+
 ySdjtkpuWeN7bTrEJzR0thVv20ObhhsLYR3HowClNf0TP9Z49zq8Ea0ORX7b/gUNdCeOiNvqpBm
 8Q47J2kU9VQVB5eaOOhhJZhamJCckD+CRXIUr961J99OsVTuKXiiJ3yxFnlVVKDGjA6JCNcZS0t
 /uqMHbYEBOroyGDK5213CVYEPBgjx5R6H/sSQaq5dqwiuzgKudJ5NziRonxDIStUfmgtWOOhhDq
 WYe0Lnue/a+RkqJLFPjTzgE8MKUuQ+bSRAYiDc319MQqYr9zA8aunCf4hMlpg5F49HXJdR7a2hl
 ENB+YPBg8neq+vI00GA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE2MDEwNSBTYWx0ZWRfX6F1Lib2Hjv5C
 QvgKlIooaCdTXWKOWLt2/Dtcx1NNrAmF42XXMnSkjUPLMS6GWpmQP4kGd7JXkmO4qnjzhv10fpP
 5RUViyj4uMWtE38FwML3zgUVa5odshk=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-16_03,2026-06-15_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 clxscore=1015 spamscore=0 phishscore=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606040000
 definitions=main-2606160105
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-312456-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[maulik.shah@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:tglx@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:konrad.dybcio@oss.qualcomm.com,m:maulik.shah@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maulik.shah@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 80DF668E509

X1P42100 (Purwa) shares the X1E80100 (Hamoa) PDC device, but the hardware
register bug addressed in commit e9a48ea4d90b ("irqchip/qcom-pdc:
Workaround hardware register bug on X1E80100") is already fixed in
X1P42100 silicon.

X1E80100 compatible forces the software workaround. Add PDC compatible
for purwa as "qcom,x1p42100-pdc" to remove the workaround from Purwa.

Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
index 07a46c5457a4..420421863328 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
@@ -57,6 +57,7 @@ properties:
           - qcom,sm8650-pdc
           - qcom,sm8750-pdc
           - qcom,x1e80100-pdc
+          - qcom,x1p42100-pdc
       - const: qcom,pdc
 
   reg:

-- 
2.43.0


