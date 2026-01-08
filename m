Return-Path: <devicetree+bounces-252696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EA23ED022E7
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:45:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A80B23372965
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 10:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3C0943CEC1;
	Thu,  8 Jan 2026 09:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F6qg9DwJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="h/e0SyCA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9490E43C046
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 09:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767864363; cv=none; b=kpIR6VNwiYV2TKPf1nxNjO8/BzMLLpy2s2FhWXpwCPXiywZAnPMN8uJ7GigV6t3TbSlYEHH+gr9cHVlh5PWqNHAIVdlF0JPpacY2zZSqpsnH4Jjk+Uaw1U+InIT4jFOxuuD2bCbmpbTv5OoKz8V6Krn7SSqZSyM8IX9uGR1TAFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767864363; c=relaxed/simple;
	bh=ZpYeP2uHTlP4ONhJUiEd0PFxUrvOlJ9tu81BVrgSmdk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=enQnkannqIHf5ESFagx/I1kZBV/vqEawmIihMqNrFOPfqk1nUvc4lJoNOMGTw8Q2g10Ruxxfg8dLeVNAjcbYuLr1FOIOSzrJsWE0h//8MXMkWXPeS2psFyX5pTU0dzoyA3sxlJNsi2Llwf2soNkI/3Jjs9jhvxW+Jw/rLQ0HsCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F6qg9DwJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h/e0SyCA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60880xe22239464
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 09:25:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=pxxRXlUaPaCRv1jR69Ek97fex7HvkXgKqcB
	KmyZAVMw=; b=F6qg9DwJUe1KLWGKragdeZOM4nLZnQYaDJDVJO48AA1NfUQhN79
	aTglNQ4AlTGz6aMcLOlu1qAxxZxN7A414uRd3SEwmsmebFamn2so12XIV1lq/hGJ
	ZqL+br07yskQOq1X0GIiMRchk+idebWZOEsbO8c1bs0RBJN0lO9jF2TkFh83fWCK
	9os/epivSACDuLZ7Nu6j6vEJ3DjWyreZ6IxCzOidzn4ivnzrL/RGJYSfZqvH/4mY
	VxGzk8wr3VBjQPfR+J+CDTEdjpwoPplp4okX5XP48U1vovKrOojl/b9ZhpJJilxg
	9x5BtbLQAlWe6A9WKSQDs0JIpM5QZWr/PmQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhqwg3dtr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:25:55 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88a316ddbacso68949516d6.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 01:25:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767864355; x=1768469155; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pxxRXlUaPaCRv1jR69Ek97fex7HvkXgKqcBKmyZAVMw=;
        b=h/e0SyCA7Qt8wWhzkSDdZVn3t5y5GH8n8Vw9vBhqyOfDkcYrv8yttA/zF448u9z9YX
         yM7+PtbAssRcSd9GQvFYALGPBUhwSzj5aGy4R9sog/Th5TI2mv2ja1cTjiU5yP67KhAm
         ziAX/haBlr7ZVu5YjU8neIsevzTVtCJub+mdA2rEHStZrfayJE+0E7ZKp0ee7vwH2gi6
         WOgvVn9O+6wKRHWSCixv/GYrxf4Ipor4OqO169juPEMHzZCSradgll1CIINws0QZaHOl
         JfM/f4fyIO8YbpJj6yI4NMTJSyg/rmKtGliNRJJZ9lUXXf+/+Ag8jU/2X6ZeShhfWVKg
         MFvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767864355; x=1768469155;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pxxRXlUaPaCRv1jR69Ek97fex7HvkXgKqcBKmyZAVMw=;
        b=sxaZtGOSqhDjOvNzB4HsK635Lvh6sclS2fOlw/bBEtqJXYtkeNiaGyWUwvC3pXLoJi
         8djckhHMKOShHeHoJo7Ea3mBJV5LTJKwRP+0RZFrQleX3HTWaeU870COu1/OGuhYdNb9
         QPVQi3U60OHaN3NdTD1oXxmRHR+C4ueIFz9wUMOzbSJ5R1fDkCRUNsyRKdfjttrZqzXC
         c9UqT7T+gvOFi1vbJqLsDiFW4OZZHUTLCLw6uLBd0j6Q1J34W3H9ZxmPimE7Il2nHUBm
         Nx5Fx5J9aEVXNIHfvbXP/3PiNk92a3CA6XvELvbRuWl+cBdoaZcgRKcw6BkMLIOZLHSd
         VbVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsfihnRnZza+Mj/QCM15GFJK+JNIwLnjd5eWtOvYyQklIqEdOs7B2fT1X86SNy+u6Gl7EqyWJeduDL@vger.kernel.org
X-Gm-Message-State: AOJu0YyfsCdNDPLQpI6ONJm+VWvvE7rypjrupPR3u5ujLx9TY3ejjiJ8
	PS6Y3RrXioI094oFt312J1uGZJcspLl2NagTfULkKmKE6llmyxUGYxVqAlEMoEOxMLGJalwEp2I
	FSFHoh/rhUtZj+6ypGNMdn0+Mjq+7hvLEvER66xyZdTkHebPtNwHMsao6c0g97ALQ
X-Gm-Gg: AY/fxX6aen80gvtqI3Z4s/XzLTjsUoHs6RR8QbBiDjQampeFwL2y+bAR0rOzvWusZNW
	mqYOVZMt36CbMxDTUzhkCkdU0kUq6KZ6x4PZPz8ZCZmiFSlSh56Iv6USxNWTgIeQHRBaUfhYWtq
	WR8BjnwSU1dq2XehqH2kgOs85QZk5fgCXOzR/ApibH9/jDuaIwTw+3StD6SfwUO7+pXK20KvAHU
	3/mzEzjwpCDZbk448ZVXpD2sW0LTpfSSwaE7uqrTAWVmT7thZcJj9jbLzmObJE3k4UAwogbRP3c
	GUZob9VD2/2yTZRn2Z93M2X+gcPuneSJQ+LCFRY56ehtadM7JxufNIKNjlC05qeAs3Mtmrva82j
	8OVAiBur4JhkQwJoWzZMVV53zgZpnLTagDggXSvkV8xh2ZxPiTwSwpjiV8BXZDhvdt20=
X-Received: by 2002:a05:6214:5b8a:b0:890:808f:c242 with SMTP id 6a1803df08f44-890841cd3f7mr72813766d6.31.1767864354884;
        Thu, 08 Jan 2026 01:25:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH5gYWCHBf1g20SAcvTWRoIVwYrCT96mja5EWoj8rSUevnX0ANrRjXpHwdh/4XCvq56TaycSQ==
X-Received: by 2002:a05:6214:5b8a:b0:890:808f:c242 with SMTP id 6a1803df08f44-890841cd3f7mr72813496d6.31.1767864354444;
        Thu, 08 Jan 2026 01:25:54 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890770ce659sm49279916d6.10.2026.01.08.01.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 01:25:54 -0800 (PST)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com
Subject: [PATCH v2 0/2] arm64: dts: qcom: talos: add PMU
Date: Thu,  8 Jan 2026 17:25:40 +0800
Message-Id: <20260108092542.1371-1-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: VIsRTPDqjGGuTe16HTB90FLW8e2Yl1_a
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA2MiBTYWx0ZWRfX2e6kF/bMlP2w
 q9ga19xYzUqKCEX+DBfgc4u2Frt7BTSBmMrAkk+V+oYfK9N/UA8/gj8OvlEOQDxb/YjGCZMIotS
 O0klfYNnFbiwrI9KmnvBkK/0AEA7B72iq9f5Tcx2uafCf6sylsE0HlGyVn68mP0ju/8lr/D/d8b
 JE6mZsG2gXodTXduQHdGLV88vHo36FXn7QrD30cwK646MuVa8B0k7zbqjQLvNwomJR+FdfkwQhD
 zdtzyzEvv4HW8ELXE6ZQzbnvB2DFxSsy8L1FJ8ZUx29Z224XdJEo83sMts9G0DTpj6ax3Ns017z
 Ucctkk/TpPJ+R2VGzTIh8QMmpFrYEnXBTOvUmiaGLvszm1bVL4n0FEAG6my8+ir4fxddA+Ze8HJ
 MX+d0V0jOl2GFbEKkVbfNkL9SP4BXh98Eo+SDeySRcY8SB6RWH/ulxUyr4J82gIxMFz4QhddhwJ
 3xyJoQW0tV32ei42qaA==
X-Authority-Analysis: v=2.4 cv=Pa7yRyhd c=1 sm=1 tr=0 ts=695f7823 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=HPTGEUuRviVpGpH0MF4A:9
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: VIsRTPDqjGGuTe16HTB90FLW8e2Yl1_a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_02,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080062

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Swich to 4 interrupt cells on the GIC node to allow us passing
the proper PPI interrupt partitions for the ARM PMUs, and add PMU support
for talos.

Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
Changes in v2:
- swich to 4 interrupt cells on the GIC node
- add PPI interrupt partitions for the ARM PMUs
- Rebased on linux-next next-20260108
- Link to v1: https://lore.kernel.org/all/20251217092057.462-1-yuanjie.yang@oss.qualcomm.com/

---

Yuanjie Yang (2):
  arm64: dts: qcom: talos: switch to interrupt-cells 4 to add PPI
    partitions
  arm64: dts: qcom: talos: Add PMU support

 arch/arm64/boot/dts/qcom/talos.dtsi | 328 +++++++++++++++-------------
 1 file changed, 174 insertions(+), 154 deletions(-)


base-commit: fc4e91c639c0af93d63c3d5bc0ee45515dd7504a
-- 
2.34.1


