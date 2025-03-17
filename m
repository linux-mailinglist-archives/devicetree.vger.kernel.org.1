Return-Path: <devicetree+bounces-158321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 991B1A65B57
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 18:46:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8CD677A22DC
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 17:45:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22EDF1F462A;
	Mon, 17 Mar 2025 17:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SUyJSoRU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E8621DE2BF
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742233513; cv=none; b=Vt4VBokY+eituqvtFvnXNok53AHqL/FewHyYijqVhSfDrT4HODSnqviVbXcDhFVTL3WTj7pm5on77hXOc9Tqgh4GNKIRn1nvUtiZeCkwasvTQHgzFuR+UBss4UuqefO1ekNbfgYsmzyMMnZ9xmk/VQOinyEjph2w/+L3KdKlZvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742233513; c=relaxed/simple;
	bh=6oexzQF1OoJvGK82ren40uxDYNIho3CwgfGuz5+Kfjg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WNzXxTk3IIDtNQ1Vc/dUuP98W7HhUixgDUVwl5IbNXNAKlTta2PAkYH/1YZRwpGeYJ8UozknjFdANLW2/RBxPfXnSslint3ly5nQGYFCcEjDXOlwW7IJw0dC9IcF7MVGGWbLKEDGJlzFDGvZVjWTwaKvj6Ffl5mdYe+w7iv+Lk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SUyJSoRU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52HAJih5016240
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:45:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oI8X4OOQjroDHAkkPzLdr0WBC9OWilOtC8rBPPB07GM=; b=SUyJSoRUOxH9Kzpb
	Vvl8fhigo+vUcfa6LVVdpCqsTjSjyAoWgmMxNRx6jSDXAAZctIvwbBpbVrAoWGrr
	r/q/T9uzD7BqenFSjgCusCLpOp1le3Oj/6uJaDrJOzw1ZyC+3v3tsiowaBTLRXc/
	oTDN7qBiBNksunyEKo71xIl2M3wCmYritX7XvF4EpH1XrHOjQtSpKkW7/fFrxjWi
	bX7T9eKtMmEPST43Kt8ywg9cFUk2CYXsYOA22HQuUfSAJJkzV/Ev+bNfTvzmW279
	SZ0JTyCJbINoeGBmLVx+29PJosRBgfgLoFsR3fx78612V6jCvp+uYODMCRVFVanN
	1B8HyQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1tx5fd7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:45:10 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e900f6dcadso107053176d6.3
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 10:45:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742233509; x=1742838309;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oI8X4OOQjroDHAkkPzLdr0WBC9OWilOtC8rBPPB07GM=;
        b=iM4a/vqXI4JTUKErM1CJuqmQsAZDN/3LTToth+w4eGgMv/G2djA7DvyOlBzD/dOfpR
         /c4iawe2YfaPKe//xacFawg8NsVe0gMG+F0no/pFCte35wkBsBwG9iOOKJ2msV2uQweC
         RiLBw81f/siAmjXkN/5aQPvRrz5TvNywTt/psNNwNBTypCmG69y0QBz8Ez8M8KyDhYAk
         Gq+XhY/F8iMeKArN9sLvTjHKeB43L5KeQdaZ1eUmNLfTR+z0X/B9OBedHo3Kee1NHLZZ
         NOlX7DkN6XWbcxjc3O66R4jSl04pUSDQ8bibprTurCbH5f3Qmkexp2IOLpSIhB5GekJL
         E2dA==
X-Forwarded-Encrypted: i=1; AJvYcCXlrnUJI9p5WMlzag7Zlo5Ub6RNk4PfVIqXeRX7pGugoxT3lcDaZrmNwyUTewZQvbE24dttjd4k6kRk@vger.kernel.org
X-Gm-Message-State: AOJu0YzXTxn/mPyrrF1oTTxjsUlTMJF8OHbluz1sakm+cimv6yMgTdDu
	kMJDYiZ63Isvze19bC2tYyd9bLqz3cN3WiLg7Np7A1O3yVFP9eh5LXabrqyWHCxiesa5ssqDIXu
	Gs1HCqBW2L4wnid0jF/wWFF2L0OCetix4KF2aSaLBu6FHUYnWLxVwE3tGAzS0
X-Gm-Gg: ASbGncuoUE2Q1Xad5ZvtVfcYE7LJSuqzO5zNzY+45hCaNZuP3u/yLFg464w1NVoCb50
	pPpv0EEqMXS4sNwIcrFefmVncspaCIkznlq5Z0uW8lbNNOziIj1QS+OaWxLWOhR2e1mCTKsi0l8
	0B0zFAEx+SNi36R8K3b3m45ZkCmGNoFBD2JdeNXYRAJDc0xnvyGdh+3qLK9989I8CSrYQ34JpwS
	kpS0ri3dZyoK2hhozLFjGirJOZ16Nd6nJWh+4BXnp2tZ2cV2QHfzc2mRv8ayafzLM5nmzW/KB/b
	4bD/j3vjQ+BOPmczH3Mf79B8iBzIk+Tuk7R/Aoj38CJ/TmJ2vNypkI4Bq9BAML0atz/umVfwidc
	uxr4eGgYGkLb6tKI8u4ykTBO4AIfs
X-Received: by 2002:a05:6214:1d22:b0:6e8:feae:9291 with SMTP id 6a1803df08f44-6eaeaa5f7efmr173160756d6.24.1742233509608;
        Mon, 17 Mar 2025 10:45:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxv7impz0+MvxZjln6Fe8dQxZU/4AX0gumYPVdGY1SSFXkkPRf0pdd6esVsnXV/XW4UYLO+w==
X-Received: by 2002:a05:6214:1d22:b0:6e8:feae:9291 with SMTP id 6a1803df08f44-6eaeaa5f7efmr173160326d6.24.1742233509287;
        Mon, 17 Mar 2025 10:45:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f0e9985sm16687121fa.29.2025.03.17.10.45.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 10:45:07 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 17 Mar 2025 19:44:43 +0200
Subject: [PATCH 8/9] ARM: dts: qcom: apq8064: use new compatible for SPS
 SIC device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250317-fix-nexus-4-v1-8-655c52e2ad97@oss.qualcomm.com>
References: <20250317-fix-nexus-4-v1-0-655c52e2ad97@oss.qualcomm.com>
In-Reply-To: <20250317-fix-nexus-4-v1-0-655c52e2ad97@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, Kumar Gala <galak@codeaurora.org>,
        Andy Gross <agross@codeaurora.org>,
        "Ivan T. Ivanov" <ivan.ivanov@linaro.org>,
        Andy Gross <andy.gross@linaro.org>, Georgi Djakov <djakov@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=918;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=6oexzQF1OoJvGK82ren40uxDYNIho3CwgfGuz5+Kfjg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn2F+HXznEfgII3QjF7M+kfeptlRMJIBFPK5UQ8
 bqCCEPsXrCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ9hfhwAKCRCLPIo+Aiko
 1cB0CACrq2R9bp0kI2bQnj3zv7W6gk+12hq0bs1B/+7+e66Y7Lz958tNrpNvJa13mFJIHrAoNOM
 +i6M1wRCOLbjcrzQ5baxlxr0w+n6u4wiQO9ersrC5DWyYfyZ5ecbTXmUuEyxjitF7nlf68Edtl8
 sez4B9QeWD6QBqVHUmjMD7rPi6W6CLpcFq5cykUj6Y5kZ0Igln8VM3noGo4IUh/wYMkNm96P8oD
 Ai9GhmZhg1Wfa2pno8y3oMqRKl2oWz3K5Pc9m5oBiHCAFN8UyOV648S2i4DY8N0nz8jpyhcAhH7
 M9l5Fs2iqflxej5NdQoJrkjozsJ0jSNT0KdDtGwKwllGKgrZ
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=W/I4VQWk c=1 sm=1 tr=0 ts=67d85fa6 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=p_EMIZExALG5VSdhSekA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: tU5NUDiMsM28FHuwaZZCWttLi-uuTDnO
X-Proofpoint-ORIG-GUID: tU5NUDiMsM28FHuwaZZCWttLi-uuTDnO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-17_07,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 impostorscore=0 adultscore=0 spamscore=0 mlxlogscore=494 mlxscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 lowpriorityscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503170128

Use new SoC-specific compatible to the SPS SIC in addition to the
"syscon" compatible and rename the node to follow the purpose of it.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index 522387700fc8ce854c0995636998d2d4237e33df..a106f9f984fcb51dea1fff1515e6f290b36ccf99 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -402,8 +402,8 @@ saw3_vreg: regulator {
 			};
 		};
 
-		sps_sic_non_secure: sps-sic-non-secure@12100000 {
-			compatible = "syscon";
+		sps_sic_non_secure: interrupt-controller@12100000 {
+			compatible = "qcom,apq8064-sps-sic", "syscon";
 			reg = <0x12100000 0x10000>;
 		};
 

-- 
2.39.5


