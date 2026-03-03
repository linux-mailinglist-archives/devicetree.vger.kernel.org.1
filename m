Return-Path: <devicetree+bounces-270348-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGgmEj2XpmnmRQAAu9opvQ
	(envelope-from <devicetree+bounces-270348-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:09:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E09BD1EA94F
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:09:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0D1FD30340A9
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 08:07:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF5D2388E53;
	Tue,  3 Mar 2026 08:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TEGLHK6l";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WlPVr7wX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BBB388E40
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 08:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772525259; cv=none; b=geg6IPfEl/boslN+1WM0rqM+o1DBRpe3OsXe5ld5gx9UKBl1HrqocfrJJMbEBVTdgFMT5k+k2DrwY4tQCXGWhkmXwfDdSr8H/+1qKcK+nnUlJ4YTYUKt+iZBwDvkKbP+xFNwStgMDeQ0BOUYaALzb7YJHDOnPDsEOwHzsmD/qi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772525259; c=relaxed/simple;
	bh=S0AVKXrUYwqU8zbmxMyMjiT72FA9zvSCBWH217K8Mgc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=fwELpt6FK740Q+1W+BTLS3aM7YJZEe+E3oTWGl1j0tE8nalhm8c+IoQ+49GdGpZrwkjXzrHuik71OxTKBLLTo2vUfBHHSpuF1EpfN04pFYfGicwfqO3SAJIBhUY/Lt4gCFoiN9wmSiJ4xtMlfglsel5OMDLM9hfmPPWF0FU1psg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TEGLHK6l; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WlPVr7wX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6237FbVP3614638
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 08:07:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=s9fy5z4lexrH1d8Yz8GFG6NLw4DMv4hECuA
	Sz+5xf4M=; b=TEGLHK6lUs/voi4UmgTcY1uq8/aE9B7MSasAedJyTqXQ4dBBHSD
	gh3BjpaZVsB5wbxEmCxwwFqXzc5so85+Dbaooht6cAnd15J0IMe0sKICYrsuSt/V
	Gj1qpSeSQDQvcN8bOJpbjSDvNMdnvh3Ef0lwRAb6X1s5iPILBKIOruAmjzwfcAKX
	EbBiOybXJFczSIBO7i3dKfUVjwaSWqqArU3Y1yal58FOJfrIzD31Xl64YYHSklnX
	vBvNnORqD1Skk+B36CA1keZAajEOgCYFqbtsXo3HEAzCClQeRO5w6ycsL32jdIiA
	8//XRz5BUFk4Jh1gs/R7AQHm8az77npXDQg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnu3n851e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 08:07:37 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ab4de9580dso314375825ad.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 00:07:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772525256; x=1773130056; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=s9fy5z4lexrH1d8Yz8GFG6NLw4DMv4hECuASz+5xf4M=;
        b=WlPVr7wXUITFc+zIVdW1GUO4BflrBAxm0r/4lkAuvJ+JGYHawl/fhLSZgFwMnvYiKP
         Ek4nb1+o0yvPYPR9g1N+AXbpern6BQUGFoE+4OROeqIa88v906gXJNr91t+jE7L9gv7Q
         JflusGvKrQm6Ud6XgXu5gdqZE7zeF+mhu6Y66907mAIHJu6HEjfGvCu2WxJ31hEEYEBC
         zIZ/fx7T7C41YHMPKvzadiX+JRSSidPiJAvyQW9oJeXrHT5TBG88U3/mbvLjOHqvOACi
         /u/2IALXddrD1V5cx25iZy5bozZDfqmBhBimzcUOoFqeXITnznJ3VvBfs7X7DsYy4roy
         XuWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772525256; x=1773130056;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s9fy5z4lexrH1d8Yz8GFG6NLw4DMv4hECuASz+5xf4M=;
        b=Qdsbv6n3dFEZbIwXEaSqZYWbywkm27GOIiyqE2G09xRehlHw3K7t+S9egg/HnmShAx
         vDWUXmXZFatmrwAxAujpWXiFzJjVJHYqbg+kVYM/epsjweDZslXTMQSI7Q2GetJanpLy
         NqOxg2eSmGNS8VWAFc8A02jirL2y9OrplE6g/hCwYyjSVW90itQjQkoINYoZEAcsH0RL
         QaQTQ5zxE4FKB42OdHpyUe8X37z2Bkw+4I9kihYYuigA9ZsyZhGiJPQ1AMRfimZf8s5Y
         jB23Geg0LyQBHq6SHYypojGdANf5e1nBluASSQk2XXRaRjLlP2YHICLVk8wjJeFc3/lD
         aioA==
X-Forwarded-Encrypted: i=1; AJvYcCXp15f83/PP4lQ5kKznzaGBJCDsvnantMcjQ4vY/WbJAAuBTOj6antpuvWKY2gNACt/Ql91xWPTIaxi@vger.kernel.org
X-Gm-Message-State: AOJu0YxxGPjA18W++H1mM5QEShkV/C/Z11raagubLeRBk5BFg/cNy6NP
	sI1Z3pMVCauu8MnNMSOGZA2QFTVMYPQAdr3ujTRJ8cv1uRoux3+lwkYcRUQCxBO526r/7e+tYBC
	O86xEfKsEcZdLTDg7Y9nEZaS0YDzXOfN4QP/y3/nAgF7GbBDwdyfxp3dWUYjk3Jvj
X-Gm-Gg: ATEYQzz1a3fIQ30totnis4AGLr6YN2+dPkVpP1lKldNYbqgdjwY7p/2fZjkJ5vb+IuI
	jjhPKkQ1PIR7dSFeUWG/GKH2/2XbNPNlZI55ugzhtLX9Uj5n6blwy8qI1AZAJ3iHNrlKt0Fl2jh
	JAjOaYu+5vThCLMaCXnrRaCFOHt/t+/OpwXUU7FCAKAYD6UF2R1TbVAJFPwQVnDizQilL2vN6RR
	qybeWbdzjmtPz+ATw/vbxzVv86t5N7AYPca+IbhPmMl6akIA4acmDZDVS0t7C6L+cKYyb2HxfpB
	eJQ3DJW+XNbAMbs2Jh6cM/X8ujAKh03ZdhLGQcK/sdmgWLbq4V48FyJO357r8GFB32sOib/jExN
	Cmycrk0JhyeDBZJMkPzLumakLaYdDgVuWSm2sLZw0WuffO5eXzeDS800=
X-Received: by 2002:a17:903:b8e:b0:2ae:4c9f:4a61 with SMTP id d9443c01a7336-2ae4c9f4e10mr67630435ad.17.1772525256273;
        Tue, 03 Mar 2026 00:07:36 -0800 (PST)
X-Received: by 2002:a17:903:b8e:b0:2ae:4c9f:4a61 with SMTP id d9443c01a7336-2ae4c9f4e10mr67630105ad.17.1772525255804;
        Tue, 03 Mar 2026 00:07:35 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3599c3acea3sm1445883a91.16.2026.03.03.00.07.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 00:07:35 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v5 0/4] Enable tertiary USB controller in OTG mode
Date: Tue,  3 Mar 2026 13:37:24 +0530
Message-Id: <20260303080728.479557-1-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=JaexbEKV c=1 sm=1 tr=0 ts=69a696c9 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=PAEsFWfe2vKCIHFHJysA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: 8E-9ZtOipvJ9ZF1-yoCdaqs34OKYgmZQ
X-Proofpoint-GUID: 8E-9ZtOipvJ9ZF1-yoCdaqs34OKYgmZQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA1OCBTYWx0ZWRfXxATBfp6DYS65
 ba28aIf1ejZtYuN2skUNL/5YX/8gVMWnFGloIK514jV8o9xMa12BbuTMHrvP5lXNzvnHxQifvnO
 kVb3zV3sk1HU9TqEx4LS/YBUoJ1ypmJ2ffQmcUKrOiKCAHTKci15bu1vdgFNXV7U5R8eytwlw49
 cE7iXavHipIcuU/5YQdq4dYZEA8+qUKLmYh1wzTie3Qm/pbHhw9r3jqeDfIPYd9kjCmgrs1HubJ
 i/xICz+BGt9ClI2Fk0kDc8mLF/Fc95YpKxINUINiNAtGLoZe33+rszT9lfRj4KZc9gawkUvYN6R
 +IRqNoKGx6yCDCxAEiyaLnGwjRFmZmshovqqh/V83Ht4/xFYZ0xyxPeFdnJeW98OvS+YsYKcUow
 a694xFX488P+I9911NweCjXHi1HMtbxVXr76bsFpNKbe8okNcmaVcukrENVBkuxaNZ+8t99uzsZ
 dPD6O1pzHMBjsQUjWqg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030058
X-Rspamd-Queue-Id: E09BD1EA94F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270348-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Enable tertiary USB controller in OTG mode on lemans EVK platform.

Changes in v5:
Renaming of vbus regulator for USB primary controller as per schematics and
in sync with tertiary USB controller.

Changes in v4:
Minor renaming of regulator.

Changes in v3:
Separate patches for lemans and lemans-evk.
Minor formatting changes.

Changes in v2:
Added interrupts for all expanders.
Minor formatting changes.

Link to v4:
https://lore.kernel.org/all/20260226060835.608239-1-swati.agarwal@oss.qualcomm.com/

Link to v3:
https://lore.kernel.org/all/20260225093155.4162177-1-swati.agarwal@oss.qualcomm.com/

Link to v2:
https://lore.kernel.org/all/20260210125348.2800846-1-swati.agarwal@oss.qualcomm.com/

Link to v1:
https://lore.kernel.org/all/20260206104642.1038381-1-swati.agarwal@oss.qualcomm.com/

Swati Agarwal (4):
  arm64: dts: qcom: lemans-evk: Enable GPIO expander interrupt for
    Lemans EVK
  arm64: dts: qcom: lemans: Add role-switch support and HS endpoint for
    tertiary USB controller
  arm64: dts: qcom: lemans-evk: Enable the tertiary USB controller
  arm64: dts: qcom: lemans-evk: Rename vbus regulator for Primary USB
    controller

 arch/arm64/boot/dts/qcom/lemans-evk.dts | 102 +++++++++++++++++++++++-
 arch/arm64/boot/dts/qcom/lemans.dtsi    |   7 ++
 2 files changed, 106 insertions(+), 3 deletions(-)

-- 
2.34.1


