Return-Path: <devicetree+bounces-267614-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIsBBL6nnGklJwQAu9opvQ
	(envelope-from <devicetree+bounces-267614-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 20:17:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8419717C375
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 20:17:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B29C131DF55B
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:11:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B92A36CE0A;
	Mon, 23 Feb 2026 19:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DIRhN4j5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aGlD0LSn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD08036B042
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 19:10:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771873848; cv=none; b=U59uLJDXyF7K4wXZwWVy4802bZPv+M2rhqrKFYPuUMfMmGfKu2Qxf0F+urgmZINz+l8cq5iI5LF3GGp/1/vTqixhcSgK88hrj/P5EPEUR5CahpC49DRPlxcpmEznRgRec/nrwrn8pgxR83V9AQGwDBhPwS4iVnrs/tcJkeSj3yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771873848; c=relaxed/simple;
	bh=IrnseUpd8gT8z82b3zfzFcQlz0NAUvy0SeRFzBbHVc4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=ShBuS+cNHjhmv2qlJ7KQNTjWMso29RXqwfunn0F/foC5YHVlHdRT4BEHCl7N+0A/uQ+vuZojoMxrFkXLiXO6mkzZEX0EoB8jOajQDgQw94MY+00cD77DOx69tUyTI7tmofznX1xAySq6bdowYPe0jB4ZXtG0UJ5ZJr32ZEZjnAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DIRhN4j5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aGlD0LSn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NHZtFq322482
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 19:10:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=ZfAXXZfZFZznm6XeMrxkA0
	kaozX7UR/VjB5pRxEAVnk=; b=DIRhN4j5b7ZY7iulJA4IshsbYO2ohQNvUR03Y3
	vJcAJB13rKxwt+T2qphXgUtWYpzE47MOFh2RwHO+60Q4RSfxG459PscFGRMQZvD2
	J1TK4pUyMvnNjPnyZTrhEq4iSpyt2HVW13Xods9hCCtC/RT+YoFE3/MdogOaJfRe
	ktf25MH02qVXvVIv60P5l2NgX/7RCygYTR5OwuN0PbM4S+esf5IEP1sg8hMraUnC
	1Wc0uRCqI5NDGqW9LwUd1jkKN3wim3/Barv9kgAxH/u1zURDilqJBQojGWO3QxKi
	L4uONYVf9oohKVIj9gb/dSp9XWU8Sk/1Bwu+m1MmBTgcG0mg==
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn8y1m7e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 19:10:45 +0000 (GMT)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-40ee3b0ca58so46927314fac.2
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 11:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771873845; x=1772478645; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZfAXXZfZFZznm6XeMrxkA0kaozX7UR/VjB5pRxEAVnk=;
        b=aGlD0LSnlSSdyJjymCc1svB3jf/3qtkZ5rzN0rp80sXawGQkETXVgvruQbamZH3JmC
         rd1XrhZBlYNvsxT+ploFD4lZwbUVv8RKLkfw2Zt9elhMMWlnUD8Q5Xdecn2smwuQmtrV
         fuTqbN3G1u3TmszLVBrQWYhloGn+zeRkWyAU1rqIpzu2Onfd2nYyJdIONj/3OVhm5Xx2
         Hjkn+g31oQLfUQY35s/OBrM+nwpcy+dQedDfIiLxJzt2eQBW6qJAzUXbgp3WUTH5b4rM
         2hCyHucdT1UuVMHdpl9SPUi6gptNKzVw5AZG4H+3eBDA0oxLPaoFKsvlv2ovqwoIpbPP
         MDvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771873845; x=1772478645;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZfAXXZfZFZznm6XeMrxkA0kaozX7UR/VjB5pRxEAVnk=;
        b=snKwGaBSE3OrcGSq3Yiup/3F7VXaB5d2cn4+pMN2V6FbbPeX4iPtZEG5ZweRxarsWt
         4HY5YON+B/jMmIlDZRkSXMOjhHKRKB1NKGCfDAh3D4U1TYMbxpnjP/paoTJOS0lbtYRJ
         66ue+tfyCnRnwbhR2GrheLGvFC1QzYXcIZsYnE9JkTji1f4HcuqANLjG2f+Igsn4dNkM
         raZMSMGqmIhIXLLCHtypcapMfMNTqmt8PF7mX9klGclM5XzUH+lr+GnpZQgz+ATI0JsQ
         VcSRfeu+xbZ+Wq78l+HGJSBGaxoHFj+VBjAM90Qgy4kaTr6sILI5FxLkCWFsxWNWQkHU
         6sEg==
X-Gm-Message-State: AOJu0Yy5qM0P2sulOYX7ynbpE28trk/7gMkxYkiqLh02LRjIhYn28k/6
	FOkLweBza0cNd0AgjZA3eAywBFfMNRkHF3TgCpfZ/bHQ3VjzPkaLbInnC9J0IMbtQPGmj+Ja5Jk
	YxDPdpqJa4MQp127uXh3EELcof2nY6HSBCBeJ1MnCMWtidmK/e4TBJb/zT07jN2DuU4Q/fQm5
X-Gm-Gg: AZuq6aKrkcGEWM5wxGu0dM+fNApYvIInm8D51Ic3K7Ns5Pmq2SM3+CNZI6tInblM/KX
	cVFMTTx/a23y3P+PeDYvP1843xmaBiJ65BuvooqXmK5NgH1V0ZueYleVNfuXt5qrfARQtzVBMIf
	D1OOkfQMjfVqcHPbZMKV8tbczhnM3OSggz9Ej9p0UK/2WXuL8yeJKxcKPFNrORC45VT0iazsQHp
	1lUWTJs1qGLcAbWIgCkKWUHdfzkHtyLzY4BosMolg+4j2X26qJpkD0awFGlUyxolUiw2lxwRbp5
	sw5j6BWdDz8qfZGfRjxkUPYd2MaAedvZCJtYwyKKmGBFwxGt/Zt30DQUyig93OQOC3bTJb+PqIq
	pcv5MGECIp9PbviR+Ji1ISgjBgcOE5a4td99g0xxIDO3vLFJVQmxh0u5hYQLFHJmPm9u7LZI63m
	M=
X-Received: by 2002:a05:6871:ea13:b0:3dd:6bdb:e741 with SMTP id 586e51a60fabf-4157b0ea2a6mr4963119fac.26.1771873844647;
        Mon, 23 Feb 2026 11:10:44 -0800 (PST)
X-Received: by 2002:a05:6871:ea13:b0:3dd:6bdb:e741 with SMTP id 586e51a60fabf-4157b0ea2a6mr4963104fac.26.1771873844269;
        Mon, 23 Feb 2026 11:10:44 -0800 (PST)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4157d2d77e3sm8580902fac.13.2026.02.23.11.10.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 11:10:43 -0800 (PST)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 0/1] dt-bindings: connector: Add role‑switch provider phandle
Date: Mon, 23 Feb 2026 11:10:41 -0800
Message-Id: <20260223191042.825136-1-elson.serrao@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE2NiBTYWx0ZWRfX4TrwGDnHacSo
 AZsLqKRyvqeXJOOmToUFp7YxDjreznmXOwe+Pg7vidJ54OdZkVMOKpj/iOVHqjCWKU6ga60g8aF
 MEkpqAr2MlNhW50Iv01iQniG95CV3ZQI/erHabMaa8VLgE6cuFyK207aUWuYfT9d/qGukeMIih8
 RDgvNbs+Dt+bB9QMuDzGqgVm6Y2zUL5Ul2tfKaj5kklViV9tlR2XV8JKVxX/WBC2wPYjnIi2cej
 mTj7jLzUxbw5NdI9FvgpbEYxeL+EhrAFFFHcpN4RNfOsQtfqePUdpSa21pa0RN9x5jtA44SiElF
 +h3dMdui0ZIIKt+jD6V0F7H0aebYGtnU5uRs736hz14Ph//LCNfjjvRTT3iY3esPPJ1e6v6w1Nn
 K8ZxkLxnFYJf0CEr7r+FjytQjPWn7B/AMKsjcFovBiGbUTTRg57LU3Ms43Ys6X71Cem4UfkppS5
 QDLefZQGEb5dCBmjvXA==
X-Authority-Analysis: v=2.4 cv=edYwvrEH c=1 sm=1 tr=0 ts=699ca635 cx=c_pps
 a=Z3eh007fzM5o9awBa1HkYQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=suRUVlQjLIQ7l_8mqXEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=eBU8X_Hb5SQ8N-bgNfv4:22
X-Proofpoint-GUID: Gs_BTHuTk_5N-g2OjwMuW05aysHnqjyr
X-Proofpoint-ORIG-GUID: Gs_BTHuTk_5N-g2OjwMuW05aysHnqjyr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 phishscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230166
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	SUBJECT_NEEDS_ENCODING(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267614-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.3:email,0.0.0.0:email,0.0.0.1:email];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elson.serrao@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.2:email];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8419717C375
X-Rspamd-Action: no action

Hi all,

This RFC proposes a generic Devicetree mechanism for a USB connector to
reference the USB role‑switch provider when there is an intermediate,
block between the connector and the controller in the OF graph.

Problem
=======
OF‑graph links are strictly point‑to‑point via remote-endpoint, so a
consumer can only discover its immediate neighbor in the graph. When an
intermediate node sits between the USB connector and the controller, the
connector cannot identify the controller (the role‑switch provider) from
the graph alone.

Example (illustrative only)
===========================
On some Qualcomm SoCs, an Embedded USB Debug (EUD) block sits
electrically between USB‑C connectors and DWC3 controllers. EUD models
HS wiring only .

Below is a simplified diagram of the hardware paths:


				EUD Block
			   +------------------------------+  
			   |                              |
[Conn-0]-->[USB2PHY-0]---->|-------- Path 0 --------------|-->[USBCtrl-0]
			   |                              |  
[Conn-1]-->[USB2PHY-1]---->|-------- Path 1 --------------|-->[USBCtrl-1]
			   |                              |
			   |      +------------------+    |
			   |      |  EUD Debug Hub   |    |
			   |      +------------------+    |
			   +------------------------------+

And the corresponding OF‑graph mapping

# Node: EUD (intermediate; graph-only for HS) (extending [1] to dual port)
EUD (eud@...)
└── ports
    ├─ port@0 (reg = <0>)
    │   └─ endpoint  ── remote-endpoint ──>  USBCtrl-0
    │
    ├─ port@1 (reg = <1>)
    │   └─ endpoint  ── remote-endpoint ──>  Conn-0
    │
    ├─ port@2 (reg = <2>)
    │   └─ endpoint  ── remote-endpoint ──>  USBCtrl-1
    │
    └─ port@3 (reg = <3>)
        └─ endpoint  ── remote-endpoint ──>  Conn-1


# Node: Connector 0
Conn-0: usb-connector
└── port
    └─ port@0: endpoint  --> remote-endpoint -->  EUD:port@1

# Node: USB Controller 0
USBCtrl-0: usb@...  (e.g., DWC3-0)
└── port
    └─ port@0: endpoint  --> remote-endpoint -->  EUD:port@0

# Node: Connector 1
Conn-1: usb-connector
└── port
    └─ port@0: endpoint  --> remote-endpoint -->  EUD:port@3

# Node: USB Controller 1
USBCtrl-1: usb@...  (e.g., DWC3)
└── port
    └─ port@0: endpoint  --> remote-endpoint -->  EUD:port@2


From the OF‑graph structure alone, Conn‑0 cannot determine that
USBCtrl‑0 (and not USBCtrl‑1) is the correct role‑switch provider.

Proposal
========
Add an optional consumer→provider phandle on the connector:

    usb-role-switch = <&controller>;

The provider remains the controller node, which already declares the
boolean 'usb-role-switch;' and registers the role‑switch device.

Request
=======
Please confirm whether adding an optional connector-side provider
phandle is an acceptable general pattern for these topologies. If there
is a more appropriate DT modeling approach for this scenario, I would
appreciate your guidance.

Thanks for your time and review.

Best regards,
Elson Serrao

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/soc/qcom/qcom,eud.yaml?h=v6.19

Elson Serrao (1):
  dt-bindings: connector: Add role‑switch provider phandle

 .../devicetree/bindings/connector/usb-connector.yaml      | 8 ++++++++
 1 file changed, 8 insertions(+)

-- 
2.34.1


