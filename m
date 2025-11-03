Return-Path: <devicetree+bounces-234369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6113C2BA7A
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 13:26:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C0DC83B79EC
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 12:25:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CC4330C359;
	Mon,  3 Nov 2025 12:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LPf1DRAK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jz3hwTdL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A202D0C97
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 12:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762172682; cv=none; b=bFDcFYynAGfk4Tc2oaPv3u4ukMceHX5/KGU2gRY1EUSAULOpHnsaTyid7ol3Amo+EJqm1pKs5sgDolqt0j6J8bnHnphCzjR6pI++QAuHA5MS2+YyOSDYI0NqfZlrHnfT03ki28AABa16GWO3cqkCiejc50X6mbbtTT8aQvDz2+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762172682; c=relaxed/simple;
	bh=vwzBSD6YjCzeEO2eiRf2nhfCnTbIY4rkNTdkJaTw0TE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p2dmO5lwKbAUzYFFwyTYt/lyIIynESF23z1tVVyOpqVpn9OoAKVq35PTdIShYbF3pfzPK0boO2+2BMp9FMSWycKiZ0Ss4ijPnYHBvuEe+q54uvD7iY1drBNp4pLTkDaWYWunyEotTudre27EYTAdS/YaBnz+yUMweR5VwtIPmac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LPf1DRAK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jz3hwTdL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A3B7ZDr2984011
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 12:24:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FdIQ6Czmd1hHUaY52E30LH9FRShtyPrpnnnsHJC/oT0=; b=LPf1DRAKgWnvBy7x
	A0oDBivhqudxXd0xLWe7aYcGsA/hBnyMVvCk7p+nMaPDHkq0cPSJXTloY2dFJm2P
	/DLZotJH7oUGS9FqNB3kDfsBRbkX8BOZPdp/wg6JMAyqToSJcYRwSGGis417txla
	LVaDwzjBCNDpkIdiQfN200AXEAa7NW7rM62z+pSkSI8IT8Tzpb2hEeA7yy2x8RPB
	w/jAejjEn9P5J16JxzgQ1glVZdaZT05F7rOVsVEojzXIgoEhCjiP4mf9phQUj8XK
	2/7gp6XkdibD7TwKK0j9567izCJHG48tZTmdc8Qxsr3HAgHtxUd5b6eFnrfNB9C3
	UtykYg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a6u8b064a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 12:24:39 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e8a35e1923so16632731cf.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 04:24:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762172679; x=1762777479; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FdIQ6Czmd1hHUaY52E30LH9FRShtyPrpnnnsHJC/oT0=;
        b=jz3hwTdLVTn7GYAziYs6HatgJxCc3iwqL587LIFNEwDjjbigfke8REep+qsw3YtthN
         ULojs+Mp2VAmc5encgEVYIV49hxE8TqucDHXQIVR1obKTd8DEchorSm436XlWZgx1y7U
         njmeBk+PkPvd4uvQdKsRLw3sLHtHSe6M0p8jGuCOdpOx+5U+1BfvNpS5Bu/wXRDGpE/5
         0Uc0hpNUwTUXmogIJNJfTn9c+BekXBEJHXrE9l53pkEliHcTa7YP9uNdx56oD8ZRZdX/
         wyiewqUMaSD594Ku+MIPE+No0IopOSm63lZOaytIj3aVG67otxW1Ep+nu9bf8onMBiC+
         Q9ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762172679; x=1762777479;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FdIQ6Czmd1hHUaY52E30LH9FRShtyPrpnnnsHJC/oT0=;
        b=B3i6KxeWZ4SpVjJABubVRCzcUZZej3jvDXsloOF2xrXzRCNdQ0d8/0K5wgAL6YjQtv
         SfWHm6WabaKWgkbNtbPR1mAaaPXfNG27PCScYroeHICXXJ1En5R0hMFkl1FeOxglw9JR
         POpGnYOrbLBjH3etCQjo+SvNZv6umI5oAiDJ+6AW+JZNy8IosBefzF+kgBOnwkxEJD42
         RnhFCHO8SQucVemmBYOuEWvMxzVn2iaDebBcM2542aOpauLJ5//mkfUop8Sld3edmfVv
         iFl06NhyMj10HTn3Rc19VRjVd1zdAfIztBiD1mHH13OkwVCBoX0EjTgdS+LW+R73iMbw
         nAuQ==
X-Forwarded-Encrypted: i=1; AJvYcCXy6rHCyGh8clUZSVS63voUdwiARN4wuM3yH3f3AFJUwTKNj4sItfMAvWfEu9+HysL5rtuvPB2uy2LD@vger.kernel.org
X-Gm-Message-State: AOJu0YyR8VuqGaLECdtNvPPOk0baEuJ1OeCSQmSaze76FCUZG7jhz/bu
	Q2cah7MPAKz+3K5v0N9QjKVfcctFzbK1f+wAEOw2T+3jaCCyYwz7k0PHEVZeszI15oTL3yMJptf
	eYiI7pRX5g0t/idVQQK6mISwSdzVIbdAEiuuEDCx6C3bIIURVXL+oiqs7QAnJAoII
X-Gm-Gg: ASbGncsmNPHO1yglgyNKxIQOTLrZrC/tUD9UF/qFJxf2bB7Pyg2ic+E7W8Ii+7wygXw
	eqjiGhB4QYDSMFfOuQX1gEJwxst22XY+mPSNe+NQ8XpQdXHN2y9iG44Me5mxxO/hSE1qO9PIZDT
	/e8r36ljTYpFfKLFo71MXthgadcVL4Zea3OyZESCvBHf5vIV5sEnB8ZcCYOirvpvx8xCXeTBagv
	W29fcFPBIYRmlZzJ/SQdYiifC9alhPUoxUEN2JEMESvuMPvN8PrDA9/FAwqxdl83TLUuzZr7WBB
	vD2o5Vn7uki4ncmlNbC7f9D+oaiq17MigNMFVh/yJdyYIbzfgGQjEK2Q4Vxk2IowXYMsnC/KuVm
	OT5haUmJkf6vSIg+lkLeVNqRQlj10N93of7q7FtUJ+Wak/TIczmtPAMhR
X-Received: by 2002:a05:622a:835c:b0:4e8:9af1:366c with SMTP id d75a77b69052e-4ed30f7f5bbmr89420771cf.9.1762172678765;
        Mon, 03 Nov 2025 04:24:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHKC7c+sG3ScBo6GxArZhv36vSpltAdRIVXXFR8SiQD5USW8CgQ/o9dQtWKno1nX8BCx1zJ/w==
X-Received: by 2002:a05:622a:835c:b0:4e8:9af1:366c with SMTP id d75a77b69052e-4ed30f7f5bbmr89420631cf.9.1762172678275;
        Mon, 03 Nov 2025 04:24:38 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-640af968e5dsm4919370a12.19.2025.11.03.04.24.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 04:24:37 -0800 (PST)
Message-ID: <89d1eaba-557c-4df6-b65c-b2105ec20788@oss.qualcomm.com>
Date: Mon, 3 Nov 2025 13:24:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/7] Various dt-bindings for Milos and The Fairphone
 (Gen. 6) addition
To: Luca Weiss <luca.weiss@fairphone.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Vinod Koul <vkoul@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org
References: <20250905-sm7635-fp6-initial-v3-0-0117c2eff1b7@fairphone.com>
 <c93afd94-9d94-42fb-a312-df6e26bb2bc8@oss.qualcomm.com>
 <DDZ1X799V2KV.269J9YL1AGCIF@fairphone.com>
 <0fd020e4-636a-4bb3-9c22-7a5b16e4d3c3@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <0fd020e4-636a-4bb3-9c22-7a5b16e4d3c3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDExMiBTYWx0ZWRfX6BI+LiRtihqZ
 j0z2ik/Xw8FdAsISMR5X0aHNNSJzh3nfXYtt6uOecnI3TYZLmeCqyfjwHAizOvOnq9D99jyeiIA
 DmSvKOCZynGgcPRem/8tdh+JT0cTFnagHccB8bg3Kb1XsEX2wZHpRSYQWopy9fYYaVYFnVEPZX4
 Y9juvkyt898e6WtEzjFmYCwWpODfg0SvIXY4h/SilMyKrT7H31Jcwod84f8F26C9QbfYliEm2IG
 R9svrBzYN7KNdkCQj0HxfszyfgZNf+o4qIbZV6R8W5URda+ZZS7OHLp8u0cY8b3/VS6LanvLNst
 QxEgVj8DEa5D9xqZk80HSo73fJl7uioc1xE4SLBWNrc+psaRRmifW3iBgfnN7kEID62a6JveO3s
 UhvPLH8+WY7OhFCRM4kS6L0elbpodQ==
X-Proofpoint-GUID: CHvOA1NQRkg3Gh-SRLDbqjTSD6Yl_JqS
X-Authority-Analysis: v=2.4 cv=Ha8ZjyE8 c=1 sm=1 tr=0 ts=69089f07 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=efwxOTLiV638Ii7ixkkA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=Soq9LBFxuPC4vsCAQt-j:22
 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-ORIG-GUID: CHvOA1NQRkg3Gh-SRLDbqjTSD6Yl_JqS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_01,2025-11-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 malwarescore=0 clxscore=1015 phishscore=0 suspectscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511030112

On 11/3/25 1:23 PM, Konrad Dybcio wrote:
> On 11/3/25 1:17 PM, Luca Weiss wrote:
>> On Mon Nov 3, 2025 at 1:14 PM CET, Konrad Dybcio wrote:
>>> On 9/5/25 12:40 PM, Luca Weiss wrote:
>>>> Document various bits of the Milos SoC in the dt-bindings, which don't
>>>> really need any other changes.
>>>>
>>>> Then we can add the dtsi for the Milos SoC and finally add a dts for
>>>> the newly announced The Fairphone (Gen. 6) smartphone.
>>>>
>>>> Dependencies:
>>>> * The dt-bindings should not have any dependencies on any other patches.
>>>> * The qcom dts bits depend on most other Milos patchsets I have sent in
>>>>   conjuction with this one. The exact ones are specified in the b4 deps.
>>>>
>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>> ---
>>>
>>> FWIW this looks good.. where are we with regards to the dependencies?
>>>
>>> Are we waiting for anything else than the PMIV0104 (as part of glymur/
>>> kaanapali)?
>>
>> Hi,
>>
>> From my side, I'm not aware of any patches that have any unresolved
>> comments, so I'm essentially just waiting for the correct maintainers to
>> pick up the variety of dt-bindings patches in this series, and the
>> PMIV0104 and PM7550 series.
>>
>> Any advice to make this actually proceed would be appreciated since most
>> have been waiting for quite a while.
> 
> Apparently I misremembered, kaanapali actually uses PMH0101 and PMH0110
> and PMH0104, whereas glymur uses pmh0101, pmcx0102, pmh0110 and pmh0104
> 
> (it is not easy indeed)
> 
> so it looks like PMIV0104 only showed up with your series.. and I'm not
> opposed to it, let me leave some review tags there, and I suppose I'll
> just ask you to rebase this series on next & make sure the bindings
> checker is happy

Well I apparently already left the review tags there.. please resend
all of them (2 pmics + this one) as a single v4

Konrad

