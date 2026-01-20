Return-Path: <devicetree+bounces-257527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKkfDp29b2lQMQAAu9opvQ
	(envelope-from <devicetree+bounces-257527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:38:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id CD45448B3A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:38:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 333CB7C6031
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 17:24:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E4893F0752;
	Tue, 20 Jan 2026 17:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OZ/zD1KE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bNdcZi/V"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E3633374B
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 17:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768929827; cv=none; b=LMUO0IOp0BHU8k06SG3gNSwTZJGUI18iwZPXEI6kM4lasIEqN/vbMV2B4Mjav/1XFxHLhjTsXaax8XjnPQ9UWsJnYXZCHil5qUY1oWx6b2e7koL4jtX7PcIeKDwHGw4bJlTZMXEXMb6HJrdG7IXfZoXQEMbxIcy6wek7388iZwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768929827; c=relaxed/simple;
	bh=yVhF07VxzTW+N0dHjwRePyJygjk6zzmQEWTrMJtov1s=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=pajy+4hu6HLVXSybcwPgsZaE1xUEabZoYYPwGxm/o3dfA44BA5lJcKj/DiOc4d83P7nytSS0EcZnPAExrdQIL4h7VOFyEsrPwn2dqzRi0rHpdkrP2JCipt8U4JqNgsT8JRtLWxq470d8G3sRCVFa7yMMs5yRhqxAaCB9NB0cuv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OZ/zD1KE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bNdcZi/V; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KCxI9q803598
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 17:23:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=LAoJ+q7g8QEGWaQNfDk7kF
	44veuqOX7O1cwfh6XDgwM=; b=OZ/zD1KEh6mFAVY4I0VqE1253EeZnEfami17LO
	OTeHOtxk1SWyfYNAGBf5XNKMbhAZDiLGi8peugx7sNpea6jJkYyG0fQGHTCfK5+F
	WzXZMVqh99829dNezxq0sHKwGelVr6jqRRhU0G2aviYj8ZSyhlKP6hE0dml9iRhM
	vo7hZAA5rsHiwwDhMAS76IvSMoNttj9EvZgCYUbMXezWd3v01s+CAepwF/gPiSiY
	FmrrSMh+nMSc+rz3ATfhKhO10i45upOjhSFEADMEaqYMExIxOQdolnozzo9slQrd
	YgLta9dON/2eoRldwDnUVUUm+hCqrksWKzXDkH2lwITmr3+A==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bta6q0vcv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 17:23:44 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-12339e20a86so6043803c88.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 09:23:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768929824; x=1769534624; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LAoJ+q7g8QEGWaQNfDk7kF44veuqOX7O1cwfh6XDgwM=;
        b=bNdcZi/VUY6W9Ln9tVwhsTPoK2MoJHTW2DslXRV4ur3A+qZjSwJq2Oqg6hCZZexiC2
         be4dfWTQFNb6sGK+MLWB6ao6F1xMiy/jxG64mHS2kpWWZ1T9PTudPHR+u3fIWV9rX1T8
         YlvODRnGZS6bdKZXGpIjHRVrk4hCkFVEv9KZMn/o4Jlc8x/bXxOaPxkiH8t8r3Db99OR
         cx3hVgn9CXt9qNQ6vp8XbpRYYLeEMYbvsX+pUg+ts/IQ4IJAGchZ2FwE5IKbFTlQmCgX
         7nbFN/bnCDDtU/wVCQ9Wje2Y+m4RQRfCeNZYMsGWBL66t1dLdK3xzPaIvOiDkqW+yb2T
         lexg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768929824; x=1769534624;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LAoJ+q7g8QEGWaQNfDk7kF44veuqOX7O1cwfh6XDgwM=;
        b=JUn51ZfYyuZUfJUi2T2/3lGD8sHqjfAIgqHyYVjdmiFMf9Ot9YrLjfB59iC1AnDsPz
         cuGm1w44sfizrm6S/CB4fCULdZbq/K5ZBJ8+xzspzy16/4WR/9zt7m/BsHyQ8ZnEdMus
         6EJGbz+vFoPXtPk4puiAYlxW2RsOFA7iGcGqaFInPCys0Sey+7T1+08fcAMkfbB+LGK/
         hK+zhIfnxBDHFtYRr65nckjANmZhYc1ia8rjJrQfqP34JC7F2iEpf2YnptZq3rC25UiD
         1+yZuERzeZuAtZAU7xI3DUMSS+cIF1oA/5+wAm6VAoXvXd30QMfePBrEfaohQ7U3Olyn
         Td4g==
X-Forwarded-Encrypted: i=1; AJvYcCVen+Jqyl7/WVBoTFuLMYH6ClEOc7DZS/cuuIz1ANlSNBECSiu1bhkRGyQB93m7hgAlqEyhIL/pfs6h@vger.kernel.org
X-Gm-Message-State: AOJu0YyQ8ThqOhOuC4nSoALkDDZYzdQgS08cPZIgNN1/2ADUHexEhH65
	HYnMtj15tBn/RlF4nTum9+HZ0qTDGj+1p8mO2iwE4qzlZp9J+Km4OE7QU8GcXjlH5nrCyEPhIwD
	ltGzWx8WujgDfvgT6r34cx1Gw/qVGyDu/6yw2ZxY+8IEOw4gyTQ+8q8io+qINmBRZ
X-Gm-Gg: AY/fxX4xa3PzMdumMdeYLYDc0ezCTwSRnXEq5JkgzoQHel6eLgw+FCi+5Yy0qkilRvc
	MQRPkPX81/0cwmkPY6+gegDLj3YEZsy9q4hDVgbBdicwgZhQnOm0sW0+1xOFJQdad5GCnrR6maL
	DZX5Z+hhQ385v0oAww+Xj4q/o0YozbKhjGfhdJYfewYaM3uc73HhSsyeL3vbPKsOKrMKrys+R+e
	7rRW/ua0U1hQglg3qVoWUQY3c9ME5Rk1rL1qYxIymbUu0vWNaTDMfCZjskwh2KSa+CuulSPnF1E
	P+BPdtjTJ0Skddva8jyo5H+vBa71/2/LA7xuJwEskHUAiPDxDk/gLpN9vxaVtymrfVJeCHjwZNc
	du6j9sVNel74v2WbZNaYR4k3JISHvQb/FglTp5Kxa/xoraQbZGjYGextTPq7ETByRXuftIRShrA
	==
X-Received: by 2002:a05:7022:b8f:b0:11b:65e:f2d with SMTP id a92af1059eb24-1246a958b7fmr1475265c88.10.1768929823559;
        Tue, 20 Jan 2026 09:23:43 -0800 (PST)
X-Received: by 2002:a05:7022:b8f:b0:11b:65e:f2d with SMTP id a92af1059eb24-1246a958b7fmr1475226c88.10.1768929822772;
        Tue, 20 Jan 2026 09:23:42 -0800 (PST)
Received: from hu-ggarmidi-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244af22aaasm18714842c88.17.2026.01.20.09.23.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 09:23:42 -0800 (PST)
From: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
Subject: [PATCH v3 0/2] pinctrl: qcom: Add Mahua TLMM support
Date: Tue, 20 Jan 2026 09:22:49 -0800
Message-Id: <20260120-pinctrl-qcom-mahua-tlmm-v3-0-8809a09dc628@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOm5b2kC/4XNyw6CMBAF0F8xXTtk+rAYV/6HcVHaIk0ojxYaD
 eHfLaxcaNxMcid3ziwk2uBsJJfDQoJNLrq+y4EfD0Q3qntYcCZnwpBJpMhgcJ2eQguj7j141cw
 KptZ7EJxLISplpdAkXw/B1u65y7d7zo2LUx9e+6NEt+1/M1FAQGtMSVWN54pd+xiLcVZtLvoiD
 7LRiX1yp98cy1ypNHJZl4jGfuHWdX0DAvN8BRQBAAA=
X-Change-ID: 20260102-pinctrl-qcom-mahua-tlmm-433644bae64c
To: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <rajendra.nayak@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768929822; l=1688;
 i=gopikrishna.garmidi@oss.qualcomm.com; s=20260102;
 h=from:subject:message-id; bh=yVhF07VxzTW+N0dHjwRePyJygjk6zzmQEWTrMJtov1s=;
 b=FsSrT0lsNjNnSQpuUvhk17bWhZvcBDY7dzJZh7Teo0uVxkwysxis3lckzAqgOk3m0dGUffq6e
 0UEvKtjU3s/ClvMQhBY30kBisf0I5VtJeSlDt2houFzoXTKqd7sFrA8
X-Developer-Key: i=gopikrishna.garmidi@oss.qualcomm.com; a=ed25519;
 pk=TkSjNEhrfsj90i3wkABTZtAjLNr2cfYsujaTvyOIDsE=
X-Authority-Analysis: v=2.4 cv=QohTHFyd c=1 sm=1 tr=0 ts=696fba20 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=4Q-EQNNWwN3BBnYOq88A:9 a=QEXdDO2ut3YA:10 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDE0NSBTYWx0ZWRfX/zFGnBaZH76a
 kpc8G8Brcxdp56ArPtccKUF/aqRjfeOoecVOa5vMvtISH/6Rl9ULrBHGv8/dnDRLCYXXbyfGsMR
 YN/kIpJFk1dIpO2imXMkmJbCAsomqqwhJKp33m82vd593b7TQTx9C2MXDvtNw4La3ZHU1pNU8Mp
 8DArra7YyG2FwaoYcuFTWxBX2dHyCX2vD0m5se8sFijqE4yoMo5sgsOslz4XRCcUWC+nnkS39Z7
 Q+l9zW85+Lf5RaTopq07eLmiV3sFEIWl2KfFEONR+Jy4diF1U5ya2/Wa77+pcK9PGKxmbwg/ovQ
 mifMlZlVGN4digzRVfoTMcOVbV57Rrw7BImoLeEWiFsR65saCtDo7xydWOJuIbY+uwfpeh/pH8p
 j/vNxc96GrEVUefKohwRelCI/8sEaG6dCIjRf0r/yV48rXPRj2BuWEobY5NSqek0nXMqO6NPAto
 eLRyzLDFkONSl3EKbNA==
X-Proofpoint-GUID: _0w30D7W4X4S66pZYqmJKeRDF6ygV8wo
X-Proofpoint-ORIG-GUID: _0w30D7W4X4S66pZYqmJKeRDF6ygV8wo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 priorityscore=1501 adultscore=0 clxscore=1015
 impostorscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200145
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-257527-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gopikrishna.garmidi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CD45448B3A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Introduce Top Level Mode Multiplexer support for Mahua, a 12-core
variant of Qualcomm's Glymur compute SoC.

Mahua shares the same pin configuration and GPIO layout as Glymur 
but requires different PDC (Power Domain Controller) wake IRQ
mappings for proper wake-up functionality.

Changes:
- Add DeviceTree bindings for Mahua SoC TLMM block
- Add Mahua-specific GPIO to PDC IRQ mappings
- Add mahua tlmm soc data
- Enable probe time config selection based on the compatible string

Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
---
Changes in v3:
- dt-bindings: updated commit message based on review feedback
- pinctrl: updated commit message based on review feedback
- pinctrl: Fix spacing to use single newline between structures
- Link to v2: https://lore.kernel.org/r/20260105-pinctrl-qcom-mahua-tlmm-v2-0-7ac036f700de@oss.qualcomm.com

Changes in v2:
- dt-bindings: updated commit message based on review feedback
- pinctrl: drop GPIO 155 from the PDC wakeirq map
- Link to v1: https://lore.kernel.org/r/20260102-pinctrl-qcom-mahua-tlmm-v1-0-0edd71af08b2@oss.qualcomm.com

---
Gopikrishna Garmidi (2):
      dt-bindings: pinctrl: qcom,glymur-tlmm: Document Mahua TLMM block
      pinctrl: qcom: glymur: Add Mahua TLMM support

 .../bindings/pinctrl/qcom,glymur-tlmm.yaml         |  6 ++-
 drivers/pinctrl/qcom/pinctrl-glymur.c              | 46 ++++++++++++++++++++--
 2 files changed, 47 insertions(+), 5 deletions(-)
---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20260102-pinctrl-qcom-mahua-tlmm-433644bae64c

Best regards,
-- 
Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>


