Return-Path: <devicetree+bounces-167194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D282FA89A2A
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:30:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ECDA03B44B5
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:29:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 067F029614E;
	Tue, 15 Apr 2025 10:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XTIkHcGj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D11528DF08
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744712828; cv=none; b=k9xHsJPb9cxw1tp82CH9CVbtf4/r3evE5ahnlayTYvZxbcHYUtiBt5ZVUl/CnGfdDgUK1F6xJTKBckJDwtGTHOD30mKSdE1WwKXT51K8Szbsp3gM+L3Sh6tui9irVE1aozCIbrsW3GnbsYAj/5WZRJzPQA2JMxjTRruXhgjQag0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744712828; c=relaxed/simple;
	bh=aaJsQUOuc1a7NB+YH3m3FHOWHVNobFf4MPsq8gnq5Nc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MDoqpz+2hV1juGs2x+EMzdprTShub6yq4UGIr1hXXTqhxMHonIoUtaHuJoioONET4agy1YXVIWm16B0eL+S+TiaZZOG44HK8b149+tpBSZRNTfwcIl1Kbmcux1069A9X/CtmWwHd6/GURxPld0p0aJyFYo2fVSqEYmLCMx+IZ1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XTIkHcGj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tN7W002473
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:27:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OZCtirTlW3q7+/O0ZHpO184tUTdOW7GUoZmxkiNaf4k=; b=XTIkHcGjzsYLZEXt
	08BEnDsZ+z0fycwdd/WGUK+g+WCqVX1mSLDPuDm3gO1hqxkpRrzHQfS2WoBZIpXY
	N6ItgcmuyNvYxXs5BEDgzwuxGSAf1SVu5oyjQX5G88yQv5p+Obxbwu0PvqIaKzzW
	UqOh5bQwr77oz2/fkISaOe6Bx8ntIgWO+j2O+1iEArAZv57Pq818Ge6p4ePTlzcU
	58/yB7EyBtvQ0FWVbH+BWOB2WgxmlO/5XUJbIynkXAbAMWlmSjikSHiwl0Gy1d0u
	+gLWUlPZztFukUqKaABbTwXEGW+Ehjy1bvJbBVPp5d93l9inz4UahSLz9NogKqYs
	MlUWaw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygxjygxq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:27:06 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c793d573b2so960399585a.1
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:27:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744712825; x=1745317625;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OZCtirTlW3q7+/O0ZHpO184tUTdOW7GUoZmxkiNaf4k=;
        b=oKPx9IrZF1GHp4mNr0EvN7dKYYdZoPKnQDm3QH0VcLwGpk5dHGtVdb8MZAyPd1cfOj
         l5hpeKrHWFUQ1n7Nmoo8v2WXJ/cH02JiqRaxwThqVP7GmrGXMk+M5HzQmJ3AbPlIQKYw
         /1fSCEV81f0SLHzNpjlVPDU+vtIhPkkB3ARWaOJ5HznBxdiarZZRMh6jmz3AK8l9Z0jo
         WBWmDKSk86p+Y2ayFinxat7Z5jQwDlm7sHOVlE1wzCuhOMPrmyfT7qAnv/UHl/u/x++Q
         u36pzjGU1F4wJZH1gEme4fGaXFPQ7D1ptge4qyTRAX8UFz8We05q4dlfUIWIBkQm6GK5
         x5rQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPNTqpYXVtURUPLpT/AbavpWRdwbc+sVKx6i5K+jktVE+3oQtbzkaxNsmK60pQWlJsUQ7Fk1SjtGG6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8Cu49GDx3iXAT0bD7niqJBSIMTW2Eu8XW4pCrgoOTt1LvX/s2
	nencb41QyU5R49GyleRSeDgAb7Rq/5UPc9e57c82nwSKBI6knvvhwmiBbeyaVLHVvordgGJv+oW
	sNl0hhhRX2w94qcMA5NSaMNXS6arfo+wstx9QBxWLbLsIraiwq4LcHB4gyKHr
X-Gm-Gg: ASbGncvt0mPRnpcdB4Iv2N+P3GxnNDB3/FFHWcNX3t1yyLCxYHAWtVA47Rsfy+woFzi
	5KoZSw6kMCwW5JRpT3lzuFQUyvd0ltcrW380S2GBAGDtfebshLkzTe/x9KsYHEtezxS5GH1rLTi
	Tz4whlCXkgKneBEE+/9jduXimiR5ZEoOWeFFTeSC5UMN5t5WA19b2SIodndWyDzguYZEPmotVKO
	JXN6dJO8rIXwyWP6BmE4i1s9eupGzib7+3xHl3toHxH5ZOY8+gaDF6mMMJv+jW4dxHKSnovL0e2
	fkOctIlVBHBrZkZy8C798r8LEs13vWTBI03MxiAWeaTzCV7BieHOXSrypeSMTiGIeYGWDbkCRwk
	Z7l0j/qHwVGZF3rQiOprrXYFM
X-Received: by 2002:a05:620a:2548:b0:7c5:4caa:21b7 with SMTP id af79cd13be357-7c7af12a327mr2577003485a.56.1744712825503;
        Tue, 15 Apr 2025 03:27:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFkQv7qCIHvqjNpgGJ7CCDMP4fRnQTAPQqBW1tYKSZpFc5qlPYDs8RrQkIMy5mdFBC8v8VRjA==
X-Received: by 2002:a05:620a:2548:b0:7c5:4caa:21b7 with SMTP id af79cd13be357-7c7af12a327mr2577001685a.56.1744712825238;
        Tue, 15 Apr 2025 03:27:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d5035f5sm1384005e87.117.2025.04.15.03.27.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 03:27:03 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 13:26:12 +0300
Subject: [PATCH 14/20] arm64: dts: qcom: sm6350: use correct size for VBIF
 regions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250415-drm-msm-dts-fixes-v1-14-90cd91bdd138@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
To: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=983;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=aaJsQUOuc1a7NB+YH3m3FHOWHVNobFf4MPsq8gnq5Nc=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ/o/k7g7z6ytn0x7f5DDPPMmD1eD6tPSjBO+XFrTVfN0e
 Y2+OczrZDRmYWDkYpAVU2TxKWiZGrMpOezDjqn1MINYmUCmMHBxCsBEthix/08yDuE13XbMj8+q
 U5T9XoRIYFavm9H6k0eqD65hbWabbvdelkOu7OwVbskF/oltX4zXNQd66Wz52179O2zOhnN2otm
 VZ9uNTa+I8RX0PSy7e6ecvb1CW/adkbmlsKnVh/Ofz+5TuOX3LqVeoiiu9nOO85XTJ1TZdr7m6L
 p+wvK6Utksjo4rtd9niFplW2e7vPo80a6z3JjrZt4ZGXXLtw2871t6XylVHP9R3bLJVbHFb3vRg
 olnL/j79GVe0gmY/lww6RpzjXYL/+1jIYWPFnCVXNWceTqL+VvmWd5nt/i3qJfoLL35gHlZ/0/+
 HAu2S7NEd7y7FJE/Y2+k4aazf5U9Px6dZeEwW/BvdNkzAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=WecMa1hX c=1 sm=1 tr=0 ts=67fe347a cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=m5NmvOezwr14fYaq8a8A:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: Zeol5hsbrwxv_d2ikNmnveR2RpbDLXdq
X-Proofpoint-ORIG-GUID: Zeol5hsbrwxv_d2ikNmnveR2RpbDLXdq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=541 spamscore=0 malwarescore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150073

Use allocated region size for VBIF regions as defined by the docs
(0x3000) instead of just using the last register address.

Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 1f2ac20e537eca90d96f755e9c76c6c3fc7f97b1..a77cf57fcfb1fb9706f7a64614ef4c6b11c771d2 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -2086,7 +2086,7 @@ &clk_virt SLAVE_EBI_CH0 QCOM_ICC_TAG_ALWAYS>,
 			mdss_mdp: display-controller@ae01000 {
 				compatible = "qcom,sm6350-dpu";
 				reg = <0 0x0ae01000 0 0x8f000>,
-				      <0 0x0aeb0000 0 0x2008>;
+				      <0 0x0aeb0000 0 0x3000>;
 				reg-names = "mdp", "vbif";
 
 				interrupt-parent = <&mdss>;

-- 
2.39.5


