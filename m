Return-Path: <devicetree+bounces-264695-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mE8vAoBQjGmukgAAu9opvQ
	(envelope-from <devicetree+bounces-264695-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:48:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1C1122ED7
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:48:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 36FA4300FEF1
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:48:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84FD5366DAB;
	Wed, 11 Feb 2026 09:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W61R0L6k";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FXf9HXBd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B21366800
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770803282; cv=none; b=AMfbDJ9PUzWEKH88fgNwPECH6bdc5n5+GU4uoysn0g/CUAGLjwoH4ywYMsgATbv4ETgi+STrETntEr/+svkG+8tSPoJEKwJtZv2JAhi5nVYZNaDsyAv5p5yNUUSPmb41Y1jfawXY2086wTXMu9DFXpQVYie17WoRU7wZCP6FmAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770803282; c=relaxed/simple;
	bh=6ARsp9atQmUNw6Xa7IgxkJuoDS+d7gKJ9ZK7Tf/3pt0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ZAj2gJJwggF2EQDX3EydDhXCvTUXvUWF6PU8EeI/RHW+0CAK+WgiENGlb67nf3j6NqzvmhRw+jRZcULCFuHMPgL4kQoRacC33oBXsmmbI9Mvc4EuSa5W/hKGLmb7VTyS1lrZ4GLCh2KiDq9lJ0oMAIAGlgCOE6FRP06RKO/WDXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W61R0L6k; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FXf9HXBd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61B3AMDB2396537
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:47:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=UsW5mcXGCmvKB7BggdY6RH
	n50BgOLMf7MW1eLSPUZMQ=; b=W61R0L6kZoToLklZBXzXsP1CG1cRQ5eA+/dRqm
	8j2ICFQ2uXbR//Q+t6krjkdGNlCeI6USkaowIaOQhLTEkVPLJigAeHI1SjFA0+8Y
	KW0wXsfG6xDGBkQA0w4gz+EhndeMFPB58X2QLjlKiMrEEACoK92A3qXDxzu47xnD
	UvrA/eHEP/gxo8znWtwI6aSopUHUq8z/gw+tqiBbtLHwTS0zicOHHVYYY2+vk6tt
	mlSxjFeytpWQO3KrZ6GGj0gPqhZeP943DK+bXtHrtG/r9dXsk18FhJpUisEA3Pzo
	30Am0MdOXWuzZbQex/ycLwl+6EhdYfCJmnUQTkGMFv1ty9ww==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c88wqjtad-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:47:58 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3561f5bd22eso1558531a91.2
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:47:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770803278; x=1771408078; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UsW5mcXGCmvKB7BggdY6RHn50BgOLMf7MW1eLSPUZMQ=;
        b=FXf9HXBd+R5txdUg3c2dt++QI5KCrIKfYeJ3+ZPDy5PbLtZUtx4Lb1vSr2cXSV9o9Z
         YA7DMioMuwyp1a/aqkRfNpieO7lApoFHpyn0c+NgXg5fIFnjvxSPx5MeoKMNOjS4den/
         coLor1YzFwnUOS1oFRR7LybXWzx5TyuZ07Ey4gY8B1ymK1ELeYKCMV0Y3OZbB6jTvcX2
         pLlAOYWKKhBEgVWxKKrJZZe0q/MZyuOvWcPMdrAytKhtc6AWVown60QWaQWYm40wDCcl
         RqS1s0DVtDnSmw5u8O23p2DXKYARCo+7qGj/AjPGsilNSmvuQuW9cloqhMAFz7mgKwEA
         cNkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770803278; x=1771408078;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UsW5mcXGCmvKB7BggdY6RHn50BgOLMf7MW1eLSPUZMQ=;
        b=GooLP0aZdOi7Q4XLefGbCiRzxZ2aQBvj2FAlGsMniWedmTl4KDQQkNPbWGnmq3bm99
         eLQW5QG26NgM4WfjD70W5wchz9cSaI0FAmAwzv0bI3Oc6Oq1WxVzKMd6nQ8IwRcvuTWu
         RYqwWtIm7HvzwIgMpdDLv2CvqSOcWz35TO0/jxDp2+U9RVH41Lx5KkuLaxm9WUy+gqSB
         2gqq0Mm4zIul+t+2bPtZbmr6sSaWlcuJmEjBDJiAJETobQQ79uU/V30iSAPQq0vtBw8J
         qpWc5WhBE4bzAO31LF2r27gnjd0otwM5xuN+IVs/8vm61mLhIpuFmcYKxuSgG2VYuNOo
         4YlA==
X-Forwarded-Encrypted: i=1; AJvYcCVHrkHT+LXtOVL1eS8NhjEW0WQe6HjhMrarlE9MPZcP7rECak4WQvN6a3DurE/EwVl/4ZDxn72JKbM0@vger.kernel.org
X-Gm-Message-State: AOJu0YwjVzykeh7Ptl7fHxypvcYKgynBK9FcpYYzxhk0SKLuEkfVz4R2
	McuMGoYSD68TxMM0aB051j3BR9v67E7aTSM1aobQBQgu72ODzJADTSqOSGQ2csX7ZngGaHzsQXB
	WBcPMKBUgiRVvc5vSXMRgMEK0uVK7ZQ9aWu7+CaWn5sJLuOol4pTGBJQApoBcvG/r
X-Gm-Gg: AZuq6aKI/mdNlHmgrdbr2g8lf2TlhwD4bTiLeEKIDc10iWX7ohRxtA8a6NJCVcLKrWB
	T3+nUXrcHDdQ1JWaBaH5LukgywWBZ+8xs9IyLfvqGyRILSQCPyvTNl8baiuv19emyDEXj/LQZlG
	jqotJJcQF0wv4Tk34Lboe+fW9wqnwcde+vgZbfE88uIgZajB9A26Etd0/87wQQvGyz/Np2pDbiY
	Zl2mK6KKDBRhKzzBRGJbTu+F25gRhZ8F45/VQxV+XtSXM1w0pQBA4asdRwiUo2wiWVLq3Rpq9qA
	7Ob3ls49isEtrEhAEF4AyDaL57Ndc2oiVNFAC1EJHkJYBO7zaulomXkM5rlFxVVMaory2p990ib
	9mxxB4i/E9JfhgtKHXS1ITE42xKq9atlELcS7E0S7wdi2W4h2wSs0kGTO9hc=
X-Received: by 2002:a17:90a:7f85:b0:340:c60b:f362 with SMTP id 98e67ed59e1d1-354b3c53063mr11896889a91.6.1770803277828;
        Wed, 11 Feb 2026 01:47:57 -0800 (PST)
X-Received: by 2002:a17:90a:7f85:b0:340:c60b:f362 with SMTP id 98e67ed59e1d1-354b3c53063mr11896875a91.6.1770803277308;
        Wed, 11 Feb 2026 01:47:57 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35662f6b84dsm7526640a91.10.2026.02.11.01.47.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 01:47:56 -0800 (PST)
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Subject: [PATCH v5 0/4] Enable ICE clock scaling
Date: Wed, 11 Feb 2026 15:17:43 +0530
Message-Id: <20260211-enable-ufs-ice-clock-scaling-v5-0-221c520a1f2e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAD9QjGkC/4XPwU7DMAwG4FeZciZTnLQm2Yn3QDskrrNFdA00W
 wWa+u6kQwgOjF4s/Zb1/fJVFB4TF7HbXMXIUyopDzW0DxtBRz8cWKauZqGVbgG0kjz40LO8xCI
 TsaQ+04ss5Ps0HGRQaMhHwxidqMTryDG93/jnfc3HVM55/Li1TbBsv2Cl4H94AlmrybUIqAI6f
 MqlbN8uvqd8Om3rEIs/6R8T9Jqpq4lI4VE7Z1UDd0zzbaICbVZMU81OdbY12ofO2Ttm89u0K2Z
 TzeWwAbaR+K/f53n+BM0ZukLLAQAA
X-Change-ID: 20251120-enable-ufs-ice-clock-scaling-b063caf3e6f9
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDA3OSBTYWx0ZWRfX3bFmlzm+orfX
 RwZ99kEDYwX/lUF7xvnml5IDSg4vgfiSroZvsIAZd/EnlMksoqobyRRXq7Rk+A8ST5MJ1jhb15V
 dMY3sRTeZayxD09ODLbMSI6E95uUSV1shKf2kAA6KdgbWYPA1UeXCDIu2L3ETjy7ba5mEfRUhkm
 xMUNYI/HhgVdgnCDYtvMSU32IR+1YSmk/Idldo/D5vYXVMhZAtHXEMTDOV1/GOu73ExwqUMEBcc
 oxn+ZtJ1exQNiv3agT3P3EpmJQ+2RVwHKV0nfEvnmllaGYwQ24hp00xXB920AdUjm9F4Qh1xsp5
 2B5hR06PwCq4LNm9xv+E/lGWB0+JFN0BcuBDM/1wyXJpWBsL7EaF93s0Nu+W1ahmiHZ49hqlHor
 2VrHmdDYDW+DtJFE4b/eT46gBB6k+yLsZzVEof74SNFORZHp8vnGvcMpI/Va6SczBz+LqYcHuqm
 zJUm5UslY3HidqYT2Bw==
X-Proofpoint-GUID: mAaZQ0eSlHSfz3FS70iNpx1qIp0YiFUb
X-Authority-Analysis: v=2.4 cv=W7Q1lBWk c=1 sm=1 tr=0 ts=698c504e cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Lsz1E_LYmYg3FmW8_BQA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: mAaZQ0eSlHSfz3FS70iNpx1qIp0YiFUb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 adultscore=0 malwarescore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110079
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264695-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abhinaba.rakshit@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2F1C1122ED7
X-Rspamd-Action: no action

Introduce support for dynamic clock scaling of the ICE (Inline Crypto Engine)
using the OPP framework. During ICE device probe, the driver now attempts to
parse an optional OPP table from the ICE-specific device tree node to
determine minimum and maximum supported frequencies for DVFS-aware operations.
API qcom_ice_scale_clk is exposed by ICE driver and is invoked by UFS host
controller driver in response to clock scaling requests, ensuring coordination
between ICE and host controller.

For MMC controllers that do not support clock scaling, the ICE clock frequency
is kept aligned with the MMC controller’s clock rate (TURBO) to ensure
consistent operation.

Dynamic clock scaling based on OPP tables enables better power-performance
trade-offs. By adjusting ICE clock frequencies according to workload and power
constraints, the system can achieve higher throughput when needed and
reduce power consumption during idle or low-load conditions.

The OPP table remains optional, absence of the table will not cause
probe failure. However, in the absence of an OPP table, ICE clocks will
remain at their default rates, which may limit performance under
high-load scenarios or prevent performance optimizations during idle periods.

Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
---
Changes in v5:
- Update operating-points-v2 property in dtbindings as suggested.
- Fix comment styles.
- Add argument in qcom_ice_create to distinguish between legacy bindings and newer bindings.
- Ensure to drop votes in suspend and enable the last vote in resume.
- Link to v4: https://lore.kernel.org/r/20260128-enable-ufs-ice-clock-scaling-v4-0-260141e8fce6@oss.qualcomm.com

Changes in v4:
- Enable multiple frequency scaling based OPP-entries as suggested in v3 patchset.
- Include bindings change: https://lore.kernel.org/all/20260123-add-operating-points-v2-property-for-qcom-ice-bindings-v1-1-2155f7aacc28@oss.qualcomm.com/.
- Link to v3: https://lore.kernel.org/r/20260123-enable-ufs-ice-clock-scaling-v3-0-d0d8532abd98@oss.qualcomm.com

Changes in v3:
- Avoid clock scaling in case of legacy bindings as suggested.
- Use of_device_is_compatible to distinguish between legacy and non-legacy bindings.
- Link to v2: https://lore.kernel.org/r/20251121-enable-ufs-ice-clock-scaling-v2-0-66cb72998041@oss.qualcomm.com

Changes in v2:
- Use OPP-table instead of freq-table-hz for clock scaling.
- Enable clock scaling for legacy targets as well, by fetching frequencies from storage opp-table.
- Introduce has_opp variable in qcom_ice structure to keep track, if ICE instance has dedicated OPP-table registered.
- Combined the changes for patch-series <20251001-set-ice-clock-to-turbo-v1-1-7b802cf61dda@oss.qualcomm.com> as suggested.
- Link to v1: https://lore.kernel.org/r/20251001-enable-ufs-ice-clock-scaling-v1-0-ec956160b696@oss.qualcomm.com

---
Abhinaba Rakshit (4):
      dt-bindings: crypto: ice: add operating-points-v2 property for QCOM ICE
      soc: qcom: ice: Add OPP-based clock scaling support for ICE
      ufs: host: Add ICE clock scaling during UFS clock changes
      soc: qcom: ice: Set ICE clk to TURBO on probe

 .../bindings/crypto/qcom,inline-crypto-engine.yaml |  26 ++++
 drivers/soc/qcom/ice.c                             | 137 ++++++++++++++++++++-
 drivers/ufs/host/ufs-qcom.c                        |  17 +++
 include/soc/qcom/ice.h                             |   5 +
 4 files changed, 182 insertions(+), 3 deletions(-)
---
base-commit: fe4d0dea039f2befb93f27569593ec209843b0f5
change-id: 20251120-enable-ufs-ice-clock-scaling-b063caf3e6f9

Best regards,
-- 
Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>


