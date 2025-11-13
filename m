Return-Path: <devicetree+bounces-238377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7891CC5A994
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:32:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4B2A04E4EAD
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:30:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8D2A329E61;
	Thu, 13 Nov 2025 23:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UQE1C7LP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ixrLB0rn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33216328B68
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763076602; cv=none; b=TU18FHvRSmW4nOI6SowRAq/ClqcTKTxxhJGbzPwWlST9XfCqJCbOFvmXwj2q3FbO++dMX1HK+GYwMk/TdauaD6GqO1gyoV+H3YhP17yMCVRGy4d/dYIlYF7S18/0uUIzWXLKm4dnVQQIZ/FxfEYByOcyLVBdhPNRzb53YuREAEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763076602; c=relaxed/simple;
	bh=B0t21POhzhnkPllkO0aJhsfTVayUVxYvYda/rajz62U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OK/DFdx/mgiz4AM9FoG8HD1VPJbxt/EB2YUo5rWGETCjsCJvM8ih29p6HhgKtZri4ppyv/+H4wA+lbKii/7s0oGoIXp+ty35OsijYGAziRqdDk6nOE4pl1U/I8QPsZWXFmY8lfA2iM5fRwfFJXQZmgDVVOOIH0M6TikEkc1z58E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UQE1C7LP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ixrLB0rn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ADMb3lq1692449
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:30:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	U76nAoGUFZhSMgN3LNNB9B5figDIPjE3gLJdeoHmGms=; b=UQE1C7LPJm9301dA
	s/+45xtya6dKHJw4ywyVCmAOJCFCYGSoQ/Tw+B1jQvDUtVdlltohTbrtBobkF25z
	GglE27Z7HJl6jHg2K0tw3THfyt8p8k2uzgtwWCmAZGw5SHhNnY8J91QQTkTTGOBW
	uBPuulh//YChgSmCTokka+eZhRZRQJNTTw08Njw30JbZUc1Y1b9exRrPE0PcQKWd
	BB0CtBOI0BQJyCd4Jnc+OvWkK8UrxSE9W7I/DtJpgbuHvDd2zZFKk+HnaYo8E+0a
	O8LeWLrwYi3t4/S/34PGPxlGx5jGPtgG5c4vbPl6RjBwBCKQ7sYQE9hIK0saT4+D
	ZSUG7g==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9g045q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:30:00 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7ae1d154993so2753311b3a.0
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 15:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763076599; x=1763681399; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U76nAoGUFZhSMgN3LNNB9B5figDIPjE3gLJdeoHmGms=;
        b=ixrLB0rnNSECN6qJaNwYddkEbcvKBXIypnZ7aGL21TP1P+W7Rw6qf+2Xg661q5U9IM
         hwQ29Lgr29P1VPP/Zg+ZwhfxczxxibG9FldVK62rlgKG+Uj+yo/i8vzHf82nwCruBntX
         e001svRTwJmvLmGs+HkqooDt3QfxcCVSs0I8HF8fkpg0vAcGP9j5D9Z40tOSDC87iYLR
         txOJdXQhTvbjL3zBomxdaVdC6n/kfc3WBntv6HOuJpejb7fLDRzj3XsYGOvFAfQm8IeJ
         c105o2l/gYVIvlSco6rIx5pcD42C0m6fv0pTuMhLDQZOWNph7LhfHdb49aTrL8GsWCU8
         oltQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763076599; x=1763681399;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=U76nAoGUFZhSMgN3LNNB9B5figDIPjE3gLJdeoHmGms=;
        b=sbxsUFYuu7Oq7t/Ar7RuR+JZdTrpCLhu9BqVN06Eda3n0evtjHPWpSoiRUVfVM2Bhy
         gg0eAdOXRJj4j4AhFVGbeqLuE+o3JnRveosF9gmFc6/3ecMZtmwUlRA3BRZXbwUBS/8n
         +AAtaOkl5QInHYIsVOtBk6xoq3VUiYTDHhhxAjlmpCDdPF13Ft7nsnxN4on+tbSQvTfH
         i7/Zx7wlrKSBkheGlEshygFCroCC47dq03l8tzApsnbRFMRU/oraWNYTUv2DKnXmif31
         TijqEIHzpuHOZAFkeWqxZEFdzO03kHw1icKfXDa7EFBIqwoo8i/8IhLG4AMeEB+wQXN/
         Bbwg==
X-Forwarded-Encrypted: i=1; AJvYcCXH1UhMIGso7DkeEv39soWDDPX/7Z6Du82K/iKevS9pWQ/YhbD5WR+ySTzJo4VFF6RQ/D+jpZNwhXya@vger.kernel.org
X-Gm-Message-State: AOJu0YyR+JRuyd5Vodm/UMkMcjur+fJvWVkEggOoq9f7OAEqOBbclZUe
	P5P6uuYE5bCSdEOlLjrN3E7l3/6SSE0KRqhjAMs472jBP+YgooVIkB/qyeRX2aIrwHpnCj+sg0L
	QHvQ/UQvEwBYNeWaHNZo+K6PSINEtdhiES3eqwV5URHpoxOitY04qm8vgd6q01QdK
X-Gm-Gg: ASbGncvMJhHAUBTDs1cm28r6WwVhoLU3OFI3lxiPqRoflPy/0yBqM6mxfA1teqkRd5K
	yeXuMAq8vXxTbFaff0p7SqIpoKI97orJjdcsm8iA1z6FDbV2XXJA92s9J3A11zRNn6S9XqYDU15
	8xEkwSiJrKs0xwb0wJWds54nAF+axE2AEl5raSQ7uth8+/5GOqwizjKGXvtcflEsyFoVGD6Ac3N
	/EA4ppAUDexsjSkW6c1vP8Vcorq7RHjSeTh7tcKsd+t+1CEMOLzQx3tLEa1xLUyhnzKevr9XglD
	VpeBLSVhsKNEbB+6lRO53Y0pmidXu88QtUA35KAxrfYQa5pZ7/AG+M1UMU0JERJAtDU+Frg5cR+
	HAUiZQUFFsvLCJAfcIYfpyTc=
X-Received: by 2002:a05:6a20:394a:b0:347:1a7c:dea7 with SMTP id adf61e73a8af0-35a52789993mr6748097637.31.1763076599073;
        Thu, 13 Nov 2025 15:29:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHe59CpeNjRSyNw92JEuQdzL8WkgOpZ7xPVnMY1vuZEtJlI/TUBl0nb1yLfJqJlaxIYROr9Fw==
X-Received: by 2002:a05:6a20:394a:b0:347:1a7c:dea7 with SMTP id adf61e73a8af0-35a52789993mr6748048637.31.1763076598546;
        Thu, 13 Nov 2025 15:29:58 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bc36ed72cd1sm3049486a12.11.2025.11.13.15.29.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 15:29:57 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 04:58:59 +0530
Subject: [PATCH v3 02/20] drm/msm/a6xx: Fix the gemnoc workaround
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-kaana-gpu-support-v3-2-92300c7ec8ff@oss.qualcomm.com>
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
        devicetree@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763076573; l=1529;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=B0t21POhzhnkPllkO0aJhsfTVayUVxYvYda/rajz62U=;
 b=/XPn6y9/sGaZJkUAy9FCP9e1/me5R2Ws/cxZiiYLXvbvNvzGaU1VsNsVvvUc5TDgOddrJMTKG
 G4t91gdKb/CCVOPapjdmn8NaruZHcRKYOt5SqLB3n0oACbqmHWKpKKW
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: Prj-V8JWXoke6ZDnzl9tpVzkw2FirW1F
X-Proofpoint-ORIG-GUID: Prj-V8JWXoke6ZDnzl9tpVzkw2FirW1F
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDE4NSBTYWx0ZWRfX1MRRA58mKjJq
 7qu+osaPffprqXvH0dcW/5zBF/HDSJ4+VYeZHRw1YRlkJdpOFjR0K4gHscOL8VSs1Xsr7XEhkUn
 0KjFnqHqON7swQa6KyiF88BDOq1LhIpv4CXynItwHAg4JI3lX/rTr3fnvBQu4jxLonY1wAFqNBj
 nUfePwrSg5jGpkLOzmHSc149w8BCRIo00GkvT0qXL0c5m0t5PUVYiHBQAQNV24MBmyuac838qIq
 hdgZAiMil5QJ0vahc62aLNNhY+2BRhtOcVVfDP9sIPH9+GkczZIzQ6Cmp8F6usPQ4bpQ5rFOdj8
 vcBJLMwWynKCOgpHxBHzvfa4PdBEaImJkkHGv2fMIBVcv9uMYc1LPkZOoFcGf4gYNTJHeRiQBbj
 +6V1nKKGNKsRXv1lfm8ODjZ7MiEfGw==
X-Authority-Analysis: v=2.4 cv=IM8PywvG c=1 sm=1 tr=0 ts=691669f8 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gggc3m2WwWe7Cuz57AEA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_06,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 suspectscore=0 lowpriorityscore=0
 adultscore=0 impostorscore=0 phishscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130185

Correct the register offset and enable this workaround for all A7x
and newer GPUs to match the recommendation. Also, downstream does this
w/a after moving the fence to allow mode. So do the same.

Fixes: dbfbb376b50c ("drm/msm/a6xx: Add A621 support")
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
index 4e6dc16e4a4c..605bb55de8d5 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
@@ -485,8 +485,9 @@ static void a6xx_gemnoc_workaround(struct a6xx_gmu *gmu)
 	 * in the power down sequence not being fully executed. That in turn can
 	 * prevent CX_GDSC from collapsing. Assert Qactive to avoid this.
 	 */
-	if (adreno_is_a621(adreno_gpu) || adreno_is_7c3(adreno_gpu))
-		gmu_write(gmu, REG_A6XX_GMU_AO_AHB_FENCE_CTRL, BIT(0));
+	if (adreno_is_a7xx(adreno_gpu) || (adreno_is_a621(adreno_gpu) ||
+				adreno_is_7c3(adreno_gpu)))
+		gmu_write(gmu, REG_A6XX_GPU_GMU_CX_GMU_CX_FALNEXT_INTF, BIT(0));
 }
 
 /* Let the GMU know that we are about to go into slumber */
@@ -522,10 +523,9 @@ static int a6xx_gmu_notify_slumber(struct a6xx_gmu *gmu)
 	}
 
 out:
-	a6xx_gemnoc_workaround(gmu);
-
 	/* Put fence into allow mode */
 	gmu_write(gmu, REG_A6XX_GMU_AO_AHB_FENCE_CTRL, 0);
+	a6xx_gemnoc_workaround(gmu);
 	return ret;
 }
 

-- 
2.51.0


