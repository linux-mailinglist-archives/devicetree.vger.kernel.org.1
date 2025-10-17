Return-Path: <devicetree+bounces-228148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C24BE8C7D
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 15:17:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 44F6C4E52A6
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 13:17:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1625C34F46D;
	Fri, 17 Oct 2025 13:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jlLyrrzw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E195B34DCE6
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 13:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760707065; cv=none; b=D8qI8yg19RNS5iVozCqL/c4JO9iTG2cgiV2U3DduMEWHzH2H+QDXB2XTlJhUmtfSTN7ZyOREw2bPyDX+fnRxOKYNt0skugs1ubibbHFzw0skuNsgvo3eZg1O9SOEpz3g3mgyIyjys2N2Exupilck8NRbLSQrXHBFv+7KLAVnHhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760707065; c=relaxed/simple;
	bh=bBet7OKcIFo8/SortnaFr6ndbpW4yi8PlghaYES4Z50=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZJLClovwNyFfki6ji0IWVAEBAAfYhKZXJ+z8HPPwf7gy+JvdnPX6MHXgCROsq9Kqu2YKoKvbr/+NRFlxRSijdBO29/99zGrCBDiGYYVoHaSYLmaRy3+iw+ayFmiKOKLKgvlDKz2d1cFPtBntEhfExSHWULQnHZqSmpKiu2lXzwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jlLyrrzw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59H8JaZB008868
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 13:17:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3LILjlfqEYOLQkEETs/dYDTn
	PSt3uyaP94CFMKgd6Sk=; b=jlLyrrzwtrCiJc+Phc1WGAhn3uCYpQEpV6fp4kmQ
	IgSDmMmz4nwq/hXvFoNCiLhVJQQ2/gHO/M2xmyip868BiXM7Wa5rhetqO2bY2Vkj
	dX77ZmUZpKQ41bKC4YLYVbfYTpsaXiScROwBzLmsR/6VsfoME4Vi4ksSJXoKXxJy
	ywT4AnumPn12zPcWe3TOUBv52zWiNFm1wU2Ir9VyuRG0DN4JPfrX8IckxmsAO/sz
	B5HSU7OvjAiz5JQhl6hIC6B8GYIX2rE6c/o3l4xzvXioX04K4TKxKvn+lfjvxhV6
	VZp5BuiJ3Etwr0MwahRyuBBRJTQVie5h7esPIr9IaejlIQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rw1argmt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 13:17:42 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-87a0e9be970so66180976d6.3
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 06:17:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760707061; x=1761311861;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3LILjlfqEYOLQkEETs/dYDTnPSt3uyaP94CFMKgd6Sk=;
        b=NSr2tiQRruBb8x949HMLDP6AfnaN46YXPUiXRfe/wY5YnRQpTXR8SgQOaUhnsmi6p4
         fhcmgzgirzM3GU55dd6dwOyDu0dyGrKAA0ZXFVfm789einJqPYNNWlmxQlKJgmxH0lfX
         BgVcEJV95gnflk9bzz7nzx/nIO3MDDXIDmkULR3Fq/CXcohrU2CujLAQB+hhgCH55yG4
         eITHGcK0kT5b0LHqH24uAQzPqueFqB2a00M8566Xnh6UEhbT9sTWBslvuvIEQTGjZ3xQ
         aGMPNb7xLy0ilMK5luI4kJQsGa1d33Lzg9NNDiU//kvyG88B9Fwn24MUutoCnNn1XCvv
         ZjDg==
X-Forwarded-Encrypted: i=1; AJvYcCWiBaBAH5ACAZ+0rqCycZpcVQ1cZZ6BsicVekEhE2g9XIKg1Tnspy2QWsZkW5H6ef9Q8nncd5oofPbi@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7YPFfVyhQ62dbyxyWZByRluFGmxcVxHqm8FH5F8hQLcIEEBw5
	KiQCEkGy0hw56SCiVK9Q+QZGtdkbuHH75rGGBb55CHNO8rtgj9EhPTa++v+Ij6c69HTgmXw6b6T
	GmN9PNPgKws2Xt7InBVy1DXXVdqqLxtGXO8Jncx2WmfSchZM2+O6E5PIM4ZXRb7kB
X-Gm-Gg: ASbGncsIOEXGE6GzrYKupNk9QPdcODHzOuijBGeHT4uer98DghMttuGRjKeksdUPCNP
	vF7Sd3FnDWvJoDSyFE8x78VAvES5QjsRJN47y0qqmnEjz7xHefHRwdUf1ckvW8/5mKamEe7XzIX
	eBW9x63t6rM6QPSFToC8I8UxMOXVDB5+ZlPxNl2MkfkOy7lLZoPvSZmsb4NQaUFyMbvIU+eWsWv
	nbRC8LUf5IhY1j7jNHavciRlkMwVttkre0BYevG+tmGidwCx7ewCR5tDfXgHvTCCbHmVZy4NMx9
	JHGdPUQGYSMdJY3rSYuBLmNJtDvNzNXqNd+25bR6CCz8TNm5vTu02CfoltsNQbKHU3f2/g4AXUK
	fEzRNMficGeT4icQ7VDaoTU2pGSgxbPikTp469/0HarlnQKLJVIBqdnczSj/97RwZwXPZk0Y03b
	AwPFatRkaYQmw=
X-Received: by 2002:a05:622a:1482:b0:4e6:ebcc:23fb with SMTP id d75a77b69052e-4e89d2b9904mr60570371cf.36.1760707060781;
        Fri, 17 Oct 2025 06:17:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7v+jw5TyUGE2GPu1mMtX3P0F0LCVH2wPKYMO3Oz7sZ6e30VO+kzOqFROiuxwu8cIa+k2C/g==
X-Received: by 2002:a05:622a:1482:b0:4e6:ebcc:23fb with SMTP id d75a77b69052e-4e89d2b9904mr60569691cf.36.1760707060268;
        Fri, 17 Oct 2025 06:17:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea3ee2asm60957181fa.50.2025.10.17.06.17.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 06:17:39 -0700 (PDT)
Date: Fri, 17 Oct 2025 16:17:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: prasad.kumpatla@oss.qualcomm.com, Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rao Mandadapu <quic_srivasam@quicinc.com>, linux-sound@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: Re: [PATCH v3 5/5] ASoC: dt-bindings: qcom: Add Kaanapali LPASS
 macro codecs
Message-ID: <nvomxjtxisrwb6gnqf2xvzo2sxgwsoquvvdiujrbhvjm7atwgw@g2jpwjusfcz4>
References: <20251015-knp-audio-v2-v3-0-e0e3e4167d87@oss.qualcomm.com>
 <20251015-knp-audio-v2-v3-5-e0e3e4167d87@oss.qualcomm.com>
 <6nyqz5fsqyqgtsqk6xxm4iorzoelhkgnghm5xczh6iamvmdfpa@2vff2lk6sq7e>
 <3d96ff4a-1d3d-4089-b571-b4d28062566a@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3d96ff4a-1d3d-4089-b571-b4d28062566a@kernel.org>
X-Authority-Analysis: v=2.4 cv=K88v3iWI c=1 sm=1 tr=0 ts=68f241f6 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=ugvR7wMMjgv2hvCkpHgA:9 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: 8cAqJfmsxMILJj1VifBrrFeDXqiJ0H73
X-Proofpoint-ORIG-GUID: 8cAqJfmsxMILJj1VifBrrFeDXqiJ0H73
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAzNSBTYWx0ZWRfXy5dlsRyKI5s9
 T832jLI7z0YxfiIvx6cq8D6ZySA4xSYoXRwVXg7tadSPhOw01V79CCwjAf+r4d1AUo6y8A2n655
 vVCJG8T4kcndmLd7FJQyZioatfM3loPo/SmsUMPjSouKXJiKLdM9OBTlS9vCcfVjd478kW9qj2e
 0F5pbhOxyheqKRkJTHHli52Cw2hGwY63JyqTt12YJoS7uyP0YIVFX0rwygd3qS+xIcwzDTHbCTW
 g+MasyIcKMl2bGsIJ8jmimGW85SK6QkbG2FaoIFwSjurIb+JyyGbgmcLiIpIAM4Kd95Y7UeDzI7
 pREAsSOVq1iKVPZkGY4Ug8V/bp6h9wDi0A7P8X4xFW/tCcoouwPK+nSyaQXKtqhOPsaeK9uBWqg
 EfPJcuLxo9dfUbPjmf4qcQ+zVGPTZA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130035

On Thu, Oct 16, 2025 at 08:59:29AM +0200, Krzysztof Kozlowski wrote:
> On 16/10/2025 02:54, Dmitry Baryshkov wrote:
> > On Wed, Oct 15, 2025 at 01:27:19PM +0530, Prasad Kumpatla via B4 Relay wrote:
> >> From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
> >>
> >> Add bindings for Qualcomm Kaanapali (LPASS) RX, TX, VA and WSA
> >> macro codecs, which is likely compatible with earlier SM8550.
> >>
> >> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> >> Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
> > 
> > What does this serie of SoBs mean?
> 
> To me looks fine (see v1 and v2). Prasad wrote the patch, Jingyi changed
> it and sent. Then Prasad took that changed patch and changed more.
> Perfectly fine.

ok

-- 
With best wishes
Dmitry

