Return-Path: <devicetree+bounces-236830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 66095C48134
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 17:45:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 11FE734A6CB
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 16:45:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C592C32AAD0;
	Mon, 10 Nov 2025 16:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EQUKhzqo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RZqqCl4S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0443F3148BA
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 16:39:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762792748; cv=none; b=gJWOkQAgtPq/pM1XtNajA5jp/io126pZjQlbnbu/V5pRxaPupeK+jsat4LKvFqHEVahb12zW3GcONDiNIPmuT2h9Pg5oUY9SVZWnwvk1rPXoXK47lidGoXLEucOv+fYrJhS4E2jfUDEVsDOYe9Aibh9vln6ZPj8RUFVCkzoNNeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762792748; c=relaxed/simple;
	bh=FV6xLDthA453vaD5oogIe+3kjmqh0dTIHuw+y3wfzsc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RqX7SqLIYrpE4zAPBQkODNfI6cBKJwQR0KViCg5IaJ/HTPLjHR4M07umWv+XnLIp4QTKosT6J2r3yFU4D9f4obnLDz6Qi1DG4NIF5FYYnrI4ZAnQ76BEx1Hi7kymRtiQNAGFszENy1p/Be7olcz7oPAu9IGqv+xpkPoe8VcXb8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EQUKhzqo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RZqqCl4S; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AABZT5B3271018
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 16:39:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WKibWSrUWripKfBtWsfTympYKLBOlYD+nhQZn/FVCxg=; b=EQUKhzqokJW3UCgb
	lUStWYh9MO6cD+zNjSDLutwBmspsn+lVBRiz3s/hwSJFUslCm9kDSciti1HaANoP
	0LCGEVCgprEznyG7HIHI4yzb3CNH9ki/rmaDjF+b/mHxMAS9/A+2uLhYNg2i5USw
	55F3Yd5/SwwrbMy6zuvZy6Z3vta0X9NkW8xCBjUY7GT3i66/VXXCB61IczV4prcv
	hrt88dFaLWyyB74vxtE7p7xfkSuJ2nmeuz/9W57knNx8O0cb1OQdfGHuQr8bNO1x
	VAxGBvArQLAf3LpRIoNimzupM5SOqYGfRMSh/YWTJQqtTwOzQWJH2s1w8FBb7nKJ
	3N2Iww==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abfafrvn2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 16:39:05 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-340bb1bf12aso7918407a91.1
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:39:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762792745; x=1763397545; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WKibWSrUWripKfBtWsfTympYKLBOlYD+nhQZn/FVCxg=;
        b=RZqqCl4Sp0VXp1TB6Pd6OS5bgnEwAZiUn1NxJyI222lTVy00f7PK9g9bUGu5V9fQ/z
         rH1/FaYqja3poqTY9b2vvtR5O20T7RqpV8f8r5Fc9qqtR7P76DAiU7j3+jmuPEKsQ9hJ
         4+NwFrkgmFbeac36wrhpmOsRhUP6DqzmjJ/gngAYhEzna4CiSQdqoAEMAJ65uFNVAAdW
         OetBp4fQ0iWLX/xX5sX6eK0Ibjhm43nHjKIYZMX4nzCIFN99Y407MiV/mNCX+3GSooz6
         2kY4RhaTgwqXHhy3yoivY15LV9UaWsTjkDOx6rub/CPBvq48ZJ58nTxFLmjhFiFckim7
         k5Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762792745; x=1763397545;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WKibWSrUWripKfBtWsfTympYKLBOlYD+nhQZn/FVCxg=;
        b=GwTIt6ferPUEGlOE4HozZMSi66ZmmeK2Syny0gztNjYbQm74vfQvlPbzvgDs19Y2cB
         DQlAmID9C+vhzB5So8rm02L3MAJxCtG+oxQgpRgUzvA+lN8ilAVXp7ji9zoU1bLHO5HS
         148CCCGXe3ns77W5phxO+e/f8/Z5YOTM872okDYGPEoMNrj8tnpOnlEdfBrYAfnJBJ4w
         vTiUvAkxtbGsuTMW9TlCj+U9xm3xy+/R8KkuTiD34LFoVQmIWM+LFbkcHKf+w09XDNqw
         qLGYf5KCPJy5WNZCla4eRNOZeBq6VJeWyMMXHz9geaFR1/sUAoT4Mi6Qj5umLNkrkPXS
         M0VQ==
X-Forwarded-Encrypted: i=1; AJvYcCUR6GzDmhb3IpWn4qDyb448iYVEN7WmPgdnBxi1TzgzBIhfNkAi87YnH7xxrnVNEA9aMYU04rRCgQVT@vger.kernel.org
X-Gm-Message-State: AOJu0YwLD3DteopfRgt+RHKtMS0EoXd4gBunI+jeFpMkqjc5/DXRq5GJ
	+jyff/TZlysNq7IiDP/VVot6BqQLimS96yP4dsgfq1VXMLpjebUt5Mlslpm5uVcXAiBZqYN17ZI
	XPRSSC1sGS2WeU99Z6kmNXeYFTMLF1IR0GK+S5kmJVhtUMInWYCE1JBWem3B/UWHax8a0z7YC
X-Gm-Gg: ASbGncs5NWKHIznAeRjyruZ2XZ9uOOrxS1pv/Y4rOjHxAdJYxi/VWkUWtDxQ2anoOdC
	Y1Vo4ddry54WA0Ms5d8nipjAAjxCKLvuSKQdQeSFfwYmRN/XZZfrXh5ivs5FrcWCs6Tj97eyZ+f
	+pe2PP9ej0RmtELFDkw+7TF/inVADU9+a2AsGg0GZnBm01od00ZTKApOwI03fC/VEh6AADaWccr
	iHSe0fKyPWbEYHY8fbb283zoeU4CHww10tXNuiAFfUIYCKbNpTrTF856vboMVmRWWwCINJzQECD
	tWqczC3YhORxc7VXdmHZWBPjIW5Y0XkSLNxqOO20+MTigm+h5GCUImBpC3bnQiMSBT+VQ7oUitf
	sQtkl90I9XI+fuIHbm/AM9hM=
X-Received: by 2002:a17:90b:1c8e:b0:340:ba29:d3b6 with SMTP id 98e67ed59e1d1-3436cb1209fmr12752611a91.6.1762792745226;
        Mon, 10 Nov 2025 08:39:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGHQA2IWMXamJLpaNer6zgOuLzI6Ik83UCBpaA75HoppwknGF27iOTm6iO2NwkR1P9RuzAm7g==
X-Received: by 2002:a17:90b:1c8e:b0:340:ba29:d3b6 with SMTP id 98e67ed59e1d1-3436cb1209fmr12752559a91.6.1762792744693;
        Mon, 10 Nov 2025 08:39:04 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3434c337b20sm11468922a91.13.2025.11.10.08.38.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 08:39:04 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 22:07:13 +0530
Subject: [PATCH v2 07/21] drm/msm/adreno: Add MMU fault handler to
 adreno_gpu_func
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-kaana-gpu-support-v2-7-bef18acd5e94@oss.qualcomm.com>
References: <20251110-kaana-gpu-support-v2-0-bef18acd5e94@oss.qualcomm.com>
In-Reply-To: <20251110-kaana-gpu-support-v2-0-bef18acd5e94@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Connor Abbott <cwabbott0@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762792679; l=2490;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=FV6xLDthA453vaD5oogIe+3kjmqh0dTIHuw+y3wfzsc=;
 b=TbMQN2jeHbfSzsXvNtITuiiGmAIjAd8wamkBaIOa6vE0PSVAN1N+TZjArgXIn5hVVUYEREIPx
 e9HotsFB4BODpcPk1sAT2+SANyLk02r+uI0pgfpOwVIuHYPptV6085/
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: 8W7EhISJ2qhhyCnUxZKRFi67KNnRHn8U
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDE0MCBTYWx0ZWRfX/fMGvIO6/x61
 zNv8y6JAeow0U+PBw5r6s+IRWTqek3GAjkcFcUJVZ9BvJdpNe0RssAbSlHdVRO4SB8/IhmaSjlv
 CPamZwB27iRSw75KhBf442gvco1gVdDmRjXGwqSUwLJ//25J08+ur2hgNStaPdcNTdcdMjQNwew
 GhfZWzK407ihu+QhqsD/5Ex+eUBWfwUd/sST3ub4zz19Kq75Bmhoz2vOYK0Qk2P8mllX5DQRtka
 mpV2/srOj5hBNR6gG2k61mmOAhaM3TnxCn2bknjdEbY522hzpFyGNhU+2K9dRu4dD0yiKZ7mnqk
 pD2P9wFsypyeIP6BliWXgIi3NV2y580w2oR7Nj+1/CEanaurY7NC40z7MKgnmsFhCIMyVxthD2y
 FG0rrj1S69cKyxxIZTuUFBRh0GJQNg==
X-Authority-Analysis: v=2.4 cv=UZJciaSN c=1 sm=1 tr=0 ts=6912152a cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=i9YFFn0sWQDpYGFnbDoA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: 8W7EhISJ2qhhyCnUxZKRFi67KNnRHn8U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_06,2025-11-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 impostorscore=0 adultscore=0 priorityscore=1501 spamscore=0 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511100140

Move MMU fault handler for each generation to adreno function list. This
will help to use common code for mmu pagefault handler registration between
a6x/a7x and a8x layer.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c   | 5 ++++-
 drivers/gpu/drm/msm/adreno/adreno_gpu.h | 1 +
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index 7a87f6407abf..51d32c66512e 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -2619,7 +2619,7 @@ static struct msm_gpu *a6xx_gpu_init(struct drm_device *dev)
 	adreno_gpu->uche_trap_base = 0x1fffffffff000ull;
 
 	msm_mmu_set_fault_handler(to_msm_vm(gpu->vm)->mmu, gpu,
-				  a6xx_fault_handler);
+				  adreno_gpu->funcs->mmu_fault_handler);
 
 	ret = a6xx_calc_ubwc_config(adreno_gpu);
 	if (ret) {
@@ -2665,6 +2665,7 @@ const struct adreno_gpu_funcs a6xx_gpu_funcs = {
 	.get_timestamp = a6xx_gmu_get_timestamp,
 	.submit_flush = a6xx_flush,
 	.bus_halt = a6xx_bus_clear_pending_transactions,
+	.mmu_fault_handler = a6xx_fault_handler,
 };
 
 const struct adreno_gpu_funcs a6xx_gmuwrapper_funcs = {
@@ -2697,6 +2698,7 @@ const struct adreno_gpu_funcs a6xx_gmuwrapper_funcs = {
 	.get_timestamp = a6xx_get_timestamp,
 	.submit_flush = a6xx_flush,
 	.bus_halt = a6xx_bus_clear_pending_transactions,
+	.mmu_fault_handler = a6xx_fault_handler,
 };
 
 const struct adreno_gpu_funcs a7xx_gpu_funcs = {
@@ -2731,4 +2733,5 @@ const struct adreno_gpu_funcs a7xx_gpu_funcs = {
 	.get_timestamp = a6xx_gmu_get_timestamp,
 	.submit_flush = a6xx_flush,
 	.bus_halt = a6xx_bus_clear_pending_transactions,
+	.mmu_fault_handler = a6xx_fault_handler,
 };
diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.h b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
index acdc51dbec79..50359f2be5d5 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_gpu.h
+++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
@@ -79,6 +79,7 @@ struct adreno_gpu_funcs {
 	int (*get_timestamp)(struct msm_gpu *gpu, uint64_t *value);
 	void (*submit_flush)(struct msm_gpu *gpu, struct msm_ringbuffer *ring);
 	void (*bus_halt)(struct adreno_gpu *adreno_gpu, bool gx_off);
+	int (*mmu_fault_handler)(void *arg, unsigned long iova, int flags, void *data);
 };
 
 struct adreno_reglist {

-- 
2.51.0


