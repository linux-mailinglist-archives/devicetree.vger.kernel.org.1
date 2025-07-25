Return-Path: <devicetree+bounces-199715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0498B11BF2
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 12:14:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D550A7BFDDB
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 10:12:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCF012ED876;
	Fri, 25 Jul 2025 10:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E0wVWMqq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493682ED845
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753438143; cv=none; b=ZeNrhk9dDIFeOo6aHn9Yxm656x9rw2XtUNMYA1oKQG8JokPfXWwdaPHa3QNlcDUDrEcUZ7xm9Zuct4N/jBeWiqWt7uLmwh1l9XUQUuST+uzBNAJ/H+H3o1Rbs33MytqdfpGeNvWETuShBTP2BMJlpQScKl6rg4jmhj8ZOrD9YWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753438143; c=relaxed/simple;
	bh=QuD88quV2+ZZSG71H8tKu1kO0ROT5crAafRmiD8dmdw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WmiGfC8h1e/V++Z3xZ6J/qAb0yK0jgM+ZHEiOEqjKvGrp9sOiYRwFaD2rkNvoItsfjlyswgeu3OxKXhmM5gl+KgvEyqiS3IXcmOHpjvRSdNWN5jPPcbOB6JdssJsmcMH/GLCmbxNYioGwub3D9upzxG7ut5PY3e+kB3+8d2PwCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E0wVWMqq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56P88iTj008699
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:09:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=xKWmqQzdMPq
	FddVCcAzQVRWG47+T57+MG8ITHFHowHo=; b=E0wVWMqqwSs+37BgbCMx2GYgHY8
	s0mrSrqQwMl0bYaGZ9i0NFqJ9gJgVqs/jMajTvLlLySGl0O678VBmOnLzNDMpzJR
	qeZjqlmO2+1ZFVcVaDg89YoelX96dJ7A9P7MpaWVdI42AHnRlHMMVtgkDmbqnKAr
	FU14+Uxt7JHjMCY8pVSZOq5EyEh2V7ixw/OBkgHnkb5nhPNf8C6sXzAo8W/OcGBH
	ZCdQyv4xvoKG6i5xTvxipRt602EbplRuyyHRkLV3XpV2+9ZqmKyQpjk5q25QRZIO
	i2Z7JPL8CN+iIval3G0F9rdF/WxbID53eECxwxz+7Bn9Ey1hPRJVNPK9dWQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4846590b23-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:09:01 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b31f112c90aso1754841a12.0
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 03:09:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753438139; x=1754042939;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xKWmqQzdMPqFddVCcAzQVRWG47+T57+MG8ITHFHowHo=;
        b=d5xP+Ed4RRa9PhjCwPrxiQ5EFiJd8I0/oVuJyEygioedbGC1cb5Dsyqn3nK3Z1PQRl
         LQaHn78vAXfhfhu32rJOe44bgishbXCYGNsxCEe7o5eQ2xBxs4DP+BVCwzF6VK1XA/cE
         ciwYnX6/5/RNmM1Tjle81UAIuEdkThrotbUkpaE0CJThKUeGXtlSrNLChTG48yPIFO5G
         b/fcfQBck0k5mbkUCr9dp+Mym1aFzgs6xc/50wPDRUhk+b/D2WuOVXqIbQYgXAoNUEhg
         G2WfCN1H4PjveB3XGbgsaAL1YELyC/kKv2o2tCviCsF3+iup2drtPdEyRHsCimCVqyrA
         yVaw==
X-Forwarded-Encrypted: i=1; AJvYcCXUmaHld4PSP63dDWVm18MSG9xhFfFkICOiXu7Xo9Kn+cH6z73yQng9ya8uEjO6jpa8HGoigS3O64Kc@vger.kernel.org
X-Gm-Message-State: AOJu0Yx041Tzo3KLrDNX76JuAbWIBMZcsUqDyu2opPOQWneA9cRxIUHJ
	PQjqfmOqAqx2S20Lh3xBG4q3By0G+enH0ywxt/o54+SJ91fLHzrzQq2argxgp9jthwEHtA3WcLW
	MIKjIO5Ynl5VgZLOJWnCNno/AfOVtM4L+Y6kGwDC6tQjzHn53OegX704+HSkFbVFf
X-Gm-Gg: ASbGncssjH7mVU+rICE/ySzJfY0OWC6tve/wz9R4kQUlXMkMgJls/khQGFC2qsd2Rcg
	gHJbtP/qJOrWZDzimtB48xR82wS9FreX9EpOyQGW965i+7DFdR74FNahRMcAil8OA8MN7vLH1x3
	FIelWrH7kJpYFGbWPRTowkHq6JQkvKAY9IaKQtHY3zkM/I8AHYS1Uw5+q6hsD2AmauSEYD/w35l
	mHb/nclNSeIuP3jLBo+kbrwvddOpg8grIcs6qyyxplzL/6Dz3efcQrRamNLgF6ABbgKUq9ibzAI
	UqakJ/OOru5KIJ2KGJeIQuWFtbJt9aAIIqzZDiJCF9EQ9OiSPU3xuSs7egeoruSOV/Po3OJrGOl
	m3GGxO4qAmOGw1IQQI+I=
X-Received: by 2002:a17:902:e887:b0:237:f757:9ad8 with SMTP id d9443c01a7336-23fa5cd3ac5mr77420555ad.1.1753438139139;
        Fri, 25 Jul 2025 03:08:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGGOWyYvFuXyRYBG4B08FA0aT8mJsXIF3dBXE+GRdj5C2GCVY3bEFepxa0+JYY4aakya4DCUA==
X-Received: by 2002:a17:902:e887:b0:237:f757:9ad8 with SMTP id d9443c01a7336-23fa5cd3ac5mr77420045ad.1.1753438138713;
        Fri, 25 Jul 2025 03:08:58 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fa48fd29dsm33641435ad.176.2025.07.25.03.08.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 03:08:58 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Jinlong Mao <jinlong.mao@oss.qualcomm.com>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <quic_jiegan@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v4 10/10] arm64: dts: qcom: sa8775p: Add interrupts to CTCU device
Date: Fri, 25 Jul 2025 18:08:06 +0800
Message-Id: <20250725100806.1157-11-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250725100806.1157-1-jie.gan@oss.qualcomm.com>
References: <20250725100806.1157-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 93NAUYKjJKdeZKLuNoyLttOI-M6pwHPZ
X-Proofpoint-GUID: 93NAUYKjJKdeZKLuNoyLttOI-M6pwHPZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA4NiBTYWx0ZWRfXxH3nettHIDCp
 LiEJpriKq5oUvuSmYPkE1A71FV7lZzADYIH3eb/eUZj12wU1cpAfcsjfYb/R2XmJNy6IzwuL4Y8
 SuF9zxlQ23+TMLOySspNriJJtpII5WBuFAZIUqO/C8V10h4yzIc/Em+W2hXyJAwjhEEjvvEm49Q
 s3ih79i5i/vgwkFE2SlXg/1yweq2sysIqEpwq57k5OELO6VpfQLVa8CTrY+MDZVZuX6250n0zlL
 m7b7biImaqruQjNRdAMXXtr0GjF6f/jEPqSr8Opo7W4kcH8Z9nEfctWh39rk6boI76m2woCdZIJ
 AeXK38O30V7Z/N24uMn82cesiie6cfW3R+oDNZLgAlNVsNNOzu2NAFE+rZOmBo9G0t0fAsV3OAo
 ycCIdaKX1xFsJcj0QTptvE0mtLrJRSJ31CwEeEI9TKq/n539KXLxgmKDxH5F+goGRyXj+lnF
X-Authority-Analysis: v=2.4 cv=Vo8jA/2n c=1 sm=1 tr=0 ts=688357bd cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=gBkj9RZkAcI1HbXH1KoA:9
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=799 adultscore=0 impostorscore=0 suspectscore=0
 phishscore=0 spamscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250086

Add interrupts to enable byte-cntr function for TMC ETR devices.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 9997a29901f5..4e6684a6d38e 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -2762,6 +2762,11 @@ ctcu@4001000 {
 			clocks = <&aoss_qmp>;
 			clock-names = "apb";
 
+			interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "etr0",
+					  "etr1";
+
 			in-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
-- 
2.34.1


