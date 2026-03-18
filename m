Return-Path: <devicetree+bounces-277198-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDOcGD2eumngZgIAu9opvQ
	(envelope-from <devicetree+bounces-277198-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:44:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A614C2BBBA6
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:44:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DD1FC301D4B9
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:41:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAE9E3D3CEF;
	Wed, 18 Mar 2026 12:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MZjcB+bI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PXEhxLz5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 773721D88AC
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773837677; cv=none; b=IhR9eAb5zLwq1dTez2BmLvQIz0IRedkCEASc+IFtHRSjEdpbAL8RBgKUWT16DalDWKU/WaBuGOGyzBj1ALKLZI8C7yN4FnoYM2Iq367KXEhUwQGqnx5yEz/KSRH9fYM2raVbISyJe3vBnxdGJWghldxu8rSLn+f526lwmDXfbHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773837677; c=relaxed/simple;
	bh=KbsIcm0aGdrq4L5CtWeMDNeON5JCTg6FqM58BWBOVDE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=LlsluGI6GeC4u3QY2uU5Fqnlg8W70uFqyqAaZ/R8caG4rlWzkGPo72j8NKErtShuTRrH37zNINlvkXCXdsoJgqEijsRyKog4V2BMjxOsPvxulkdi8BcaG6ctH4X5u20wgcavaSHoYE6aWsbpacgA+CdtPO7R0OXDrdSgOk/7eeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MZjcB+bI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PXEhxLz5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I76Z7o2612593
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:41:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=WBmNvZvU9C9Q+UlnWfyjncZkgl11xuGyxg1
	qBLB+0rA=; b=MZjcB+bI5NIdI92x0kXjfXc87rWg38WHvc6pLweZ8mLz+OxhC0v
	++tBZQWQo/mraGkDxhhka02NWttdJTgBnVQf+72ePZ3/PboNr6o1JBry6LR2BWMb
	ViaIlDE4ZsLc/YqHwZwtMoJpWAwUTi6TSdCXlW1N3niHSIFJGEV26+BYVsDs/J58
	fIeVC/C9+12m2dHMnKPJNSDsjS4PS2+XEfXvby6dBMCjgGslEiGYFHygk71dp5JS
	UOrelHmwJhQxFqtTaLsPpICnwrwojcrLGLYGFxe9RH+5hWpGw4de2s1j3M2R/jVm
	qOf+mfBhx0JyWmMwnEcJGqFyDPbI0E0sOkQ==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyqcdsa3m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:41:14 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-128d285d6c3so4069016c88.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773837673; x=1774442473; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WBmNvZvU9C9Q+UlnWfyjncZkgl11xuGyxg1qBLB+0rA=;
        b=PXEhxLz5cFdlWokXZgbpzfecbsMXAjgB9Dr37vZ8OuGmHiVFsVOhSKpxpXHNLGd6XH
         gba6TwwzJQUHmU4zk6ud7BL67cp0oQ0bFmvdTeniBXqNd8ntpAkMnbEZIDvSIs2ZUS58
         eVSeRRzdBqltQqOBBFd4OZ3UIP83BumFqk6nggPsbDii521nWDXkMiZxDbkAUQYSuasd
         MX8QoxDA5YQscxohUMEsKzPoyWpzZQCbKBy5DrZR0l2GkysKKoQ50ydOSPly45+0NqUj
         VETPaLx4/0PlHy6WJVcIuaju/MvdvMWB6IBrFAfDrLzhSAtpsI2peJDXW0NA6SQGXKK5
         ai/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773837673; x=1774442473;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WBmNvZvU9C9Q+UlnWfyjncZkgl11xuGyxg1qBLB+0rA=;
        b=I4CVkHc8ddvFsgx6AbfIulpL/oyR6IpXb3b3THCIUQEqP6Lr8hi1rjkXgcruPd9Ejn
         31lbZDrZWZKPqaeAk7gB64uOUNu1L1e9xrwyWnJdaGrQLwAYvn73uVcB0jwadYfOHyYJ
         bdgLSRtq9eZCOEtKBbO5JqolSLfOUnDZ6dRex0WhIv8wZGEWYhnHhXSf7HEvifA707X4
         BrTFepgzqSAWGguWkUJEEMqqem9o/8XZRARZ813Ra9dB2BVxuVr6sP/5Pb7aE1L7DQDW
         U37s/XxzbjvPmDJMFvlwIgptTukyxmT21u+2YsbrvAocpFf0ZX4Kn3mXF11imTOhwyNY
         YPDQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkoOWvILCfNC8funNUVro9JTUFNGX5pW2K600yLY4CCz7GkzFZnsNA1cnvVJzHSvB8RvMzN6iz/ggo@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx7NrQ9z6ViPeMb7iGJ6hF4NF1FaxQTm3aTXDfsZlc8H1udJLn
	TpBu9wf/0L/MK5Bk/uXC/W/hu5vVyWSx9bWcO+JMY1Gh0RPSlr5nhNTsvT7rCx/Bb2r+/n3aQyB
	ESEjY856knmZ2H3ruKK6PPUUJ5guGQlRJWluERKZcPFD6rDByzRGiEAxfh3uEriHi
X-Gm-Gg: ATEYQzwmvrcgFJopqjzpXB9WNpm4NX1xn7XqT3ZLTcVtkiKAiQi0bzsPrnQT4Kb7M+X
	mIDyQJDX6f1BuUCGfeJ9c+98+HVzeEVnTgU9Qpb5Rz3BDsRSm/WGjYR0vedcC4n7abzmXiS0YcW
	gUB6RpINLiT8mzlDVcS0ekorMFYqBMiAhCaDd6BooFRN2TmWxl43WB7YoHk+TEFEmVRDTDG/9e5
	9YllahZg8IqCael11qil/6YQMdX/kNXTX9Nm6IuSZibylqnVxi3xlDDtj9IKC3rwi61uwIVw9jA
	PlYvNjZHcxfuKCUBH6rbKSHfBtWGQdO8D9Bb5FjnNyfGrT1xvs7ZUcXBZupUG41RbUt748IEnuD
	mZdaVtCbOKKAU9lDUZEr+d6KCYGNufuEYybONSqUMdpfPdB739XVHXj5pIHNCwgY87mDO/lK4Sh
	ILzw+JykK7SQ==
X-Received: by 2002:a05:7022:2214:b0:128:d5f1:d595 with SMTP id a92af1059eb24-129a70d5847mr1565553c88.10.1773837673281;
        Wed, 18 Mar 2026 05:41:13 -0700 (PDT)
X-Received: by 2002:a05:7022:2214:b0:128:d5f1:d595 with SMTP id a92af1059eb24-129a70d5847mr1565537c88.10.1773837672703;
        Wed, 18 Mar 2026 05:41:12 -0700 (PDT)
Received: from hu-ggarmidi-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c0e53b5fa1sm4454521eec.10.2026.03.18.05.41.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 05:41:12 -0700 (PDT)
From: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sibi.sankar@oss.qualcomm.com,
        pankaj.patil@oss.qualcomm.com, rajendra.nayak@oss.qualcomm.com,
        qiang.yu@oss.qualcomm.com,
        Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
Subject: [PATCH v2 0/3] Mahua SoC and CRD DT support
Date: Wed, 18 Mar 2026 05:40:57 -0700
Message-Id: <20260318124100.212992-1-gopikrishna.garmidi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDEwOCBTYWx0ZWRfXztxc+kro9fHp
 SGzPjFh8U9Hz8X5BpELtZFMOmn1rfzpsJ0bY4K9E9T7CLM4e8W1FVCISIWh++3ohYPDDi7818kn
 xvO0evjhngRn257xXHmuoqk5Ygx17dbT47AWzWkm0k0YTLIwLJ85S6K8/gqmp7TdqXLL6rNfhUN
 aCitHqTLBDxvxJ9mTU8zVg1IeXed0QOfvHM6tAuKZ+ZxPc2oTRJYqed+YvR+gtxLcUEGv35uzPP
 i7IMsscTsopAOgWe2l8kh2cYIA82JtH/7gB/nmhpMjvv+N0tJkJmWtLCccBBUYn5Fwqb0BN2lVD
 8wouTKEjtTaM+BPUL4TuJzccdJ40ZS07LkgytfL2rIWo4e7vra/aM3kHrvJN6nxpRcrunzWobLQ
 mWnIG7qQtrd3B5Wz3odhv5CkijTpFRw3z5qA3vtsHh3cULJ2NzIs69MDuyQFS8EnBC4bc1uiI7c
 mJZfl9U/VEUCd+g3XZw==
X-Proofpoint-ORIG-GUID: cvPB2ypfw4BmX2Kd2a_Top02U2Ww6H9a
X-Authority-Analysis: v=2.4 cv=H87WAuYi c=1 sm=1 tr=0 ts=69ba9d6a cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=TlQAaJdr-xPSoc6T7vEA:9 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-GUID: cvPB2ypfw4BmX2Kd2a_Top02U2Ww6H9a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180108
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277198-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_NEQ_ENVFROM(0.00)[gopikrishna.garmidi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A614C2BBBA6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The series introduces the DTS bits required for Mahua SoC (A derivative
of the Glymur SoC) and the CRD based on it. 

Some of the notable differences are the absent CPU cluster, interconnect,
TLMM, thermal zones and adjusted PCIe west clocks. Everything else should 
work as-is.

Changes in v2:
- Updated commit message based on review feedback. [Dmitry]
- Override the default thermal sensor configuration and enable only
  the sensors and thermal zones that are actually supported on Mahua. [Dmitry]
- Link to v1: https://lore.kernel.org/all/20260310054947.2114445-1-gopikrishna.garmidi@oss.qualcomm.com/

Gopikrishna Garmidi (3):
  dt-bindings: arm: qcom: Document Mahua SoC and board
  arm64: dts: qcom: Commonize Glymur CRD DTSI
  arm64: dts: qcom: Add Mahua SoC and CRD

 .../devicetree/bindings/arm/qcom.yaml         |   5 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 arch/arm64/boot/dts/qcom/glymur-crd.dts       | 586 +-----------------
 .../qcom/{glymur-crd.dts => glymur-crd.dtsi}  |   7 -
 arch/arm64/boot/dts/qcom/glymur.dtsi          |   2 +-
 arch/arm64/boot/dts/qcom/mahua-crd.dts        |  21 +
 arch/arm64/boot/dts/qcom/mahua.dtsi           | 299 +++++++++
 arch/arm64/boot/dts/qcom/pmcx0102.dtsi        |   2 +-
 arch/arm64/boot/dts/qcom/pmh0104-glymur.dtsi  |   4 +-
 9 files changed, 331 insertions(+), 596 deletions(-)
 copy arch/arm64/boot/dts/qcom/{glymur-crd.dts => glymur-crd.dtsi} (99%)
 create mode 100644 arch/arm64/boot/dts/qcom/mahua-crd.dts
 create mode 100644 arch/arm64/boot/dts/qcom/mahua.dtsi


base-commit: 3ef088b0c5772a6f75634e54aa34f5fc0a2c041c
-- 
2.34.1


