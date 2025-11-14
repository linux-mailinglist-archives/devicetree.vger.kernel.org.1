Return-Path: <devicetree+bounces-238727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7D6C5DA3A
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:41:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E83E74E3885
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:29:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91F16329387;
	Fri, 14 Nov 2025 14:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kxOhnBg3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="joR6SdeP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1873328B50
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763130410; cv=none; b=bnbysnfaeCQLlG3/PGqEigglO5pWgGP0WjaZzc91sZ2aYvZmOci2s2fXuqjPivvzGeOKN5Ohyt2R9od0i24IjNsC4RimrK7f7vyWyekiEyYmg0NpvQ50ZcSEJ5kRZXjeX97thzgcgIMIyO3BIVKtn6trkB0EvRSVyBe0IdLUVBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763130410; c=relaxed/simple;
	bh=XsC1RHMqo+5fbpwRlVHrhXzX4C7rl7hLD88dSZjaBoY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oztjhsSTjT56UNnuEQIOyhBi6sUOwuoVKtrO93cvjUMxgZj10+O7L+oasZEnf4GkGqAXFJ7YTuTsrEpU4sky+wLaqsXB/9SmLtjh28/oRx+c2wXzB67GzuWoUhG//WBDrU50jZPIkq4TAA8KcltJIte227ULBJv1OD1rOgMZ7JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kxOhnBg3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=joR6SdeP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE81X3n1581530
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:26:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kVORcd5BmpvweB/Iw+GyMgCzu0ji3UnuYmatjp2GayQ=; b=kxOhnBg3XvmjeOzE
	B3mQ2nJExBuvH/Y1wuO9u5ude7VfF2xLSaJ9whpA6bv7gEj7rk5fy9tgvj+f75P8
	eyXZWQVYCkUF/0hIS6mz00UhIss8JQs8vB1FwQ3d6wQtZupaKaoj2YIXRlcofmGg
	fXm5lmR889etm2n1YxjnynBgJiIIKalU1+1DHaDNmfG2nSlLiyy9z04LlqQfXXz4
	rpUCatgUdcBsET0IMdquPxZc7jRQjOlwtUKn6LQQioXlujibC5+YZ9ZPgKvbcPaU
	NFHaqWFSAbDaiPuUANHlJDruvGyumFQaVp0ZTSa9vdVrzf9A+sx9tz2WjgSWx8GG
	xgfJ0Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9ftey6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:26:47 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edb84fc9bbso101508361cf.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:26:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763130407; x=1763735207; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kVORcd5BmpvweB/Iw+GyMgCzu0ji3UnuYmatjp2GayQ=;
        b=joR6SdePTUxiPab45et7TlcFRbquwO4SMf2GqT+xDmcl7u8Rs3ZxU0boiups+qcs7h
         2kBBY5NW3tCA4u+1T9ak/ZLcmpi0aBC0wJqzB0BJU2z3XN/2QHVmLbBho2RMslTLGBIa
         frM6smtw1oJhAWuo135nbF00dTq0Rn/UlgrtMhCyK9PL4tZh+6NA2Th7qNtgxspJ45cy
         hx+mzLUl/y60AZ/9Pn+4vyeN7PMWxM61dzGM5biBYJo5pCCdCIG4lpOXsyrCZKueh9qZ
         ma56WUJ6515wCr/KJ9yS1FG1id2XG3JO4+gRoNLPHjd7BQCtdKA4LIx4pTs88OLfFZbD
         bovw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763130407; x=1763735207;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kVORcd5BmpvweB/Iw+GyMgCzu0ji3UnuYmatjp2GayQ=;
        b=m9jh8E2+B1Fjf698K0HaPFPcgxVJxKRMt9JhOgN1Mqxz+72ELpy8ANQyw/yRbaB79D
         f6Z6iNE3hW6sMc3HPgolVxtW0AVb/cW+BNbdusS72wk6WmJWV1uUuWoNn+X6GxSm/+7f
         wx1dtu9UTGP0y8L4wm21Vho2jfD1PW7Z1x902d58mxRfxT5v1c5XGsoZy+9PLlChuw4F
         M7ZVjSGF2ETUOMudQM+FIB31PgO1JtNiqr2xbwO4Cln0gDK3Zee246TRAHP0rDa4E6Ob
         Iv3EB9khgliOrv+BaJEobD8TAbhiDzNDUGDqIoBQuoZmhGb7iiEhkmMzV9NAz8LFk4Wm
         ljgg==
X-Forwarded-Encrypted: i=1; AJvYcCU7yD2oCuFslfz6+cMHtdpXypB+gdhYRO3JdcjSwP+eB43dTzIAhgkbajoCx6yB/2l2iVCVr04rx8Wj@vger.kernel.org
X-Gm-Message-State: AOJu0YyUd/tzbtYX89Qe2iL5OE22feosxcMZzPu3TTVx2ipF9phhqKSg
	IMX8ni5sQjogl9C7KaQi5tCS1A9f68JqV/1I/+ONubjcJhFsigOKxSpMKpcjfvKzLju4qZxByzM
	kF+SNyLQVHE1PEX7D66d4Sk4Phi+wcP4pnDreb31Vp4mLf+mQfF0cdnpsJDsDR9lr
X-Gm-Gg: ASbGnctJ+nNOnmPmylYj6scJiSTyJzJlCA3+ro4Bmk6QpgjNOkeCYmjukzZHyHmNtdH
	NfeNSARoyXfmGeWHsZ5DkF67+Oe187LAwwa0llxzHT5mIaF7ies74h8/rInH1MWqfRqoxWTXkPP
	x5u0wH+E2FM+rop5abq/ZLraGcD+p5Fyv2GsYl9Ks6B+X+yoUQ2RAXoUNDQmNwc9YEnaWYUcK9m
	8fNBfIwcnqtMXrS4AYsGxzVk5ouLddcqSJnOEQbzPh2qjdiPS0PdqSmFVpMcmv1ks0Zw0ynRQIK
	LMGRYnnE4XZQ9wLNXQs+5LZzSH0KSQ3zYLUZqx1BXSOU67sABM1WN1Qz9DNts0BMvwRdRec+clH
	Z3X18QsevSLN7/DJX0Dfru19r8+sf89mHUILGNBgDfv9uBJjnmTBCT6lrc0GijyrMvy5WhDazM/
	Zin71ObaTUU0Av
X-Received: by 2002:ac8:7f84:0:b0:4e8:916f:9716 with SMTP id d75a77b69052e-4ede70ace82mr110839691cf.36.1763130406933;
        Fri, 14 Nov 2025 06:26:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGmQo+aCQCjvCk5e76s4w1boHfDoEoeJkhdDuyaoO1EvXqxjOf/iL1LbyOWdf2SGW30aTGtBw==
X-Received: by 2002:ac8:7f84:0:b0:4e8:916f:9716 with SMTP id d75a77b69052e-4ede70ace82mr110838941cf.36.1763130406353;
        Fri, 14 Nov 2025 06:26:46 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37b9cee0cabsm10318821fa.40.2025.11.14.06.26.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 06:26:45 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, li.liu@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v7 0/4] Add DisplayPort support to QCS615 devicetree
Date: Fri, 14 Nov 2025 16:26:36 +0200
Message-ID: <176312947282.1737000.8802274913506269356.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251104-add-displayport-support-to-qcs615-devicetree-v7-0-e51669170a6f@oss.qualcomm.com>
References: <20251104-add-displayport-support-to-qcs615-devicetree-v7-0-e51669170a6f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=SdD6t/Ru c=1 sm=1 tr=0 ts=69173c27 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=e5mUnYsNAAAA:8 a=CQcgnb-tr3BYDHGJJJgA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-GUID: slYdorY-kUYzgI4OBiiU7i-6epZVTRiq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDExNiBTYWx0ZWRfX3ceY3XReO8GN
 y8UHftu900r0/4PIvhDxwoPP/C6UZIFhrGfeOi9NbanP9oaYegXWzouGwdoja+RvVfODRQyIAeE
 BSzVjLUDbD+7bP7bxiDU7eZBswWqP8PZD0HTYrxoF33u2XvX9Hvgo7dS3q9pgGhOZaXQgcCNcuC
 69lBO0vAC/vUNoDWNFjdL4I9Rh9de/lzYektls5WNkMMwuoqcdPCE4PuZMmOh7Nnj3VNd6KCbge
 tIYXhZ1uysOzMQZyi2T9OzGREMssy76dw9mgdPct2uoLFAZ8P6kniI9WLqRj+HtKEYHQ3tsjrmq
 Os12nm7VBBOAUu1G//d/oRW/MxDYFabrehk3VVEqXX+Z7LFo/kXEzYkthIlQC6GOvQ6IS/fxDxu
 LYau3xXLLDZQbJ/GQbdpUmUeFnoTYA==
X-Proofpoint-ORIG-GUID: slYdorY-kUYzgI4OBiiU7i-6epZVTRiq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 impostorscore=0 phishscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140116

On Tue, 04 Nov 2025 09:33:22 +0800, Xiangxu Yin wrote:
> This series enables DisplayPort functionality on QCS615 platforms.
> It introduces the required bindings, updates SM6150 dtsi for DP controller
> and QMP USB3-DP PHY, and enables DP on the QCS615 Ride board with
> connector and link configuration.
> 
> Depends-on:
> https://lore.kernel.org/all/20250916-add-dp-controller-support-for-sm6150-v3-1-dd60ebbd101e@oss.qualcomm.com/
> https://lore.kernel.org/all/20250926-add-displayport-support-for-qcs615-platform-v7-1-dc5edaac6c2b@oss.qualcomm.com/
> 
> [...]

Applied to msm-next, thanks!

[1/4] dt-bindings: display: msm: sm6150-mdss: Add DisplayPort controller
      https://gitlab.freedesktop.org/lumag/msm/-/commit/a2e6c262a5d3
[2/4] dt-bindings: display: msm: sm6150-mdss: Fix example indentation and OPP values
      https://gitlab.freedesktop.org/lumag/msm/-/commit/5fb24290cb5b

Best regards,
-- 
With best wishes
Dmitry



