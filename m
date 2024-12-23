Return-Path: <devicetree+bounces-133608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9129FB05B
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 15:51:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 839A17A1E4D
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 14:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8B631AF0B0;
	Mon, 23 Dec 2024 14:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lDB4n/CS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7691ABEC1
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 14:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734965452; cv=none; b=hEc0MRoGzA+qFVqCvX/jYpIKsoVabjw30eBccDT0MEpXic9yr7xDOepClitdByg1Ep/UIUriu/Ou+osQFr5EaqhpfjmuGwgGvNk9C41VqdwkpF8cHThfsg3FnDzMtrSd5VRly27YN9iRHgdknWUZ7WY91nhFzrhT81TOMWisTIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734965452; c=relaxed/simple;
	bh=CTpIvzqv1Iux7dmQXBmiXR7I5I54WRI9a24L33FPH/8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AzsxR68ghpWoTE9z/g6AKdz1DkWW8gtUFpZO4cccpN7faoLAse+307EdIVRA41sO2NOvcblDI/2bx4FH/xCUOa+xUvVDbZrI0P5/rijCVK5wcfIl8DQGuclFZ7qSN53hkA4nkw0zirXd6wxwyJF0OzqRtjX+SFdN5IN+IymEfls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lDB4n/CS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BN9moMR031210
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 14:50:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wlZkphqXmIbiFKi1/5KSMJBOSiSfd/Tur2EcPwMtMKQ=; b=lDB4n/CS/aFu6dFR
	9gMEG5MKfcaCAFzjbChnRFIbNxweJJIxaoHlx5f7ezjEo4AlSmnh29xq3B/nEJI/
	SizRGRzgMQTmqdOClkfewFd9A1RXAyo8sUKU93oQ+BOskDPyOEuQNj7ttQHOKN94
	U4kgNlYX05exMtTP1q2008DUNe0lIJZ4xb+gAHdeNsackpDBXeg8uMYTYl1EeN29
	+8LCRtPlfRIY/k/hw5i+v/vgYjg5pchDS7y7oLnUdzNNxYi/CZ502RbRWBFUF7YK
	Oq153/D0gyEvOPgmqS6fNbhAaaUD1sNHwRzaDBcTSuxsCp6Y01822D/PXvJ8hw0B
	VXpYqA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43q5jb8nc4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 14:50:50 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d8824c96cdso15479006d6.2
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 06:50:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734965449; x=1735570249;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wlZkphqXmIbiFKi1/5KSMJBOSiSfd/Tur2EcPwMtMKQ=;
        b=XSiqhRI2ktgTc6conx9uCmlGtYcrCPGdUf9jLndoG7Alz+HttXQZDTXeYW7ck0GUuO
         hH9nirQ3vkdEEH0RPR7lLLXNe0FaWasdHSFGS64vnJZcpIPzlw1wc57sLYtltsW17ts2
         PkmuIn374y69cUXZSyjzSGYdNVUc/6FKxGi3xm0MS1dXdtQPbkwW6Od44Di7pEaAVMmp
         2e+jlCUgSkxauSDN0FD0Os2LBljzQX/ghxgSLjxx/bK7yVyN2kphnL63pb2BhZsi9mJ8
         kK6wpQ2gCHvoeFyh/WoR9NzIoMlaekSoU+exsehcCkVBoAK9oTCCiDBui5lYkpeODFt7
         9zgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWoijvaDUPpIUZBHNpQ2uPJ8JjKgvtmAWDat/S+JLLN2C3VVNwGvf9qfjYrlmMYhZ4hGkokW7UEMcFe@vger.kernel.org
X-Gm-Message-State: AOJu0YwgDOSDZQK9wNjsZ8h9odvnWUocf6x02tsvMIM0a7bIyd0gWlnl
	aksQPkRpD13f++c53XDnnJl7k0ftGeS2uFmPg2uuvE30MdzzP1ZdRzecSqY3O392J2N/5cFocy2
	NaNSBBb6GxUHLDBiyK7EIRhtKpATzCNVHdpLShzGfexbG9aKytYDdkRI0pPkY
X-Gm-Gg: ASbGnct130OCkvvgtT5JJXY2AazWvIQZcQCXSvoD8zgdIBkVzXyYiLk0iurSnqjLZx4
	VQpH9aHFcjeAS0hUu/54mAf/AhKDcf+WuTMSHWZrT+CXXPWbbRlqbOS4gjxetG53F1xH740AjeD
	yzLfRfpvm9ajDL9szSKhIjZxuWlFSVGr8p0NZpir5x/NBI3tbz34qa3DSkt2kB/YQv2/TaO5wOo
	sM8lOrh9lqAzCEviWqAkS45MI/MF5QrL0CUPiNH40uWG4pt7XgGK/PvW/dJWSBaDl9wRVzJWFdj
	XDgZtHjYKawA3UxSrJBWi/nHpLgHdJb8KHI=
X-Received: by 2002:ac8:7c56:0:b0:467:6379:8d2f with SMTP id d75a77b69052e-46a4a9a3aa9mr86518541cf.15.1734965449064;
        Mon, 23 Dec 2024 06:50:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFg4F+nk4GXpc7g8L8mccQtbkn90gLkr0vPXtwNZH0T3hETGOnOws+UGYXkZ5e+hEAM71UD/w==
X-Received: by 2002:ac8:7c56:0:b0:467:6379:8d2f with SMTP id d75a77b69052e-46a4a9a3aa9mr86518361cf.15.1734965448708;
        Mon, 23 Dec 2024 06:50:48 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e830abfsm535310166b.20.2024.12.23.06.50.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2024 06:50:48 -0800 (PST)
Message-ID: <b1a313b0-fe0e-4612-b555-5708b854ecc2@oss.qualcomm.com>
Date: Mon, 23 Dec 2024 15:50:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/7] drm/msm: adreno: find bandwidth index of OPP and
 set it along freq index
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20241217-topic-sm8x50-gpu-bw-vote-v6-0-1adaf97e7310@linaro.org>
 <20241217-topic-sm8x50-gpu-bw-vote-v6-4-1adaf97e7310@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241217-topic-sm8x50-gpu-bw-vote-v6-4-1adaf97e7310@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: UQVlG4StEXgAqeH4Hjr3tB_kc9owLCMT
X-Proofpoint-ORIG-GUID: UQVlG4StEXgAqeH4Hjr3tB_kc9owLCMT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 priorityscore=1501 mlxscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 malwarescore=0 spamscore=0 bulkscore=0 suspectscore=0
 impostorscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412230133

On 17.12.2024 3:51 PM, Neil Armstrong wrote:
> The Adreno GPU Management Unit (GMU) can also scale the DDR Bandwidth
> along the Frequency and Power Domain level, until now we left the OPP
> core scale the OPP bandwidth via the interconnect path.
> 
> In order to enable bandwidth voting via the GPU Management
> Unit (GMU), when an opp is set by devfreq we also look for
> the corresponding bandwidth index in the previously generated
> bw_table and pass this value along the frequency index to the GMU.
> 
> The GMU also takes another vote called AB which is a 16bit quantized
> value of the floor bandwidth against the maximum supported bandwidth.
> 
> The AB is calculated with a default 25% of the bandwidth like the
> downstream implementation too inform the GMU firmware the minimal
> quantity of bandwidth we require for this OPP. Only pass the AB
> vote starting from A750 GPUs.
> 
> Since we now vote for all resources via the GMU, setting the OPP
> is no more needed, so we can completely skip calling
> dev_pm_opp_set_opp() in this situation.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Reviewed-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

>  
> +#define AB_VOTE_MASK		GENMASK(31, 16)
> +#define MAX_AB_VOTE		(FIELD_MAX(AB_VOTE_MASK) - 1)

I'm just not 1000% sure about this -1 here

Konrad

