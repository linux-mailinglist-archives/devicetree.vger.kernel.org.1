Return-Path: <devicetree+bounces-220394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B07B958BB
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 13:02:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F10A3B2F8B
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 11:02:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8753E321453;
	Tue, 23 Sep 2025 11:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SnOabaAs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F216128A3EF
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 11:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758625338; cv=none; b=d6tSjoet+m3GOwxMDFRLpJkA7izlgqzufGAFV8Tsh/soTLztlKW5uJyd7DFR8UmdNW5G623ZvqSoKhZYVYm/mMjrTrDw/w+dIX4ld1ZEa3hCq4y3QM1XChp2P4jQMwPKCGMu0rqTMviP9+KETZ/KL8RgvjFilAUFGsHqXXrt728=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758625338; c=relaxed/simple;
	bh=iLMoVlJmYtd6HczEdyExEbXAySwZHYx/WHqezGjTXaQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GmiQ5htrcI7dn6SLURJ/QgN7E246VYRVjeq/WBw7c5sGGAoZwV2dYaeoFRZkxEljkgq5FP6Vjr1L3qM8GXEfGXa8RslsMcSqclLKvWBObzuDNbJNl0zsiyuvNjDGxvGTVVo2Wj3zCWiNlErJCrHkk2Y64UD487poC5fL+SDMjo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SnOabaAs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58N8HCrF020711
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 11:02:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6OwBCFG306qly1YwPCrXWNZ696eFbdWgQ4DKgQjVJ58=; b=SnOabaAsWz4fAjNz
	qUaLCTf4aamHb8zY7SmNh6wWcx3oLgl3w0rdG6QxCylwH8ucpPVRZzieqXHp3dI0
	N6mHs4zcewGyQUKQz1YKXF21iHb2ddjDlOPkdvmgKEe7CCx9w1cDLzPuPYcHoHih
	mKMp01GmzEJvZz/hxuBQNxLWY+hjAIp/PxOMK3VzXtR78YMVLy6L1qJvwzwAj9b9
	oGXLS0QqRJvmmIx1CYVFt9oxbhY8/85X+0we9KdlEsy2JYNssZPmZu3O2jL9cGF0
	ursFMo3IHcNn0k+U8hmjckrP7x+RhRS+J1wc5P7caxcnQeOOVQ2u+nGIkgyGEPXh
	6zJbgg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjsja8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 11:02:16 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-718cb6230afso101596416d6.0
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 04:02:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758625335; x=1759230135;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6OwBCFG306qly1YwPCrXWNZ696eFbdWgQ4DKgQjVJ58=;
        b=LHN4fwZjK6q80H8g5IBFIE8jbR/6+zf5ajlM5Nco5QFzVlysK4BzunSXJEYcDLGzxx
         wr2Yso4mcyVQiHIfbJcsdmKD5wIxwwpsBnsrTCIwlrsoJvCBTBcfollT9YzjxmCV7cn4
         qBB47QoJAZto8/xXCEfL/fjkLbXyJ17FhVjrD8NLm13GUnG0Nlo/T9ND6i+QecwXXCfo
         aNBGTMZ4JYBMhhRtLJ410G/rk6tM1srxk1qH2FWLpkqYuIv5xd3hHJb35lFVEyjJ5DBJ
         CAScgMqQbR8eV5U79etWdtG2OkhCP0VS+z7KcG8L9LTf6DKvCyf4WGJsWzXg2TW7ULK4
         KOyw==
X-Forwarded-Encrypted: i=1; AJvYcCVGAStc9sRbRtjMthbZNs6qhd7M4qCDyAtX3fPczkdLhQXMmEsWy+kDOcUJvZNW1TBZ4/zJUXcwPpWO@vger.kernel.org
X-Gm-Message-State: AOJu0YwHReR19oxD90T2Cx+LhAUYhfHFfPNfFRSWZYlxN6Qs2brRmkAX
	+Mq2CYd0XdxEriiqRIaSJxLj2uflwiyWbUccFvbNAyT35+szaBlAz7dWfjPWBfJCH6EnXSrUH56
	DYNndgeJMdsgEdvXskS3HomZTj+JqRUhR65EEKMLvZan9dWLQs/WPcdRny5XCBjN4CiWCzmV4
X-Gm-Gg: ASbGnctMWv7YtLeAbTnAjzsRTT62gSbiIbBTbRbY5z+ZXNPOJeGVhA6BZmSC1+uEDVg
	FblJmuCW/iHDsArWlPiMzotevMHfZDY7sWhxzZPtf6jr1qkIl6XY9CYA01E6nn3ptZij17UIJCT
	41oUKq8mMMnwNEasqEmDgPUlf98cRygRlw9RtHbCQ5PSF/2vfTnum69nBIndLz6hiOyQZoKuuqQ
	5LG4+bumzSa1PqL+0GIIPj6p7Nw7M/JJ8pLhf/IGSddRm2J7JPyXJ9eSNkYV9HIixmjgkibrm0p
	UgBMkWAMgwpbnFsZsOCjo+CheT6JfMjpbheGEJ45piUy7GZTvIfr5lJF+C3Hy2n8BOENlSO/Buv
	Ys+eQCpOa09YlSNErspAkHL9HI5SSqpPM5RNXwaPuMHaLf1f2C5HO
X-Received: by 2002:ad4:5ca4:0:b0:795:cb4a:9b7c with SMTP id 6a1803df08f44-7e71582ac99mr21921166d6.35.1758625333717;
        Tue, 23 Sep 2025 04:02:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgsCw1vfrpAdR5i1dbQBrqcURljcwF/F/6Z1lDZv+2PnzCx0GYBvjUf6cpkba5O6048hfA+w==
X-Received: by 2002:ad4:5ca4:0:b0:795:cb4a:9b7c with SMTP id 6a1803df08f44-7e71582ac99mr21919476d6.35.1758625331346;
        Tue, 23 Sep 2025 04:02:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a5f4537csm4075975e87.27.2025.09.23.04.02.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 04:02:10 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 23 Sep 2025 14:01:54 +0300
Subject: [PATCH 1/3] arm64: dts: qcom: rename qcs8300 to monaco
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250923-rename-dts-v1-1-21888b68c781@oss.qualcomm.com>
References: <20250923-rename-dts-v1-0-21888b68c781@oss.qualcomm.com>
In-Reply-To: <20250923-rename-dts-v1-0-21888b68c781@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2454;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=iLMoVlJmYtd6HczEdyExEbXAySwZHYx/WHqezGjTXaQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBo0n4wGvN+dWIo7sLxDKaAwiz8WW3t2teh9HSGa
 NkEC1KBpvqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaNJ+MAAKCRCLPIo+Aiko
 1bonCACGVxHN5ydariXpov2ySAg2vb8owrTn53HKYFizfb2RNQwOor96v/5kugFAX9DwckYduhL
 bJhbZ2J5Vh9lXvXUWMkvKtv+9sB+Gz7AMrNK1FIkguCqYseNRhB5EL0xbOwMTFTFDG67LlhqAGE
 bbPZ/3lw8TlgtN7ZwprAkIdRYGfmhtS4rjU1LqoLnlB5oilmcotjAb0Cg1dlOxnM+SfC/M+tbO/
 eglOx3/+TnV/kHUnsnwZXITaKsBiGOAOwpxR3UVvBP7yuNU9vdUT9nNV8bggRPJpn7NGpE+2DCN
 elUEqkVlb7uyZ4nWSgT7C7BOER3MqrKDgm5PrAa7BHDgM/8n
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: DnUTKRevoDiQ41uefr5OseV_f7KPAVKV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfX5XAwLaz59Pmq
 CiuTiNJIEEKlXiMZsE+cRFYBFRzs2R2W20o8nw6y8rdc8gBjhn6jBQ7v+IwYKOosP942ekgXYnS
 Sx3RxZU3T3t4QJOomqjd7CJZYJNjDdGJ+wBcyow4Cd8N7g4Pp+oVNxvSTQJR6RWx6u3iVXzliJf
 BL90MyW/EyOoDUWEG7WoIEJC7XtUqgxOuer5s14NnVKQpa9ckhOqsrI2FeoMg7ePQgt0P75RptB
 l5+YVWUT+xl3jLrLsWcKvndLsPIi2hQE99BnBqaHL9Yd2qMLP4IhT2HJq2y9nlcoBCewJHta+n7
 cfZJCCjrvoHF3uR3lWmaKUaR2ouHRo/0UU2LI+IQqGy4QxaWuWJp65m3KfIqibOm8cBE/hxpxGX
 5J7lx6Xa
X-Proofpoint-GUID: DnUTKRevoDiQ41uefr5OseV_f7KPAVKV
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d27e38 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=CGs7eBeCNeLIcw_ASWkA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_02,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

The QCS8300 and QCS8275 are two variants of the same die with no
difference visible to the Linux kernel, which are collectively named as
'monaco'. Rather than trying to using the name, which is not always
relevant, follow the example of 'lemans' and rename qcs8300.dtsi to
monaco.dtsi (and qcs8300-pmics.dtsi to monaco-pmics.dtsi).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco-evk.dts                            | 4 ++--
 arch/arm64/boot/dts/qcom/{qcs8300-pmics.dtsi => monaco-pmics.dtsi} | 0
 arch/arm64/boot/dts/qcom/{qcs8300.dtsi => monaco.dtsi}             | 0
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts                          | 4 ++--
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index e72cf6725a52c0c0e017be800bfac1773fad1059..d9e9e65a137da73645aee4a857688a4730875347 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -9,8 +9,8 @@
 #include <dt-bindings/sound/qcom,q6afe.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
-#include "qcs8300.dtsi"
-#include "qcs8300-pmics.dtsi"
+#include "monaco.dtsi"
+#include "monaco-pmics.dtsi"
 
 / {
 	model = "Qualcomm Technologies, Inc. Monaco EVK";
diff --git a/arch/arm64/boot/dts/qcom/qcs8300-pmics.dtsi b/arch/arm64/boot/dts/qcom/monaco-pmics.dtsi
similarity index 100%
rename from arch/arm64/boot/dts/qcom/qcs8300-pmics.dtsi
rename to arch/arm64/boot/dts/qcom/monaco-pmics.dtsi
diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
similarity index 100%
rename from arch/arm64/boot/dts/qcom/qcs8300.dtsi
rename to arch/arm64/boot/dts/qcom/monaco.dtsi
diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
index cabb3f508704bc9eb0038bd797cc547d0c8cb3ed..9bcb869dd270603a34221b905f0946e8af028433 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
@@ -8,8 +8,8 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
-#include "qcs8300.dtsi"
-#include "qcs8300-pmics.dtsi"
+#include "monaco.dtsi"
+#include "monaco-pmics.dtsi"
 / {
 	model = "Qualcomm Technologies, Inc. QCS8300 Ride";
 	compatible = "qcom,qcs8300-ride", "qcom,qcs8300";

-- 
2.47.3


