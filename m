Return-Path: <devicetree+bounces-251621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A976CF4FD5
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 18:26:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0380A30028B0
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 17:26:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7825833B97E;
	Mon,  5 Jan 2026 17:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="acnHXp8l";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JihDbq+a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFAC219A8E
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 17:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767633636; cv=none; b=jQdtlniqEKbmaJpgq3ug2tTeqYUvqt0nkltf60TmCGekx1Y8L8Ag9hPzJbidRAq0xlKfH4o2ZPpYQu9EEV6PMqj6nNxlo6Fik3yo6jF/NIWat8l15ZAGkThsTfV0KNRxId0GIxjV3tnKpZL1BuzaHflnBz+ljFkf9JacvOPDzic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767633636; c=relaxed/simple;
	bh=HkvBiaLkZQB/XCm2RcDqyMZQP4FwmPg7nmbZ8Yw17sA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hjogz30LCK8q7ZtNyKD0XiygbRQsUGaE0H49U4hs4QgAFRnSznFXHX7yvZpxHCiBoLj+L7R4DVFBA+R8vf54zmN4/djScFW0gcydGJa4tAKLcHiFXVQ1XO10q3xfn5kV30JFX6Gvrwh3pYkqmJ6hRYzdRq7Dqfuqja4Wa2kZOuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=acnHXp8l; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JihDbq+a; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 605AYqpL937043
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 17:20:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DHiFrg5t/UNh1oQC2wzIPwwhl3MV3upU6x3ntNRIRB0=; b=acnHXp8la7C7Qwb6
	NclaxRUMrTjWhEI/h+smfGyqHrAokffUI299zfOdbBbXNDvrsDUkLS7quiTsA8Me
	tf8JEKHW3C70/f/KNWnwsq7/tvvR2zuTdARFcQ0Yrr7i8zAvpySTJCTHrDdUe8S6
	66Lb9s2a9Wfp/Sd2J+91eZiyLI0AFJAnpRvWtdImsEoV8S0sDATdBYP/GApXynD8
	eXRi1Vj3lDsyDA7eUDGkx0R9xbR/znwbZPQSiKwXeqIiiyiq72zttKrSqQZEa53n
	w+9aLJAnzLJAc9rdyUX74Lt/JVkIBfH0uMUKWtE848k5fjLIE6ZV/kjPJV6pgstc
	57ZoOw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgbnv937d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 17:20:30 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7c240728e2aso644514b3a.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 09:20:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767633630; x=1768238430; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DHiFrg5t/UNh1oQC2wzIPwwhl3MV3upU6x3ntNRIRB0=;
        b=JihDbq+adagLmOXxAfGtg4+KQfq84v59ytcncBEO9zJtEr+r+sYhhPh0CFDObXM885
         wGpsE7Ih1+q5wRfIypIbNW9m44iVux+F2lkvJOvf7KqwfTTOGqD0Zc7HLFF11OwkNGis
         P+ZzuVdhql/F3M4Cs5cVKyG8B08KXa2T86WLjUwrHrhoTXQxyieqaphQPlUnwHvbjP8O
         cknTYxilHx046dn4wyQRAJxR4uI7aeJSCX9eNfmCHEQ1qVBL53Eb0GswPC+FJMXC6d/D
         10tcpuUl3+1t+g9cv3cGtJWU5lrr4xc63W5Vxzt/WD0FXXmKHEdDDt3dSu9AFRzvufB/
         W96Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767633630; x=1768238430;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DHiFrg5t/UNh1oQC2wzIPwwhl3MV3upU6x3ntNRIRB0=;
        b=jvFime0omI98wjN7EEhoeFEf26uvTe0D6LOdDRlvay9yI1PfK10QDK4cmzgEDgsT0n
         9YDNNhz4AqFwfrnifOx0cGUbN1xtoeEv6hta2ow0thUtdjsCtF4kE5EiCarVqruv6HFz
         1/u2ndir8B9lNeK573Sn1OppT2ZagMAgrNsjWH58kEoeB69mdjAtp/7MHdzXKCM8Uioy
         N1+JakAIchbU72XHircTVfQh4r7lbCVdetxkf5Gd+GgvPn+Huz9xZzBDRhHpxUKFXknb
         AxaZzF16KYix3ldUyEZFil4NvlfqpRocn3RwsuX0vDIXPmoqYV7SyQo5fe5ZcxHfRL4R
         2QgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwCfotpGuwe8tWgLWgU8loNcnIYLJNclHK8jfiCf2bQ2cPAdcmdrBZIUlB121IM0KPtPCS8RSHqlmm@vger.kernel.org
X-Gm-Message-State: AOJu0YxUZoT4RYor6dSCqxOyGzUk1zAFksXkQ2fYNRDEBiqifF82eItL
	RMEHbvP8ECk8eR3l6LVdELw3kxHGFebkMJCpfEgoYmzeNgLuNei95HDStsm0k6cyfzg5j/c9/Jb
	jregMR5zpNA0qILoarIReil+7vEUPsz6rbOvo1CwPfDqQCTRZQioSLv73J6ay01lY
X-Gm-Gg: AY/fxX4Cn5nb9QhbT5F42pnL6Sz2vx66mf6zoTXPoylsAbMsKz7Gt7+cOwb+gF495/c
	pfr3GgP9G8gspP1crjdAFF9x5atc5LOnTkxHV2njSn3BrI88hcLLqcGqWdzJo8UoK6G51sfF9gm
	EL2kXZ3dRx74HWy5eswtj+pZ1GN77V3KEg9KtLC0fL6VKCMXR9m8Woepe/8iCMoER08QnhFXayg
	BlULx8dvfqJLrhGiyM6RR31W+ujRkWo3AaaShuHLqmcXbBJ00Gcj1Ps0hrwyBhx4DfcoDJfXGxz
	xHedu/IzhywHMVZogoMaSIRPUgZ6SQUIxvsAVWf6LvolLS8zOHE7dnzirR6F6ejoRUWutnsRAA9
	WcX4OsZuxcLx7XMHukMcC1Q15qQ==
X-Received: by 2002:a05:6a20:a126:b0:35b:b97f:7bd2 with SMTP id adf61e73a8af0-389822aa534mr55368637.10.1767633629742;
        Mon, 05 Jan 2026 09:20:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IElAgZKmBLzSEgsjbdp00nEWJPVoGLSNwfo1YQ/FYe6i4rtPXr90JULXq/r66u1BxMJh1qbkQ==
X-Received: by 2002:a05:6a20:a126:b0:35b:b97f:7bd2 with SMTP id adf61e73a8af0-389822aa534mr55337637.10.1767633629141;
        Mon, 05 Jan 2026 09:20:29 -0800 (PST)
Received: from work ([120.56.194.222])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4bfc9789e4sm203107a12.7.2026.01.05.09.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 09:20:28 -0800 (PST)
Date: Mon, 5 Jan 2026 22:50:22 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <rajendra.nayak@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] pinctrl: qcom: glymur: Add Mahua TLMM support
Message-ID: <zaf4uoms75wc7yvmrmqs53couefqsv5oie2hbiwvhitqonbs4u@aq6bcvf4nq3o>
References: <20260102-pinctrl-qcom-mahua-tlmm-v1-0-0edd71af08b2@oss.qualcomm.com>
 <20260102-pinctrl-qcom-mahua-tlmm-v1-2-0edd71af08b2@oss.qualcomm.com>
 <91d2e5f7-7d93-4909-9ed2-6b19abf0b448@oss.qualcomm.com>
 <dayj662qu7tb3l2fuq4sfdxunvkk2rt777vm7dfvdazbwiwpzn@mysrwdbdptqt>
 <adlhkus5gvum6fkd7bxjohwlsiumw7w6w4c36vzphjz7my2644@pmobztmgpdvx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <adlhkus5gvum6fkd7bxjohwlsiumw7w6w4c36vzphjz7my2644@pmobztmgpdvx>
X-Authority-Analysis: v=2.4 cv=I5Vohdgg c=1 sm=1 tr=0 ts=695bf2de cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=3dEILRYKsVIWdVk4w2Qziw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=qW_9IeAHNZvJjEDOEU8A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: rHQ03xZU1UurxoaZNMOFFpr6fCWMFobH
X-Proofpoint-ORIG-GUID: rHQ03xZU1UurxoaZNMOFFpr6fCWMFobH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDE1MSBTYWx0ZWRfX8OKmWPflgx3t
 mrpW1KdggOL/VyQIgcv24ovRkOR+rdeYopGO4FKJ7hAGpbywgAq658h+XIYmcE6i1Vrq/ECJ0p5
 XQfvFtubbvR4g5G+c8qTJ97CBfROlQQ3Vh7Ew21ZfYc26z+iH8dtSSHe1YGH5m2VY2Jk+Fga0lT
 Vh+hDzHTAYrh14TvStZ6Rug+vAM1bEpKgDf3IBM0pVWDw8xS0KC30jxggnXf7A90+MCtwkH3CLn
 pnYdFzAD7VonhFADCMBol5sZh9oee/56Rn2IJ7mw9FJHiLQ9mFzz5QKfHMNMFJ6FlGuQvv3uMAx
 D9SehAK0bIugv5cncZ2xwdBl1zHM6BjbeXjxw9XjABPpoVHLYLBxYG4ZUt84yc5NlDvpjGASQi5
 brU66wfMzkhZMrydvlc/esjUVjAgPxjuWnCCJOiZx26pW7Y+YjryjOtaFWNv040SpnXEM+4DwZk
 epxuc2fTR35aIvtfiUw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050151

On Mon, Jan 05, 2026 at 09:31:03AM -0600, Bjorn Andersson wrote:
> On Mon, Jan 05, 2026 at 11:04:44AM +0530, Manivannan Sadhasivam wrote:
> > On Fri, Jan 02, 2026 at 01:40:22PM +0100, Konrad Dybcio wrote:
> > > On 1/2/26 12:07 PM, Gopikrishna Garmidi wrote:
> > > > Introduce support for the Mahua TLMM (Top Level Mode Multiplexer)
> > > > in the pinctrl-glymur driver. Mahua shares the same pin configuration
> > > > as Glymur but requires a different PDC wake IRQ mapping.
> > > > 
> > > > Changes include:
> > > > - Add mahua_pdc_map[] with Mahua-specific GPIO to PDC IRQ mappings
> > > > - Define mahua_tlmm msm_pinctrl_soc_data structure
> > > > - Update device match table to include "qcom,mahua-tlmm" compatible
> > > > - Modify probe function to use of_device_get_match_data() for dynamic
> > > >   SoC-specific data selection
> > > > 
> > > > Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
> > > > ---
> > > >  drivers/pinctrl/qcom/pinctrl-glymur.c | 43 ++++++++++++++++++++++++++++++++---
> > > >  1 file changed, 40 insertions(+), 3 deletions(-)
> > > > 
> > > > diff --git a/drivers/pinctrl/qcom/pinctrl-glymur.c b/drivers/pinctrl/qcom/pinctrl-glymur.c
> > > > index 335005084b6b..bf56a064d09c 100644
> > > > --- a/drivers/pinctrl/qcom/pinctrl-glymur.c
> > > > +++ b/drivers/pinctrl/qcom/pinctrl-glymur.c
> > > > @@ -1729,6 +1729,25 @@ static const struct msm_gpio_wakeirq_map glymur_pdc_map[] = {
> > > >  	{ 232, 206 }, { 234, 172 }, { 235, 173 }, { 242, 158 }, { 244, 156 },
> > > >  };
> > > >  
> > > > +static const struct msm_gpio_wakeirq_map mahua_pdc_map[] = {
> > > > +	{ 0, 116 },   { 2, 114 },   { 3, 115 },	  { 4, 175 },	{ 5, 176 },
> > > > +	{ 7, 111 },   { 11, 129 },  { 13, 130 },  { 15, 112 },	{ 19, 113 },
> > > > +	{ 23, 187 },  { 27, 188 },  { 28, 121 },  { 29, 122 },	{ 30, 136 },
> > > > +	{ 31, 203 },  { 32, 189 },  { 34, 174 },  { 35, 190 },	{ 36, 191 },
> > > > +	{ 39, 124 },  { 43, 192 },  { 47, 193 },  { 51, 123 },	{ 53, 133 },
> > > > +	{ 55, 125 },  { 59, 131 },  { 64, 134 },  { 65, 150 },	{ 66, 186 },
> > > > +	{ 67, 132 },  { 68, 195 },  { 71, 135 },  { 75, 196 },	{ 79, 197 },
> > > > +	{ 83, 198 },  { 84, 181 },  { 85, 199 },  { 87, 200 },	{ 91, 201 },
> > > > +	{ 92, 182 },  { 93, 183 },  { 94, 184 },  { 95, 185 },	{ 98, 202 },
> > > > +	{ 105, 157 }, { 113, 128 }, { 121, 117 }, { 123, 118 }, { 125, 119 },
> > > > +	{ 129, 120 }, { 131, 126 }, { 132, 160 }, { 133, 194 }, { 134, 127 },
> > > > +	{ 141, 137 }, { 144, 138 }, { 145, 139 }, { 147, 140 }, { 148, 141 },
> > > > +	{ 150, 146 }, { 151, 147 }, { 153, 148 }, { 154, 144 }, { 155, 159 },
> > > > +	{ 156, 149 }, { 157, 151 }, { 163, 142 }, { 172, 143 }, { 181, 145 },
> > > > +	{ 193, 161 }, { 196, 152 }, { 203, 177 }, { 208, 178 }, { 215, 162 },
> > > > +	{ 217, 153 }, { 220, 154 }, { 221, 155 }, { 228, 179 }, { 230, 180 },
> > > > +	{ 232, 206 }, { 234, 172 }, { 235, 173 }, { 242, 158 }, { 244, 156 },
> > > 
> > > Over the "common" base, Glymur has GPIO143 (PCIE3a_RST) and Mahua has GPIO155
> > > (PCIE3b_RST). Both SoCs GPIO maps seem to contain both, but Mahua has a _unused
> > > suffix for the missing 143, which makes sense given the bus isn't bifurcated
> > > there.
> > > 
> > > The _RST (PERST#) pin is driven by the SoC so I don't think it's useful to
> > > have it as a wakeup source, unless someone decides to connect something that's
> > > not PCIe to it (+Mani)
> > > 
> > 
> > PERST# by definition is an optional reset line, but on most of the *recent*
> > designs, OEMs always connect it to PERST# line. So practically, I don't think it
> > make sense to mark this GPIO as a wakeup source.
> > 
> 
> This assumes that all the OEMs uses the particular PCI instance. If they
> choose to route this GPIO to some other use case, they would have to
> figure out that we omitted one entry in this table and patch it with
> the appropriate data in order to have their GPIO wakeup capable.
> 
> Wouldn't it be better to put the correct information in this table at
> this time? If we have a concrete reason not to, I think we should
> include something useful in the commit message to help the poor engineer
> faced with this task...
> 

There is no concrete reason actually. I just mentioned that in practical
usecase, I never saw an OEM routing the PERST# signal to other wakeup capable
functionality. But the possibility still exists, so I'm not completely against
it.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

