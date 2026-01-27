Return-Path: <devicetree+bounces-259712-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uLw+EK8veGn5ogEAu9opvQ
	(envelope-from <devicetree+bounces-259712-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 04:23:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A818F85E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 04:23:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2626301495C
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 03:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03EBB3093C0;
	Tue, 27 Jan 2026 03:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fRtpLNGd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W6bdcl8K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF89D3016E2
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769484154; cv=none; b=MyqBFfVFZLUQJCW8wmb4UxR089YQFYjf8Riw2+AVmr/CCqVX0FRJRwACTfk1bfpIymv+2L0TXuLrhZd5tcKt8T4oMcXQx0NViMhH17CbA2g/k8dXq3aeQdRV3ywxLMP9pOotrvFwuJgIUn6h8c01rofFwz8Ys//zgxQv2z7GgUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769484154; c=relaxed/simple;
	bh=XZQ0O1EPnSL7r9FFEsZoC2s4+Kablk8hkQt0H01Xwn8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=q/cXaZhwTPPNMsVb4Y5I51MCXax12J/JSYUP6BaPTZgy+Ggli1LwjXuLJPoiS4hSChEpsNJHdQK0nkO5tr6bgMONZm42JoQ645CddjEuAeOkSN90l6h1Goy/X/sr5k9RD4nNkK4fVmxqcbUzc+0PNg07uj5at3x4sz9a6RWRNUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fRtpLNGd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W6bdcl8K; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60QKgIbN3399283
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:22:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Wfmi4d4Qh22Ezl3SyesCXU
	AHzPvoIkVgPWXr2K/lMtY=; b=fRtpLNGdPu7rOVRKZl4qqU1dkPde5t1IFi9fUS
	tIW4oFnLpyJQhpcElUT6QTgscvkxePer/ILl4E/QlqA9V3tNoeJHSTG8yKRiWJ/E
	6FcWKQPDUWvs/CmT0vhjfmMpE80wPfe78swlOd8dbw9kEP2/fOOTa/caXaKLVJay
	PjcLx5jsZSJ84vL70zFdn5idzsQfrydmkYW13AYVaSPqSjyP6rHrOsMsv0Rqw6Kh
	tp9Ny0mgzCu9pZaq3CrTnnCc76TX1z2Iw5a+y6NsVRnHX8pyqO8VxvsjaZd0IJxb
	8TS+Y0cijoTfsYg9N0h6sSxlw7LmDyhGNHP2ECYe2eJAb2iw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxdv9h8xq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:22:32 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29f25e494c2so57483575ad.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 19:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769484151; x=1770088951; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Wfmi4d4Qh22Ezl3SyesCXUAHzPvoIkVgPWXr2K/lMtY=;
        b=W6bdcl8K0AzFhp+KcTkSSrcGDmaFVXMCGLmoIEw9m7HiGaeT/+nfzDNllLOlSMVT5R
         CPRDVzFEQo8ZSt9tBjmEE2OTpsmV+a/XkAi8EWtGrm7Q1rHJnBAxYBJ16JP29+o7KT6z
         0olt/51ojiWBISOlkDBIcEOxsdc3gYNnZpJOvm01k50UDY2XzRYwvE4r7nXK4MhalYaD
         QShMpIxFCauMZdcsh5CArsFNvgpJdREalOdX1BE0odv+fycmdKX3sYCQ/cbsdOASnEVv
         8yI9LZCIp5w5DibXuUD/iaEPdGbMn/UHHX7tgHTgCAPUlQnSWA55itwzcrJW9zz21wsO
         /lYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769484151; x=1770088951;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wfmi4d4Qh22Ezl3SyesCXUAHzPvoIkVgPWXr2K/lMtY=;
        b=mkj0rOZ4/5OKC0SttYeqsh191ifVJahPFRh0KyUX4X/DK8A15t2pMXo+Mqh6FuDJp6
         wXQ9W9Nx+wF1EQTopTm8SLL9E2rcGbamrQQPYn0nQb8VCnMf/GmYagySHAZuOD4Z7ByX
         Uu5S935vnRNXyPZDntBp2Lr1Gy/Lae6x6S8JWvXYIBZl/IbpuYyM4CTGmWf4fdb5jnpT
         yHHkukCI3qYBeo+zEzy+Mh0q3AWPzh0E8+3z299897fAKGmRioV9U7RTc+erEpEev6rR
         RzGDT3Jrxr0OWPWe3oUhynwibPj//kcDDpFOlu2xXWorBsz+1tOgC2DepMM0dXBbXpEN
         lnpg==
X-Forwarded-Encrypted: i=1; AJvYcCWSZL+DBEZjK2Ddemf2JkNyuUmre49LosUBq7tE5tDbv9XLsh24t3q5DcxIB9nPUx3BkzxUz2S/ZU7W@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg/gz4/UC82gC3ZbE4P2hwJT3SgxoHh07VXOLU/nZ45CoCLytW
	UCoQ0ipDyn3wPCmNdccVEGfHuxyYy7IeaNGrIweeffk1+Lx+6JZ54ertQ/w4Ayn8QHyM6diS/jD
	VkJzI3bJyey+qVw9gik8w/cqEUuR4ceunnJgxmygA4nqAF3xlJDcQT/3Ciw0utvs37kBRep9d
X-Gm-Gg: AZuq6aITUJkgtW1pUz2zL9m8Fw4EeXne1ORxvyCjZK92ctpUcaM2U2VFguPvb68QBQf
	3ZNJJbVIA2fP6/FuVsM7W2/xsTIU8ylwZqqLjPMdGyPx6VSAz23ZIOnWnjM2RAfIaJpSvW+n6kd
	5QVyZNj/JhY5R5Xma+6gPVU06wuG034DIvzzqwIz4xLjR9zxLQdw0cNRxdm4SxtYOL/1j1IQtrB
	FzZJRYvUwW2+hZD50U8071sysi7dlP2iOvm4Pv25qsIJuQGWfkbyy3qhQtvp2b4S75DPRLuyI8c
	btt3lqbKkc9QO8mKH/T4tDzSCwlo3NAhuM+YMqMR0i++OI/V8GCdDPW4FJ6bsf+0xM53YNU0By/
	1OgQPfeAO98dUHCrHNIEdKchqDwt1Tmrm
X-Received: by 2002:a17:903:190:b0:2a0:7f8b:c0cb with SMTP id d9443c01a7336-2a87120f415mr3332815ad.4.1769484151202;
        Mon, 26 Jan 2026 19:22:31 -0800 (PST)
X-Received: by 2002:a17:903:190:b0:2a0:7f8b:c0cb with SMTP id d9443c01a7336-2a87120f415mr3332685ad.4.1769484150665;
        Mon, 26 Jan 2026 19:22:30 -0800 (PST)
Received: from [169.254.0.6] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802daa874sm101341625ad.13.2026.01.26.19.22.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 19:22:30 -0800 (PST)
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Subject: [PATCH v2 0/2] Add interconnect support for Qualcomm Mahua SoC
Date: Tue, 27 Jan 2026 03:22:05 +0000
Message-Id: <20260127-mahua_icc-v2-0-f0d8ddf7afca@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAF0veGkC/23M0QrCIBTG8VcZXudQS+e66j0iwp25dqDN0ibF8
 N1zg2AX3Rz4Hz5+MwnWow3kWMzE24gB3ZhD7AoCvRlvlmKbmwgmFOOC0cH0k7kiAK0Uk4daKa1
 ZQ/L+4W2H79U6X3L3GF7Of1Y6iuX7U/hGiYIyapRswUgjodYnF0L5nMwd3DCU+ZAFi3wL7LcAz
 0ADWkDDdNVx+wdIKX0Bar1q4+oAAAA=
X-Change-ID: 20260120-mahua_icc-76054966880b
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=OYOVzxTY c=1 sm=1 tr=0 ts=69782f78 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Arc9D6tUohrwRZOLOYkA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: cj4ljpdWhidbDKqhqUZI7XNPgwvx8pv4
X-Proofpoint-ORIG-GUID: cj4ljpdWhidbDKqhqUZI7XNPgwvx8pv4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDAyNSBTYWx0ZWRfXw7Ate+vuNUlW
 Qskae7Od7QC4w/DUlGAVPIeBgx5zV9JFKdBepUBvZoDmFQDlfb/l0waDLnH3xij1ueGzUJ80AtQ
 JsADrZaCWYPHsSeKiWZul7cdiCBjj5PVgvZgEu0Z07J9u15okAu5ShRvRfUyJOb5zZeC6EHhyLC
 cOKXNz6tOg75+TMFzShCIGdsnlQLTKcmeJnn1f49BZ0aJcfT135EeGPQBGwjwemvqO9VcGN0IoS
 f2s4mWh1TkIv1CKXNyzWfHlnYPAeDafpQSxy1tvGbzOLpgWkCVSdabGGOmNWEeU+b00LXji4sDR
 5R3r8r9nFb78WXAO4LWJZU5CN9QEIDX5tuS2gJYH/ulbL/EflbcBjREU3ZFT2sMzCXLSlKJXpGp
 FZMe0li9iKms++BEk8GICYvA44xD+3rAd1k8CQvCfaRLM9On8uXMl4MeQ4bdMTcrMJ+Q/3f6Dr5
 51J9/M4gdv4aSJIRcWw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_01,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 spamscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270025
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259712-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[raviteja.laggyshetty@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 95A818F85E
X-Rspamd-Action: no action

Mahua is a derivative of the Glymur SoC and shares a significant 
portion of its interconnect topology with Glymur. As such, this 
series extends the existing Glymur interconnect driver to support 
Mahua, reusing common definitions where possible and adding 
SoC-specific configurations where necessary.

Device tree changes aren't part of this series and will be posted
separately.

---
Changes in v2:
- Reuse the Glymur device data for Mahua and override with Mahua
  specific values [Dmitry]
- Update the commit text to be imperative [Dmitry]
- Link to v1: https://lore.kernel.org/r/20260123-mahua_icc-v1-0-bc82cb087f1e@oss.qualcomm.com

---
Raviteja Laggyshetty (2):
      dt-bindings: interconnect: document the RPMh Network-On-Chip interconnect in Mahua SoC
      interconnect: qcom: glymur: Add Mahua SoC support

 .../bindings/interconnect/qcom,glymur-rpmh.yaml    | 132 +++++++++++++++++----
 drivers/interconnect/qcom/glymur.c                 |  38 +++++-
 2 files changed, 142 insertions(+), 28 deletions(-)
---
base-commit: 6cd6c12031130a349a098dbeb19d8c3070d2dfbe
change-id: 20260120-mahua_icc-76054966880b

Best regards,
-- 
Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>


