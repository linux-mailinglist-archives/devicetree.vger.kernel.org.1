Return-Path: <devicetree+bounces-230102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BCABFFC85
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 10:07:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA9383A55ED
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 08:07:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7FD42EC0AC;
	Thu, 23 Oct 2025 08:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dRJs/DMe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BF52EB5C4
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:07:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761206838; cv=none; b=r4vuZwb4dt8+JHprE4E0iTrEUAZlgqn8BeGo8Qb0ehgCZu78/BOfibMFYUvUWuISRc+9MzzlzsZ3YzVSOjHDSAAGcMDzSPs9RJG2h28RsunQmS6XT9Wdt+2mPCUm0thVFPlicOXVC4YGJhy1IBxI2xCNI70ug8fYAij25tJ4Cas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761206838; c=relaxed/simple;
	bh=ClEao7QUrypc5h1ofIg8T8mt6ryQJd4aiFVEJim4yLs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=FuqyqZ8FHd8bGsGbPXuCuXq5vxpCZfwLklxdiw1SR8ooWRKQygQYksgW9wj31wZbvGFkRJ6XQfDJ1sgxQPSecc8rBwyn8K3BjaDeM0RLaCYbAzJtbh8C7UmCLAMXcKSiINOwVer5p5+t/pvUW3xgaP4HkBLRIoUx55BxDCJMO7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dRJs/DMe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N70j60031863
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:07:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=KgSVmbG0CXT
	s53n44YyJiTznjurS7MAlfi9QKa58wbE=; b=dRJs/DMe/B2FAT5FnYpZzC1r7CV
	aN0SffoHW5d32GcH4bIL/wb3J87BwN4UA50SLQR4H952UwreSlK6qgScQtXem4Ln
	yWWb3q/jRqVjmdUTTX1ecYy8u7AdW6sOxGt5JD60mYxC/acZTlFIr7mcLIdyCnPf
	sU5oy4jvBxDPPthLj5CtKdbHifxsRXxB9IsW3sXU7nRRuLXQLKRFB2HAAV+Qgss3
	YOSWWxjkSmj49jTSf9bmQRyXChS93sk7m6739DnFn0ylZnOXvpIRQSmvxCMlHccW
	WE61PieIatYguwZjLwJwdUzSvOeCMWET40SCpNcwKdQxlcClju6f8I8gk7w==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2ge7heg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:07:15 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-77e7808cf4bso469938b3a.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 01:07:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761206834; x=1761811634;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KgSVmbG0CXTs53n44YyJiTznjurS7MAlfi9QKa58wbE=;
        b=tMsGp+Y9XTdff3Q/1nM99ZhHrSC03eCQsnXXVMmCiyTp6wLetsjXq4ZnxwUjCtfzjP
         V8XOB0tXm9fhoVXJvEWm98MZpT8FEYw447ccKB3zPtMb8F/KtOiGJdP9Fx32mxmHLvLm
         RPFfFtVDPlXB/LsRpA3e5REv9zV8JWmmGn08bcL8n247v2ksCdwU+vueGj8NGGzG/hA6
         0gzaMSRI72847wkqmjsXZDudOZcweS0beZwvfA2GGEBnoSFQ7jW+SvpP7GOH39Lk/8nr
         rjdrJ3fANBACvGCK42IC5q564a/rkKgbLUm1W6SDTnUTBFJX59u5mThwJ13dGiBMzNVP
         Ah3A==
X-Forwarded-Encrypted: i=1; AJvYcCW/iPotnsQlyus5RBNFkPerno3DGTm8+fPRR5Q4pW5z/HkGRQXGa08+8Eaaq0FIhC0Y5zpWP3wF8Tdv@vger.kernel.org
X-Gm-Message-State: AOJu0Yx36w2+M+Yrvh5ypLxRcEtYUu67gKOONwY9zd6ctZ7z5ZuyeTWd
	bYEW+1bDgQQGWtCXMzRMoio0WPBuZPz2UCTuKQE4dvkJwekwBF7WV6ugF9Js+G+LZZ72BR7om+I
	+PgAxAlGGKbIAWTD9GT8o1iaM/WwRS85JMbSH5Cbv88n/2ptpjIggzR+Am8vu1owO
X-Gm-Gg: ASbGncsiNaP8s+E9J85bxC5d2VlGNLaOhBHd0pyWjDQM5wl4UODusXN/fFEw9D3daF0
	lbd6xq1ZW8yvhU7DR1navbitP5n8cPkF10cllQhU902PVmq3zO6+iTGYed/iMZ4rd7vBjHm9Y1u
	hUvm18SUMqA6jQiHlid5j7lsKXfMU+hMxl58N/Xm8BMoroGy64oRcHq1r4Fi0FPo9vmTvA/EFdv
	Q36YmGtk3ENKv9dmqoM/wkH/YkodBlO+EA+Zr7rLghPTYYbIOPvgEb0aQZi99tsXMPiuA9Fb8nH
	bN0lkLpSxwCsSV16qnZ5DkGBUGQgPx0ThXO5xfOEEdWnYD1IjAjDcSAM/aLq5wfeuqDsNTdhTwY
	f/oEzLicUKxuRJnush3Rnxma83ugHY6au6Lzx2FaANEbr6H2BYQ==
X-Received: by 2002:a05:6a00:2182:b0:781:1e08:4459 with SMTP id d2e1a72fcca58-7a220ab550bmr33261073b3a.18.1761206834374;
        Thu, 23 Oct 2025 01:07:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQU6DsEGqLwTWykfWX9a0n5WaLRPXfiL2M9UpRfxSjYlgMKuoDnFRY1LaCZvZ8nIr2wQVy2w==
X-Received: by 2002:a05:6a00:2182:b0:781:1e08:4459 with SMTP id d2e1a72fcca58-7a220ab550bmr33261043b3a.18.1761206833922;
        Thu, 23 Oct 2025 01:07:13 -0700 (PDT)
Received: from yuanjiey.qualcomm.com (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a274a9cec5sm1676410b3a.20.2025.10.23.01.07.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 01:07:13 -0700 (PDT)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: [PATCH 07/12] drm/panel: Set sufficient voltage for panel nt37801
Date: Thu, 23 Oct 2025 16:06:04 +0800
Message-Id: <20251023080609.1212-2-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfX2drL/wO/aVkT
 hsrRzbcZ/r67RcJNNlrszEpBMvK5j5u95zZFanYkgGdPTOau0mUhcVqWMsRdndjXYR/TQaYG6Vs
 yqWoxuWs4ygK9DTZcTZy+yiGJdkKvkvu8C1IdffDdL+UPSIUJz7x0XF1n55PtoZfpWDdzhuMFro
 mAsf+tPt8WVaVBAfeUzTiuZZS9ZcfMfJOXZd948cevwNCeyAYVkUHL4q5qT7roxHnYEyZbHv8kC
 +EdZ0vARiwGN+43E8Cf9E9M4HCVmnFCIK+WgK7qf3vi+AZ40HecTI2Jyt/yN/zrlQaS8070r1EL
 ZwRb5UZOrYSbG0Uk0QqolvubcoF0/EJWODrhDkUF9rMuMEmMkVVq4r92d1psGb9q9Uvh968xUPp
 wQilDhpR6RtCrZsQHIOPRFHjgu0Mtg==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f9e233 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=L7xdKIvrZdzy1bmArRUA:9 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: zBLVbnGXnrdyOo9XtN5IK50J6gxvKV70
X-Proofpoint-ORIG-GUID: zBLVbnGXnrdyOo9XtN5IK50J6gxvKV70
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

The NT37801 Sepc V1.0 chapter "5.7.1 Power On Sequence" states
VDDI=1.65V~1.95V, so set sufficient voltage for panel nt37801.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 drivers/gpu/drm/panel/panel-novatek-nt37801.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-novatek-nt37801.c b/drivers/gpu/drm/panel/panel-novatek-nt37801.c
index d6a37d7e0cc6..7eda16e0c1f9 100644
--- a/drivers/gpu/drm/panel/panel-novatek-nt37801.c
+++ b/drivers/gpu/drm/panel/panel-novatek-nt37801.c
@@ -267,6 +267,11 @@ static int novatek_nt37801_probe(struct mipi_dsi_device *dsi)
 	if (ret < 0)
 		return ret;
 
+	ret = regulator_set_voltage(ctx->supplies[0].consumer,
+				    1650000, 1950000);
+	if (ret < 0)
+		return ret;
+
 	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
 	if (IS_ERR(ctx->reset_gpio))
 		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
-- 
2.34.1


