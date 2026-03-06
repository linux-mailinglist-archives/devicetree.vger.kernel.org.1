Return-Path: <devicetree+bounces-271940-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHoYDaefqmlLUgEAu9opvQ
	(envelope-from <devicetree+bounces-271940-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:34:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AA96821E00D
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:34:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D2D4730166F0
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 09:33:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED23634572B;
	Fri,  6 Mar 2026 09:33:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QYYyDliv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cInA46VN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98A85344D9D
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 09:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772789622; cv=none; b=WvDlWksAbzJmZzMpJRcccrVQ8j7fhWW+4eTkq915+EVmGWynx7s9c9KdmHfk/wsnYVqHkxkduCHzkEzepZ5+ggey79lVTbI0r3XJOWBhjZ0ysjM5LQa3Ux5E2N10ubseC6T0utw/jMKoRG7DyaY0wVVZC0JoBT7NQnMwV+T1SWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772789622; c=relaxed/simple;
	bh=tHi2a8QE8KKwNz5asvYMfGoRfMO8gx2jo+W2jzVkLWk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=JFIveh6Csn+7bJJ84hA2NKwSgXnzJe7vdY16U4xQXf5OWfT5nOYpYx2YitJ93zGMq723RcsWn/5qNWG9olfB/MvzmEhY4Clhol/KSiI30wEvsmrKUJFrcW7BC7wBT0Vjag2lM9JmZ7j2y6vCAvwAGmsiHCLWdLHNBYXff/LagAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QYYyDliv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cInA46VN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6269QHO53121610
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 09:33:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=HdK/+DyIPdjo8vnqeEhYuvYJ5G6b5jLU/xm
	ncGgF7IA=; b=QYYyDliviaKNV/BNNBMA3+IBDO5yTlsFOhkvWy7jYmmIa/YpgQT
	87zvz7LSU29bHfPZa8dIvzQ0UZkDro3EmY+2wM/lPyueqn0bcpJHIjLI+onr9lW1
	YODQyDk6CeIctl9YqaxalUzIkcDKLIGjyQ6Ly7IyywzHdk1Cfaw08p4D/s+UH435
	2o/GVx+hq25JSY7E3iJlwxY8h0Oe3uUKxq0bt9ZTR+ZUzbFhUTsezyElSYSZlgQe
	8ppJjBLxmKkYGVoyp5igZpRsWBMKe2kp2SH7bp8wChUKabRErOhyTrk9c3+mnZ35
	nks8S/Sj/nD0HmmQ2DvmVpuABZomm1aLWXw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqv9u80vj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 09:33:39 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-359887aece0so6118452a91.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 01:33:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772789618; x=1773394418; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HdK/+DyIPdjo8vnqeEhYuvYJ5G6b5jLU/xmncGgF7IA=;
        b=cInA46VNNcDaLzUTOK2dohckdeEtq5qEEsop+eOLHh2TAZk2ePYcYMogdJxRqTTh/t
         3tBElsd8E4Zwc9HjLFcNHWnC+A4YQwr3URzi0pREH7ivzJCAfCZTD2jdKoYmz4wJFQJT
         kqTpIYLAGB4YYRA4czxiZUM2sqg4JQRds6jaXavwTRF5wblLl0PqfmHuqPNQvAeS2Jgp
         v5X15g5QmQWwNrvgdk8N3rVB1OYFev/d6W7F9LVKTqUppuX+brePetnYSLeWuRR+BoDi
         VW+jJmCYffiWNN/N2ep6audKLKAP5qOhzn6bQG4Eclwg/Uthkp7K/aWV4e/qO5g9kRqz
         jUHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772789618; x=1773394418;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HdK/+DyIPdjo8vnqeEhYuvYJ5G6b5jLU/xmncGgF7IA=;
        b=Zdg9k2E8YybxXQcjB11IQtnYO66WDMrCK3tb0b/s90b1QET3oyQ3tNBOvv7kcfwytV
         NfLTl4GAzNSXcvQLMvxsRpZOcJHyXp3rWOK7ZtAobzGPcAzcEidpRu+SyNA8yxDmU8Jq
         GGqwmMAnbqTHOXAOPlp88FYq/CKJ0KNiKX3HfnD0BYNY+pAncyr40nk9frhjBTK7nrtb
         P6kY9h88z2jR/4HhEiBpU0Q60h1zQPYriWYTZrOIjblDhTYpQatfMFSYPcGfpmP7pay2
         1gBXtpSBqAXNuB/A4bOEnifkKUFw0mhuRXED8/hkcuFJbKhfsxAkJoKoHGUMlSzweBub
         PMsA==
X-Forwarded-Encrypted: i=1; AJvYcCWynHg5jMIzW4WG+/QxlSmpObHfvqt0pBgJp+ZjUte5kT4gHT1WlHotFoxvYS6wB27PtULAH7mCCthS@vger.kernel.org
X-Gm-Message-State: AOJu0YwsCUswUXNH9osb/MJLLy/YYJzvHas23YEH07seZdL88BOywpHk
	O1sSnFxwUrHfLIg2IXFDfsfKYRDrjiWHVg68JOvSTUCNkssY03iDYIlUS85pBE6H1wFTZGpUk9K
	azvEg8MerIj/KBwGPOSrjA9QNymBtsw9zXVbD5taH0BetcBK/WEXXM1bwK2mP+Hae
X-Gm-Gg: ATEYQzyRQb2AvKhSRdCH/7ulAKpw7J3CRWIktdx4doVrGK3ADMMZAeFOL7P6z1hhOhD
	sYIRU5ij/U/4ncK2MQzmmMgHP5H4+uR4FqNx5sn381Cxyt84ZP0ocdtLj1RYbCYlRF8E6AwE8vb
	srf5RoNMvMNTthsPxcxlIwQoTdgjGukEq5rm+4BwfxqQoC1hDhgJBda/BwImrJoQmVkg7zx1RfB
	lF0lDw58Azc4V2fM8A4cKx6TA8Bv3tqZoMbQwBowenv7pfdoWSa8wcXi+q3X4FmtquBIqCHVEus
	bZZQg3/Lgbq0KwO4IeOniO4LwJRbhfJGM0P3uCaGlrVYLUmV98YrSH3PTtc3r5CmHyhMG7uGA08
	5H+82pehOkhm9qd6Vl3UdGpT8ninGc1MdAEg+CnHuetGFZ1G/2GYW
X-Received: by 2002:a17:90b:17d1:b0:359:8d23:af5f with SMTP id 98e67ed59e1d1-359be384d2fmr1336188a91.35.1772789618435;
        Fri, 06 Mar 2026 01:33:38 -0800 (PST)
X-Received: by 2002:a17:90b:17d1:b0:359:8d23:af5f with SMTP id 98e67ed59e1d1-359be384d2fmr1336172a91.35.1772789617960;
        Fri, 06 Mar 2026 01:33:37 -0800 (PST)
Received: from hu-neersoni-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359bbcacf06sm647549a91.4.2026.03.06.01.33.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 01:33:37 -0800 (PST)
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
To: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, neeraj.soni@oss.qualcomm.com
Subject: [PATCH v5 0/3] Enable Inline crypto engine for kodiak and monaco
Date: Fri,  6 Mar 2026 15:03:29 +0530
Message-Id: <20260306093332.4193993-1-neeraj.soni@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA5MCBTYWx0ZWRfX8a9TUtk37hwF
 ST3GVUyeO79UcTHgJyatpZJVcbGyZhwH2HvvrtyM43PKZ+pHUJ13GNpWAFjVUb0HTimGtJNQlwD
 9UCMKhYXKfljhfxmHiYc/GJ9Pm0YLHUbGzm0Kedr3zqoUuWaIqkPIsogD/FBWOClDwG5ogI+GAY
 yFdZRxKg5s1BO+OuJQjn0ml4dcXIXI4o5NQl7pWB6G93VuOm1RY8PRFXmgYrPuzEy0d0loX8/4+
 AtLZvppQdRJlo3Qb1yDTAFOLdzxcDF7QPHPnIv5piQBJFDlAG49dzMthN3aj1H0yFafgq6ZJMMS
 LeMrGqVhl6hNs4zX0OeV7KpeZ4EhZeG1EBDPpkG/8hg7LT6csMJS17Ir9XL0UAHprbFkcSMc+lc
 A0EWBkVThyPeUrkx4aXlnuoEuDGWvwGVosVriOYoAjDVE24bxztyTS3YLThCIHN7yJYaxu7W+T+
 jtLj1a8PKqwDk5ItwBA==
X-Proofpoint-ORIG-GUID: YCpB7OipKjl8QN3HdzwV3GrU8nTro-Pq
X-Proofpoint-GUID: YCpB7OipKjl8QN3HdzwV3GrU8nTro-Pq
X-Authority-Analysis: v=2.4 cv=eJoeTXp1 c=1 sm=1 tr=0 ts=69aa9f73 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=OaewepulewRRD3_FMPAA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060090
X-Rspamd-Queue-Id: AA96821E00D
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
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271940-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Document Inline Crypto Engine (ICE) handle for SDHC and add its device-tree
node to enable it for kodiak and monaco.

How this patch was tested:
- export ARCH=arm64
- export CROSS_COMPILE=aarch64-linux-gnu-
- make menuconfig
- make defconifg
- make DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/sdhci-msm.yaml dt_binding_check
- make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- CHECK_DTBS=y dtbs

---
Changes in v5:
- Updated the constraint for SDHCI 'v4' vs rest to reflect the 'qcom,ice'
  constraint.

Changes in v4:
- Added a new patch (3/3) for device tree changes for Monaco SoC.
- Updated commit subject of cover letter to reflect "monaco".
- Removed the text description of constraints from "description:" for "qcom,ice" and
  wrapped the code.
- Corrected the schema code to reflect the constraint of "qcom,ice" usage properly.

Changes in v3:
- Described the purpose for phandle in "description:" for "qcom,ice".
- Re-added the "if: required:" description for "qcom,ice" with proper
  encoding.
- Corrected the uppercase for base address and reg address space for ICE DT node.

Changes in v2:
- Removed the "if: required:" description for "qcom,ice" dt-binding
  as the ICE node is optional.
- Corrected the ICE dt node entry according to the dt-binding description.
- Added test details.

Changes in v1:
- Updated the dt-binding for ICE node.
- Added the dt node for ICE for kodiak.

Neeraj Soni (3):
  dt-bindings: mmc: sdhci-msm: Add ICE phandle
  arm64: dts: qcom: kodiak: enable the inline crypto engine for SDHC
  arm64: dts: qcom: monaco: enable the inline crypto engine for SDHC

 .../devicetree/bindings/mmc/sdhci-msm.yaml    | 95 +++++++++++++------
 arch/arm64/boot/dts/qcom/kodiak.dtsi          |  9 ++
 arch/arm64/boot/dts/qcom/monaco.dtsi          |  9 ++
 3 files changed, 85 insertions(+), 28 deletions(-)

--
2.34.1


