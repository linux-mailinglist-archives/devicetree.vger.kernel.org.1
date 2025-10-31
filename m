Return-Path: <devicetree+bounces-233888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 604DAC267A6
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 18:50:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8B814265D8
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 17:45:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA4983233FA;
	Fri, 31 Oct 2025 17:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KQvCDgXx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Njt+z226"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98EF31E115
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 17:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761932703; cv=none; b=NcUhOs9S86UdqVTGhx5DVT5YUvz4f6JYAlk5bzyM+Sgp0lzAE9SCp0/XnaLFd/VuaR3Oz+C5cUkCTVXDQXD6qkVok0YhptJ0OTYF/HgwtKVezyItNWh2OAI1JcreKAjfnT9CmcYkETwiKdzQUReR1ljyTQpaotNsGAWfPNLIJE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761932703; c=relaxed/simple;
	bh=MMN6o0nRNxpKuhgb1l1PbN/WsZE5u4tVnTaWtoOH30w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y5FKX63JeCpIj9dxY1mzMuFutn6o0PgKd9T1e00145AvkEkZYn0i4WDlLvjQTUw4wmToP387n7QSxS5Bxxa6PYY//GjoH4D9q6DtTubruyalmiYNpwds09f+4vm7KkFOQDJAjMNnFLaeIx32KU3TkKS9cg9yvO/nvPZ28ulOEgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KQvCDgXx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Njt+z226; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59VA5Ha01417452
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 17:44:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vvHKLumKKaVNpfG3W6t6aYP4
	CbJ/5LJdAfa5MGOu8/4=; b=KQvCDgXxzqVclXNmB/ngqm50Mk7X6iKbKzWhNvSZ
	3UOCW9qdgrNnEhPbnfM8eiYiRoHX03qLmUAIo1ISyAVsf/690rZHRCi212QFmYoC
	MxwhMx99YqoMX4x6p0oi5H0zFOziho/1iXldgNH5SYdvwKq9ArNlY8vkFBMgCGH9
	t34Kbv/jT5VjbaWOinGglah/q5jqQYRwHShskdT4mhcytUeOu0E4/5eKkbBWStil
	+Zp2V8ITUy1QEUpi7Le4mhpRqu8dnw4c8VOuus9SW18opppNxMnwLGbfy2aWlp7S
	7zPJDOaOJ4agF8YSsEARJozB5mkk2aqGY3U/7ZV/q0K15Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4k69jkqn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 17:44:56 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e892f776d0so111999761cf.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 10:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761932696; x=1762537496; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vvHKLumKKaVNpfG3W6t6aYP4CbJ/5LJdAfa5MGOu8/4=;
        b=Njt+z226R/3CopOAlqm1PHF7g/wuD9MCmZ3GwzueLXO2fhftlu6brwKgJduU6xuhP9
         FrIID8zkdpgCxffeCdy6zKWTy/Un8pD8s5Wn/6GpSNp0e3ZDCuXfeeVOSZyKgm8mappW
         rwYYXEBrY/kdQ574nnP3/rzwn7St1TGVdWEvml20s4ovIc+ELw3uyRg34JzFqQQ2pWK2
         RIOxilRvimQ4E+qbMbe2UBbhe3GwcADOi3BWyS8s5+rc1arN961s1COpfz8tmw6ubsor
         fKTSMre7A4RZX0UUJvdovTD+jUBuwEUiSYUJm1PBH1MQACkNLywtXhVI35y6/XmL065k
         A1JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761932696; x=1762537496;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vvHKLumKKaVNpfG3W6t6aYP4CbJ/5LJdAfa5MGOu8/4=;
        b=sMazwcjMjdD7w62k99Kz7UO5Kri1hSh1C3Lopo32eN97rFE1WLOTVl09upFjAZSKPJ
         PClp5AYhzlYmTRtFBteZ9P1sC1Zew3ScJyeQARG+4tVFBVMPwHuned9TgL+oBr8XOls/
         s9cCoBmTgRDpFzvfoPd2ZjDzxppiQ7tHx1ZeM6xx/elDRsftnklsWo/Jmt2GetjtlUOb
         qyA2vrZr8/+4EsnCoO1fAj+DjkC9TMUf8ZdXWLXfAfwReUF8PJ/A8k/OO0wVTw9cM0HC
         jWmvwzqJuellvXCTkiGN/Mpx8HqRnDNdv4XKqfrLDRP3mXUv5LmP+hoktf4L2AMHgglR
         6fnA==
X-Forwarded-Encrypted: i=1; AJvYcCW6lyVdyAAohW/2AGpWLH1ivmixQQd/F2mzAxFX7sThXPaG5IScVJfq+IHDWwJjXwk2LJx4K4Tyu40X@vger.kernel.org
X-Gm-Message-State: AOJu0YxrXrVw0PMZqQYHo+8wuKIaPP3/q+4SVeqUTFYRIqZHYff8Uotd
	6BKksssH+6Vsh3QEc+RYFqw/5+xJSomyqFfVqwuAcBRZu34NGEaZ9HoFR8HkzrvrNvHgQZ3NzBl
	IaJWU7TDPh2yA1Yc9WJ3OOLv1IbXVyaraw66Gi8WnzKjc93DHcJNyYafuA8Bo9P0Z
X-Gm-Gg: ASbGncsPafRB+JiCBTKrqUcdWH/c91GZHZ7v8wqHgtHHl5DXRukHV222F2nr2FfVb6g
	DV0bs2rnHImhx5b5gaYfTCdlIEEaWw1Yop+8OB0dt+/leIm1M2xJxw94SIUtTvJnUaCuT3AyUaw
	lc0Pfc/REJ0YUkjOiGR6bN27adenOSQRUxZJ2BaDgpnJf+ahASRJ2wdclzbPYHufPa7EW+Vf1VP
	3TIxmAd8VzlBx3onnAaNA/s1BpTK8xVUO8pExgh8szOWYwGAjaYxxaPPSupZtiS/EA1+HR7FXmX
	jcUrYwUVQ1IolZkRnSpar52Kugs7QvmSEjrmX0xBkSOTHbRzBvB9BA19Xk/kWMlPYMwNkDaauek
	/nQ5LM3sgFh3TI2W1TK3bo7eUoNlTsnL8yaSoUyd1IunwRVkPc52mcJHRIrYufYDJEHEa+rASOA
	2sIwVoy8szNwkr
X-Received: by 2002:a05:622a:1aa4:b0:4ec:f4be:cd9e with SMTP id d75a77b69052e-4ed3109b8f2mr50682611cf.73.1761932695697;
        Fri, 31 Oct 2025 10:44:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9bEHzE8FUhJ91Y/44yaTELcPDElgy8o9JtMJnkidFrR8S2ct4TEYiKDSKIhS6PFHQgLRXEQ==
X-Received: by 2002:a05:622a:1aa4:b0:4ec:f4be:cd9e with SMTP id d75a77b69052e-4ed3109b8f2mr50682271cf.73.1761932695194;
        Fri, 31 Oct 2025 10:44:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5941f5b5cc4sm639106e87.72.2025.10.31.10.44.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 10:44:54 -0700 (PDT)
Date: Fri, 31 Oct 2025 19:44:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjiey <yuanjie.yang@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, robin.clark@oss.qualcomm.com,
        lumag@kernel.org, abhinav.kumar@linux.dev, sean@poorly.run,
        marijn.suijten@somainline.org, airlied@gmail.com, simona@ffwll.ch,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH 08/12] arm64: defconfig: Enable NT37801 DSI panel driver
Message-ID: <epz7tibi4kduo6agfirr4fe477dakdccwob4xq2nz6qkjqakr6@jmweqjka4xgd>
References: <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-3-yuanjie.yang@oss.qualcomm.com>
 <wuh7agcgg6spghilnx4amqukaaydj25u7kbdiod7fl6pu2ulvm@pmosyuo43cyw>
 <aQF98RvLuOlJZlFi@yuanjiey.ap.qualcomm.com>
 <38c8e26c-08a4-42d9-8f6d-93969af90d50@kernel.org>
 <aQLOaI3ngjswi7kd@yuanjiey.ap.qualcomm.com>
 <7c1e0cb5-2483-4efa-be52-84cbe5d1a4b2@kernel.org>
 <aQMOz4P2/WyjXy1b@yuanjiey.ap.qualcomm.com>
 <4e444fd3-b079-4e0c-9449-1c119e1d710a@kernel.org>
 <aQQevC/Jd76rTNSU@yuanjiey.ap.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aQQevC/Jd76rTNSU@yuanjiey.ap.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDE1OCBTYWx0ZWRfXzPs/JhUo7hib
 MoqvApct9kJMnoKnk2IbTZ9TkxESQZBVgsrBvh1xGuYc/y2tEB9sjJbxKsIYuyIAwNVwfJfx/j0
 kJ1XpMsOF4HxpXjDv8LCnCI6dTA4Nl6xIvC4hNqWdrFbTOWM2nRN6CEeNSyFn4HA60iabgqkVs+
 mgC0xvAXTz+QZYg5qOV0KRgLA62DFXcu50hyLK9kQC2aXEM3rpC4D3rwbn8T1kzdgMqkXBKW5P5
 6ij18Xu33LpWPIT6XuX0NXlKWW2wJfzxkBgnDmaQQ1Qh/u/XpcbgD/KQ9Pw6tsPmprtGupfrpQZ
 y0olnnwQoRIrkc9ph1lvPNQ9OWPB37DjwAEJJ2Zhv9bPSmj+TeGE+1o5HIKPwSDFZ6LrIImeJrv
 ar2WQNrLzoh/BdOxxt93p9P24lD7AQ==
X-Authority-Analysis: v=2.4 cv=Bv2QAIX5 c=1 sm=1 tr=0 ts=6904f598 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=P-IC7800AAAA:8 a=EUspDBNiAAAA:8 a=SA9wRs256TnAP9KdDBoA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-GUID: Bp9qsNVXzOqLgcrxdjBiY6BkYeAdTmIP
X-Proofpoint-ORIG-GUID: Bp9qsNVXzOqLgcrxdjBiY6BkYeAdTmIP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_06,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310158

On Fri, Oct 31, 2025 at 10:28:12AM +0800, yuanjiey wrote:
> On Thu, Oct 30, 2025 at 11:43:49AM +0100, Krzysztof Kozlowski wrote:
> > On 30/10/2025 08:07, yuanjiey wrote:
> > > On Thu, Oct 30, 2025 at 06:37:40AM +0100, Krzysztof Kozlowski wrote:
> > >> On 30/10/2025 03:33, yuanjiey wrote:
> > >>> On Wed, Oct 29, 2025 at 02:05:20PM +0100, Krzysztof Kozlowski wrote:
> > >>>> On 29/10/2025 03:37, yuanjiey wrote:
> > >>>>> On Mon, Oct 27, 2025 at 10:51:23PM -0500, Bjorn Andersson wrote:
> > >>>>>> On Thu, Oct 23, 2025 at 04:06:05PM +0800, yuanjie yang wrote:
> > >>>>>>> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > >>>>>>>
> > >>>>>>> Build the NT37801 DSI panel driver as module.
> > >>>>>>>
> > >>>>>>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > >>>>>>> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > >>>>>>
> > >>>>>> You (Yuanjie) authored the patch, but forgot to sign-off, then Yongxing
> > >>>>>> provided certificate of origin, then you provide certificate of origin
> > >>>>>> and send it to list?
> > >>>>>>
> > >>>>>> Please correct.
> > >>>>>
> > >>>>> All the display patches were jointly developed by Yongxing and me.
> > >>>>> So every patch 
> > >>>>
> > >>>>
> > >>>> So two people were working on this absolutely trivial defconfig change?
> > >>>> I have troubles believing this.
> > >>> I want to say these patches I am first author and yongxing give me support, so
> > >>> I think yongxing is second author.
> > >>>
> > >>> I want to express my gratitude for Yongxing's support in every patch, so I included
> > >>> both our names in the sign-off for each one.
> > >>>
> > >>> However, if my intention causes any trouble for maintainer, I can remove Yongxing's
> > >>> sign-off from this patch.
> > >>
> > >>
> > >> Please read submitting patches to understand what Signed-off-by means.
> > >> Otherwise I have doubts we can accept your patches - you simply do not
> > >> understand what you are certifying.
> > > Thanks for your tips, and I learn some tips from submitting patches: 
> > > https://elixir.bootlin.com/linux/v6.18-rc3/source/Documentation/process/submitting-patches.rst#L524
> > > 
> > > I thinks below sign should be true, if you also think it true, I will use it in next patches.
> > > 
> > >  Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > 
> > How does co-developing match what you wrote "give me support"?
> OK, I will fix sign, will keep sign below in next patch:
> 
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

There was already one and it doesn't help, because co-developing means
actually developing together or one after another. "giving support" is
not co-developing-by.

> 
> Thanks,
> Yuanjie
>  
> > >  Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > >  Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > 
> > 
> > 
> > Best regards,
> > Krzysztof

-- 
With best wishes
Dmitry

