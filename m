Return-Path: <devicetree+bounces-217813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0619CB5948E
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 13:00:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B3F691BC605F
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:00:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 013551F17E8;
	Tue, 16 Sep 2025 11:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cxxFqk+s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7793028C862
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758020430; cv=none; b=oBi/ZVyLgBcg3YmFte1s6VzsbkHu2gmDUHG8eifs15Skx6R1mis2kVeUOKMXHHYMLYUeKKC38uepbt6gntfRhJXj+xvpF6Ti6U/ZLzlMkz2JC9v7ltMXQ/ZXEZCPRofI+nakM6SoUNoA74M0hcJrKXUOallK2VbTScOMBGBfTd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758020430; c=relaxed/simple;
	bh=M6Zqo8Ymcxu6eRx/7fcnIg/xojiXutzI75zXFiJxqNM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Sanxoo/aXgPq8PmRGQPus5xETOygGUfmV0odf8H13B85AgmoZ4GJW1w/3a0ogOI/qCvKfZQjtb49HPSl9MBUhZDphuUepWGZdxdxRn6OctW8gUsROjttXxzMD0QfLrUO2DJpbImlU6AcD+jXNoPoVmvzGUpVDuoHRPajz4DBQbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cxxFqk+s; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GACdUB020146
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:00:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vH/Rjq1TuanzbCVidX6mw4sX
	aElF2T/40jPPuQxAJJ8=; b=cxxFqk+s3TclutWcPBPpzYKxUvMqL8f+BX1NlLvw
	ABaC7fj13xTysRPsNiqHutQuPgUXUfajjvhnPcgnpF3yFjWIDJC8tU0AofVVaW8q
	b+A2/WlC8ytZpKXSJSWwCR9IUSv56vUbt5zYFwbxV8qRkdMEIqNaNVnek+qeUd3R
	aOyLlZ0T9sbcnTkZsSV126/F7ICaKJFIN8DwiTUrfEiT+ksKZDUAgIKXUmLOzCSG
	tpiEucz+MK2winOlvCc7US0oDuiJqYqr+hC81zk5kAIZkcezCUHAzvC4kZqAtD9j
	aW/LUY5E9540RHna9YvXk3SxcXqqWJMQtGOJL3t1alw8/w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494yma8k93-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:00:27 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5fbf0388eso70801131cf.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:00:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758020427; x=1758625227;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vH/Rjq1TuanzbCVidX6mw4sXaElF2T/40jPPuQxAJJ8=;
        b=UnK1pmSTsr67R4wJN7XIo7RIXHk04ARkTgM5hYioXhMzG3M0WTGKiL6cHERzuyxqI8
         Q+Q1QYE0J0v0SwYX0VZjtmMkz//TrRe6+ysUT8NLGmZ/p6nBhobW51qne2OqDRtQGPeM
         0j6cwYfE6sRTcbJE5h1sJNQuRqpy2Gd+1Z1oMquwfSb1oB78t4TkLabJI74y8dXVlqIt
         P9pm8z9Z/ZxqTzxzsr/0mc/WT301Na31rKNjmNVetQUTElghUvPqMSAVntUNlogPCCwr
         3WFX3h70jEma7EdSSbtTf/Pi8UuSoHzV5OaoRY1cNabMIkLP2vU9vkKeAhINs66TmIE2
         6jQw==
X-Forwarded-Encrypted: i=1; AJvYcCWrOwxYcj3eceKLoaO/THtyScJug6lgPOCrjVwzfuaCuqOH8fBw8qL8LUb50UxbJPoGfQkA8VW4cD6I@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1fQBsTUtArCHb2PLYUcwot/TkltlGaXW50AT6LbsgPtixg0Kw
	xYpil93lEokTIO/A8XpCZmc0x9F/Lx+mDHJbPIByQ97aSafBCRAb4FiJoPjPK39XBoHOkuBm720
	KxoYK0RhtCzDljVaqfgvJYoCFz0uJEgo6kVCbAmlXB6Ii9IJ4jKoH1rILDma+ikAT
X-Gm-Gg: ASbGncsu3+TUWSG33uFCRWhVn5jXK8k8lFHNK+Cz+b5f70uDwchyTJLuQohQaQNE3el
	P00QsUmPTpabsHClAWfFwb6EqWUr8B54H87IMkxCHNYcZXp4mo29zaw/blMslhjCiNHzzMhqll/
	mvvOqT4nw1aUiHcAJqXKzayoNNTl2gjE/mlb5tO2rhUnV49NfOesZoeOz/LxIXpEnAMe1gvq4VK
	FPMU4jVpnhVmCk7Tp1IHSDjRHuODKeJBrb6hYNUfnvJDBzGM/ejDnRzAsB3o8TR1vD7IG/ulHsx
	0lWIjxBmkebkeQShEu8NFMpCLRcR63oFMOaZcyGKqWe/m5sDDkys4s3PF0kRhmW/0ycDNHKiMh8
	AZViKNunl28FhvW+ieNy+pZEmoxmNOiY8AmCm8bxdaDNq/45MnyFu
X-Received: by 2002:ac8:5d04:0:b0:4b5:e12b:9e1 with SMTP id d75a77b69052e-4b77d0aff86mr159715011cf.60.1758020426767;
        Tue, 16 Sep 2025 04:00:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHEqyqBzvf06O0P8M/2FvHMvziCp9UQog00iNc315yVML3/M3tQIwWCuaULaNoan+pHArDzpA==
X-Received: by 2002:ac8:5d04:0:b0:4b5:e12b:9e1 with SMTP id d75a77b69052e-4b77d0aff86mr159712941cf.60.1758020424897;
        Tue, 16 Sep 2025 04:00:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e63c63d9esm4235593e87.70.2025.09.16.04.00.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 04:00:24 -0700 (PDT)
Date: Tue, 16 Sep 2025 14:00:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, linux-i2c@vger.kernel.org
Subject: Re: [PATCH v5 06/10] arm64: dts: qcom: lemans-evk: Enable remoteproc
 subsystems
Message-ID: <kq7dqqjaw5rgdx7nubycj3wuwqor63e37vploqw3efo6qa4oir@faorattts2vs>
References: <20250916-lemans-evk-bu-v5-0-53d7d206669d@oss.qualcomm.com>
 <20250916-lemans-evk-bu-v5-6-53d7d206669d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916-lemans-evk-bu-v5-6-53d7d206669d@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAxOSBTYWx0ZWRfX5alG5x5DHhRp
 2SUMtdMyBLldzZiLb7/pcTTaEWTQghk2fZpwcbTwUWBs3mY5RrXTnkFKNuDyNCn4mfJ/fzEfeQY
 2Jd1kXHQAcA0FLTvvLItkD/N8jvoHE7CIV41F4wBw5dgL+6tnPUgN4mNO3GRXBOupIO4dddLM3v
 yOsN6h+LrgOcNO/zgWZyvpG0nV5JPuI5tCBjaZ5QjYuLe15vbhdKwcYE96rItZsyhPtUYcbd2xq
 EOzFeTzdk0q4mQjthD9VWdGln6VTXhcgs6e8G52zb8n2yHB1hJ7S/2neMxZDsPr+AOahE3v5lI8
 9ZSvpLDmdWayz1m/AgTNAOyNwvC14E52nUbvHkbj9iXiocyLbvR/4VuVKWWLzBY2dKo1podggLV
 U0hy4ucb
X-Authority-Analysis: v=2.4 cv=cdTSrmDM c=1 sm=1 tr=0 ts=68c9434c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=woMd_khH0HIeFH28_EQA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: 40c7h-OO7A_cGXhT6UJYdZ7JvnD69jbb
X-Proofpoint-GUID: 40c7h-OO7A_cGXhT6UJYdZ7JvnD69jbb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130019

On Tue, Sep 16, 2025 at 04:16:54PM +0530, Wasim Nazir wrote:
> Enable remoteproc subsystems for supported DSPs such as Audio DSP,
> Compute DSP-0/1 and Generic DSP-0/1, along with their corresponding
> firmware.
> 
> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

