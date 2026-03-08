Return-Path: <devicetree+bounces-272643-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLmMBx8IrmkG/AEAu9opvQ
	(envelope-from <devicetree+bounces-272643-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 00:37:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B608232B43
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 00:37:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6C7B1300D694
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 23:37:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C0E235AC09;
	Sun,  8 Mar 2026 23:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cNHrzm85";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JNIeZOkl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4E9C3502B8
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 23:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773013020; cv=none; b=S4UGtVku2V/sUOyOvoawzjxnhc2eNkMDwZ8M7OsQH1SKvNZ5rZ/pOYPCjxfDZU5g0GllwSx5uS60Or0QfWdiq+V3z5dr0zz/TRPOLAQMrK4/+SMvfGqGwjvhffVUueJRjrzePIPTo50p4mStj+/P6kCMqqdEz+r874ZnIDOOq9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773013020; c=relaxed/simple;
	bh=LsuLQU3Q6tOhLJtUMwNlj5LUpMJ6U2rs9gj3LP/mBjo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=nm+CtoKnYlGM97oIrf6HQsBJ2ZczTckTrqAc9rGzCLO5GPkyQ/Jpciem8TWrbDihL8qssCKDrvMrJUdsNGdINVWURTb1aH87/yw/1lJxRcRtmejGSxgCoXOnt5yQNegBs5Hl/Drzy8+IrhutWtTG6+luUaNr17TYUWYwQF7V78M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cNHrzm85; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JNIeZOkl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 628FtMg12245269
	for <devicetree@vger.kernel.org>; Sun, 8 Mar 2026 23:36:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=hHb4wLKQHzlp9thoFi/hVKJDsXC4VdUDRw5
	11MEVH+8=; b=cNHrzm85OSODkp560Ev/5tGsWW8dfm2wd3dS/a3ALO3BqdPU9H0
	WW3N5qUGoDJMLfR9hevX0Aoa3DsSGAH1QOIcrU+7w6WbtWtxzmorymqnK9wBRTRZ
	SR1kgtgibSHEAz7zlSEu4TH66zfXxsestWjPV26lA8xhvTsJZUz7qMay5Bs1BMGb
	nZmCGDYVMLKP35UDFipvAlFTBKa5WlU6a/gt3hiRp4eZEKjnlJRMHkljVgI4Ovv8
	U33+a9hXMfvc8hptbRnpTmdK9Nsdvq1T+pQwhOfVbf8cLJQJ3L+ANJVjsMYaCoLn
	/8rgNWRfK6jmIMPP5j/JsLlorkm0ltWJtFw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crc83b93v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 23:36:58 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ae50463ba8so382177005ad.0
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 16:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773013017; x=1773617817; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hHb4wLKQHzlp9thoFi/hVKJDsXC4VdUDRw511MEVH+8=;
        b=JNIeZOkl5oZKu5Cfn1BBhG5ltYWXRiA1yXP2rz7096HlsLpdgM5IBTCS7y/DZCagZl
         cPOC0RHkad1dYJrK8wuMUxSUqhSGoPJaNSqR5GhzzZ42LXRw+eK0eq/2VM73efZSsAT4
         kiWtFOWZ9uKPaPMYQ32SWf8aQ3EIUxgyrK7CRGsr3Y00sneSqY1ZcnFhnpQDKtzKMtb0
         YAn896qoYV691jQjPp2I3nv0FBn6UvxZAgfj3sHQ2mC1E/qDlxxd/3S38A4xP3+Edo5R
         xtfuSCczP7diCcak4epnlxnno+LG3Ss8MU9x6sSlw4HZ8BSM39FcFQsBdZF94FYKyS1W
         Kaew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773013017; x=1773617817;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hHb4wLKQHzlp9thoFi/hVKJDsXC4VdUDRw511MEVH+8=;
        b=Jjclssx87bg3rOx/h9gcm7IakJ3OXQGcFgNMq32nGH/UkAOYr4tlUwcw1nKqnwxN6p
         B7D/yM14jtf5dRd4grznevYY1ufm3U7NIx5DtiJr+1vfuMOjGmazt7htkVK9u7r62LFB
         /Uwg1JnQ7eOiY6Z6vF02e1mj7Te6Zdnnq7/NtQqbJ2TPOPXSR0UwSWOml4AI0Lmglpcx
         hsi0Bogqma/bwodlJGK2Jrtx1dqyfG102RtUr/ZBXrj+NDkSyONUoKAgNy0HovrRinu5
         BuG9VZby7cOdeB/JziMQBm06/G1BDRXQxrWJZaPcIHxA+uxN1B+F/4/Sj2RxCopGXMj3
         wnqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVrTwBiGTv6D038F+V3TtIxSsrMbN+Wg6D8AQACzGoM6TH+eIEMWlF6HHpE9P7GyjDsigWILHWpxLJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzYdYgFKZOLVB2MLXFZ2myUj8o/dlQ7IsPnfUpLnHI+sBWdmBfZ
	PIsh1iXEVaiMHNup/3ey1F+jUg/4I+4+ziX5igoIx/4VYvtL/8t+MJCb0G5B1gQYjzWzr+WEavZ
	EBGTGA/yxOYs1AZCJYTwH4RkKfrD13wkxBsfkGyprbfm1aQ+JfFJyTI6k0Mcoy9rcYbVSYQ29
X-Gm-Gg: ATEYQzwM//Bdh2R5LOGekdy9rfbsLoIET2T9g8oZt8kOgO2PsD7mYRfl3YWXnBPPSLo
	nrgGW3T0aigR2tMXlwAZb3t1IH6a9bU7bK7hQ/XoS5mu/cyzUDSX4BLaMrUEZM9ipTMU1suXdCU
	d5hLpugdkG4OWgRlbMsEakaKP7E6zZAYuHTm3JtbPppac57YtKVsgGQm8cHsDAUnG2ZEqMhSLVq
	4NK+GQmNt/c+7i6fO62f8tvuj9lWZCK7FqUcVZzHYMKc0U4X9MhhU0q7TPe8baEIWPf2ljbtaaZ
	+zttQk59V+GpyOoaviDYpJoSJoDYl+B08IoRVaLBBQWTyVXuN6JagCKu5D4I/BMy85L71nlumMX
	o7SX/gAPB8C7j+Pi96nxUh26RdfwOYFwLci4DdolNaq7mDJEX71/L7mKdwfoKsbbMJpb0hSnQ0k
	tHzOwDkSGni6vArZZoJ8Y4YruM6XyKp37zXZqC
X-Received: by 2002:a17:903:334c:b0:2ae:5671:7074 with SMTP id d9443c01a7336-2ae82386d2bmr63833195ad.15.1773013017232;
        Sun, 08 Mar 2026 16:36:57 -0700 (PDT)
X-Received: by 2002:a17:903:334c:b0:2ae:5671:7074 with SMTP id d9443c01a7336-2ae82386d2bmr63833065ad.15.1773013016779;
        Sun, 08 Mar 2026 16:36:56 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e9ad26sm114274845ad.28.2026.03.08.16.36.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 16:36:56 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, bryan.odonoghue@linaro.org,
        ilpo.jarvinen@linux.intel.com, hansg@kernel.org
Cc: conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        platform-driver-x86@vger.kernel.org
Subject: [PATCH V3 0/5] Add driver for EC found on Qualcomm reference devices
Date: Mon,  9 Mar 2026 05:06:41 +0530
Message-Id: <20260308233646.2318676-1-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=R9UO2NRX c=1 sm=1 tr=0 ts=69ae081a cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=VwQbUJbxAAAA:8
 a=pGLkceISAAAA:8 a=COk6AnOGAAAA:8 a=T5_SIA_r1xWFi_hSMU8A:9
 a=1OuFwYUASf3TG4hYMiVC:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA4MDIxOCBTYWx0ZWRfX4Wl/5Ecsf0jU
 glY7srUheLGTzwlPALLS7AjxFaLGtr6iJLAKksRH1mgVdqd+DvgwK5i6ra/1TKlsbhPQkdDisS8
 KdgnvQqhmHG1C/MY7E+OZ+wWXGDWhwZb3L0bmDvwWrH9y4/pDEzj4LXwUGa5kNmxkhGjJfHPYLg
 wfkDQ2kLT2MqBHAXKolHVYRCUH5vwV0TKZ+/OzD4KqcrkSHcTiUDx+dwMKGNafP3+yw5SRQamMp
 h3jgQSZEafIiRF6YJH9qhBTT8JJl+Rzp411qfjMRxuY6uTlxuHVu8Tgb7iCv/6RB2uPZlG1S//Y
 s33bZTKA9qFy7oLpeKDpznPUEE0MgdBWyNcHh9nGtaDmAnr15Ui80LUQrTThCTUo62M0lpWxR0T
 k11RozTivMCkf7OOxWJ3oqridEbu45DhUfHYcri9QiYWafkrXb/Bt+WGq/zgtfqO99am59iNtmZ
 cssj1qtADAP3i9JjDTg==
X-Proofpoint-ORIG-GUID: MQMO6cq8puBHW9iutEddkEf08J_DwuB_
X-Proofpoint-GUID: MQMO6cq8puBHW9iutEddkEf08J_DwuB_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-08_07,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 impostorscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0
 adultscore=0 priorityscore=1501 spamscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603080218
X-Rspamd-Queue-Id: 7B608232B43
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272643-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_COUNT_SEVEN(0.00)[7];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,quicinc.com:email]
X-Rspamd-Action: no action

From: Sibi Sankar <quic_sibis@quicinc.com>

Add Embedded controller driver support for Hamoa/Purwa/Glymur Qualcomm
reference boards, which run on IT8987 and Nuvoton MCUs respectively. It
handles fan control, temperature sensors, access to EC state changes and
supports reporting suspend entry/exit to the EC.

Changes in v3:
  - Revamp the bindings and driver to support generic ec specification
    that works across Qualcomm Hamoa/Purwa and Glymur reference devices.
  - Add ec nodes to Hamoa/Purwa CRDs and IOT-EVKs.
  - Add ec node to Glymur CRDs.
  - Link to v2: https://lore.kernel.org/lkml/20241219200821.8328-1-maccraft123mc@gmail.com/
  - Link to v1: https://lore.kernel.org/lkml/20240927185345.3680-1-maccraft123mc@gmail.com/

Maya Matuszczyk (1):
  dt-bindings: embedded-controller: Add EC bindings for Qualcomm
    reference devices

Sibi Sankar (4):
  platform: arm64: Add driver for EC found on Qualcomm reference devices
  arm64: dts: qcom: glymur-crd: Add Embedded controller node
  arm64: dts: qcom: x1-crd: Add Embedded controller node
  arm64: dts: qcom: hamoa-iot-evk: Add Embedded controller node

 .../embedded-controller/qcom,hamoa-ec.yaml    |  52 ++
 MAINTAINERS                                   |   7 +
 arch/arm64/boot/dts/qcom/glymur-crd.dts       |  22 +
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts    |  10 +
 arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi   |   6 +
 arch/arm64/boot/dts/qcom/x1-crd.dtsi          |  16 +
 drivers/platform/arm64/Kconfig                |  12 +
 drivers/platform/arm64/Makefile               |   1 +
 drivers/platform/arm64/qcom-hamoa-ec.c        | 462 ++++++++++++++++++
 9 files changed, 588 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/embedded-controller/qcom,hamoa-ec.yaml
 create mode 100644 drivers/platform/arm64/qcom-hamoa-ec.c


base-commit: a0ae2a256046c0c5d3778d1a194ff2e171f16e5f
-- 
2.34.1


