Return-Path: <devicetree+bounces-238726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1C5C5DA2B
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:41:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D296B4E181D
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:28:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4661532936E;
	Fri, 14 Nov 2025 14:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OqL1QxTF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LXij7XuJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1EC326944
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763130410; cv=none; b=NTl0xPIq3bKITBbUGv6ZWkFNtoSpD3tKomipi2MxqwRxTqvVG3CJGWfLHDrG0o48T+/007Cpz8Nl6PSXD4oj2mpnMjWgfh2Z+qT+omIdOeHFHeBVNoPdulV+X9+BYkkQoeCG6fC4zCMVNY9ZdSUoArsYImTIq5UQdQV6R7hBvko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763130410; c=relaxed/simple;
	bh=4eKzME9PSmfG+xV6VrDrJr6jBckK4YxG4A88q7xkXyI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MrR6m/784rlgoRoQCK/SQsnBIilUPgJslvudI9cXdyGU3dmon7ypDdX0sXChBnOpVjT8/qrlfiztQ9NePkfzoECZk2i9/+7RA/Oe39NMXgVUU2yGNh4PSg0/p3kO5hWpGEj2PXgTixNo4W6WqruzU0T0D2BkcpCZOQ78l+MBRNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OqL1QxTF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LXij7XuJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8JjmY1614442
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:26:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QUtZTR/LX8xkNad3zOXNntb+ZjNzmULI6QNHH4u1910=; b=OqL1QxTFd7Rl8e/v
	ayPe7X835uwAcXp2YY1fUtP6/80nOY/RlY5caWAgKFOAjhtAMtT3UWJaPiNmiDE3
	ND8AdAvjes3opZknWLkwM/U1BmZ1lMOfp57q7osKudbRYg4vgF9FjzS1jM/tWiK+
	wYqC3vMZcTzfT819kODmY2WjR4tSz87R5KIiFZm5xHTFifkGAmdbn5OSjm3NyUJ8
	ejz4AcbdQlcEVxlre/zDX3u/3OFjnrMO9OuLzhnUTCJpdCa83nSxs1XlZVx8qUB3
	yCugXlzowM6Uvvu0tKYAxgDVL/MwX7+R2jJ3fuD7XLrQ3sZQApmsxdi76hXQ+JKp
	AamNvA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9h2dxj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:26:47 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e8916e8d4aso81432881cf.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:26:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763130407; x=1763735207; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QUtZTR/LX8xkNad3zOXNntb+ZjNzmULI6QNHH4u1910=;
        b=LXij7XuJP86g7ljH2txIKLZ6iv46MY4zXClrUGp0BHUfOMxoqg2FMq+DKD40vdbBn5
         WKKBpUbbd0o42y8J3TjbtwLo/4hR0or6zuHB1dX+2utcQBipk1ZAp5oCxWVKQJhHCwHt
         GUw4Pd5Ji4I40mB2cb32qTbP58zYFol+xgWxk4AYdr0Eku9A8BiPMF4yEivBBfACGDXR
         VlDtxE12R9lXlJbuDVqOf5YVT/Q/SxusN7RzmMEW+2tYL6UP+JNIgCn89c2vOwuQcony
         CekqSFY35lmXUUxw7rTFGf7wY97pU34vFTxu8LQ4oIqD4WdPxyPZcaNyP41wohQQ9hnY
         QuVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763130407; x=1763735207;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QUtZTR/LX8xkNad3zOXNntb+ZjNzmULI6QNHH4u1910=;
        b=gQmFaLtF5lbeb2Fz9S86Z8W+p6zfFwOfAILkHZnb8gHoEZOMiJX1TITgdsqxjbY3s7
         bGXt6FANbyfMb9CoOrFfex2IGXbO+s2RQxdm5GPdgqhqlHQprMPcjucGvkQCmZjSZW0W
         3AJ4ak1ong5T5HlT5QvKbpnlJD82kG+VU+IQdRKAJ4+Fr8TFL2LiVS8igfDheQWTwIAJ
         jUn6VCPxpN/SkUJ8wgRHjqHQY3pRAQY4+r9OYXTr8lbwbdQEaRyqSv5qz9r2XTINbJie
         2HKeMB90pRNnytjEZ46XwCKO80rPvVS9gYH+rEhvdTqFrvfRmdHGGCLCH1R3Of2xO0Nh
         fwCg==
X-Forwarded-Encrypted: i=1; AJvYcCVGuGz4iQz0sbZ1qDafEkHjZYlL/yDEmr7wDVD3SKuLxAPtabb4BpUh/rO0JyTPACWF2VaYODz0GafB@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3dsoQ3SdMkKX8n5kmMTWbZxZ2+ZfeHdAG7O9KBQTJHKDh8gwx
	Wzq+kmSNH7dCi0jjYNPG3yA4FTE85VndEc95+OnKxCUHCumIyeoUTm1Clgoi7LVfxpFGX6ZcFxK
	vuYJWuXxg70fQzYSKUKjqi3sv64MiSCS0K5NL1ON1tOr3uviFQfc5wDfDd50cR5Rj
X-Gm-Gg: ASbGncuNnfYdNBOJTYO2eSLlaqtjr+xLnLbCvVHZKpXltfhKZI2wNnTFmGf+jIvEJeR
	sMtWzqbDHh14mKgaWwO35qoVSbN7a3ExTmDO4kMzzrOv0KZgWztfvYYLiXHHzp740lmfrS3tKLS
	NDMLovTUJyo5caEuznaOVsBqZMEm6V67qLJG9Mo0DZxq52nTVkacn5R2v3d9/hHvh+bbWDWzcAO
	BG6DacPqeEAhzcRC62vtpgzeFzTIaJni37LVSAbRfnGRRSgAX3TjMH13Cedb2ovEKjUjV9itNbT
	iUumN84HkHrGNJUHvQbgyLqibnSNjP8S4bTklQc0DGC/KhDtA26a+q4GuegkEo6Rn16dxOXD0HN
	1iQMFj4EciCQmZsiGvtNapFGGNpOeyos4OhDZjPuGXMN5oSytNDFW03CsQseWrZD58H0pbSvCh1
	9tw97hd4KepvYk
X-Received: by 2002:a05:622a:58c:b0:4e8:a332:ba93 with SMTP id d75a77b69052e-4edf2142ac7mr47937151cf.76.1763130406250;
        Fri, 14 Nov 2025 06:26:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE7ZNsO/1TvO1h0/niYYuelt3zWYP6cQK//e3LNf7oVm47FCgH3fT1GElj2eHRDmKTUxYXD0w==
X-Received: by 2002:a05:622a:58c:b0:4e8:a332:ba93 with SMTP id d75a77b69052e-4edf2142ac7mr47936021cf.76.1763130404998;
        Fri, 14 Nov 2025 06:26:44 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37b9cee0cabsm10318821fa.40.2025.11.14.06.26.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 06:26:44 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v7 00/14] Add DisplayPort support for QCS615 platform
Date: Fri, 14 Nov 2025 16:26:35 +0200
Message-ID: <176312947282.1737000.4785941412056554129.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
References: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: Dfn-nXBJn5vvOG-eiO6CHS79QEC__UMv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDExNiBTYWx0ZWRfX8VovhGzBCKp+
 C51ZPbPezqf+6uLDob926ndn9byLJv1OHHYXdqFqWfQojOM0UUZjluzMpry/5yNYNeL7SJuoJsA
 bl/TEPBiH3FGCaM3097Greo5G/pqHy+utZI2aDHGe9+fSx+dcyyUt3vrLKo1eEVWghJYa+xy1iN
 79c7PMJEVdlXTyjgh4ubqfTsUR+LVOg2WzaXQ9uZzpdc/HmcrJAEem13ivgYzt08ICZQrObq+yG
 2zKwPX0cFGCMeu18lrSI+Y9WQ30vLIHsM5H9uDkVdo4IHkqBcy4ojHiK/ni2DhhsirI7PvnH/Bo
 MfvkieoYJV1LaGuMkOfTK46kIzWxbMC0F7A0KoggcgjsrB1vaLRLUvVJUkhc/WN/TCf6g2wEQHK
 E7yshcePP4Yw9mwEuh+F5ZN+iLGx6Q==
X-Proofpoint-GUID: Dfn-nXBJn5vvOG-eiO6CHS79QEC__UMv
X-Authority-Analysis: v=2.4 cv=V+1wEOni c=1 sm=1 tr=0 ts=69173c27 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=e5mUnYsNAAAA:8 a=BS4b-AKSgWLh6_M-HIAA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140116

On Fri, 26 Sep 2025 15:25:36 +0800, Xiangxu Yin wrote:
> This series aims to extend the USB-C PHY to support DP mode and enable
> DisplayPort on the Qualcomm QCS615 platform.
> 
> The devicetree modification for DisplayPort on QCS615 will be provided
> in a future patch.
> 
> 
> [...]

Applied to msm-next, thanks!

[13/14] drm/msm/dp: move link-specific parsing from dp_panel to dp_link
        https://gitlab.freedesktop.org/lumag/msm/-/commit/866aad5cfb55
[14/14] drm/msm/dp: Add support for lane mapping configuration
        https://gitlab.freedesktop.org/lumag/msm/-/commit/36d978701203

Best regards,
-- 
With best wishes
Dmitry



