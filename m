Return-Path: <devicetree+bounces-239796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5D7C695BB
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:24:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2D38234C497
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 12:24:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BFC233DECD;
	Tue, 18 Nov 2025 12:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JRCQGFlJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XX1elc67"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D118314D03
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763468682; cv=none; b=Qj3Xkgqg7QBkEKCaIJrR6/KQuAYv6SONiz/FIV7ITQNWrDXontXBsj1bqD4DpO4fIfD7DSbjErX8wIJSKjgRxw298Sic0XYMtePyvreuM6XvH1a35+ajmVSRv8haQ5prVW9roZ101nZb4szgv95M0BXggbS4iS+UnU3nLlcb8xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763468682; c=relaxed/simple;
	bh=huYe93wRFMhFP9jgygcl+YFgbFfEk20gLV/A0igsqJI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QaDDRCY4gEfwXQfbUm7kKynfwTuJ1N1EqcxBYig2yYa9mLWCD3ON7b/0Saa1qHjpa+Mi7zxxhhf+cl2jnWhMZS7QKEQ3nnpwWpBhblGCUBwbyz59o684yT9Q03tqytO6cJkUW1WtCsPcALf3qt9+HmZQ9o1EfkvC0xez3RnuP1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JRCQGFlJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XX1elc67; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI6iAK8384611
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:24:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=g07JOyEzM0TjbD6ezjDR6ELM
	vtt9Jl4vE+WZmWAkXx8=; b=JRCQGFlJxeDmZ8n+ySQ08IF24yMp5qsq/Jg0szEY
	bwuoVpUjqxPfjh0frtIJNatHQiyZpmKF3YeoNNIdwx2Ga+ERICkmSXFeYysnLlVs
	t0C9NGD5XPjeYBjCqZclrw81tljRTmZuwcXDdbzMxn09dEHrk4QYUcwPCh1R/N3R
	tx8LLRnl4TokvVSFkWdr4+PHddBuM4e448B9RXojGr8A2cw4rubVHToUp9ANBwVV
	yE8O74BXh4arddmrE/JTUJj+r41NaTmUARlhTKRZ2NUDIONrdzqeJFtEMhAn61uQ
	MJDM2mLYyFoZY4v3kASQNvXO+0ylkAT4WTz7sDfeMf8dWQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agag8jdqc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:24:39 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee168a520bso95245491cf.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:24:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763468679; x=1764073479; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=g07JOyEzM0TjbD6ezjDR6ELMvtt9Jl4vE+WZmWAkXx8=;
        b=XX1elc67tqZ3bCRjtzXxKmScNT1ml4QoVafvpg1wEG8D6kIQMiOGyPNAeb9hQScnBE
         tnGTw7fWDYl6vN61PiQZ4MXcMJ4t8jDFEEzs9Od9lGTnQjyF4VS86TVmKxbxCiephvxK
         LBh8qo8/qcP/yRg7TrOPS9ipLGfyKxKOtdgk0mVZQNFAKyIsCalHWGMNHD3FPneIbOdX
         pijSP9gpYBFaNvRuIOmGR/8HKboCnB291T5Se+jtmZxMC1ds1a/Q+ijy7e3A2y5JQc4O
         oe7rPI8GkITtxBFf0KA5s3kmmpllkyR9bnxl2WWumwTKqe5GalIyZddL23FSqPOINz/1
         WOYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763468679; x=1764073479;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g07JOyEzM0TjbD6ezjDR6ELMvtt9Jl4vE+WZmWAkXx8=;
        b=EKg6WlG0udagJ5Uz/puPbSbBgujzPqDjYRalhHSCCnM0IW18guMvbs295FRZaQPy5q
         q0uHv3KfmcbhpqFRaw+a5RXVKkQnL2bEDQrbVEwkuZAVqon9sHR0BaonQkwjqCNvIijz
         305PSMbmceLdlpNiT2FuX85kdAtv3cmAjkCOX1KOI1co5GZnF8FQxAe1RnRgcUYyANt9
         Mr4F4ihiKJVeckD2o6TqBqOSY2EfF7a8LFWlUw/dzjwVWuuWS4IqAix0DIlhJT7hoBSO
         79svfLxedOTtZxFaBzGkiI4rD9RsfJuJ6s0SWzEA0ycujV5Sdly+6Io6ROK1wYiDpona
         DGQw==
X-Forwarded-Encrypted: i=1; AJvYcCXqhaImx+VoltiPCLTgQoX7rkKT4+NzLOo0h4pxDCYDC2pHcCwr7mQTX+XPL5YS7z5tt9miE/zS6gXt@vger.kernel.org
X-Gm-Message-State: AOJu0YzZWyDp4RYqYu2LfyuLM5vB6TOw/4yUneqKXFNCVTUseC5+sYWJ
	gmdmxdC4oKxRlX3wlaKmkWxG2+BcVZCZ/3pg4/27Hl11rmSBgq6Bl4flolkGNibT+uz0P/zNN5n
	z6El3kgmfUGEiBNkOgmLOjZy/cNs20LwwokZh/29MySI+PAPj2eXqygoTMNuZM18Y
X-Gm-Gg: ASbGncs/fBfFK88J+aKui/RYf31smGqVGMn24Bly3QOFo9ho6LfYdXymyRVeiVueSnT
	vtqDY6A/6nDjmvflX9bM2uGrbezu0e7H0Ww5d9bXXPQcMEytI+xlMtj8zMJkdwMjo9gWHxIIgMd
	HVA+tMqsBbBgrWOBPbMMqKYBOp8FXZbwWhLl87WFWf+YYo1h4FiYYp2OsrY1ywE+LwInWJbnTPY
	kSLQehUlMVoW1LNKsNkq/Ho9X0nogNOSYeo3C5qzVxb0B09weCfUPixheqVgAf+foS/Hmc06Et3
	NnH1Df2QvCupd0eXILppg5rKJRoMi3mrDFnjPp2InhiL3kgwzfqeFSd/6JdkZPAIYIXTCVGaODK
	nCBvuRyDep6hRb39eWCuHVdVyFPbcQee7iIcfSdEREN4lnZ0EAbs6SWfmUeulNkFzGCkab5xZFt
	WjPojH94EEcNEU
X-Received: by 2002:a05:622a:355:b0:4ed:6cd3:7d1e with SMTP id d75a77b69052e-4edf2048792mr210596501cf.10.1763468678683;
        Tue, 18 Nov 2025 04:24:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEfdjo3aY1W8lhHj4V4igEYF/+oA7pGr8Ds5Ftpg3JovJEBSKb6NxOTd1Ty9fMH9pPAF6NYcg==
X-Received: by 2002:a05:622a:355:b0:4ed:6cd3:7d1e with SMTP id d75a77b69052e-4edf2048792mr210596091cf.10.1763468678281;
        Tue, 18 Nov 2025 04:24:38 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37bccabf576sm1512771fa.34.2025.11.18.04.24.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 04:24:37 -0800 (PST)
Date: Tue, 18 Nov 2025 14:24:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: hrishabh.rajput@oss.qualcomm.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Subject: Re: [PATCH v8 2/2] watchdog: Add driver for Gunyah Watchdog
Message-ID: <as2u55ojagrz7dpm6ueg2x2o7e2jhvjcm5gjfuyoguniznnzqu@gieinkz4phfx>
References: <20251118-gunyah_watchdog-v8-0-e5de12e2eef5@oss.qualcomm.com>
 <20251118-gunyah_watchdog-v8-2-e5de12e2eef5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251118-gunyah_watchdog-v8-2-e5de12e2eef5@oss.qualcomm.com>
X-Proofpoint-GUID: Zy4LPCBlGWZXQ8TcgENynSpvBD0fDBy4
X-Proofpoint-ORIG-GUID: Zy4LPCBlGWZXQ8TcgENynSpvBD0fDBy4
X-Authority-Analysis: v=2.4 cv=G6sR0tk5 c=1 sm=1 tr=0 ts=691c6587 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=qi9a3yEbpvmg9l7mAUAA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA5OSBTYWx0ZWRfX6sIsUEetg0Pk
 OlW1gq3YI4ygZllfDawblC68JR1xmzM9LnLfpVZjHqgEYeAiTUCb1Y92g6/5CdDX1cyymER5LFo
 a7xxyo4dJD73eZ5OUkodMh5S0MD0KPVNTryfAKmtCx1GsL9T4lpDgC7aQPxmXV5boRRElE9fOlB
 Ge94CLZkEHpxaG6SCIZiMniSO6s4NEJ8D8jukBRaoZotUFP+xYy51yG++2shwUWSB47UUXGei62
 DXDFcNloe0sCXmIsdnS2uTnP6Hnw04GhD38fxmzFtdFSkRwQHpXaFJw5aLb6eO2Lov76x517IPk
 YIQY3FPC3vF4r5C5cRg7wjEFasN8LCOCk8DrSRNuDNm/ZMrU3i6czHKr4hGJ6RcAFXJ7FZF0OsR
 RMdy7fK7v5ke9qHLxz2rTbCcZeVZnQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 adultscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180099

On Tue, Nov 18, 2025 at 10:40:57AM +0000, Hrishabh Rajput via B4 Relay wrote:
> From: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
> 
> On Qualcomm SoCs running under the Gunyah hypervisor, access to watchdog
> through MMIO is not available on all platforms. Depending on the
> hypervisor configuration, the watchdog is either fully emulated or
> exposed via ARM's SMC Calling Conventions (SMCCC) through the Vendor
> Specific Hypervisor Service Calls space.
> 
> Add driver to support the SMC-based watchdog provided by the Gunyah
> Hypervisor. Device registration is done in the QCOM SCM driver after
> checks to restrict the watchdog initialization to Qualcomm devices
> running under Gunyah.
> 
> Gunyah watchdog is not a hardware but an SMC-based vendor-specific
> hypervisor interface provided by the Gunyah hypervisor. The design
> involving QCOM SCM driver for registering the platform device has been
> devised to avoid adding non-hardware nodes to devicetree.
> 
> Tested-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
> ---
>  MAINTAINERS                   |   1 +
>  drivers/watchdog/Kconfig      |  13 +++
>  drivers/watchdog/Makefile     |   1 +
>  drivers/watchdog/gunyah_wdt.c | 261 ++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 276 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

