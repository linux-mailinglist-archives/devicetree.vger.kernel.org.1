Return-Path: <devicetree+bounces-170425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 697FCA9ABDA
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 13:32:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A2D714A4FBD
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 11:32:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 360B0221FCC;
	Thu, 24 Apr 2025 11:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eLoqEAbR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D7DA20C030
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 11:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745494367; cv=none; b=dY7d8jmHQa0Cy4JbU+pbQfAwNqi6/DfJQpjQVX6pVhEYPzm8U4H2pGoxfJizhR+JRjobSo73nYAV0xDofIczoLXIWjjyLIwjYnuo+glPM8F5vHuWbOMirZR/kKK16qUJSSI5GcWbqfppb7rKOuaOPF29PeIXfjpXg0+s2aQxzSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745494367; c=relaxed/simple;
	bh=CS6HOnMzlOIh4rt+JQgWXVJplUSPY8Dz4kIQKwWC5So=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tX+4ta+3z6bAgLbi+ADjJQFZIyHjPN57JnbjnRn0epFW+IqiJoE7SSa+H7CxWEBE63wCZqTYPa7hcKIfEadpiPsHIEby4WJ37S+DS4m3saRrFY7UCqT2ZazPpj59XOG+zM7cPQyumvAmkD5qxD4JMS+Vq+kZszF4qY9fWTq8gyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eLoqEAbR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53OAbsJ2008544
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 11:32:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=61EDQ7yhc0TXJTg7fz7zJ9Ea
	tL2RLDm8Ww7XI56evFo=; b=eLoqEAbRFhA4WyNcJHFqKS4SV2RPmgG24mRTHIfP
	t/oOfsnB46Zb5kDzroOaS6rIinch1eB2zs08pptQk6FIVP45xzBCuEg+walUm4EI
	QtIbGvvuiHeP56ON06e9/8OkS+05acvez4NSg9UlXnHD/w0a+1XImtGDRiZtb7c5
	y+qpLRvGutPTV+dD4z1JiBuaLddwBzitpfvLtmEwzK1LUlrIyEsdYU5+YXELP0P8
	jsYZbCBfpRXWiiMx/dK3rpGh8GDOlpb4coqRHnHKJBigt45IEJufznm2Tt1y3/zP
	Hk2zbptU7WRpZdmG3AupcmMOHmQHk6XnWnSFZ2Vrj/kgUA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh1nd6d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 11:32:44 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c790dc38b4so169822085a.0
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 04:32:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745494363; x=1746099163;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=61EDQ7yhc0TXJTg7fz7zJ9EatL2RLDm8Ww7XI56evFo=;
        b=tKe3xALhoHX18/lYDrmRlAxxagf9L9eVRTkrhEHLe60s7TRMoBBdEdhztO6VcdjLez
         d8X1epdVMQucvYm8ug8HmgdtGUfxDquJIvDTFTvTQxZ6IiCWiNuKs7UTC4YUNdCDj4AZ
         Tb8xIZ1rg8YWCaIOGzh7KV3dim/P7wqWLUFgm/rrvtiWDxaW2Xuv1Jc3rN8HEBPDRyAf
         RzKYY4dE4+YiAhoNSBuQlz43KBAi1x0oXQMUTW9kbDo9v/ZVfc4R94u7plL+zH8h6MIZ
         dTxboU2OcgSJVv0sYT7lH9rmIqSIQO+thfsg48fTeIxddMTC06Xh7stf1WlkiSOWKOol
         usjA==
X-Forwarded-Encrypted: i=1; AJvYcCVn6i7qspINbML+VHxgy6HY19XRediXyyB28M7i9hwow+km73eGayNUEVmWbsQ+om959708078MPb71@vger.kernel.org
X-Gm-Message-State: AOJu0Ywy2eZeGAMCJQCWfhrXFgsXioAMQGcme4Xhj9jiInSVktfOXu0/
	SfxwdzxsHsGvVKF0SeeKSSsGXCPYedLyhO6dL3+PGQYRyOrRAIK8ATwXYIi79+pWirG+8apBU6U
	g7UhRf4Ox1AXU0OHTzIpftm2xXHA2QCZcvVoid81P0es4VOTmbPaHACR9rY8k
X-Gm-Gg: ASbGncvr8EVaCCfZ7kltOOGV8Z72ICsBAoaK7WXva1c5HbRmC8l5dkEDzeZLpqjCElK
	kozjHdbvqlyjO0RFuveI2zGlEfHZrPPEBDMAO6lXTYxo5+LGYk2tiPZM3UdtzzPU+aoBOPhp2Cv
	VQ8XErIkWb+ObkrvKCx/wIF0NTM/kKUxoSXRHVDkot6TCoH3rtnzrKa6/55/a0nJFVoLJnUKFPo
	I3AfvipRbfcZV9JIIlhiBvew04fqQdI48q94z6vEe7pFnjkc5faqTwPSOBB0e9z6j0EZwdkjbU9
	ef1v/IUeZJ/mskYzz36hNNSkbCwdvycY+pWdq/B0JYCrrADTxdcIoJZRWC7CP01kCHyG7X4ReI8
	=
X-Received: by 2002:a05:620a:4509:b0:7c3:c9e5:e4ba with SMTP id af79cd13be357-7c95865b5a3mr295948385a.29.1745494363408;
        Thu, 24 Apr 2025 04:32:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSF8NXZpNShhA73w7mSe/hny4nEbCfzojEr0ygmGOYju4QA197e90OnCcpK+9TXxCGUsACfA==
X-Received: by 2002:a05:620a:4509:b0:7c3:c9e5:e4ba with SMTP id af79cd13be357-7c95865b5a3mr295944185a.29.1745494363064;
        Thu, 24 Apr 2025 04:32:43 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-317d16a849bsm2347771fa.82.2025.04.24.04.32.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 04:32:42 -0700 (PDT)
Date: Thu, 24 Apr 2025 14:32:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Subject: Re: [PATCH v6 2/5] dt-bindings: media: Add qcom,x1e80100-camss
Message-ID: <lwv5pk3dtyyxgtrwxss43dyecesv7pvrzvgwacwrnztkiowfkp@jqosvhrs3jk5>
References: <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-0-edcb2cfc3122@linaro.org>
 <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-2-edcb2cfc3122@linaro.org>
 <3ec3fd62-bf21-47e7-873c-ce151589d743@linaro.org>
 <54eeb470-cd90-4bc2-b415-6dea1ce2321d@linaro.org>
 <0ab31397-580f-4e5a-b9ad-d9bf79d29106@linaro.org>
 <36feffed-4558-4e59-97db-2f0e916dbfc7@linaro.org>
 <krofzevprczeuptn6yfj4n656qsw52s52c7cgiwotidxmi2xo6@d3q5bb5zbccc>
 <f05cba73-6d8b-4b7b-9ebe-366fcd92a079@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f05cba73-6d8b-4b7b-9ebe-366fcd92a079@linaro.org>
X-Proofpoint-GUID: nKkl0tYv-XO9UJHSl9fKiOhFq2sn1s_L
X-Proofpoint-ORIG-GUID: nKkl0tYv-XO9UJHSl9fKiOhFq2sn1s_L
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDA3NyBTYWx0ZWRfX8gOfP2S0eJA2 sjZGqqpsXnYA1ZpkEIdNFjj+MDPiLAgRH8G72YxvHrySI987hKTTf+XkW7LkPxwq6sUxt9D57I2 EGaIre42oU8vwD4LrNHjoj+L6HJLiqMBc743H8YGzRCtZrt4QLUccHgciHmEFWFlSoFQVGV8WzG
 YNhFi+FV17d6yVXpuBQvOGd/Zn/9S1ylYsiWj4AWCu7ivwz1n2B7yMGeeSQmlJL0DwiwPMXB8m9 17ujfqRvkmSovg/KJZ+hL+v4bZt0Khwi/czAQViTa3XwEQyVaZGSD5VgvleZr/ZNp/BJ4x9i9fg yubGiuQ6arYqqhQWXQ9ivToNMohy0uX8ZkSqk6YouFv/K/g4p6H8dRSgUo7G0rhCIKlqUp7PGiW
 4P2oM8Z+dYL/SJ88HzhxaEMTZKPqNcf5RVQgltvkctEKsOzq/yiKZCYqtjPaIfZJCDmg0c9R
X-Authority-Analysis: v=2.4 cv=ZpjtK87G c=1 sm=1 tr=0 ts=680a215c cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=bRtgI_ysDkPbppu9wooA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-24_05,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 mlxlogscore=774 spamscore=0 impostorscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504240077

On Thu, Apr 24, 2025 at 12:29:39PM +0100, Bryan O'Donoghue wrote:
> On 24/04/2025 11:45, Dmitry Baryshkov wrote:
> > > Which would then be consistent across SoCs for as long as 0p9 and 1p2 are
> > > the power-domains used by these PHYs.
> > This won't be consistent with other cases where we have a shared power
> > pin. For example, for PMICs we provide supply names which match pin
> > names rather than one-supply-per-LDO.
> 
> Yes but taking a random example from a PMIC vdd-l2-l13-l14-supply is
> specific to a given PMIC, so you need to name it specifically wrt its PMIC
> pin-name whereas csiphyX-1p2 is there for every CSIPHY we have.

This is fine from my POV.

> For example on qcom2290 there's a shared power-pin for VDD_A_CAMSS_PLL_1P8
> but then individual power-pins for VDD_A_CSI_0_1P2 and VDD_A_CSI_1_1P2.

So far so good.

> 
> If we follow the general proposal of
> 
> vdd-csiphyX-1p2-supply
> vdd-csiphyX-0p9-supply
> 
> in the yaml, then whether SoCs like qcm2290 share 1p8 or SoCs like sm8650,
> sm8450, x1e have individual 1p8 pins is up to the dtsi to decide.

So, what should be the behaviour if the DT defines different supplies
for csiphy0 and csiphy1? Would you express that constraint in DT?

-- 
With best wishes
Dmitry

