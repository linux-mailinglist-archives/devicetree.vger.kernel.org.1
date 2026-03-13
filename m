Return-Path: <devicetree+bounces-275179-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFv+B2f+s2mWewAAu9opvQ
	(envelope-from <devicetree+bounces-275179-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:09:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC3E282BA7
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:09:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8151130FF0F6
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:08:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D62663914EE;
	Fri, 13 Mar 2026 12:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XcyPdW7P";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Il186JXx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E43236D4F5
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773403723; cv=none; b=ckc7iJ62uUl+tXvnGWhvWc6JgI21zyo+vMox4UfmPr2qWDLN2iWJnf5lXjdkHDKkJO2/Laim2jinyd50VjTNj74e1Pq3RssrgfUPBHHF+3EfA3PJ6Piqqn3LMpgPKE4TRp9N9WGVIA/jb9kHpoUKOP2TPgzym/TMCFDvGWrP26k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773403723; c=relaxed/simple;
	bh=on41Xc/5ggRLAfRW+zrTkrut7mTjX4tmeojgEOjuzZU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SRXmXBDNheS0nx+gRiZ0LPx92qfTrDdgv5Ds1uz340m25fqtDcutA5yQ4ZWRKzNqk15ukS70ZoscllM884lJvIhFu1EdmW0qOgxhUhu9JNE4bmRl2VmY5EIQS0Py1x4pQxAc/v+mxgl+ZOIgmsSIPKSRjpTwL9nwdikrzw6ZyH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XcyPdW7P; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Il186JXx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D9BBPW3906354
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:08:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=IGOT9fD2d0q1zlnv6OnUTILWf5Y89gyMTfA
	EqWAQqBU=; b=XcyPdW7PwRzUxdImdzLrJpali8nZRk/vNxl+gBFJaylkCeLHmsn
	bkUOIs0IKBB16FkZp/bdsW/kIZXz59PFr6Hpjt/8CR50A6CbpSqOmN7dB662LDf/
	GDfhbw0m/mT3CJdNIbsG/fkmFy2PPwqrBlYa9zKK1OgvIcTQ+WIXJP89UIg2Ln4Y
	c9hbSFrFk7hik9eSmX9vPEsL2DyEgJt2lpH7CrDhc8dCNSbBDLgXYwyr1HxSQ7IB
	Z9PysOBXEWsBL3k/2l6vG+7U0+585Wilh6B4BRijl9MOMQAiWZG/Lj+UFVk0qgfG
	ETsWtZgbz+MjMbfkBc+To49om/c3torZjcA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvfqs8j2x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:08:41 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-35842aa350fso13227470a91.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 05:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773403720; x=1774008520; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IGOT9fD2d0q1zlnv6OnUTILWf5Y89gyMTfAEqWAQqBU=;
        b=Il186JXxzNX1BGotXFOsv1mOKMW2BGr3JCvapAE0u9yuwKLu2tFTsWSWZi7kJp7kqa
         Ww7VI+/MIUv6d8sqkhAsoAXO0iH4vDB5faPWoqdQ0AfhbQMO6j6ZlSs0XATtS5lGSYJh
         oVKnl1QbUofhG1xefbhRYT1+FTVrKrHN6XumnupK0OcIXJwNrvDYXLiYCEEV6zb5hfXi
         S65fTm6wnDnUo8ihMyNJUVSGCp+GH4Yv9WE8xn3wdvXtA4vf8RJ9JW2y6UBJ8xTQqKvE
         9f/CURvvp5ZdJERW24GNtG2zzeNDjTSLg5LZPYrZSMXVC5YdDCy1l2rqBGXJYNoDjb1f
         0CBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773403720; x=1774008520;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IGOT9fD2d0q1zlnv6OnUTILWf5Y89gyMTfAEqWAQqBU=;
        b=YC/DbZyP+rtKnf3lrPMcEr3T7O9gkatyyQQXSsWI6sMHW8uWmHviGUVOcwgS/k8/fG
         DXiDI6NV2DCh4LuT5F/+0c74bf7/Yr0YFRSLkCkKwrnmUQhjAsn8t2BbFpHJR2hvAVes
         1B9EQwpveoJuslHJJmcmb3f+bC4UB2DhFLfty2FyzeTtrXKTl5okj5Hb0zTyf6tN3JlW
         LbXhfiPVmm3Kv0hS9XN+9yAUKlWTS4EETCpgzIFos1NWncOLosgALxRoSvmptLKl2Nev
         RU2pq9D6PoJGJG/bXcwxXjVvlykNsROsp8VL7xrE9ISCb3YglfnR/9TFvsDQGyv+7jER
         9sYw==
X-Forwarded-Encrypted: i=1; AJvYcCUid3E4Q4aeSfUWNk4mW+rIIDl3jmnUy5vkqK3U5PUC79QCl880DXVx6ws1/EhTd00inGZlLd2YRHap@vger.kernel.org
X-Gm-Message-State: AOJu0Yycdo/smD48mdSB9DKt97M9OKyloqtD+QkI+NTI7ITIROOeT6kr
	ujCjFNit3XiveUVidnPdFb0S760Hg3q/b/RVAUXxVqyeBVBQWi4EPGf9Ix4DZ4vrSQ+jStVpKHI
	/6160wldUjERzkveF8+sYUyBlVizxwLT5fzdgdQJsEOvyujF5/hOOrhi5an/QhRjF
X-Gm-Gg: ATEYQzwz2mc870rQkZWqpvlX8496lEl0G8rBrwaimMyx9OT6fy9oWwKmJJEYTZvfl1x
	Cw526VTuZz+AJBlFGR3p8NHJRw7MmnmkkXrSbpSfSCmZAW/ZWkjOef3gW3FEPz5h1ddTU2hXROE
	TNNNyMLQeN2a9ab4Ihf6fRXw7Rx7dZyQ6lNJP/KmQ52QfbimQElpZ749T689m1Ucqcp9gOuEed5
	9QfXskW11PMQ2eHeZDVP9VUAk2idFxhiQiMknlc5gDkbkHpy8vv8GZMW3OBLA6gXSgdOnsM2RQf
	YHH4WG3sII9yasqO7WzoeM5R0OizkFpJCZpuIUV3ymbPhvGKbOB0EVRCOEb4qvVQmMws14Ijg5v
	+0OR9bV9jj0l7bjPEshLW+GYKeY1gVr2OD9YldN/0+rpoXOBpH8ph6YhjeVglcNkzwRRSwGQ8v3
	VgqZz6a4j2NAptXs9ju2zvrUw6vrBykBSk1aiP
X-Received: by 2002:a17:90b:1c08:b0:359:88c5:3add with SMTP id 98e67ed59e1d1-35a22004c98mr2877046a91.19.1773403720350;
        Fri, 13 Mar 2026 05:08:40 -0700 (PDT)
X-Received: by 2002:a17:90b:1c08:b0:359:88c5:3add with SMTP id 98e67ed59e1d1-35a22004c98mr2877014a91.19.1773403719854;
        Fri, 13 Mar 2026 05:08:39 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a02e18f0asm8421945a91.1.2026.03.13.05.08.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 05:08:39 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, srini@kernel.org, amahesh@qti.qualcomm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        mani@kernel.org
Subject: [PATCH V5 0/5] Enable ADSP and CDSP for Glymur SoC
Date: Fri, 13 Mar 2026 17:38:09 +0530
Message-Id: <20260313120814.1312410-1-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: e6cID__PLldKkTEBrfVKWzmyOIr8B7yf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA5NiBTYWx0ZWRfX1bpRYaVZbz8q
 FSozTXj5OeRohQuGSI5jWv/JSv945HPmp+flTQt97GcLsNeyTC8YQdFHaKr7jV6verzHyZV9B8V
 3Wvk/j8fhVSG8JLLyWESpdCn0V2C3bOuYbmppxcrIpSg20PqF9r2nKEDMs1cZQTcIamMdgVEXmC
 yhR8mj+uvX4rh5av/tC5GQksMjamyVl05nvL0VFdIFje0MuXHyTH8+2XPJTNCeKUvaP16FK+KET
 Tx7Nn2SDEpW6jCMg9CPNENLsJtsR/pAh9iXDJlz0/9k9zzTAenhktrhe1JL9vDKSWP7MHjM52tR
 8WjABY22mN3asxR9zLND2dA02qy70J8uB51iDOJwO417Fxml9VDZutteVjrgiH8finL6TLCNC17
 x/U6ydSijvsAE2CTffxZgJ9FOobs8w7zvQ1wKIxEaCYASzDTlVHlFXUmn9uq2tm/nlPgLH3hBOI
 5HhcIAiCeI4EAbQEwAQ==
X-Proofpoint-GUID: e6cID__PLldKkTEBrfVKWzmyOIr8B7yf
X-Authority-Analysis: v=2.4 cv=GoNPO01C c=1 sm=1 tr=0 ts=69b3fe49 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=9v-nsc7hOUgGWHzJVNoA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 phishscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130096
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275179-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9BC3E282BA7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Qualcomm Glymur SoC variants predominantly boot Linux at EL2. This means
that the firmware streams of the remote processors are managed in kernel
and not in Gunyah hypervisor. Given that the Peripheral Image Loader for
Qualcomm SoCs now support running Linux Host at EL2 [1], this series
documents and enables ADSP and CDSP on Qualcomm Glymur SoCs with its
fastrpc nodes. A few variants of the SoC are expected to run Linux at EL1
hence the iommus properties are left optional.

[1] - https://lore.kernel.org/all/20260105-kvmrprocv10-v10-0-022e96815380@oss.qualcomm.com/

Changes in v5:
- Fix commit messages (patch 1/2) to accurately describe compatibility [Krzysztof]
- Link to v4: https://lore.kernel.org/lkml/20260310033617.3108675-1-sibi.sankar@oss.qualcomm.com/

Changes in v4:
- Fix SID used in ADSP/CDSP for correctness [Konrad]
- Link to v3: https://lore.kernel.org/lkml/20260129001358.770053-1-sibi.sankar@oss.qualcomm.com/

Changes in v3:
- A few variants of the SoC are expected to run Linux at EL1 hence the
  iommus properties are left optional.
- Add fastrpc bindings and nodes.
- Link to v2: https://lore.kernel.org/all/20251029-knp-remoteproc-v2-0-6c81993b52ea@oss.qualcomm.com/

Changes in v2:
- Combined into Kaanapali series since they are fully compatible.
- Link to v1: https://lore.kernel.org/all/20250924183726.509202-1-sibi.sankar@oss.qualcomm.com/

Sibi Sankar (5):
  dt-bindings: remoteproc: qcom,sm8550-pas: Add Glymur ADSP
  dt-bindings: remoteproc: qcom,sm8550-pas: Add Glymur CDSP
  dt-bindings: misc: qcom,fastrpc: Add compatible for Glymur
  arm64: dts: qcom: glymur: Add ADSP and CDSP for Glymur SoC
  arm64: dts: qcom: glymur-crd: Enable ADSP and CDSP

 .../bindings/misc/qcom,fastrpc.yaml           |  11 +-
 .../bindings/remoteproc/qcom,sm8550-pas.yaml  |   4 +
 arch/arm64/boot/dts/qcom/glymur-crd.dts       |  14 +
 arch/arm64/boot/dts/qcom/glymur.dtsi          | 286 ++++++++++++++++++
 4 files changed, 312 insertions(+), 3 deletions(-)


base-commit: 5c9e55fecf9365890c64f14761a80f9413a3b1d1
-- 
2.34.1


