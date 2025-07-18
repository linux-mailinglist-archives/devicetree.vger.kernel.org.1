Return-Path: <devicetree+bounces-197750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B899B0A830
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 18:13:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED1911C8145C
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 16:14:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30AB82E612B;
	Fri, 18 Jul 2025 16:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H4JCJR3S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9895F38FB9
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752855230; cv=none; b=s2AGplslKyhXZ7+smj72COBwSQL+Kn+HBuY4PbA6CdXyEivKQPklLeYenKlVj+MddhkYO4OdoAN4NKbpG6BcfQTVz9W7vTIG87xzqcjr1YS622PB0x6yHQyaeuB0wnhRNxtH3WMbSGk9szRuecrliEZyy7wMyK+qIHZ9LUL5wh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752855230; c=relaxed/simple;
	bh=jnQej5os8946OtwsAYxWV5AqWfH0NVCPXeIuQ2kik1I=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ox7neU4wEzcQHARLShgeFLDjftQJg+buRX0jfIPGrvwtwih+eKhGhl9efnEa+yY5iGbtoUnTyu+xSJ+uY0mv6ljdvJwDCP6p3TfXRyZvyMfq/gbOu3QZE0YQJbYjMQqMS0d0ba/kF9IMLlzrzwty1HBmaBF52tfGrJRzFKJhOeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H4JCJR3S; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56IG2cGM032408
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:13:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=E2+mYONdTWwAKa/b2Dnjv7
	gT1I0AopAtzO+8co3bDc4=; b=H4JCJR3SXw9tgn0jFSQ5nadXmD0sTfvO33FeTC
	xkfh5XGBEmDujfKzTA5bMnAmG5Ulv0jyGvCevfwmHKoWpXjjAm/4ng3/dBAtlHy8
	fXnvStcAJWLpDeStFDUL5b3tZLKgJMwKj2+8EYZ9t569nddutkEkmWTjHCBQKekl
	YTPqrhSxc9uFxgvQDSZowyjcXVbjGUytVvTHk1t93YwZtV18n4CAfLQDI0ukqG02
	l2OvLbQsuhE5RDzF9Y+u3GD6qZ2vVsKZpD3jzSSEtEpoYMcN7sV7R5DWDtcK7Ejs
	+hO5ebj+NecfXcjO/nYYv91mk1VdOFt9E7xx2ChLivO8s5og==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ug38cd04-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:13:47 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e33af599bcso376056085a.1
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 09:13:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752855227; x=1753460027;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E2+mYONdTWwAKa/b2Dnjv7gT1I0AopAtzO+8co3bDc4=;
        b=H/dxF/TOaOxsoCkZN6/QM6oM5EI5nSSmYUZvrveHIILf4LgxAyExt/ubQwaodQYNa1
         l+hSeahgMh6ZVjuO+7dkr2xoOwIwA2wAASlqAWAmHn8yrZTEkhUba+DFGWMrqgunqUWu
         QgJjzf5WVBnvDTEURE46xFT47+hSK1dFdvBZfENofyaDEyCF3uNtij1TmOVagjsjBYpm
         MPQjtOZqUc8GM3JeVHJJ3AUOqLQUp/OfaNWrFTQNYpZ2XAbYrwg2wSSK92xzRP8fZdqB
         Cn5pGVyF4va59608KIbEXcUIEpYhfHRABsDYRj+4AwBEfG03eTWZRZPfiZQElUfOLMQ5
         lCYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXlF5RQb3Lt9Y60xJwt6K6LyfNolyPGbuFuBwFr/kF774wdipl98Sz/qSToBI436dqHHVvwRNYC2tII@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0zrFm92V6SC3LOviSYTI0YP2woKYQkzURHyCZVOg/ZOlZvvRj
	TxgWcGhSB43vH5QixaXMLFhNNZbeRzjPd5lyjFymGG8F7QqizDg3onuBhAoEIXreJc8jrUQ7xJN
	rLbPB93V4nTTT1oNaxcDDvEPQOqOgGZksiXd5ksY4xMC34xa+l0U7M77SGEckyFp0
X-Gm-Gg: ASbGnctZjZv+qz0GXt/LftGh0DsfmT9dLAhtkKhsfegiUmt9spW5NuYR9uBg7tPtu0K
	Nr6bM/sHFCcZhZF6FVorfnGuQKau3H5wyff3F6789zsTf2yPHZ90o3pCejHvf3PmGDzJpTbqArC
	bi0F3JSlowOMaTT5uDd3uF/oEeHmhWd9NhLUHsWxRtZRsthDpBkC7llhMhedW+r4EAhzeHL72WI
	Agf1adiPI4DF4Zc/9Tay3ND0R2pccMEviU2SLCG+dF/qoV8oAIxVxUfGbbwGO+tlEbH4IgsKZn3
	CajKkHi077eqUwXA+DQLRl5lurFdeUPVkaVxoxktklnCdCNNRk3kKFpouw+LL7xp71I9aoDULD8
	6/Mn6Z8htdPsyIv/QLl3wgCw4e5Y8wkOsHi0Y23HRHXI1pvKLzWIW
X-Received: by 2002:a05:620a:8509:b0:7e3:35e3:3412 with SMTP id af79cd13be357-7e34d9ac2e5mr622296085a.34.1752855226586;
        Fri, 18 Jul 2025 09:13:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJFME1iu2nBdlZCEndMtUjbp0cqubsgTDnznr23GMq/CHMfz0nkUvr0ssMwdhTZk5t9cEtiA==
X-Received: by 2002:a05:620a:8509:b0:7e3:35e3:3412 with SMTP id af79cd13be357-7e34d9ac2e5mr622289885a.34.1752855225796;
        Fri, 18 Jul 2025 09:13:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-330a91c1ab7sm2388131fa.50.2025.07.18.09.13.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 09:13:44 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 0/8] pmdomain: qcom: sort out RPMh and RPM power domain
 indices
Date: Fri, 18 Jul 2025 19:13:38 +0300
Message-Id: <20250718-rework-rpmhpd-rpmpd-v1-0-eedca108e540@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALJyemgC/yWM2wqDMBBEfyXsc0OTiAj+SvEhJtu6lFy6ia0g/
 nvT+jLDGZizQ0EmLDCKHRjfVCjFBvoiwC02PlCSbwxGmV4NepCMn8RPyTks2f+qpe663lit3Ox
 7aM/MeKftb71NJzO+1iav5wizLShdCoHqKCJu9RpsqcgwHccXYpV3FZQAAAA=
X-Change-ID: 20250717-rework-rpmhpd-rpmpd-13352a10cbd5
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1864;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=jnQej5os8946OtwsAYxWV5AqWfH0NVCPXeIuQ2kik1I=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoenK2X/4FUMKR/6O9sQRhqyVPR9hRSX6jxmwhn
 gheSKljeAiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaHpytgAKCRCLPIo+Aiko
 1WBDB/93DGP5KNuZts9BxHzohRG1Am3sPtjk5P93zmsB/JMqiWqKOM/hgbgj5r+UBDA8tyf+e2S
 eBGQrnJ6eZ3ybThugmU5ZTY8qq3d4TKf5hWv3P7bufQoeu0FWwMJNcg4nmSGxlrPWslux4byiRl
 86v7dmjWxDRHZkT6CtDTUVi+XyjMjCeIvssj0pR5GHfYMh8Y6JBV0daf0me7Sec1keBlgb6BboW
 DAr1H8ykZzXcebSMtffH3PEY36WiCxRAngEjpl+CcCQIVJNsRCgr2MA/7TOT09cFJZFqYaGa3sD
 O1EZUeyToT0ck7XzZCHFx0gcP1/M8gaCwNqEc5OheEDt7Y9U
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDEyNiBTYWx0ZWRfX/o8npzTzqSCe
 195QGLcN6wy7upe1xcq36NTYOnFMbze6iVHMYzOudQl2nGnuLcRCvD/SiDEqTQUooEcObMrK9TG
 bEbDX8S/tvLDEkpZ8eQoZPzf0Wj1Dnmptf06jrl7QOxWjdfd5wkQkmbitc6OjUXOvus9LJBpTas
 zRz7UDgtdGAAFo2GcxXL539dXVS9Pr1+fWo064f/zP1bpCX7jzeLydyy8S4kloJ3sn5OabjzN5K
 XPduUqtQxA2Y+QgNwVDfuBM0xCpql2dflWPbt9BpC6MEy7COCV1CiHYacGyCTT6ip3zjQ58XOWd
 Az7S0yqxgX2olqkZg3eBR/9UPwBQ+sIi7OrK4doN1BNRa067ov1nRK3NU+uF9gDHx2GDt5J4OM1
 fALpR7yL4MrnT+ma0M7+3xTVOsph3kD5odBbNugPH4HerblOqAkeWi5VY2LgYOmB77/lqjIF
X-Proofpoint-GUID: hcIQut_zp0dVy8UCLlStSyQwdpZtrdkf
X-Authority-Analysis: v=2.4 cv=SZT3duRu c=1 sm=1 tr=0 ts=687a72bb cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=gAiK-lJt_Rg5ifV0ZIAA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: hcIQut_zp0dVy8UCLlStSyQwdpZtrdkf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=682 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507180126

- Separate RPMh power domain bindings from RPM PD bindings

- Drop now-unused (after [1] is merged) binding indices for RPMh
  platforms

- Introduce generic bindings for RPM power domains controller

Two last patches (marked as [DO NOT MERGE]) should only be merged after
corresponding DT cleanup lands ([1] and DTS parts of this patchset).

[1] https://lore.kernel.org/r/20250717-fix-rpmhpd-abi-v1-0-4c82e25e3280@oss.qualcomm.com

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Dmitry Baryshkov (8):
      dt-bindings: power: qcom-rpmpd: split RPMh domains definitions
      dt-bindings: power: qcom-rpmpd: sort out entries
      dt-bindings: power: qcom-rpmpd: add generic bindings for RPM power domains
      pmdomain: qcom: rpmpd: switch to RPMPD_* indices
      arm64: dts: qcom: dts: switch to RPMPD_* indices
      ARM: dts: qcom: dts: switch to RPMPD_* indices
      [DO NOT MERGE] dt-bindings: power: qcom-rpmpd: drop compatibility defines
      [DO NOT MERGE] dt-bindings: power: qcom,rpmhpd: drop duplicate defines

 arch/arm/boot/dts/qcom/qcom-msm8226.dtsi |   4 +-
 arch/arm64/boot/dts/qcom/msm8916.dtsi    |   8 +-
 arch/arm64/boot/dts/qcom/msm8917.dtsi    |  10 +-
 arch/arm64/boot/dts/qcom/msm8976.dtsi    |   4 +-
 arch/arm64/boot/dts/qcom/msm8998.dtsi    |  16 +-
 arch/arm64/boot/dts/qcom/sdm630.dtsi     |  16 +-
 arch/arm64/boot/dts/qcom/sm6125.dtsi     |  12 +-
 drivers/pmdomain/qcom/rpmpd.c            | 112 ++++-----
 include/dt-bindings/power/qcom,rpmhpd.h  | 175 +++++++++++++++
 include/dt-bindings/power/qcom-rpmpd.h   | 375 ++++---------------------------
 10 files changed, 306 insertions(+), 426 deletions(-)
---
base-commit: d086c886ceb9f59dea6c3a9dae7eb89e780a20c9
change-id: 20250717-rework-rpmhpd-rpmpd-13352a10cbd5

Best regards,
-- 
With best wishes
Dmitry


