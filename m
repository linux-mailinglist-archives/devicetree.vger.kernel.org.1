Return-Path: <devicetree+bounces-179214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AC5ABF4A3
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 14:46:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E4E98C0A1E
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 12:46:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30671267AF6;
	Wed, 21 May 2025 12:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pFdTEngw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EAC6221D9F
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 12:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747831614; cv=none; b=fmnF8lqZQu0NqUCk2JdijMavOU5g3l/VhBtgFjot7QBpxFw3/SDmLJ8i2BH4bq/K8io0fIBXnxzsxkr5sf4tMlybZHNhotM5St+3pdcsK10wWYJ5cFXYzbNadVap4k4dZTCF7cM3o0XlXc2OowH7nFl6nQOqoLwtKpqaL8jV2ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747831614; c=relaxed/simple;
	bh=Xqeu1aJ9MItEqCaHvO4dZVDW/+gda4kJKzaek2qb/UU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ljHPNAe7lNWw5fBKyC9COYlWPPggwVtPFSbGzytcjEuxAXRCzZ9qY0pSq0HUl8sAEXBE2Kjnav3B4m29bsHGRR0CGGf3VmNPMKLQI2kuCXBeY5gjwVqxYAWGqQwmr9AxN3SHUrdvo6zNtWdfKso3H6ZmWfy+BzF5qqWb42fPp7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pFdTEngw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54L9XKGq020586
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 12:46:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=sDTfHXY5P0IUFKShT7L/9f91
	7VhrL5k2KweIDi5wmfs=; b=pFdTEngwWRO0CNSUUa02wThitfFtqjr336BgyA80
	CTQ9jIeELHzB2Vjs4HosseT/LLzKbQ8EXjrr+IU0cZepeiYK51O+IginuP7ffyU+
	jTWkC7yv1E27pZxpHYWNxy6Etoa1mnHoknH7m6VFIT2IzFkn4Itjqg5BekNhz6Jh
	bhwxiZCjpUZldll7dOmJMZ2bTs+pCb6s8vP+JY9Sdfbr3TPOxWD2kNNWDzrHg9ts
	QXrQd0ZL7B/SDWKRtcAGwRafT8aSa6LHK7iKijXh3z3UGz2q+c/eCmiy+jNwH8cB
	M9HPqXCeFJBQbxv7XQAgRwqP7RFZIAYz860dKnJpCrfVvA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46s9pb16x2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 12:46:51 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f8dbab898cso69958966d6.3
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 05:46:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747831610; x=1748436410;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sDTfHXY5P0IUFKShT7L/9f917VhrL5k2KweIDi5wmfs=;
        b=N2iG7aTiZpoK+2Tj7YWCpsU6lwPWO0GznwPPbMY9YQ3cbzT6Cu62tlJfLt7aJ6tPsK
         1OikTaorDuhJ0vVAjYqR0jcFBDNxPy+CTbwgIDq+daN1e3jleet7HprsFD9RYL3ehYNX
         4mE0/wYI5cPVDEOWhRRW7vXYXS9rShtkx2Upbh87b3iBePGIAhkHSBEJ0mT+gDZplib1
         8nXGvY2/uahFIXF977rn1PGEG9RNYG0phtOS1BKiPp80qdZUSYlU9w7V/IgM1EhAUDeJ
         MeYe6lOeLz7coEArHK58DHk6/2t+J/1aKwOUKU/ZqAt0iAoLs1oqJNN0UReAYwFriK0z
         tgaA==
X-Forwarded-Encrypted: i=1; AJvYcCXersaV25bHDQkXmqhbO33WDRJcp0lfcGVaZPKM6u945wFeOYBtIKUiR/YAqjAieZutG+BL6/FMqL+p@vger.kernel.org
X-Gm-Message-State: AOJu0Yyv0dRjTHAQWoobABENihFBnl9itxUnpWcVonAIIvNTLrZgWdnk
	QZm51LtuiHuMFJTZpuN0/Nhgsuls+KrtOKJf7ANG47Cd5y1Dbhv0yfh75HhcqiN8SkTbHViQlQ/
	Ptw9JIM+KqCY+uzLr+qRi5eKNFRxzpS1flHkBxuhRyJguNXI+qVWz6IggdDNhxBnQ
X-Gm-Gg: ASbGncu8s974rW8LRNJKso9WKmo+ZfYHDIwjIU8whrrEu5txm8Uqn6IiO9cEYXpDqSr
	Rfd7jBExSwx8qRodIRoRrDH0S1DHJkkWEwQvVECp7FdaT/XQSYASb2iU9mdiswRQ8E4K/AZ4ILM
	whQLnjTRFrAUSvCUY7HRXOgVZXsMTqdgGvYUmARmRUaIU/PFG+oSm5VMc7us3M1czvAZ7Q+355H
	+X6pqleoV6ixoXpNoBy8amwuBNBLGgmyFGUPFu0Lok5zE5Bg8C/NOxYoSu7ZHcmkP0Mx7+ezfT3
	4Qsoaj7KcnptY2sb7SjxqHC96AMOcLvzurZAYuqstcuyXknJBxx/NQorWNch8efoKGF0EVAg9ik
	=
X-Received: by 2002:a05:6214:2403:b0:6f6:33aa:258b with SMTP id 6a1803df08f44-6f8b2d44cb2mr310212006d6.45.1747831610326;
        Wed, 21 May 2025 05:46:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKrrceDDu+GLUk9ALbLga29Hnv6Ac2h9d892IylQS5MNstSZj4gPJnCFx3NnyAWf0EeS1rWw==
X-Received: by 2002:a05:6214:2403:b0:6f6:33aa:258b with SMTP id 6a1803df08f44-6f8b2d44cb2mr310211526d6.45.1747831609859;
        Wed, 21 May 2025 05:46:49 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e703c2f3sm2798700e87.214.2025.05.21.05.46.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 05:46:48 -0700 (PDT)
Date: Wed, 21 May 2025 15:46:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v4 02/18] dt-bindings: clock: qcom: Update sc8280xp camcc
 bindings
Message-ID: <the3rt4gwb766u5tmzzugoozkyt3qw7kxvy6mlemxcqb5ibs37@szcq2rzbukma>
References: <20250515-videocc-pll-multi-pd-voting-v4-0-571c63297d01@quicinc.com>
 <20250515-videocc-pll-multi-pd-voting-v4-2-571c63297d01@quicinc.com>
 <20250519-barnacle-of-beautiful-enthusiasm-4e6af0@kuoka>
 <ec4ee2f5-162b-430d-aeb9-90ad4559707b@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ec4ee2f5-162b-430d-aeb9-90ad4559707b@quicinc.com>
X-Authority-Analysis: v=2.4 cv=WJl/XmsR c=1 sm=1 tr=0 ts=682dcb3b cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=P-IC7800AAAA:8 a=mlDIMNG6S_g-ndTHxx4A:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-ORIG-GUID: GbcH8WN2ctpF5os6kOX5TQSqASI3kHOz
X-Proofpoint-GUID: GbcH8WN2ctpF5os6kOX5TQSqASI3kHOz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIxMDEyMyBTYWx0ZWRfX7dXCO3Z2dnaI
 Mu1CjmDgeV8QiEE/jy6VElP99Q4oq+GuMSIgE24+R8fi1YS6IiNlHn92ZiMVxJESLU9/aVl9Udl
 W1Yr5Wb5aSTYV7jIu1ORBbD1zoWbvXJxLwlKwNOo+VEzlKYjgFAqAn5sPgiWWyenNpNuMpPN3F1
 QQfxSuHOqW+FqTSwpIRvh10XNcuTG61XGzC+h1f2pclpsYcQiCi6vnq4XqSD331mc8i8dRIP1Wd
 mMZFLlb40/IHiHfl/SCZwUb16+SFOy9ylYSnOWZdeYOyDiLLV1C8gtK8W3JtcCtYp2tpPkEhruJ
 YW03P/TqG9gmla1Mo9b4N4PW8eoUOzxPnFYrBD7wiNs1ZfnYqJIgbBra64xkND1ysm1ZerXF7TJ
 xDPuWwdDl64yZJbxvSkDJbOcH7VHWjzmgFfR/MN3pmddojbrRs08A4NaLwJ0Q+01JGPwxNgf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_04,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 mlxscore=0 adultscore=0 phishscore=0
 mlxlogscore=999 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505210123

On Wed, May 21, 2025 at 03:32:34PM +0530, Jagadeesh Kona wrote:
> 
> 
> On 5/19/2025 1:48 PM, Krzysztof Kozlowski wrote:
> > On Thu, May 15, 2025 at 12:38:47AM GMT, Jagadeesh Kona wrote:
> >> SC8280XP camcc only requires the MMCX power domain, unlike
> >> SM8450 camcc which will now support both MMCX and MXC power
> > 
> > I do not see change to sm8450 here. This makes no sense on its own. You
> > do not move compatibles - what is the point of such change?
> >
> 
> I did the SM8450 changes in next patch (3/18). But I agree with you, this needs to
> be more structured. So I am planning to drop this patch and instead take care of
> single power domain requirement for SC8280XP within SM8450 camcc bindings using
> minItems and maxItems properties based on if check for sc8280xp compatible similar
> to below snippet.

I think it is a bad idea. I liked the split that you've implemented:
separate bindings for platforms that require MMCX (and MX), separate
bindings for platforms which require MMCX and MXC (and MXA).

It might be better to start by changing SM8450 binding to support MXC
and then adding SC8280XP to those bindings.

> 
>    power-domains:
> -    maxItems: 1
> +    minItems: 1
>      description:
> -      A phandle and PM domain specifier for the MMCX power domain.
> +      Power domains required for the clock controller to operate
> +    items:
> +      - description: MMCX power domain
> +      - description: MXC power domain
> 
> ......
> 
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sc8280xp-camcc
> +    then:
> +      properties:
> +        power-domains:
> +          maxItems: 1
> +        required-opps:
> +          maxItems: 1
> +
> 
> 
> >> domains. Hence move SC8280XP camcc bindings from SM8450 to
> >> SA8775P camcc.
> > 
> > Subject: everything could be an update. Be specific.
> > 
> > A nit, subject: drop second/last, redundant "bindings". The
> > "dt-bindings" prefix is already stating that these are bindings.
> > See also:
> > https://elixir.bootlin.com/linux/v6.7-rc8/source/Documentation/devicetree/bindings/submitting-patches.rst#L18
> > 
> 
> Sure, I will take care of above in next series.
> 
> Thanks,
> Jagadeesh
> 
> >>
> >> SA8775P camcc doesn't support required-opps property currently
> >> but SC8280XP camcc need that property,  so add required-opps
> >> based on SC8280XP camcc conditional check in SA8775P camcc
> >> bindings.
> > 
> > Best regards,
> > Krzysztof
> > 

-- 
With best wishes
Dmitry

