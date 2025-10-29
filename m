Return-Path: <devicetree+bounces-232605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D57B1C19507
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:11:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3EB03A29A1
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:05:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AEF42D8DB1;
	Wed, 29 Oct 2025 09:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pm4Jitwx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MPIjHmWz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC8651DB122
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761728714; cv=none; b=n3cjGBnyhT7zEo4jVTnC2bDxPgctbx+RJ91LkgiWJ77XafnsUCFipNc6Ej/j5nXxQHjPlMTI4Jn+1m+O+b34m4jtI8fgxjMdpxNXWU9LhSsmpTnn61yzDKSiMC+zNDYac6cbi+4rDcOypxiXKW8RJCMPfcEP1ygHxo9RuhZQ00Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761728714; c=relaxed/simple;
	bh=f/HHi/48hqff50ItUhEpqZ+zfupVghiSAFK6cNZOm8A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VKdcqDChqiz2Tn8Fcrq2pbBHXbij1lRRD4wbENk1rU3svDCNqx9lIi4d4NY8YcoXa+0lxPwecvnGCrQYw04bAevo4vwVm7RQ2+2K+r7XtDSIdHfI1BNHREfWK7do8mH+q1NdoQlETHQG4jNWcOcjcmh7iCS/iULH+hwz6nnrFBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pm4Jitwx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MPIjHmWz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4uqab3764235
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:05:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PqVjiwHHM6HMBkqOPTdcX/9mwjZ2lFutTM2OIer6Fqg=; b=pm4Jitwxgmbfq5Yk
	AasOjN7q/v2x+NXM69VAfxotSlzOJ3yPVR3gMAh/qwfwVS4ONfe+XFPkobkocvBL
	wa2sssWwW/XSozkqOKE0n0BYdvQ5FfFEHFddKkG6FX8O1ZNebjghUqNIiyp9VGBC
	FqFoh/U0LPvJH1sVd59EctQ1PlDjjsFXlF6lMbdXadktEDb1l+2JLCe98UYl/k9h
	LV7i4HhlFVuCVE+1vEqBILYqd1olR4sq6JzI9fMPnmypikSMSffrkrQ1HBrig1Cv
	eSh4fPnszeyGdrOG6n0kqKdCUyckTVgnufhniuORGJ4hCtCmWtwLB4L5nPtK9q49
	f3EgSw==
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a11wn1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:05:11 +0000 (GMT)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-4481c0b3dc5so1321973b6e.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761728711; x=1762333511; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PqVjiwHHM6HMBkqOPTdcX/9mwjZ2lFutTM2OIer6Fqg=;
        b=MPIjHmWzpCAjk/mbO5oD1ZMRfZXjbmKFM0WPRDMgtdFdZ8pcsV+KZ4pQSUSUQAd8TK
         vU28xb3/o3hlIqgHMrU8+PMyZokboSr6pYeL0poED9Sfu4oJ7Tdyrd6LEvqhhHRKcqq3
         KzVS4FXPrMvopZIyfcrkng/Jr2hwObSThQ2GBiPEAbPUYf1n9TCnbdbOcqHlD+vp2ayH
         ywxp+ZyjcmJ8bDgMrTyaVAXGSEiZD3Qzs4kNRjUhUQ5S6AHTb1zcc1hAGd8ogsqQPB8z
         WVEuCoNmXyWAJwVilZ4LX717BPl4v5+NiuGWkzJSOTTNOVNRG7S6t3Od7LdrMCrXnRIL
         HR3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761728711; x=1762333511;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PqVjiwHHM6HMBkqOPTdcX/9mwjZ2lFutTM2OIer6Fqg=;
        b=hl5n6uapB5mKTEZPEKzMgcyWUactvleoj6unWB0UyeIrbNYLqLZTRW8RMMp3IV5wXN
         43xQ7Ud6af0Y5LRjmUXCpw0JbDOH1gEvczWmN/xNECStZIqcR1YZy7Zl/GvVA+Z+4KqJ
         RB2tSddD4a4qbrpMPyHkkfwZqZFbbcX4X9521XRyYE2HDAJy87YYHtQPH2pPxkdFy8Dj
         McZye0kbAu9Hh7rZJVbYAyL0Vl4dzjEBPT8RAmRSjvDSgd0jmFkT4WyeZFy8X97BeRS6
         hEN58DgXZPAhfFSoXvk3P4UB3+1BHuOtuw4K4WdJ1bGn9gMm7Z9Th/Mlay9WA44tHQxW
         js9g==
X-Forwarded-Encrypted: i=1; AJvYcCUiJhFbkJJNJLveFJrV/xeKMcKXO0OXrxWAdyr0slxx0QbNtLyYGQxSktLvc035hxepczXANTkqNJAx@vger.kernel.org
X-Gm-Message-State: AOJu0YwcxhWXjBbzUM7ekPOnJroB0k9yHdc0t1aZ049kB6DXi86QwMPy
	zi6MIAgE3kv/2Heb2xsjt8XqfYYel3a1gCYsf+jphCTnEHXHoaYl6HCYNGajCbk/3VjxzEFo1tp
	953yfpHD4slxTdJm9hvmrQF5VFfB9+WU++TnY3qKCceW9ec34JE6Zac+3HsNOH6ou
X-Gm-Gg: ASbGnctKSfZWSnqjEKMF3tV6wRKDPo/f/fcZWj406orOz6+3WqgCKVSSOklkqC2M4m3
	6W80EQW9iY7hH0DtJrmz+Y2nvp1Q3DqHegarlxKhfJPTYW5z3wtdhjcTu43uBClEjsxiGe/aXrr
	ssNm8qoRvw7kKKjyS05aU91niPblVejs0zZrepbaYET7G99rpb15Iu7DP2Y3YYNBDIxVHf7vOg2
	evZzukbrC0gxEaH8r0kpvRltVuH6RWnCReNSoefPRvT/JIv1CFeMNCi31tn8qbbYbibLs6zKtf7
	ZLvRkdmO5TqxiW3n0PUzDUyKiEKG2LaWTEXDEu7KuGZhRTfhqCGYlX4kmtUm4EO36cvh+Gx2Z+a
	FT7bxMrtKv5WuxAm8qogzbCc=
X-Received: by 2002:a05:622a:1191:b0:4e7:24df:920f with SMTP id d75a77b69052e-4ed15a6ab64mr21703191cf.27.1761727951014;
        Wed, 29 Oct 2025 01:52:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOvmSdC4HmFMkbpQe3HllOymugFZ7rqxM8+XOIFsKpoDo9fMiPWIgDHanhaRSDOhK6KmtM4g==
X-Received: by 2002:a05:622a:1191:b0:4e7:24df:920f with SMTP id d75a77b69052e-4ed15a6ab64mr21702871cf.27.1761727950466;
        Wed, 29 Oct 2025 01:52:30 -0700 (PDT)
Received: from yongmou2.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ed0817602dsm36760171cf.18.2025.10.29.01.52.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 01:52:30 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 16:51:38 +0800
Subject: [PATCH v13 5/5] drm/msm: mdss: Add QCS8300 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-qcs8300_mdss-v13-5-e8c8c4f82da2@oss.qualcomm.com>
References: <20251029-qcs8300_mdss-v13-0-e8c8c4f82da2@oss.qualcomm.com>
In-Reply-To: <20251029-qcs8300_mdss-v13-0-e8c8c4f82da2@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761727898; l=988;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=f/HHi/48hqff50ItUhEpqZ+zfupVghiSAFK6cNZOm8A=;
 b=lXTiSppnVE0dqE0qrye4mItP4ncDSpxVMjr9mzUdFBaJRn4RRa6nlFtZAt7flu3pDhV3mLlIC
 GN4wyHDVhcaBZ/+BRwAn+FIKgQypRdAFQgzGBpZhYNA20nxPT5XkuoF
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-GUID: uZP7D9rR5NiZQYSGfqz_yI7QehKya190
X-Proofpoint-ORIG-GUID: uZP7D9rR5NiZQYSGfqz_yI7QehKya190
X-Authority-Analysis: v=2.4 cv=A5dh/qWG c=1 sm=1 tr=0 ts=6901d8c7 cx=c_pps
 a=yymyAM/LQ7lj/HqAiIiKTw==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=w6jnlB3v2fMHmChJ9ZgA:9
 a=QEXdDO2ut3YA:10 a=efpaJB4zofY2dbm2aIRb:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA2NyBTYWx0ZWRfX/4C9xwsFJF8q
 DatFafzq7u52SJaRyjLnEaCHmmqsnu4mARkNqLMKVh2qrXPuihbe8KmDABeG6XDJb5OIXopkp7o
 eIwTbPAh5Hpdci0Z2YjPe4+S0GifL0+k0kj1qVeQ5PF1wdAHe+vt6GbMR0jv+PtHun2jbeeg29g
 vGHZsyGmaIcE9YxyWyhO+mXrv4mRKuo8dSFlwpeKownBS8aeZC3klumDhNorNbPwalZjcAr6f4f
 aqByoBcmg10vJF1TPMdPOhYWwTXNovXqUt5ODupon9PhvsV++0C/D/fmI618Zr1/XiqhSdx1aRu
 /QLkIoqdHuFg/0BO/iYKjPbKnxpwUHHhcKlSf7Hr3imkAo5ualRR4TiMN4z7mTI6XipAoA2N4cf
 uBn1dskRZfFXUptv048JBUIFxA275A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 bulkscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290067

Add Mobile Display Subsystem (MDSS) support for the QCS8300 platform.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/msm_mdss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index 2d0e3e784c04..db2f0064eb72 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -555,6 +555,7 @@ static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,mdss", .data = &data_153k6 },
 	{ .compatible = "qcom,msm8998-mdss", .data = &data_76k8 },
 	{ .compatible = "qcom,qcm2290-mdss", .data = &data_76k8 },
+	{ .compatible = "qcom,qcs8300-mdss", .data = &data_74k },
 	{ .compatible = "qcom,sa8775p-mdss", .data = &data_74k },
 	{ .compatible = "qcom,sar2130p-mdss", .data = &data_74k },
 	{ .compatible = "qcom,sdm670-mdss", .data = &data_76k8 },

-- 
2.43.0


