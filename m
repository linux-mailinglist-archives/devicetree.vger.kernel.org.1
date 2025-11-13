Return-Path: <devicetree+bounces-238378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FC1C5A9AB
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:32:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BD9654E95DB
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:30:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ED63328B79;
	Thu, 13 Nov 2025 23:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="meHSHRFk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OKA7Lncz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7924F329E6A
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763076611; cv=none; b=Yd/nUnVB7QTqI02F+rNnhh9MmwdoaWLzSfAUg06/Y3e54hZtJJwN/RjoTzjCfljsUFNYwghkFKUgzIQLp9Tx5ZM8q2SwHolCaHORm6VWwMjicUV2hEeAxGDzdJMMevwU0ykwX8XAfXb6ZVhk2sImZKlGz9b0myRMeSc3UByjIFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763076611; c=relaxed/simple;
	bh=dtSwkU/2MTVLwCFlRqqTYMozfSVMz5AGTKvrJ9IlCNw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Kxp62b2nzH03YFePqo1HgtY3aVXtuVsx8lJMGN86cna64mqiTIrKdYQ1fpPlgbq27irnASpKpL8rstnstTOeqA3FqIfiioMyC32qfsX9z7Q8NEDMnnG9hh2pcSbvaX3FPBdfXS4MqAg5lZJPlvEQUJYXVic/Uw1QY9Ihb2yQtuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=meHSHRFk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OKA7Lncz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ADMbFa21497489
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:30:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jGGfQ+tgLcU0SwBwQco9Wli6+1VrBRCLwj6tuxnqYmQ=; b=meHSHRFkwINJu9p2
	ci1j8tDXOJnxz328kucGEK7PVSr+WtvS3Ls1Y2H3KmMsWr7+W3zpw1QIz2N0OTdr
	+z7yxCX/wL+2k62V9hwW/bCAHDn+vKNWjKgxmYsAvWEhLEHGgxNl+vQcO6f2sciL
	Nh/DZWJtBIgU5BwhFEo9wil/v4Wiy6o4Dm6VqptQHBml6gGMtIItlShm7z8hlJQ3
	WWYdQfDEMKGRvqkMv2Fu0C3oEULwKVxT9qmeyueuYRWOwPDfU5ci+6uydHqoM+ej
	vCuBEpqBYyjJVW2wMPwv015i1ROtDlAzmgCDd46qgtEvHu3SE/x+JQ5cjc7fc6P1
	rpBc6A==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9hr3xk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:30:08 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7b89ee2c1a4so1538351b3a.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 15:30:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763076607; x=1763681407; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jGGfQ+tgLcU0SwBwQco9Wli6+1VrBRCLwj6tuxnqYmQ=;
        b=OKA7LnczQDc+Qf2mr904Rmv6MGpmwyOX5bp07pwPMsciRzF88stEJ62Y44fvTBrW9+
         4DoECwRW7RtU6WDc0eJRErAxwRtL+p2aqABj6Fi+ynmMLlFcHeVBjIlG0QW33aNUfrKa
         PJ03KPB5req/nlcf0kyFAIGPgRvCBf6brRbxWgWNdqiFUk1O308WhT5I+rGgXDJ3XUBV
         qk8hOq6GeFslRng7xqCn+nizqGYSdpJ1nIjJRJYSp1J8G+3m60VuN2FT8G9IHaTEhCki
         U1gqNgIFUxBJ+JWXhXhKsO3ISTlPpdsfvkbji5XMP3X34SYfXGjXw+ZQwmiEnxgWaagX
         MXwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763076607; x=1763681407;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jGGfQ+tgLcU0SwBwQco9Wli6+1VrBRCLwj6tuxnqYmQ=;
        b=acHzwfvAAPpFPKnwWZoDoEdJL/t5U60E8y1pwIHf96miZExK3mdbTbRrZXUsi9wAff
         Ic2hwiRCDPFE33TFbqNhbwpkeP0lKcrq9qRgp4LCyp4yx2k9SAxRzs/oYNPcUFGgyZEq
         14/3Dvk40SXj7PuePqhn+w1OVboAWWqXmctwd6iCOvQCdDVS4ElmHqLu5qbYzTDRh8vs
         3th9w7NN34dW0deW4qdLeAiW2k/7H2reOGUxLJUAmaOEl3IN15vgDjyTtoUcXWZohOUb
         VNV09763Zuj08FjQmIoJBXufO1tW4EGBWyzMVk4/Pz0hEGgzso2u28NCWDpzArx8L/bt
         xpzQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4HDo95KQSFdRuEev8nRUEY1KK/HFU8JCAGohchyOPH6SNHZF4UpqyouBwJ5P3mahiPRIgzqWotP2o@vger.kernel.org
X-Gm-Message-State: AOJu0YxWj2r1FzjoFiFN44XQ3x9ud64okvXnKFqftdiMT1rdCbBuNiNt
	kh3m/zGWmBKvzRu2ZmZQl2E4Z3vM/UJKeIqswwFkPulv1hLgNTMVH0oYFDMRgDtnfQF0o+eNpcj
	/XankShjE83/vtAccmXtuiYMxOaXTfRwCFbreCvFMV0kI+UkotE67xhxnZUzBtAOu
X-Gm-Gg: ASbGnctDSulmWCyt5/hqxUaEjHEoLat9HGWC8ISgz1pIrxY36B9WA6iNxPB7RTjSu8e
	oViRu1ics/9y3iD3r9TdGXYXLcpoEecHVh3fqb/v72nm5VuAztTcKf0d6rfOXI70E97WUo6aZ7z
	ckH+aMJfXi8XxmnLKb4QnYCdVc9AUw891Lk6kymCmVhAaTHSiJ9NqEG6Acq/cyeKbk/oSHReH1k
	b9HOrtzybSZZIdMwo3t2JLI0+J+4OvEjWSLb6BHPmmlL0+VQDMUSHC8QnmFPWm4Knhh/scxSPuY
	vGj7HDtQeJOxN0bSgftuC279ztAVDacsg4/gu0h3xRCLlS6nt2Jk5Do7TAiXoAHdJEd2isWggmz
	N/IigbSPlVENS5QgrFwn0SZI=
X-Received: by 2002:a05:6a20:7d9f:b0:351:d6ff:dd0a with SMTP id adf61e73a8af0-35ba259dd93mr1575453637.49.1763076606606;
        Thu, 13 Nov 2025 15:30:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGqb9xTf/1RdUkSb0wiuQ/LducqEzVd/Avvst0tIrciZXoTqPCwdrblFiddRcVRxAW8PRxnIw==
X-Received: by 2002:a05:6a20:7d9f:b0:351:d6ff:dd0a with SMTP id adf61e73a8af0-35ba259dd93mr1575387637.49.1763076606061;
        Thu, 13 Nov 2025 15:30:06 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bc36ed72cd1sm3049486a12.11.2025.11.13.15.29.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 15:30:05 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 04:59:00 +0530
Subject: [PATCH v3 03/20] drm/msm/a6xx: Skip dumping SCRATCH registers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-kaana-gpu-support-v3-3-92300c7ec8ff@oss.qualcomm.com>
References: <20251114-kaana-gpu-support-v3-0-92300c7ec8ff@oss.qualcomm.com>
In-Reply-To: <20251114-kaana-gpu-support-v3-0-92300c7ec8ff@oss.qualcomm.com>
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
        Rob Clark <rob.clark@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763076573; l=1280;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=dtSwkU/2MTVLwCFlRqqTYMozfSVMz5AGTKvrJ9IlCNw=;
 b=pSCBNHippoLHyPBaZa3ZDzn8ibiYCS5gdO400/t3T9Sn9xouKFOuo4y+vrWWiMmy+E3FJYp4X
 6WqXbKsGI6MDNSnLjrTIELBXTdLWZs4mQyMQrKTDeLZ2O1KboBgdl9V
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: RhRj8h-zfdTOdxjADso_PGxgoKI_p5sl
X-Proofpoint-ORIG-GUID: RhRj8h-zfdTOdxjADso_PGxgoKI_p5sl
X-Authority-Analysis: v=2.4 cv=N+Qk1m9B c=1 sm=1 tr=0 ts=69166a00 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=rH6QHmREy2P50qlKy74A:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDE4NSBTYWx0ZWRfX6eEgsvxUkqbx
 7kdGshbWjE98XHA2euaMP1CoUPKh1ypNKqfyq5DSRdYCE99jTJFRVhTMmv1FNHZzrGrhX9pgBQK
 CYOob2/rFnnumt2YRDrm/tacnq3fQYly2A/cN3lVhByizdAgMdyrCVX0b8THkH7qV7EQc+gt1YG
 GHte1i1nVsgCKJMY8wzrMdESiwAEHEf1x7SM96FTa+OAHaMSpkYzfJeTKG56Cct9hSQkyWSjRwK
 R6rMXrl8VDDkthjnQFfICogpd/OOA4z9+MiLMFReW/tY3PccoIc6P4vaVjDO7MLmU8+0Qqv09cM
 zGSeRr3uOHfQlxO2a7L8AcyhczQo9D12dB8XeCfmtvRZqstYgifM6ZmLU+gu8g4Add1CSsTOBP1
 NMiev4r/MwW68DMLICNHeJlBiz02qg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_06,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 bulkscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130185

Crashdec doesn't require SCRATCH registers anymore for a6xx and newer
architectures. So skip dumping them during recovery.

Suggested-by: Rob Clark <rob.clark@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index 6f7ed07670b1..0995aa1f7286 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -1546,7 +1546,7 @@ static void a6xx_recover(struct msm_gpu *gpu)
 	struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 	struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);
 	struct a6xx_gmu *gmu = &a6xx_gpu->gmu;
-	int i, active_submits;
+	int active_submits;
 
 	adreno_dump_info(gpu);
 
@@ -1554,10 +1554,6 @@ static void a6xx_recover(struct msm_gpu *gpu)
 		/* Sometimes crashstate capture is skipped, so SQE should be halted here again */
 		gpu_write(gpu, REG_A6XX_CP_SQE_CNTL, 3);
 
-		for (i = 0; i < 8; i++)
-			DRM_DEV_INFO(&gpu->pdev->dev, "CP_SCRATCH_REG%d: %u\n", i,
-				gpu_read(gpu, REG_A6XX_CP_SCRATCH_REG(i)));
-
 		if (hang_debug)
 			a6xx_dump(gpu);
 

-- 
2.51.0


