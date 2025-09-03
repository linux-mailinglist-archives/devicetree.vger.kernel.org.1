Return-Path: <devicetree+bounces-212265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8653CB42335
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 16:11:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38D3F3A6C05
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 14:11:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C49B630E829;
	Wed,  3 Sep 2025 14:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UI7NxD6+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A1C2F4A14
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 14:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756908700; cv=none; b=ZbB1ska3+ONjM6/83m8NdJ+DOCm9lVv4xZ9tB/KJ5okOaMnm5GaI+LzslD8KJHB5n+xOuLA3q8G1kmGmazL46ifezHolELVS85Xmo47Brpc6BQrgc5c1UBzj3X2AEl/dV0YHKqmD2lYb4bA8jJHeOCOeAjWfmqI0RP8bX8bqquk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756908700; c=relaxed/simple;
	bh=54Lc1RXv/PBEmC75zaShg0TPfNoapxkuBuXgBpJtgrw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZNmDzZKa4J6su4oGYD0tURnp0z3n0Klf5apYRQj/UOmO13PXAuuAS+wEFzsgPQhEV9lFOUZJMOdXyCW0i2C+cIdY8huz9oUOeyiSP4329JdFYyX9hXZcnPLB9zz7OxDzJTP3u6+vIcEFEKSXCkzUDXyVEX2enpJTXf+YzcUToSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UI7NxD6+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583DxATx001034
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 14:11:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VKt6Z8VLaY/h+/FgT4fSGVZAXoNNB+wOFS858h7LM8s=; b=UI7NxD6+b5dQPj4z
	tfnnrWIbZm9enboL1VOsEm5GbZh5HSotJIpQAduMFTQKRabvNErA5E6BhLoPb3wr
	kurthkE+W53N5/J1hs+IkryVrboDEe6OOKgb9ivrIrFN2653a45kItfax6kKCwwZ
	nMRulRK/Uv2rmIYBJmOuH6S5IgzR6kHlHNPmsMks+Wu6CKA48mz0uK2YKehp7CDi
	1BBlygpBw8AH2+pL23x5fWfJxn3B6yRqwnPVLCuTYdRlcZe5LvKCChiXKphS5FHO
	Lyp2PhQy+ycNsRMHvYeZj+dOuMrT12sS4F9AI/yWsYiaHZBsiX3c60RBibIUaEay
	VXc0rQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ush33u5c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 14:11:38 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-24ab0409d3eso66896055ad.2
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 07:11:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756908698; x=1757513498;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VKt6Z8VLaY/h+/FgT4fSGVZAXoNNB+wOFS858h7LM8s=;
        b=EBKtvwrAj2O9k4hw/YahXTgcEGmZDTYKfONw21xryb7wMixJieriBwh1LckqYivO/b
         rAE74gCWlvTF6GLYjpO9exc2JsaqlBR6k1Zo8kYZJUnEDRTgN6P8owvy59WSYSlq2FBG
         W8XC3vh7PB4L+DTe/kmUiNnD/oV81eWpGt6fYMVXHIC0eI9dMscDIQ4mmK6/Nd3BzrPr
         VCXRdKOctGpq4YBz0+zi23W7IBL74Mpo1pFjbpYFwLcx99LPhoVtsgB2zgYCCM/BFora
         0ovuNzzrmtKU9uhE5iNkQac0wSOpz0UvJnwLON6xcaeEXfeB9ArNlE329/Mjs/kXMXk2
         qLZA==
X-Forwarded-Encrypted: i=1; AJvYcCUzDCvTBb5uTInrsMz6ribvrmH5UPjNeuVfcKycElYCbJ8yCmgQ35i/Hhqgdd7EbkcodrW3a2MDAc3f@vger.kernel.org
X-Gm-Message-State: AOJu0YzUq22U99tlXH5U9dvEcg2EufZcAPSv5D5QFcUWkJg9NGqDwzCr
	CQwourDu5Ezhb9yTsy213gdNgqVWMncJ9zQX/trwnUsZCH5SwV1A/7tSA7vqh85sZ5c+FhgWJF2
	D1ucIat/UvoprYTiwT2ANsch233vMi3+9W5j3T1yed0mKOt9jMYjF0qXaUckTlLd1
X-Gm-Gg: ASbGncun5DZhxweIcmPOskhzW6CI9pt//p2EM6zXFJqBZTSDuU3HtyRXfC0ffDUtvTj
	Mqx7iMcT77sxSlfoz1ZJlHWwr0YVqkTNu8hDHjMEAZf9AMXRgv9N+0EDsRHr2WpfrOX7P0YvNgk
	9SjSz/9zX/kTaPDx4IZHhG2aI+E6Li2nMDUqQdGx6pqoOlyIH+4NcP82G3D5NRo4Tz5WhIV6kPw
	PUEpZB9Gq/SJzFg6R5U2azcIX4OCYKrmFCo1JzSS8aAo3w/LMqzp9FiYoCPSG/sZ5OrRUeZkE9E
	fx9pvM3Wl/VfbebVNZDd54I+GzXgH4s/AwEOt3ifRMmBws2NuRWHXwHWnXhdrdU+uco0
X-Received: by 2002:a17:902:ecc6:b0:248:b25d:ff2d with SMTP id d9443c01a7336-24944aed41cmr168244255ad.51.1756908697657;
        Wed, 03 Sep 2025 07:11:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGrZ0WnATdGYKq8rRd8dEeFNrnZJqF1v6pwJmwYvviuTiAB83wW4C624CECHuieCtwMHoA9Gg==
X-Received: by 2002:a17:902:ecc6:b0:248:b25d:ff2d with SMTP id d9443c01a7336-24944aed41cmr168243725ad.51.1756908697060;
        Wed, 03 Sep 2025 07:11:37 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24903705ba8sm165003015ad.6.2025.09.03.07.11.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 07:11:36 -0700 (PDT)
Date: Wed, 3 Sep 2025 19:41:30 +0530
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, Monish Chunara <quic_mchunara@quicinc.com>
Subject: Re: [PATCH v2 04/13] arm64: dts: qcom: lemans-evk: Add nvmem-layout
 for EEPROM
Message-ID: <aLhMkp+QRIKlgYMx@hu-wasimn-hyd.qualcomm.com>
References: <20250903-lemans-evk-bu-v2-0-bfa381bf8ba2@oss.qualcomm.com>
 <20250903-lemans-evk-bu-v2-4-bfa381bf8ba2@oss.qualcomm.com>
 <39c258b4-cd1f-4fc7-a871-7d2298389bf8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <39c258b4-cd1f-4fc7-a871-7d2298389bf8@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMiBTYWx0ZWRfX8xyIz8ibln7M
 j6k3kvzleRyA9RMhtMO52//QagrNmOzk+hpa7x77NiXiXAODI8l74d6YHIEb5w1K3VpQ5crEXmo
 rMdJVE+GaE8E/ncAzAFxcp1yUUrysSSU3eHMxZwlHtJ7uT+q2B+upCJq+iABralKoh9VPq+uLCF
 65bA0GIe/Yf3RU5aV5RFjuXmYBr7gA3xQX54ZvgYREU0NigQwZSn+KQtkdZXaH9LWKONoO/A4lN
 l4ZJsMB0m+mHlaJbJYpU0mDwr4VjNZu4D3ibd1LDYlINA14Lza87lEvOHRjLd8S4gSnAy26BiBF
 t3Qar/mqDiMXB/78tpVhX0fLun6qqaLIjdQMXHKkEhROrMmfS0w7a3pm6Byj1o7eudWBWspndw3
 qSelxcW9
X-Proofpoint-ORIG-GUID: u1XUzc9_tUtsY3zx2HGq1_i1E-Q1SLLb
X-Proofpoint-GUID: u1XUzc9_tUtsY3zx2HGq1_i1E-Q1SLLb
X-Authority-Analysis: v=2.4 cv=M9NNKzws c=1 sm=1 tr=0 ts=68b84c9a cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=TzToQ3Czpl6He3JBl-AA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300032

On Wed, Sep 03, 2025 at 02:29:11PM +0200, Konrad Dybcio wrote:
> On 9/3/25 1:47 PM, Wasim Nazir wrote:
> > From: Monish Chunara <quic_mchunara@quicinc.com>
> > 
> > Define the nvmem layout on the EEPROM connected via I2C to enable
> > structured storage and access to board-specific configuration data,
> > such as MAC addresses for Ethernet.
> 
> The commit subject should emphasize the introduction of the EEPROM
> itself, with the layout being a minor detail, yet the description of
> its use which you provided is important and welcome
> 

Thanks, Konrad, for pointing this out. I’ll update it in the next
series.

> Konrad

-- 
Regards,
Wasim

