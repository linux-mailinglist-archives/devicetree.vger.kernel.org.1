Return-Path: <devicetree+bounces-230783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E687C05ADC
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 12:52:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 904631AA11B4
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:52:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 996DC3126C3;
	Fri, 24 Oct 2025 10:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SuzXCVTo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC405311949
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 10:50:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761303041; cv=none; b=uRYjxj+yWrJl0poxGCcSQNAtY37pUmulBlMZG9LzVW3ICi+mEDjyPNYpnSXs5WT39EC12EB1P9ofjw0ZaDq4aVdDx9ASt31rUuyTdZKfvZ50XYvvglxYlIvwFOTnsLR7XjkRRawCr95jhSgNvxUN8l+sgffsrVOdFxwVf5YrDig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761303041; c=relaxed/simple;
	bh=WPGiDfcWovbn61egHdhHxs84SiuVP8EjCt0AvyxtedE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=uVAmTc3Ua9TxitVn2zqFq1Qqq0lEJQopI8r4xmqMSNKE56soZOG8X+E+upceq83IJ7BhDQb6CeLwTpPnC/aLIn7+Yqh9XP0fTCdL5hyjMjtq0MCvGmfw23oLX/XNmw3nV8NT3nxbSXPL/Asvxr3m205bkzYWgHC2UwipFuT6zEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SuzXCVTo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3FO6Y021487
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 10:50:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=i9RE9ZFSbYk
	I2uHWWS1BVwm3WmE2jqPOJsoCfsqTrAk=; b=SuzXCVToIetAtNwUmPP2nCww3A9
	Y1TMmnCILe3kQ53ORblD8wbqTDX/2kojvgbM068z89peP9HVeSTNHw0E6KqnY4oc
	heBvno3Ucwy139glDBqX8XcNzkeLfF8RyJntIzGpvPlydL3q7ewWLAcrP44Sm21H
	d1C+xEmaLNJmju1Gn+2KAeBSdlO+5of7jIuyIP+ybnX8aWnmIbQtuqopVjR4dqVv
	fRay1HpBXw1/piFHy9vzDdC9bd49uVNSFmEC0oqwz8757aiV9YbcaVOtE+M1Yp+U
	Gf59J3byAQASucpJB/0qb/Ajnc530AV+6BMqI1FiPPC6KIyLjE0u6LeUkpw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w8bqjh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 10:50:38 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-286a252bfbfso48883665ad.3
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 03:50:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761303037; x=1761907837;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i9RE9ZFSbYkI2uHWWS1BVwm3WmE2jqPOJsoCfsqTrAk=;
        b=STXxw1E0shmehT2qDQqROzHww6Is11WAF8w2+ymqy7jKne9w7tFZUag/EOPUpxGUo3
         AcypKuKXib7IZAE+VysHAifisNftmC+quBpWS5Qa8OaE62l5yMYCa0ToUGgmfP6qJq/u
         7xoqfNR4nwmqedWS+wq3i30fEf42ZSppIUaQSFm0mJ3O90b0HbEgQmTNNWGxdm6ExYHF
         Hn2wqW7rFA1hPzUjvoBz62V5v3YxhtTRPXgACwvaqlREQJ4yXAFfUWadhsg8QBPsd2Su
         9NiZ7PGboRJMCHfJVfmhKeZ9uhOVzdqe8QlRyzybshtlAzMH3dUYWxKoB1JUS2K4GPRT
         VWqA==
X-Forwarded-Encrypted: i=1; AJvYcCUhZXR1dnubBG6o0b8uWlJDceVUGcC9h9gwUjl+llRicnWF4KnOVQ8vmxI03HDRaI2MTDuo+o+juCIW@vger.kernel.org
X-Gm-Message-State: AOJu0YyQk5rKSoNLj5y9h3eCfHidDNXCeT0yfJue7so3Cwaach0UrOLy
	8fY3g5SMyqbL92rvygcF3x3tX5JVew40Fr0rFD6EArBjTtwuv8wcIzGrGElmtSmhLSZnfJY7+Yl
	UWRa8WPd6gbMxpvw7vco3hbNeh7DYhJBasDXZYA2NWnaMwA5HKK4W6Iu2nqDn4gnT
X-Gm-Gg: ASbGncvwTtTWawj2BLjBo2f3pdlAFGBcmoxek701XzNXEOLZhi30501p4QWLNp9OQnx
	dKtFjd0BH1gQrelxNFVcCe/8I09ZqLDjKgfyO/vauICiqU1ysJKbFk4K6UJSou7DBpI93CJa6Uv
	dUHQD0Cw2iPZFZ+PENL98o8lYBS1gZbruVbtTiGEfYRTZfgktnUxY8YNOGzHdvr0RVqo+fd7KYC
	fLh8lCfH8CMpPue+/eY+LarJcSFO4Upc4HRfGvqhjeiJhQFxLg4SlIfO1e2n+k31WyOI6PSjcny
	dvlrCrLE/Zm6e2zbSGCGf/3fzcZRxY86SAIohhgIEcstkEEBcrNiWRVa/rOft9XhVdlhAd9/5Ht
	q4qRpxK79KB+9HiF66MoHUJ4bFH7NNX4J5szX
X-Received: by 2002:a17:902:fc4b:b0:290:a70e:6261 with SMTP id d9443c01a7336-290c9c93c30mr349389995ad.11.1761303037628;
        Fri, 24 Oct 2025 03:50:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGXw79W9RUWBmxKCdwnYGEXSMksO/yt2QD3Y/MhqjoK4q5FjIhJjYCm5PRw7UriDx5DKmsJKg==
X-Received: by 2002:a17:902:fc4b:b0:290:a70e:6261 with SMTP id d9443c01a7336-290c9c93c30mr349389865ad.11.1761303037233;
        Fri, 24 Oct 2025 03:50:37 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946e23e4b3sm51236775ad.103.2025.10.24.03.50.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 03:50:36 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Shazad Hussain <quic_shazhuss@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH 2/2] arm64: dts: qcom: lemans: Add missing quirk for HS only USB controller
Date: Fri, 24 Oct 2025 16:20:19 +0530
Message-Id: <20251024105019.2220832-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251024105019.2220832-1-krishna.kurapati@oss.qualcomm.com>
References: <20251024105019.2220832-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfXwFtlOLW3U2nJ
 A8Idrh6EBQfe1ZtU6TFE015+uZwxPqGdMletiZPuOO+vjBaPpTL9fm06pkTF4WVLxjv0zJdGDml
 rFmmjKLjyqDqzufm0Xs0nwCDlUl4p8nHH/IqCtNViKCAqIy0E/WRUSB0maEORzI0y77zLu7kZKg
 HymOwfBU/xDL6WX4UJwkOy6LItlAoV3345vmzHQ8LWDtj7BjjVkg5rnqILeP5w77GvtX04407A6
 uIIv/VQ23Kut8MeyXVw1/Ly1gxi3Dh0i6oR6B2NbP4AJhI/Iy8eslKmZOjGkSkn3urI+kTjibtx
 2Ph9buN9NVfGYyWDDvEuysko+TQDRjfqTtNu3LU7TNNNSwe+WVvrdxeXyRFI0kJqQPvokZK8APY
 z/6n9fgdHDDwcEQXDfgt5m4qnI1uLA==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68fb59fe cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=d1616NNI0-D16vPRn74A:9 a=dwazZoRKGdePyhm7:21 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: nXUVZ2_1C8zzkNb9M9R8gM1pvb0nooH8
X-Proofpoint-ORIG-GUID: nXUVZ2_1C8zzkNb9M9R8gM1pvb0nooH8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015

The PIPE clock is provided by the USB3 PHY, which is predictably not
connected to the HS-only controller. Add "qcom,select-utmi-as-pipe-clk"
quirk to  HS only USB controller to disable pipe clock requirement.

Fixes: de1001525c1a ("arm64: dts: qcom: sa8775p: add USB nodes")
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index cf685cb186ed..c2d2200d845b 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -4106,6 +4106,7 @@ usb_2: usb@a400000 {
 					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_USB2 0>;
 			interconnect-names = "usb-ddr", "apps-usb";
 
+			qcom,select-utmi-as-pipe-clk;
 			wakeup-source;
 
 			iommus = <&apps_smmu 0x020 0x0>;
-- 
2.34.1


