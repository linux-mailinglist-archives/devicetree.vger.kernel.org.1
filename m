Return-Path: <devicetree+bounces-170774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D0AA9C452
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 11:53:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 69937468A8B
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 09:52:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3221023AE84;
	Fri, 25 Apr 2025 09:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o7bkyZ8G"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D63A238D22
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745574721; cv=none; b=DkIycwBqxNySMLxp1cd0x5Q1NGsZZGa9wx/tCLY+4Q7PO4v3uMr2ddk1GauoH5QM3OiV3gzX8P1/E9JeFzYaLqR4hJ/3A/PjassBiHvwHjIDV40ZAGcRIrObGlgH18wiJhCfVrOp5vXXv7DrQYEQ9yAt2bs3dB5I4gUMfC0PFW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745574721; c=relaxed/simple;
	bh=3617TkUnK6e9mSwxxO1mMh/x9UNNusI2dsALzPbb5Mk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C7RX7mn1CMVvMfDV8t+fi+Kq44kI57EpyuBnoY69J+5m6qYuuqXfWyMBFWLpUQT7pMwzlfBDr3+Dad/KD3B09DKKNBNdPCjV0dsug8Kp6DLtFfe28OfYgzq4/1wN2LXNM5U6cUIQ/DzkzHct5Xw2WrKE9jnIu8WGRHfEa9zpWZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o7bkyZ8G; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53P8T798008612
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:51:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RGL1av9CKAAAXCna1rw1gPi15ZH6XiWkTlMH9dyZseg=; b=o7bkyZ8GSObqQSQh
	3tPfJiXXzR4nNoMzfJxuJsOLTRtul0ZTMILUWelxWgcrV31+tYXHAwPH7LZFiXgc
	h0fwS+81SqSjiTb5NBc0+XkzQ9hYax8vyfnmOHWHbp7FB+b9W0hXpXXCCeoeAe57
	l0u28LzhKPutCF72xk4rTEWUc+kY6o/4OXOnI8UzzbHrnu3848yV2ZoJtLjS/Zvm
	zSJ1wWkX80Fo0bNv/xy2di1zGNe5kLnNLcUQLa9ncFKoXJgTXEDH3+oFRSVD7z0K
	Fj1v+yJs9BVSHWRNXDrYvFJ5w32FWpur20zDcDXVmP3OdB+cpOIMOuBqbhZ5NOCM
	zdx0Og==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jgy8gx4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:51:58 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5c82c6d72so343325885a.2
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 02:51:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745574717; x=1746179517;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RGL1av9CKAAAXCna1rw1gPi15ZH6XiWkTlMH9dyZseg=;
        b=SE7Rueb6dcOZ7adxcJcVF0mke08MPBCFvM9qo2E6JYhG4iGfeFLPlKALxvOjF5Bwm7
         nWecHI+9d5NTCRttL135CJfVzXmLDEG0eMA8Sn4dWNBSaLHd+leQ1jSRYcbyQ9pGHa5l
         /OUYKHng4Tckjww8yuzwyrzioUXfyhbWt1Csmzi135X0EESo9j7xZKmw6cgB0PEW3lIG
         URzwHcAg9JwRG2wyvk1U4EPwZYVWvf7nVx8uQjUV6HybswYcbuw+whWWCjvNMh4U6yje
         f7dD5Gp6ldWkI6f4EhjNhJK3keG7XHzff4iMHgfK9U8SjRRzUPwtGo3Q6rOLM6yccCwy
         B8dw==
X-Forwarded-Encrypted: i=1; AJvYcCWqRS+ZVv9zrtSitHv5LusxOGU0emxVCXBiV+++oTzrVGTeaHTP2o1qsBKqzKpSn8DPJFJTC70QmpF1@vger.kernel.org
X-Gm-Message-State: AOJu0Yzw88Vyrrj2Wl7bYW72mFzTPESaaHZIu0/V+Y/hJmvA8qIVNIlL
	YD0qfYfhm9fhkFae698qc316JT1OPwdXbxq8t/4vzveJk8IEwkmwp0PCZY6/ROIjSmuLFNqmGfb
	xS8XcGIigpXmZE1spuGJOwac0tQIpdDE4yH5/KInNI1XkAdJftILE6cZ1C2vL
X-Gm-Gg: ASbGncuF08+uYPZf+UCC7CZk+qqMpIkSfnLHatsHfiasYW18uMUgq6afcmRJNzW5i6E
	1EiY2c9EaYkwJBNk5f3ZumE3kX6gE0VTJsgC0V+epVEnPZHdppiCgQ70nAd8iiRAyMP8wKvDoCX
	xGbAVcfmOL6Je0TNvZLHG3yPBv99d3wB1gAEmb4KIbJggKm+6paznAMetgX+NpSnm+RowImFnwl
	8nh6SCILuPPjSK9ZXXSKWKPOx65w8xOiMCSAnL/aokQmH2CXgRsb7747n7s/CBQE/u3az+tw0+0
	XLEFLAm84xXOvybqJ1HYMo+DjQZCVWaUwll8em7lUFjGja6NkEBUe8KUTcgmycFiAnp53DhV2Zq
	7yc9SN0uNgFMIGWVJCxvhaKLQ
X-Received: by 2002:a05:620a:1b89:b0:7c5:61b2:b95 with SMTP id af79cd13be357-7c960718fc7mr297360885a.30.1745574717636;
        Fri, 25 Apr 2025 02:51:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH1K1UfbQvYJ/2ntuq2gxMNlOns2PWPFkI+8B4IXD4Piapymb4QRyfV5nubnNlzDop1tGHtKg==
X-Received: by 2002:a05:620a:1b89:b0:7c5:61b2:b95 with SMTP id af79cd13be357-7c960718fc7mr297359185a.30.1745574717192;
        Fri, 25 Apr 2025 02:51:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7ccb7c99sm539164e87.218.2025.04.25.02.51.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 02:51:55 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 12:51:51 +0300
Subject: [PATCH v4 1/7] dt-bindings: display: msm: mdp4: add LCDC clock and
 PLL source
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-fd-mdp4-lvds-v4-1-6b212160b44c@oss.qualcomm.com>
References: <20250425-fd-mdp4-lvds-v4-0-6b212160b44c@oss.qualcomm.com>
In-Reply-To: <20250425-fd-mdp4-lvds-v4-0-6b212160b44c@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1289;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=nAUeCQaacPy4eDcat81zyQ4FPPYgERyNRUqIhBqqdZk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoC1s5vnKr+pjxAmRELwP3wO3coSSw4Fwr5Bgan
 5WBhmwLHDeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaAtbOQAKCRCLPIo+Aiko
 1Q1IB/41yuLT8WBukhCIEw4AaTeuj59DAP+dWh0vz9m1X2dqGBV0YSaqkaY9lqWqJLOQw3qA6D9
 pJXpJ0Hy1H08gNLagSGomLL8ytcz7pK7yUS/hNq6XPbcH6ihYsXgCXOeCfCUTEKLBE0qJrrHCn0
 l0Qak+gEmDNOl98mXcb3p7nGyIOUmOX9u7LnnhgDtUwWYwVgs0lW1sSGyAB7/OGBJ+1fM6M6WV5
 MbsNDg3BOJf4Rf1bn6JiyibAFxU5QDGBtkSlZzev1OKNn/6ftFNCGRpGChPMYCSVbPT7lPjq89U
 m/iEJQWCzd+lx639KNn/vAN+J4R9Nfw76nOaQPt72EzzAmuL
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDA3MSBTYWx0ZWRfX/IX0Ujpe6UT1 wZz8EVlgYmRrqS64LjzSPE2mKXakHXFvY5o+DyFav7fwpQ15xUPxeoA3pToIEe1/nAr9Xs5agZT oVn7xTBvVo8CYpid9X6b5JorDriJBUVzXnshaszy7Rb2OPpxv4LEDW6yzsYzGDHXxc8My9GepDY
 L8/FEoYH44LXrsP8t6zLNvMzRnKC/vWgFfFoXZyxFUIv2efb/UnxpMOzOkG4dc7Bik9vsU07cSL /habM23fSEDYo5TEl7DPoOcvddeGtcRw8E6p9cpuX53QBS4S0aUMlqOQa2H6wkeqrthHpKnRjrT lJrvAfsBOVwXVLH4Hqp/OqriHzzwXCABEkh+Ip3yBZNTJWRlIAfSjkB931UdvJ+t58f+iARYFQc
 0301epIdwW5L9fUtn5unfQuYcFocUsbkoXeLomFlGMh9tb761h8UhU5zxJAIQwaSDd2hWPBB
X-Proofpoint-GUID: c6pGQouCApFVR5BTxHedu5B1hPho90KE
X-Proofpoint-ORIG-GUID: c6pGQouCApFVR5BTxHedu5B1hPho90KE
X-Authority-Analysis: v=2.4 cv=M5VNKzws c=1 sm=1 tr=0 ts=680b5b3e cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=JZA2oeZeEnBWUIejbVIA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 mlxlogscore=999 malwarescore=0 impostorscore=0 clxscore=1015
 suspectscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250071

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Add the LCDC / LVDS clock input and the XO used to drive internal LVDS
PLL to MDP4 controller bindings. The controller also provides LVDS PHY
PLL, so add optional #clock-cells to the device.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/mdp4.yaml | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/mdp4.yaml b/Documentation/devicetree/bindings/display/msm/mdp4.yaml
index 35204a2875795e2c1f7582c8fab227f8a9107ed9..03ee09faa335f332259b64a42eefa3ec199b8e03 100644
--- a/Documentation/devicetree/bindings/display/msm/mdp4.yaml
+++ b/Documentation/devicetree/bindings/display/msm/mdp4.yaml
@@ -18,9 +18,10 @@ properties:
 
   clocks:
     minItems: 6
-    maxItems: 6
+    maxItems: 8
 
   clock-names:
+    minItems: 6
     items:
       - const: core_clk
       - const: iface_clk
@@ -28,6 +29,12 @@ properties:
       - const: lut_clk
       - const: hdmi_clk
       - const: tv_clk
+      - const: lcdc_clk
+      - const: pxo
+        description: XO used to drive the internal LVDS PLL
+
+  '#clock-cells':
+    const: 0
 
   reg:
     maxItems: 1

-- 
2.39.5


