Return-Path: <devicetree+bounces-173524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B8FAA8A40
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 02:16:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 921591893D6B
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 00:16:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE7C43AC1C;
	Mon,  5 May 2025 00:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mn23ySEZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A26EC18A6AE
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 00:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746404114; cv=none; b=ddxIkAIpa2GdNuwT/lR9sw9yo3V54CO02Kz2z88dMr8rKOM24WSKZx/C6PhjBM+OoNyUcJnVZvE6L5t68JbKPVrAD48vJqyraN2IeBfY86j+xXvO7q7TBFX1E+7iWdiIhLXuGF8uXEvoV7D1P9h6fzfI6TH6hJJs2j5KbCYISyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746404114; c=relaxed/simple;
	bh=p1LSDfh039EO9QiKvv3+87Ir+NZhG5XF0kZCfEUI8rU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CYcCW9IfAAGZsaz81xuGuN2k/dyq4/1DaIkrKYi91uPynuDucVnGQA4PwM5VDtdUxfxQR9rkLJrn1lSmy0u3ihSnKumM+Sty+phqDXJ4uh467mbZY4jzrQTP4tXY5rprPcyAT7Gv1mfT8/1HVfK3Z47uQQxS3/usXHKVXerbJF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mn23ySEZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544MtYRK019417
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 00:15:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X5c1T2okNkBRPy3LP55P7/c8OhgWI8CTU4FhNq9qA4o=; b=mn23ySEZ/pXl19HG
	+7YA8VJNFSYz7kXn9vsxvpHYPUpm6e+g0diYAoj0YCUR6XTbKEZu8dWBs8cOu0q5
	wmc1yXobvHKpopc6dBau5/0IZY6pj/m+h4RVigbZ7qmug6GuyCzMNsOPy34rfCOe
	KRO/ER1QoyknRcIohyzH4QlZ8nIaoV+z5FuYmAyhehzS0+FxVwRmG5Ahenx34lVO
	ki+HwOsBUF4uPU7kRzdUCMkPazignGzzdGkEvaqXnCgLUKnB8ybi3E6a+SvbquJ2
	M/5MykGZv+bhx0eo7vOgAXf+gLHuIoOmR+/wAV0xYbyOC6thOHwY7HaNHngN8fVT
	t7n7NQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dce9ahje-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 00:15:11 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c9305d29abso759162585a.1
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 17:15:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746404110; x=1747008910;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X5c1T2okNkBRPy3LP55P7/c8OhgWI8CTU4FhNq9qA4o=;
        b=fOYhx+SfljY7wvfASACLi1mxS9206StuTIXulJ87ABd99SE6z0X/0AD6VQZGAnB4Dt
         P1UsP+Pt+JbEKK20fM0VKG43UTScZF2Qps/Fj/MEllgI0N3NQs4Uks+h72Vh7MVab1C6
         inEazT1yhG211TwtSY1QAP0/nYONhiHQKvsNDQZH88m8UR6qzGtnBgI831v3Hu7URVi1
         0SBkgvOoNEw/jodqJ37mRQ2gWBgmN6bUBun1M1z1EPU8tuCq9PORJQ7iIZbxQktsJ/Gp
         IKGxcSG2loBcMD/aHbALXVWEVLmmsBDAnseM6anXuvZIQ+gViZe71JwidtYOWiMMNfL2
         MJ+w==
X-Forwarded-Encrypted: i=1; AJvYcCW2fgn9C7z8t4yb80EXDl6OXPPH3tnYbjZEHn2KlUS+kX7KwnoUa2SWeg8xXHq2kouqBid+Nmsjtv/n@vger.kernel.org
X-Gm-Message-State: AOJu0YxWvacDXTwKJZ9AOa/1cmSMMOYf53kpa921vBTzOGU1jklrqtpz
	4Cs1G4r9ZqVQcNRT8KGXFpnek1Z6NdBC0ZuevBTIqwo81ChUd9yzqVOce0wZ8PoumANcIruipIJ
	MN3amCIAktU3sTsWAusPmt7860vOlggvqSlW1ehspVTvSMHnfmfXsE4jN3zPV
X-Gm-Gg: ASbGnct3y8F0IM9hecijNuezurEJiEg/CAB15PJ4Bu3b4nbQjL6edhXcRVxDNBiNebC
	96sLcnfwgVp7RRtXjYnro9FAwQuf8QYujs4eDzql+0Htnl4i72t59hnxhxT2lia50nhkuT7sd5u
	zxyUSNQ7kPPL46rEYMYuYtWud0S3x3p7T9Hd+5PpBCO7SaonW4rY46wCusazkUhk8rmqVrxEIcm
	Tnq9uq5owWoxBSI63H6Xrsi6ySN274WY2ACQL26chw4HEPwEyAd80FhzpTtnYmz7e7BbdcEVBZ8
	GlVO+Z0pwgSfp/Mi7W2+fkV3ouU1AiPOBP3qfW05/UlnRu+coC/capMgO0F6bwXOkb2IolMJ4Ed
	IKjjkzR9IOY8VJbfFAp5u0O4b
X-Received: by 2002:a05:620a:190e:b0:7ca:cd43:e46e with SMTP id af79cd13be357-7cadfea82a1mr1176854785a.36.1746404110491;
        Sun, 04 May 2025 17:15:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHQhfFbqpZslO2eWr4LyRzSnWS8Njh66IBcHVpnb9J96WelvVwOaL7E7JvQ4d0L3KLXii73DA==
X-Received: by 2002:a05:620a:190e:b0:7ca:cd43:e46e with SMTP id af79cd13be357-7cadfea82a1mr1176849985a.36.1746404110144;
        Sun, 04 May 2025 17:15:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94ce656sm1454066e87.105.2025.05.04.17.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 17:15:08 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 05 May 2025 03:14:49 +0300
Subject: [PATCH v5 05/13] drm/msm/hdmi: drop clock frequency assignment
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250505-fd-hdmi-hpd-v5-5-48541f76318c@oss.qualcomm.com>
References: <20250505-fd-hdmi-hpd-v5-0-48541f76318c@oss.qualcomm.com>
In-Reply-To: <20250505-fd-hdmi-hpd-v5-0-48541f76318c@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Simona Vetter <simona.vetter@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jessica Zhang <quic_jesszhan@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2616;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=WW4ls3rpXG1GIIqJFaRsd5YlkFmkvDhOcZwn0x64Row=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoGAL82x04Ldn8u0VpFSsk00EMCwD9Pm1yAeD5b
 ys5oLHbZ7uJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaBgC/AAKCRCLPIo+Aiko
 1WmsB/sHPPAf9NychOLipLaNxz2HhgodbrgZJWqKAWrZjaD1lVAT7NmeDWPl9qIV1saOMtOU5lr
 wVowfYQ399VVJQq2/C26DQKbVs8j4NxaEOJNTfJbOnoWc/6OlCBe01vp28OrqdjzDnp+vPPJln4
 JYK7wO+dvBtHfERYjMhTyUKsBzR8G/GReWfTdL9oug+KvOcMytfwahFaxQXH5UJo16spstBcpiW
 5xVK8bJgepjs8phsyTDqNNta2we+VYBqxdJd7BArrtlYmmdCQC+HPJVzuf3Myr4rMQrVmDNtj6A
 9CC+Cv8ORrYXG2FbKrevADexNzYZvs3VBeEbuYf1gDkC6n7m
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDAwMCBTYWx0ZWRfX3MtSnzCKESQh
 YYEhfljiKh8VtClkmVqwGCmt31wRDY8eMq+ludDoNr5AwFqmfgzbQVGwAjVQIaUMgkTpH9sAjrJ
 kpgkwiDjdDE1sForet8oD56uskwlW3zvH87NF4GbkNCPMhqjhlEb+9WD2WGPCOA/g+KuDFduo9Q
 5WJHspXoDzkH7eSIMUYnERiHkEv2OAuHVhX/5duFJhJ6YCj9RexLGHNLMKFQqAXY3UtgukldLAd
 vf95LPxpdrlHgiKVYEihwLXy6TwlytYGxJACFNLhQWPgRzkWa5sxASJuP9uisFvG2Bq7TkE9mEJ
 7sp1KvGvTYob3AKwGu3hrZQbgeKfO6QeAlCnSxfJjKDpulpgFLVH0gVQzc36IYuz6AmKVO098C2
 mpfTEjyHtacXcMfAALCr4qmeRnnM4po5Zb01kkqR3HRtHEpe/pCBpMXk1tdxgGrF5FGzLffZ
X-Proofpoint-ORIG-GUID: 3jfhQ8VWQTc3Gfxi9RxlwwIob4UivJ55
X-Authority-Analysis: v=2.4 cv=Qope3Uyd c=1 sm=1 tr=0 ts=6818030f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=F7atGr4GHeWUWaFcoCIA:9
 a=0bXxn9q0MV6snEgNplNhOjQmxlI=:19 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 3jfhQ8VWQTc3Gfxi9RxlwwIob4UivJ55
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-04_09,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 adultscore=0 clxscore=1015
 malwarescore=0 bulkscore=0 suspectscore=0 impostorscore=0 phishscore=0
 mlxlogscore=999 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505050000

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

The only clock which has frequency being set through hpd_freqs is the
"core" aka MDSS_HDMI_CLK clock. It always has the specified frequency,
so we can drop corresponding clk_set_rate() call together with the
hpd_freq infrastructure.

Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi.c     | 2 --
 drivers/gpu/drm/msm/hdmi/hdmi.h     | 1 -
 drivers/gpu/drm/msm/hdmi/hdmi_hpd.c | 9 ---------
 3 files changed, 12 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
index 104f9cefa14834d04fb957eb48777e605d1e29a5..6f09920c58190a9c195de0407e4c2dcc3d58b30f 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
@@ -234,12 +234,10 @@ static const struct hdmi_platform_config hdmi_tx_8960_config = {
 
 static const char * const pwr_reg_names_8x74[] = {"core-vdda", "core-vcc"};
 static const char * const hpd_clk_names_8x74[] = {"iface", "core", "mdp_core", "alt_iface"};
-static unsigned long hpd_clk_freq_8x74[] = {0, 19200000, 0, 0};
 
 static const struct hdmi_platform_config hdmi_tx_8974_config = {
 		HDMI_CFG(pwr_reg, 8x74),
 		HDMI_CFG(hpd_clk, 8x74),
-		.hpd_freq      = hpd_clk_freq_8x74,
 };
 
 static int msm_hdmi_bind(struct device *dev, struct device *master, void *data)
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.h b/drivers/gpu/drm/msm/hdmi/hdmi.h
index 3314bb8a09d6bea7e34ad9050970bf43c64d1558..e93d49d9e86936cb6c1f852a958398de2e134ad4 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.h
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.h
@@ -93,7 +93,6 @@ struct hdmi_platform_config {
 
 	/* clks that need to be on for hpd: */
 	const char * const *hpd_clk_names;
-	const long unsigned *hpd_freq;
 	int hpd_clk_cnt;
 };
 
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_hpd.c b/drivers/gpu/drm/msm/hdmi/hdmi_hpd.c
index 9ce0ffa3541795a076b433566a3cafe156120b15..7ae69b14e953f0ee6deea8a216bfa9d3616b09af 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_hpd.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_hpd.c
@@ -68,15 +68,6 @@ static void enable_hpd_clocks(struct hdmi *hdmi, bool enable)
 
 	if (enable) {
 		for (i = 0; i < config->hpd_clk_cnt; i++) {
-			if (config->hpd_freq && config->hpd_freq[i]) {
-				ret = clk_set_rate(hdmi->hpd_clks[i],
-						   config->hpd_freq[i]);
-				if (ret)
-					dev_warn(dev,
-						 "failed to set clk %s (%d)\n",
-						 config->hpd_clk_names[i], ret);
-			}
-
 			ret = clk_prepare_enable(hdmi->hpd_clks[i]);
 			if (ret) {
 				DRM_DEV_ERROR(dev,

-- 
2.39.5


