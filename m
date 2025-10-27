Return-Path: <devicetree+bounces-231528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D60B4C0DF29
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 14:15:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F8CE1886A74
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:15:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B012B26E710;
	Mon, 27 Oct 2025 13:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pjh+2Rii"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A0B1E260C
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761570888; cv=none; b=jrqTl/NW1/Yx6mjw7Ro6qbVe9jC5pncCfhRrYCsIh6oaHJ3oacIAL/IrJBDDGdiFcrdMhlt+YInPGuiZdUS8WxyTVCs6eaCzKXh8yAUgI03fmNmLCzeX0nT4RD3+nz0Y+y/SYcOpK8KjD/Kg6zTHmTPxVkBrsfIKTnt3AP65olY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761570888; c=relaxed/simple;
	bh=yurVmvxSOFrWw32vD2Z36RTMlvMH+DXhPVbXI0Zm9yE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eNJyvnfU3CMF4EXQmKzclVc8qllL7o0Ci/7x11QXpaFS/33TmQcLNK/CmontsPPGRq308M6E1PYua2yRGY7W1ThjdfbgPEp7AihG9lui2Nua3bheSD0dLgh6du4HnScDdR3j36iPmlkFS+eUD+jZcmgUUBigPZdaGgMvJ2aJmT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pjh+2Rii; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59RCTq2t2752122
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:14:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nFyzKi5bv7XzhZEu4Cpk+WRY
	5dnAaHHoSnvN/ez9mr0=; b=pjh+2RiiyRIkOe3N+YJqN3TwoEj4CEejkjcAuiqg
	eTNuHP0Os9Sz7E6MkyxZ7yPTKOTbVK6TAJMmFrSCsjvC860dongX6tGYnABRWVzS
	wVYrnEqc9vFYFjjDuuYVIAXx3SVif6ZwmvJZwqvxE86/Q+LwSCYANe3T68ptbJrP
	v9lVlF5LWEBQm6lIWoPKAyuai8LKrkTxNuw7UizS7jBGk/ZKo45otfCbUXpxU3Tx
	gUH9KaOaJxEuNcrJ1+4zX1LQ3jHNlREa7Xz7JO3+5YVL/1GoYjbUcLmhYHDcpiBZ
	Eb1JL06WICkHrog0IZHMk4odthMZx6HQNWiniq32TGyhow==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a28swg40f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:14:44 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e8916e8d4aso45558211cf.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 06:14:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761570884; x=1762175684;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nFyzKi5bv7XzhZEu4Cpk+WRY5dnAaHHoSnvN/ez9mr0=;
        b=bfo4QEdbCeiC0KGmTAQGHVJE59KitRq3+Ad88R7wRZ8HGDH6t1VyAj4+47+3wQVZfg
         7f/bj+HtTPNf5jQBx1KV1ETCPwPSQMbmTe2krB064Sw41haWa+t00WlMiM5yigUU59NW
         XC31D0dl/M9f20VvGE2FYnO/camOpZJqRspQo9Dml99UXN1vyRFmEA8SMVa2DkFqWaTj
         Lur1XdB2BALMknynQVIi8aIYgNf6TTGSyJZYTR3LzORMJ5G3utqpMxENwItH1B8Zbh73
         wd44nTC72DJWSjUqfiz/xTHgcfV4j+UIexFiSFDn36wVo++FKY2fp8d/UijBjM1giKl9
         TNhw==
X-Forwarded-Encrypted: i=1; AJvYcCUKhCY91jJhYBaX15SPd4vgEX/tOTATMLrSrgFThTzozdniy8a6YJ3pnbHM26+9MaPyouY1IX67J58a@vger.kernel.org
X-Gm-Message-State: AOJu0Yygx9gltJb4w0fkYhsW/KYkK6uJ1cck/W6I8FADZXEzXMe0vuNW
	H4HBpdjILKVxLlAH2pZ7xwAa6baXMeLgEJLD90T4vOWljktPnJAj3NxsEdR/d7YCCjGlXnyYKoz
	CJE3Co5e1BWxU9olhWZgIQXSkjOll4YqKietBgHQ24wFIjP+GKy/NXjEagYk5+nBA
X-Gm-Gg: ASbGnctB2Y+4yI2r/DWnPK6JEZYjpW5IcJVF4qf1JuI1c8DHzci9mc/Rnsj52PkqcMI
	cGPAnWj2uI682C1TfSy59oJdCPPRt+UGtvv7C8N4TeZak5ksTJrnX8geyktJUlxCInea7zZ049a
	E9Jj3xdhsbl3IqZd2wVlgD6K8vNuXNMpOeZqruWa+jQjdhibncRnuFEShCFB0RqG3Jxp5YCsRVP
	zU5nH4hTj3eYE+Ha3AGpyOWMhVDOpOg/p8R02usKCP7u1XYB/OOXFFHgXri9TYcT+qgVqDmeAH5
	v70s8FzEB+807k23TJ4Dt538SBLrUcDAJNgYcSlhbZeQZzdCbostwL4cQR5oYckwClWlCoFz5o0
	d36W/HugeNn1IcitRhEd60FVoMete8IzBGln2AQ9V50KkLiHyflNLEwqvxDUWqfwrKUZ1Iy1wKO
	o5j5/BxUCbgE/G
X-Received: by 2002:a05:622a:1b28:b0:4ec:ef85:cfbd with SMTP id d75a77b69052e-4ecef85d368mr61632171cf.80.1761570884063;
        Mon, 27 Oct 2025 06:14:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGvwWHynaMcFsCoJT3Ymx6akKgKGq+AVYZliRWBvt3fl/sJ+nyNZdGM11CdtSCxGsRp/Z4JPA==
X-Received: by 2002:a05:622a:1b28:b0:4ec:ef85:cfbd with SMTP id d75a77b69052e-4ecef85d368mr61631541cf.80.1761570883540;
        Mon, 27 Oct 2025 06:14:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-378ee0a5655sm19154971fa.21.2025.10.27.06.14.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 06:14:42 -0700 (PDT)
Date: Mon, 27 Oct 2025 15:14:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjiey <yuanjie.yang@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        robin.clark@oss.qualcomm.com, lumag@kernel.org,
        abhinav.kumar@linux.dev, sean@poorly.run,
        marijn.suijten@somainline.org, airlied@gmail.com, simona@ffwll.ch,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH 01/12] drm/msm/dsi/phy: Add support for Kaanapali
Message-ID: <einog245dsbqtx3by2cojyzmyctk2fffpwndwoe24puwqq4fta@cu6iiidxqgr4>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023075401.1148-2-yuanjie.yang@oss.qualcomm.com>
 <omlhiywjr46ik6bj2aiutgcf4aifen4vsvtlut7b44ayu4g4vl@zn4u3zkf6cqx>
 <ad906eb5-c08f-4b66-9e37-aaba99889ad4@oss.qualcomm.com>
 <aPryORKIuSwtXpon@yuanjiey.ap.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aPryORKIuSwtXpon@yuanjiey.ap.qualcomm.com>
X-Proofpoint-ORIG-GUID: z8VXERRYugERfPLwe8QHvSafpLtzzZvH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDEyMyBTYWx0ZWRfX8LpsVBr2z+Ci
 23nUYI2tx0r3q+qDbrkhNU3iDM8z8Qs1NxL4CjWhpoMHETZ/Zi+yA5dYJQAAVtZZZl7NgX8VDCQ
 sj3tyunBKiHyifqI7WFCXXazVJtIyoq9297bhRwOxo8URyUfybxZdSMtRopdwZ2PDRpsM+8UH4A
 hoxYveEluxYF7AJSXB57X5P/4uilKxub2vlupfR4Gnp7I8CJ8S890/KW5VZ/stJvXEh6s7uP/rN
 sJvFf//mpL9fzqn+Ip1f9yHAhqHSl2ApuI8J6awThl+CcjTQL7YY4/enOUu0WNESEKw+CsgFrv3
 e/SCqh2rMSKH6gobbicN35i5+kFAMsxacZVx3P54liw1vs9oWVoNzmTCBbfE80O5cusLZmvNas7
 38pLBzpk9d1zAwKsTrHkHkRTrB8ABA==
X-Proofpoint-GUID: z8VXERRYugERfPLwe8QHvSafpLtzzZvH
X-Authority-Analysis: v=2.4 cv=fL40HJae c=1 sm=1 tr=0 ts=68ff7044 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=ACmnMjwJHZESoQLvWlYA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 phishscore=0 suspectscore=0 priorityscore=1501
 clxscore=1015 adultscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270123

On Fri, Oct 24, 2025 at 11:27:53AM +0800, yuanjiey wrote:
> On Thu, Oct 23, 2025 at 02:02:45PM +0200, Konrad Dybcio wrote:
> > On 10/23/25 1:48 PM, Dmitry Baryshkov wrote:
> > > On Thu, Oct 23, 2025 at 03:53:50PM +0800, yuanjie yang wrote:
> > >> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > >>
> > >> Add DSI PHY support for the Kaanapali platform.
> > >>
> > >> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > >> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > >> ---
> > 
> > [...]
> > 
> > >> +	.io_start = { 0x9ac1000, 0xae97000 },
> > > 
> > > These two addresses are very strange. Would you care to explain? Other
> > > than that there is no difference from SM8750 entry.
> > 
> > They're correct.
> > Although they correspond to DSI_0 and DSI_2..
> > 
> > Yuanjie, none of the DSI patches mention that v2.10.0 is packed with
> > new features. Please provide some more context and how that impacts
> > the hw description.
> 
> Thanks for your reminder.
> 
> Correct here:
> io_start = { 0x9ac1000, 0x9ac4000 }  DSI_Phy0 DSI_phy1
> 
> And v2.10.0 no clearly meaningful changes compared to v2.9.0.
> just some register address change.

Addition of DSI2 is a meaningful change, which needs to be handled both
in the core and in the DSI / DSI PHY drivers.

> 
> Thanks,
> Yuanjie
>  
> > Konrad

-- 
With best wishes
Dmitry

