Return-Path: <devicetree+bounces-267615-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NekDRGnnGksJwQAu9opvQ
	(envelope-from <devicetree+bounces-267615-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 20:14:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8861017C225
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 20:14:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DDFD83042FE1
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:11:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C544F36CE0E;
	Mon, 23 Feb 2026 19:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NzIsolUP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MixS6lbs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78B9736CDF4
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 19:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771873848; cv=none; b=QTYI6cnBkIuCxFG+LjjNHpBTYh3njtqvPJmUb2xRiORuN6ULqX1SZ6Vq7qhkxwmRdwdcNq0f6qkjEMMOCF2SxqOBVyD4rCOSgcAWZxOCW70+aE9tJyg8sMzbqZ428Zu3hqBm5hmlq5nNPtOjI04e1m1ja04eUOyfzNaEjeT9QaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771873848; c=relaxed/simple;
	bh=jlii2RygDaFVp8G49dINP80ysQ2dlD4nKr+KCOo0HR0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jjhOiqzEBtfv4qCKw55gD2SaUYYicU6eLGIFSuAVgESkPc68oXkiVLV2BnaAIAfzPKLdXn7Fl/wZomG6XZZnKOuuUsEejJ4junEhy63wK1z7H7N7YPWLRfiL7Krs8Qx8dC+rTm2fcS3I6SlQocxBReCH6Tr2KPecHk9l4XgQSas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NzIsolUP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MixS6lbs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NC2gZs3151767
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 19:10:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IUAC+jjtSBO9goSoQoI4bJkMKCkl8ii9RN0NmZSrvUk=; b=NzIsolUPf9ZYkobN
	c/XthNLvZzD7IE6DDaz3e/GO0wd88IwXrgs/qmoq61PPTebRfoqi8y5PGWFK9fLe
	AciW37NcvX3bo9Wv23RbWRIO2n320iJ2nGro94CEUtzV0LOv+odpkBX+13hcwHDG
	nsgqlvtEv2InofXJFcm2YnugWtjVj+A+Rm0lADEE35lqs6boUoa5Kt2DNssm+UnK
	+dMaSgivkpu5Jy07XjFE7jWINkRLUO9hJNU+YiGf+L8+Iz6y1lL7ZTsJxDNRbogP
	sGpCGHFwMynLOsjpbT24qOQ4aNOrN7O34Eh1rzunpUM9F+Ib7zEAlbtKL1/RQSHk
	GDTU0Q==
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgpj89c2d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 19:10:46 +0000 (GMT)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-40a4d2264abso54741496fac.2
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 11:10:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771873846; x=1772478646; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IUAC+jjtSBO9goSoQoI4bJkMKCkl8ii9RN0NmZSrvUk=;
        b=MixS6lbsVExCj7aFTMu5SfDQndKZAH3SdbQbHfNKJrXL1i5xlj1B7nW1Q0H+N0mvNM
         h82yuPq6a0VABrmiVmGzGAB6PMQQLng4QPoAdDrD0NnIzyz8oMZ9Olo7ypkTQN78KSDM
         m+u/0jgE5Sjc3JWxWlHNMPGc+2OB1VzDgVvRYKMVj0QQj2zt9CVWarICMHf8UxbaQSXd
         xARE+it4ZPeKkjEVihz++adlj+7y/Qyp6DuLkb4PzQ65KQrObzPArgM2GYSXLc9XM20u
         S5ZLwAbrM9a6CwNKm45zBlP+NHutL17rzJ/VH/QDaGlkFrZ+C5pXF0qaMzVz21Cu24BC
         4m7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771873846; x=1772478646;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IUAC+jjtSBO9goSoQoI4bJkMKCkl8ii9RN0NmZSrvUk=;
        b=n9/IRlXmHt2D01X7su8bVWD2hpBo+5UKRaXl3Dw6W5bC08hvYBImJO7lWOH8/wCJdV
         HIqXzw4CzNqBZe4TjnFmqOh53MqIzOhQBh29dxeMfQNXq7uRZzUaWBCPNSc/7LSdMQp9
         C2YynLMuCVuE96HT+4uP2RG2dVimH37wJzBQs1Zfv9goPRUKEzW/GqO94MDZa00pU6O7
         wyWO7MAALuGXUvQMsTbJevMHhjPfzg4GOfcntalCApW129w0WEX/nXeNmCgRzS0tJxR8
         ee3M2BXTOLc/f750ZwTIXd13jsaaCWeUHRFje/pujVJMHI2nYRkM9E5SaDhwQdaPEaMj
         eMGg==
X-Gm-Message-State: AOJu0YzxWSCfhUAFBYIJ+/Gz/CiVhnKs1VRJHiEFO97Ob7+BXD6xgElY
	W4hmkr46RD9b1AWcKAiY/gx280fQuvI6WZcY1bxqDSFXGK9PD0ada0dYAQNFdmXDDMQ8tXsWYHX
	3yzxNl6pfDtMCpfK89635B97tUPbOUU/4+K8yjsjI0mXmzYaLJHumJf+3iQ/IXzkO
X-Gm-Gg: AZuq6aL2wQAQuYv6bAR6Oj2+envNqcDXGY1mr731waUpTbZnkjT8g/SQ4M1FpmF9JCW
	CF/P6N4k00aNJurRUl6xXZOYgOND2194iWe/igAYPxb7FoWnojvxUCaJmPc+0yY6aAP6DPWVgXF
	Zyg7AH2IbMn2YFKAcwHGXWpTP4Gvlek1hQIlR/VKiEFOjDQqoLgvG0P4q04VKfnKjijaD8nTEJw
	h7GiNj4+GKQNO1GXAAjPlQ3Eb7n3uVj0cKSzWSIiLiYeEOR6h8cMR99Wg9+IL2oTQin4bX5DCFs
	tT1jLzNChKNH5HbkcxUuRzD7Fdg975tp1s91Ur+AJyuwUDW8ECJ+2c/LQE5AdP20cpLHAiu8O2k
	giBXNJm5D2CsVWP9GhXU1PjlGE34D1jWWIMyfNM726VcrWU4W5CBCVPOxDJ4NBuUQbHYcZ6h44O
	8=
X-Received: by 2002:a05:6871:39c3:b0:40e:dfe2:4256 with SMTP id 586e51a60fabf-4157ac763f7mr5181755fac.14.1771873845925;
        Mon, 23 Feb 2026 11:10:45 -0800 (PST)
X-Received: by 2002:a05:6871:39c3:b0:40e:dfe2:4256 with SMTP id 586e51a60fabf-4157ac763f7mr5181740fac.14.1771873845566;
        Mon, 23 Feb 2026 11:10:45 -0800 (PST)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4157d2d77e3sm8580902fac.13.2026.02.23.11.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 11:10:45 -0800 (PST)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 1/1] =?UTF-8?q?dt-bindings:=20connector:=20Add=20role?= =?UTF-8?q?=E2=80=91switch=20provider=20phandle?=
Date: Mon, 23 Feb 2026 11:10:42 -0800
Message-Id: <20260223191042.825136-2-elson.serrao@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260223191042.825136-1-elson.serrao@oss.qualcomm.com>
References: <20260223191042.825136-1-elson.serrao@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE2NiBTYWx0ZWRfX5iWPpBfhCU00
 LDnHxllNw2Dx+4OQJrpLpGaq9/pP71dhAQuAkULo3ga0eyReIqqXWUedNjUGaRlMYVpMhPfIe3T
 kqRS6UMcFs0+YF0JMUO3M0zpXKYob6m4yvgjFbLHIzlmHDade4G+l/w94l9tCGKhSQgVWMpYB4M
 HNkgqC/hDFOp9NcuRlj5+9J7PA+amNx/CqLLKeUDU1rIqe1pk4z7PbcQu1kyfZf9Byv+vTNHGAG
 gwGYEhSWe+Nr1/33Oi+fM2Ejsy+dP/fLZqCkLSxIKIVYB3+5Hju7L77/rMrMqiNER0nSPVSUmhs
 6PITHb2XqUoquOLLqFGvBoHcrtiFJIfFkqC+73vGrwX1pl87wnPxuzZggMVMh5YhpBmHT77kQRj
 mbTg1Hruy6K0C16uiaHXBzSxL6vWrnc8PRDoTNSg/PXmDfE5cDZCIxMUGk7Hv6o56lPquBQGjDy
 2FIpUIjcoYRMrAXZjnA==
X-Proofpoint-GUID: oOjm6UVV6LvJPsUiOG4c_yATab9TooHT
X-Authority-Analysis: v=2.4 cv=Z5Lh3XRA c=1 sm=1 tr=0 ts=699ca636 cx=c_pps
 a=CWtnpBpaoqyeOyNyJ5EW7Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=5KLPUuaC_9wA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=sZN-TDlxro2n473FCN0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=vh23qwtRXIYOdz9xvnmn:22
X-Proofpoint-ORIG-GUID: oOjm6UVV6LvJPsUiOG4c_yATab9TooHT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0
 priorityscore=1501 phishscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230166
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-267615-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elson.serrao@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8861017C225
X-Rspamd-Action: no action

Add an optional consumer→provider phandle on USB connectors to reference
the USB role-switch provider when no direct graph link exists. The DRD
controller remains the provider via its 'usb-role-switch' property.

Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
---
 .../devicetree/bindings/connector/usb-connector.yaml      | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
index 11e40d225b9f..ef8d3d26461b 100644
--- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
+++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
@@ -95,6 +95,14 @@ properties:
       - device
       - dual
 
+  usb-role-switch:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      A phandle to the USB role-switch provider. The provider is typically
+      a dual-role (DRD) USB controller node that declares the boolean
+      'usb-role-switch' property. Use this when the connector is not
+      directly linked to the provider in the OF graph.
+
   typec-power-opmode:
     description: Determines the power operation mode that the Type C connector
       will support and will advertise through CC pins when it has no power
-- 
2.34.1


