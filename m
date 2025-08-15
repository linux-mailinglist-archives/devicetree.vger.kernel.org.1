Return-Path: <devicetree+bounces-205250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AB3B28801
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 23:52:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 82AAA7BF2A3
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 21:51:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A64ED259C9C;
	Fri, 15 Aug 2025 21:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dSsfgeBq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC9C2550D8
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 21:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755294770; cv=none; b=oEKVyT1D1LDW9qNE2K42Cjh2jRZj4i2bPqHGQtYycAKD/XrluSTUhtyRIsnjwaeESfgOls4hBfDA+wU9YjzkfOrDCrj+jUbVzq7I36IBt16LgjOittOUysImaJ5YNNpdKj3fVETk13b88uQrKuv6jL/r9ul5z9Q7sTvWMvhWddA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755294770; c=relaxed/simple;
	bh=gSjoCkpGQO2hO7lhbivtChUUCThBql0jPA14fGQjWzA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oMDfJu4F3Ei99dTRzmQ/i3hsWusxujLlGOtmgRl9jeUY6/7kYOxaDSkUgNYuEmx+/WX9AE4xx1xBsPfi5uSz7DtEl24VAaCJSEGel+sNnnhl9RdpF5CufskT9G3uaC4vfilZIzEnwbIqFR5eKtsE9MvLz+rpmrdScZxlCkhF0cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dSsfgeBq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57FKpugO028210
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 21:52:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+ucY422Zv59eyle/8tIZ1eTA
	qJLZoYCyEZljqLnbYhE=; b=dSsfgeBqib3EBhRt3kCVLvF94VAfd6AttarohzKV
	HK8kwYNAjZHr/WFdDzsar1Tra8fUJp0w2rMBGVvcRUmgogsDaB5wEQr+mIbRQ7z6
	S9cOhsQVStI4TFY4GypCDxtBkZgYitxH97DI1aWTrDyQSVDJlAR+Nw9dsw8fgmsP
	YuGo2q8QOqYUXygBX9lRKXhDXZ/m8y0KOl0mRsXYDQvutj3GFbjbWFzEFPcUQh/B
	rdxfmIqKm+hvuHK3/pCnnOCbuObrYg5c3zqiHmHN7C7c7RIyEfAXO2blQhJvqw+X
	oFatoJMO6mdwjqq5M2NJvcznsaabWhEzZLAOh/dSflNtNw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48g9qa3b20-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 21:52:48 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70a927f4090so50894626d6.1
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:52:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755294767; x=1755899567;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+ucY422Zv59eyle/8tIZ1eTAqJLZoYCyEZljqLnbYhE=;
        b=rSqPOAA/h2IIxozamcNPH1REVeGe1NrOe0V/aZd25LdK9SV6eu+Fao3JSjQ/uQCqmb
         ipJ7uZCwz0es6VQprSyyTcwk43Mfqfjr4LsgnznYfVLVioWP+KSpWEL69cY6OvCpNRNo
         6+qC+KjaA33phm/LbKxrB4fbW6cxduIaPxuhqZ4fgkqpy6MIJl+ac4GmpmDRxEzCvxZR
         VteyzR43JgCWbva0C5L1E8C6AeXDcHmwgr6MYXRen0O+mXAoyBm8r86VhHoF+UiJ5EZX
         AE3fEOcDyW0UDBjl1v2GRoEMwgpmfo2p39vkFAd0jY/+dhyB/xl5X7XsZ1WV5TcQ79AE
         yOMw==
X-Forwarded-Encrypted: i=1; AJvYcCXln79cDI3j+zCEPFDHmwSobEwqe3j+zAWRXr5Pt+bVtt8/Tk6ljpHMAeW/5NwS+9VW+amVI+WqEg1I@vger.kernel.org
X-Gm-Message-State: AOJu0YyiHlapoOFAW+sO09ry3+n+OqQvcODtDIMmiYNtgmFZFchXVVMK
	ldAvz7x857IdOyk+A3wf/ybBVAgkmHLQ8bhu2VRWZb4zJZc1LUdqJSGvUxPf9ZIsIvfCH0xKgOt
	QnYSDHYf5A4GTQ1HsDVbiM4Mh6yMxFnHBcE5ZSgk0IWhmYebcGi2FLkUB96VbPs7s
X-Gm-Gg: ASbGnctBcJsFhzHhAYuo5yDbDmDu6wUJR4M+IJVsfuR4/We9S9Wjw+hbh2iBsqEdK92
	nT7xFTLlfN30ooJFLLgQh0Y1aVohiUu7eRkJhB+IGP1C4W/xy6Fo9gK5PNchOhd3+f6Ur9FryGB
	9jFl6vAuV/45Sp7mgS5VBGBjoLYMNddqOl191etIfBA9Mc6OBRdmURQufxcfbOSsUOjjh/B8Jz6
	ufDF15jrrSLjE2anm2C8LZU0Avv37VNtBE+EsmbBqADQ6mYSwEyBv6rFO7Llg1Kd7F7tP/v8bTg
	W3+7AtNAZqE6R8IpenSu8sMpHuHCEEsxX689inA7NYhgqOwqizEcYp0LHuvnaZvE7zMvKCki1vu
	HeTgUlra/YSLvkORMRln3MTJvHROxgBwJEtmfjkr2v46f4YZVCkLj
X-Received: by 2002:a05:6214:c8b:b0:707:a430:e01b with SMTP id 6a1803df08f44-70ba7a5ebe0mr42596336d6.3.1755294766972;
        Fri, 15 Aug 2025 14:52:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyBgvbgFRklSHyhj3CH97naQZBMoVWHYIh+7R80r7kXCtbNHUMb1dOMvYdSmX8rEDFDg6bNQ==
X-Received: by 2002:a05:6214:c8b:b0:707:a430:e01b with SMTP id 6a1803df08f44-70ba7a5ebe0mr42596136d6.3.1755294766500;
        Fri, 15 Aug 2025 14:52:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3ffb0esm495523e87.135.2025.08.15.14.52.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Aug 2025 14:52:45 -0700 (PDT)
Date: Sat, 16 Aug 2025 00:52:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: setotau@yandex.ru
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 2/2] clk: qcom: gcc-sdm660: Add missing LPASS/CDSP vote
 clocks
Message-ID: <gg3pzvlxgvcfqkl4ko65dgyf4jv7umsdthcpyrb3orgmix6xfm@3obaewnzgat2>
References: <20250815-gcc-sdm660-vote-clocks-and-gdscs-v1-0-c5a8af040093@yandex.ru>
 <20250815-gcc-sdm660-vote-clocks-and-gdscs-v1-2-c5a8af040093@yandex.ru>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250815-gcc-sdm660-vote-clocks-and-gdscs-v1-2-c5a8af040093@yandex.ru>
X-Authority-Analysis: v=2.4 cv=CNMqXQrD c=1 sm=1 tr=0 ts=689fac30 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=vaJtXVxTAAAA:8 a=EUspDBNiAAAA:8 a=FM-fRCrO_02lKpoybmcA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: KErn5BeJVa7uC_pptMJyPiSetVFRdrga
X-Proofpoint-ORIG-GUID: KErn5BeJVa7uC_pptMJyPiSetVFRdrga
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEyMDE2NCBTYWx0ZWRfX+ydiwXoS0dDZ
 O3uJ4WFvSzto5zwlwqqzhsFlDwemNqBUArF0Z/9YUbLRybA1E3K7+nXxULmX5dbrxvOzhjuAM1P
 xm9rCS7bupXzmERlzh2ncYRCTIMvn5690tw41G/11bEZFJKh6wU159VkJoiKfKXvlhlKWCnZZh2
 PnIWDSHwMGdB+XxDmqFAEvsPqM5xiCdeitC0G3qJIq8/ox/OeUjgTLzKjAD8a/998nYSNcUv8Ef
 T6TzIY0A/HMZ44bxJ9EXr2dVWxdlbmNA7I8lXkAAsCeC7Gt/U7GbSfvphvI3M+AXHjlyJNd6T+9
 bPQcTsRbEdi3LVmqtG6dqnDDUj0JJBb4RuBvOGSUM74OpdHj3vwTk5Pp8n78Tx3dZtkx4G91CqA
 PNugATGC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_08,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 impostorscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508120164

On Fri, Aug 15, 2025 at 07:56:52PM +0300, Nickolay Goppen via B4 Relay wrote:
> From: Nickolay Goppen <setotau@yandex.ru>
> 
> For the proper functioning of SMMUs related to the audio/compute DSPs,
> it makes sense that the clocks and power domains they rely on for
> communication should be online.
> 
> Add the vote clocks & GDSCs that, when enabled, ensure all such
> requirements are met, through various internal mechanisms.
> 
> Co-developed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Nickolay Goppen <setotau@yandex.ru>
> ---
>  drivers/clk/qcom/gcc-sdm660.c | 72 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

