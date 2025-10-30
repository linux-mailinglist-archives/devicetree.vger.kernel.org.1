Return-Path: <devicetree+bounces-233391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB60C21BF8
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 19:23:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C82204EFDBB
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 18:20:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCFF936CA98;
	Thu, 30 Oct 2025 18:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NwezAW8C";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AsBMJLCI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EB936C247
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761848423; cv=none; b=eux7ci4dtpteLEi3cWWz+pwtTdndwSWM/m0N4qlq+TJTwKcuuKli/lPF6GYVgXJ65OeDEKx0QOjLPP+OneaL1guXCmwoozapdkR4B5h2rhyJhEo+6St32opbp29yYC8Ihs1G+mJANhA2p1ioaZzDI9PN6GNBpKuWQc4eKOYCaDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761848423; c=relaxed/simple;
	bh=O3zsqMWJzGuULuopyok7e97sOQQTNwEYCCnnTinaKZo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ea9aLm54QfptYWy5yaQHjnimZ677meD85mHyB/OctKtgyK3EdosTnIypQyZjsTZyVrxQAqMl90S78V2K16R58FHTXbIyza/ftLE0WMKJOVwfKrJiD/pC8EyfEBYtBoqdDnqdMEvlA3Vp+LwFER8VeZ329/gZUGYqlIcw1ooewic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NwezAW8C; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AsBMJLCI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59UC7UNJ2623035
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:20:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+NzvBLOWcvPqnstM3D5d7GCb11dmM+NQ69MqVR9iVIo=; b=NwezAW8CzNdegjyW
	bTS4PtVmQjMle7v5yuJQ83SfGGSbp39W45fxWW883w7i5arZon3seImbIs51/aBK
	sJrFyWyvIBWjyughKepW1Ydr0ycGU0h359AacODpdzPSit9NkY56ow4l1UoJ15gR
	Ej7Y6f3X9DCqGwm+UMomn4blNasXdN5NBOj7SMgy8OQLBL+T+2nq0Yu0U6VN8AMr
	qcqODhQoT9xtRJ/jO1NNMpXfgZqjc3LbXM/bbPMK2ASm3gecNQH7J3/n15imAyys
	kh7gJNplawqMZ8EB7FEcZpM+oaldZR0raA3SzZTqeEu9Sit7EROgcScQj82EXeoN
	+fY/8A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a41fxj91v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:20:20 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e8984d8833so59018081cf.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761848420; x=1762453220; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+NzvBLOWcvPqnstM3D5d7GCb11dmM+NQ69MqVR9iVIo=;
        b=AsBMJLCI4m8FuOcT5n2gZdyMwQ8P0HIU/rL4lQRQxwKPYAq3hRzTxpqikUmxPYRd7c
         +LhqVkWXgNPR+xPfiCYUOLvD9FMXSB+nvWQHKypwYZiFngiuzB8rzpeF+OUei4D4qQkk
         m30Tkbiypic+3owDwfBOWakvy4xYOtd5fuDggx1sl049dzZQnFFYdDdZTtl5kQzn6A+t
         7coLkflfZomKOZDQ2f2CtFdx+rQ/ZclS2rq6+p9hlQGvhOdbLr0Q8g6xXIwkaBSU+98S
         Ko6p+KQ73ZYOy7u8ozEmZtc5SjBV+fKCmeWNP7/R3h8+0e3HAJhKMajb5onKxp06N4jm
         6yyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761848420; x=1762453220;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+NzvBLOWcvPqnstM3D5d7GCb11dmM+NQ69MqVR9iVIo=;
        b=LqncjWHmeCLfOJPLt9I8Uw25U7O0b5saFsN0Cej8OAgmrw2nOJMG2VXBCZVBcHHZO6
         Tm35K6+aKIxw36hcpIuu4Go++HdMI5EPL+b4ykz8Qh+a796TqjKEArFLdSu7rsPnK/4s
         DHHhi5hylBTJ+UQh4z4dM4tSFejTVtdgvJ6CBsNbCjkNX4EfOa0EHb4sJ9d6Q03PbS9P
         MaIy+1R6sZM8TuP6WB3JQEDx8ddrM/rRSIEXde344K63pMfqrmiZN2Zr3FSrZmTdpHLp
         fjHTm7UQzUXSpCY/4DmiVXbAsJOQlfriwScoE3r6oEZj6deoEeCNoT1dDTV6TnARrlrd
         Nndw==
X-Forwarded-Encrypted: i=1; AJvYcCW1/NUpuVkMlSlnYxk8VmCpdFJKR9wBk9uvGn2aFvh6ZJUZViKTA5oXm2IkbyhyTud8HZJuGiQCojQd@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/SLhJt43dtfOKu23UW9p2gKc6LF62wmnTTHJZjht0jBGC9eib
	qHfz+PtqX9c4UIj+32vKkKGWlcNhNzJKPVcSPubAI6Qph4kqKl9k86f53VVEvo1xbp8e+6tWBrW
	nmPadAJixFkPadrNz+pmJsC7uSMOgfyUZxMI42TP1YRpgLaxEXzb0nx2xlW9OwthO
X-Gm-Gg: ASbGncuWXdR4oclxGO6FMKIBxmwo/KWEMZ2npZd+US5X8ijByfpnK3otESy8UUQeNjF
	eJ4wqmzAB6Lzk5PBlkCtO9NuAma7XDUTIcBL71N1Pp4LhVPQpTfakRCN8xDQAKkfIGXLx0/AEly
	zX8NPlYN6rCeKRKvmGR3HwYLLM1iBLG1tb0YWtYsP9Kpb0vUGepGn3kl+lrqHHI5TpHLp7O6UjB
	uxKbhcERrXZWcW1F4fNVsHKetnJFz6ZC/L48ORomLN6cZD90SHOlrFNLQPdrV4yeER+6f9pEinb
	KSKZ5JcaunTl+FhqoTXrrz9HULGXkj12OQa7K7d+ByHV3El54+1vtGKGh3frxGjza/spRCjwm+O
	tWc3vgzakyqu2ccEwUJ2zHZ9QR9z0nJgXgtg8TrnJ13oEc9lb76jSlzLTXHIoKDtr2eqnzRndA7
	8KipP6FFxe9Cp3
X-Received: by 2002:a05:622a:1456:b0:4ec:462e:23b4 with SMTP id d75a77b69052e-4ed310a02c0mr7595261cf.75.1761848420216;
        Thu, 30 Oct 2025 11:20:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFdxkyXb0uGWv8KMJtRVs6WVDLh+jIIF3Oldvv0hhQ3QpXWIMAJ3FwLu42W9NQkouYa7lZbqw==
X-Received: by 2002:a05:622a:1456:b0:4ec:462e:23b4 with SMTP id d75a77b69052e-4ed310a02c0mr7594941cf.75.1761848419753;
        Thu, 30 Oct 2025 11:20:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37a15c5436dsm3843171fa.33.2025.10.30.11.20.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 11:20:17 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 20:20:13 +0200
Subject: [PATCH 1/3] arm64: dts: qcom: rename qcm2290 to agatti
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251030-rename-dts-2-v1-1-80c0b81c4d77@oss.qualcomm.com>
References: <20251030-rename-dts-2-v1-0-80c0b81c4d77@oss.qualcomm.com>
In-Reply-To: <20251030-rename-dts-2-v1-0-80c0b81c4d77@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1112;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=O3zsqMWJzGuULuopyok7e97sOQQTNwEYCCnnTinaKZo=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpA6xeVtEIHnIE8AH6d6S1DtZpdsBvUap5u4Yvk
 pGwbeHvcLGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaQOsXgAKCRCLPIo+Aiko
 1X6kB/91wYlURqXwTnvVpZRjpNc48yO2iusLumRTeF56iQ5jCspfSXoeLCIH43Qr+20Fjgt2OHp
 /mdHTd1hOrWf5yEhBJKgEz+8Q3OWkb5IVPJAcjsjP60XR1YOjfYS5CimLONRZtUKDXmbqEW9bJf
 JTRpblmw6cY6OIeyg0izCMKgTi5SqRkBmgh0MdIbns2oUWz+CBOlbv94IQFPFgZMaK+OPE34eSZ
 /6wfVG8IvLQiAcpXo3rZc6q2m36ie8WqDtUzrVPraPW/Uf7nhiWS6rK14Au9WjE4HYnJBxgjYt2
 lc0U5KYivXXHfuTS77TjNz2MMQALj7vDUGk0jFMR85+RsGqu
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: LFijB_mD4fxLp1sUi6w4sADDnvEFZ92n
X-Authority-Analysis: v=2.4 cv=UJrQ3Sfy c=1 sm=1 tr=0 ts=6903ac64 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=s93T1VwQXw7az0q5Bg8A:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: LFijB_mD4fxLp1sUi6w4sADDnvEFZ92n
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDE1MiBTYWx0ZWRfXyqLaCrq3ZiL6
 ueOR6LXTN71eFHRANMmqFeuExV8B4yXKs6O0drscfTgOdL1zO1TmDcVOhXMt/OZUZrFY6Ep3wNy
 I2nWu3VkmodzseIu5m/U1MpTvdBWSireS6RK0qS++TOGK6Yij3h8aIpJAym1LtSSSuWs8DUi+p6
 PjvvzwDG0SP6SJiJ85TWLKm8rrL19hy5+yypKYpTIxG4nq7jbiNNx9Tg5pdLZgU+Gyl+hw0FvaO
 9JB1lcmo0xU+rvRIDJ3fyCG3v1nvkj8lYbthtP80u9AEy+EfbGh/8oFSZhqfu4lMW7l93xPu7Bu
 yAkmSmlLVG61NgPkSwanlAacfEDNWP+mgMADIUu0rvhMQdm+Hxd08Vp1toy+6h23JK36J+ED6eJ
 DYMzP0cu577p57yHLhUiP+knXPJlbQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_06,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 spamscore=0 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300152

QCM2290 and QRB2210 are two names for the same die, collectively known
as 'agatti'. Follow the example of other platforms and rename QCM2290 to
agatti.dtsi.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/{qcm2290.dtsi => agatti.dtsi} | 0
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts               | 2 +-
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/agatti.dtsi
similarity index 100%
rename from arch/arm64/boot/dts/qcom/qcm2290.dtsi
rename to arch/arm64/boot/dts/qcom/agatti.dtsi
diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
index 43af25d17aa8314354b1ecb8617510cdd6c857a3..bd4436d2b0b0f1f5f8c2e4cb05bd328f32f27e0c 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
@@ -7,7 +7,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/leds/common.h>
-#include "qcm2290.dtsi"
+#include "agatti.dtsi"
 #include "pm4125.dtsi"
 
 / {

-- 
2.47.3


