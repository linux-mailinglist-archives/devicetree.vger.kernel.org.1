Return-Path: <devicetree+bounces-259189-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFvWBPICdWmy/wAAu9opvQ
	(envelope-from <devicetree+bounces-259189-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 18:35:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 830247E527
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 18:35:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4FAE53010B93
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 17:35:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B752A26CE11;
	Sat, 24 Jan 2026 17:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l6uNS83t";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YtGYccin"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E8221A459
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 17:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769276133; cv=none; b=Zl4lxU1uYR1cdGsS/3IV7FeZ9ktCIyEhyITrlFA0Son6THSi9iIjju787T9XBEEIRk2C/jMKgHWSTYEeyiVVCj8YTFk5EJBLa0pNda2Ws6/83tldtydxionfiKnMXwIS4qOu6s6Dsro9Ay5+clQGd2v4p1Y+0hdHhxHaDeRX/x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769276133; c=relaxed/simple;
	bh=Fu1xoi9CBY9eiBtnRip104Q3DZqU8QVcRYaJcdPLYj0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=eGjQTxm7C6yxCDPB3GlyvVI54XYwCirfty/EQUqbDuRwGcEjqpUY4fv+X1QSLcrzpWcFlZIRvvCd9xjotVyywRQ1eismg0SWhOasqRChm0S1dWwdzd2mh7Ki/zPdgEL+7sISHdvi6TZxwzJUW+0jYfzKybf3HVnUVz74e5jdBIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l6uNS83t; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YtGYccin; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60O4QKOs3380323
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 17:35:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=16G89u6+BhHcoNsBKlpFOb
	IQxZvkHd3dDl4LIKtGP1A=; b=l6uNS83tdTvdTXEv2QkEq0ryQLoLpbw0debpAP
	KaGewFsLfbY4SFznpANcmDVEkIn+sW0m0kyc4IJJKO4BnPDhYTscCGPSjF4wd63o
	o5mlZwyLtGwCG/H1vJG4aNg10crkKp8KB/3kMPb1vbDA1rpG2AEL5Me5aHyALfyx
	JcjINehOFrYUiKBa1zAOrJjBkcBlQ9qR9lTPCUv3Hd0sD64m9K2VqjMSGt/Ie7JP
	9kDn9H6UvD1fewNRRH9NSBSmMq7mcN43EtQp/SNU+fz90jU9twcch78xDvl0mbKy
	nvXRXNdUoZJJNXrqjLeQzrb7RXekZgkJYqEuFKActMwygCkQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq24gyaf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 17:35:31 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29f26fc6476so47535395ad.1
        for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 09:35:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769276130; x=1769880930; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=16G89u6+BhHcoNsBKlpFObIQxZvkHd3dDl4LIKtGP1A=;
        b=YtGYccinozWv8T1/IqoPUpZJ296Hgv1I1/DwaBqX8L/r+ulvPQQVkOjtWI/zEXZDyE
         HLIz0D9cmqYlZwaJGVJ+VPq+OJOc1KJ9+7ejNOfLNwdlU+2SdHBNQRe79X6U2xdQIQtD
         UFmS4nBzfBRtUJUSpRgXuA+fyqczCLpDaemWuyPpyyr0lq2PjG6qhW4rfzInCn3Vp7mP
         XfM4howcQl1dpNj7pIt4gazL/Gd/46P95zxIz/gOICl+7gwJRF03feaxZIKXvTZp11g9
         hMPtgjRX6AjQoasnyzVLD0i3AWRBDh9Q7dR8wQdm/CbA6xZ2IA5Y0A+gxsqY4d6Y+s2S
         GE2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769276130; x=1769880930;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=16G89u6+BhHcoNsBKlpFObIQxZvkHd3dDl4LIKtGP1A=;
        b=XLbTXFDp+PZis2AGJe96kzkzcb9T1lvuwYRBv1RV6B9+OIvH+F2p2x50+WmUq4J0C7
         JO6g/4SFIt+y0qsRPXfio0bGwFKZ1jairw4jBxLVkMgnfMfpjIWni4qjkM1WCuH7jp3q
         /jdtvcTge8pePCW4b/etuwTDuFSBZDmYc1VjBHm+08HYYtceM6dap7b82b1N8JBVMemM
         y6rr8aw0WAWuuyg7R/5ATw9uhJdJj9QVswUQpy8slFXAeCX2vWPJpncMwWqfTl7APQM0
         CI/BGZxEQNXjMdGUGgiccLCI2Ih38WD+ZoYjbdQRJUbnwjJQvViIzfaeKbGDsH7dbOzC
         8cQw==
X-Forwarded-Encrypted: i=1; AJvYcCUcQAjZEiHEkRETfsOL2p03GzgnHstCWF3nuX/9pfNK5P1qOGUPi7vPNpOzQASLDwcmWgdobDYJRu8Q@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1dSJ+xQiyrR21+ziYSGAkkI6hxH0l+OjGqa5+6ndhMHSzrW7u
	d1o3hmNHYJwp5V5t5dJfVIhU4GZ1jeRzbcV46elPjs7Yd+gp6r7Ovl+64dysMpuKyegfqDcvdR3
	jf/oUoBxf34ED18s8XhHsigVSe2MhjwMgQdey3aOy1zgGrydvmU/Hlc4CVHKpC+2F
X-Gm-Gg: AZuq6aKKOE1iNzATJ8cwMEfgyJBgeiRUNRXnwOUJiHAIgpsNs6IlosSYKvB8H49taIf
	VYzIHvRh4mpMoS3WUaocRTLkXEzRQ5vPmuRgstUm1YRpEfqVeWTLzpd6/x1NtE636l+fVxvr3Vt
	ld61cLtATUZIwNtYcu5YMu5HwEsPvjuEG4CiomDd1dITy/qhxdLBgXKSqY0a0E484VplzghRXRk
	nd3yZbmY/9dJt8Po8BIYUorKRB7v00t6zOdJFgb9bSZX4w46aULBGKP3l/ZmpWNOzIzSWvhtG90
	/Q6LOQ5l8yOpV4a1MhGEKk55A95KC32ZbvUiuNf4Vk5moHQ1LKami3tDNdnBbxu+bcxfnNYYJ2V
	Twko3nyjcANorRFeGlYi0QLv8zrAdZlXIWw==
X-Received: by 2002:a17:902:ce09:b0:2a0:d629:9035 with SMTP id d9443c01a7336-2a7fe43f2damr68765505ad.3.1769276128736;
        Sat, 24 Jan 2026 09:35:28 -0800 (PST)
X-Received: by 2002:a17:902:ce09:b0:2a0:d629:9035 with SMTP id d9443c01a7336-2a7fe43f2damr68764875ad.3.1769276126739;
        Sat, 24 Jan 2026 09:35:26 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802daa79dsm49036765ad.3.2026.01.24.09.35.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Jan 2026 09:35:26 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Subject: [PATCH 0/2] Add the support for Glymur Video clock controller
Date: Sat, 24 Jan 2026 23:05:01 +0530
Message-Id: <20260124-glymur_videocc-v1-0-668f8b9c63be@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMUCdWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQyNj3fScytzSoviyzJTU/ORkXcMkUxMLs7QkQzNzMyWgpoKi1LTMCrC
 B0bG1tQBbZM0tYAAAAA==
X-Change-ID: 20260123-glymur_videocc-1b5486fb1676
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI0MDE0MSBTYWx0ZWRfXzOzCgsbcQ9sg
 SoyL7gOzZsfnSXXK+xpfvDSuXI6clIb0Wzf6lx82VXmsPrK+buQWyDcJD6OMzIspku6fM3uPlFk
 eHfTSP2DiWpweLNkiu/ZYxm1FTPxgOa2FMqDSvbSLWhk+tMXYd9ZBI43aqvFJ2maJjIWOTI2bDb
 wamNHDVYbcOcnu6WlZ/PwJWNMtD/wo9cW2pFm8ZtWewgpuWMjl+MvsJaSyFyeC/jHqaqg1VX9FD
 l/8CuUtJ+BHhn0TtZZvzDcLrc1Q4X+P1HguTZzMHh8JmIDYKN75dk2o8C1MsiPV3TmSJw3kUWnR
 zi+ukynMQDSeun44Cdep+sXLg1ASX5CDq8aV8UBEg6VOMC80nhSEBmI/AtUS6LiPQIXnMxU7N1O
 uwMhzFhQS5ABnJ8gGjfnZbKdzhbn333Q6irOcaHCMQrlZwb1BT6e4U++5eaQzpx7vU1CHruroRX
 FllPD62N3vvyhrTi9+Q==
X-Authority-Analysis: v=2.4 cv=EsXfbCcA c=1 sm=1 tr=0 ts=697502e3 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=yGsrVBdmsvV_QCB3mFIA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: odLk7DPdpb5XZM_pm-zE_jMrr3SyzHYN
X-Proofpoint-ORIG-GUID: odLk7DPdpb5XZM_pm-zE_jMrr3SyzHYN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-24_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 adultscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601240141
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259189-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 830247E527
X-Rspamd-Action: no action

Support the Video clock controller for Glymur Qualcomm SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
Taniya Das (2):
      dt-bindings: clock: qcom: Add video clock controller on Glymur SoC
      clk: qcom: videocc-glymur: Add video clock controller driver for Glymur

 .../bindings/clock/qcom,sm8450-videocc.yaml        |   3 +
 drivers/clk/qcom/Kconfig                           |   9 +
 drivers/clk/qcom/Makefile                          |   1 +
 drivers/clk/qcom/gcc-glymur.c                      |   1 +
 drivers/clk/qcom/videocc-glymur.c                  | 526 +++++++++++++++++++++
 include/dt-bindings/clock/qcom,glymur-gcc.h        |   1 +
 include/dt-bindings/clock/qcom,glymur-videocc.h    |  45 ++
 7 files changed, 586 insertions(+)
---
base-commit: a0c666c25aeefd16f4b088c6549a6fb6b65a8a1d
change-id: 20260123-glymur_videocc-1b5486fb1676

Best regards,
-- 
Taniya Das <taniya.das@oss.qualcomm.com>


