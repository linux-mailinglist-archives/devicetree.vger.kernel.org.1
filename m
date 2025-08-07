Return-Path: <devicetree+bounces-202513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A1FB1DC91
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 19:43:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F043A7ACEFB
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 17:41:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 345D627381F;
	Thu,  7 Aug 2025 17:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ecyrRxmU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8688926D4C0
	for <devicetree@vger.kernel.org>; Thu,  7 Aug 2025 17:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754588603; cv=none; b=k/Y9+IBxOYYNZE+I1QZWEDtnwB0k0m7wyfrYm+Dghnl5J8hrN8ZGE6ppFWUPB+GH2K9PmTdATIpcL1xk2hVDMMja2LJgeiaZwhSHxZ6vHmrcw7qdzODiiPdzZH3+ASK16yTU4DpOXLy6Fm8/gOY+3+oo8l7VMksZL+cSGax5v/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754588603; c=relaxed/simple;
	bh=dpMfUqMkPEZFzkDx+RIwLWt/VjBtoiMcVkHsHrUhtfY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pbv59Svq3bMmdRgvvKjw5R1k3QIf5TyiaKfWpQ110F+AKm/ZYtN/FNSEAd40qzMiUVhj2+g3hIgzfasfx/yulS0EdKKDQd3sYtOUJFEDCQVc/KIAPwzcD2fvC8okuNJDCkih+wmybaM/bDfnozMO7iMY6dS1q9ULeMi6JA/I7AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ecyrRxmU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 577EDSEs014539
	for <devicetree@vger.kernel.org>; Thu, 7 Aug 2025 17:43:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0Od/ZKluRoSM/BcGXTLmoioXy7cALgrxeTgJ4Ai4K8w=; b=ecyrRxmUU6zl246I
	xFMYsIP5eTH0gyle1zY2TSg4SMK7L8ER11a4Hf0d+T98Mq8mKSPk1Gi3P4tCcfF2
	ta/mnuwX/6ZqozRGC+H+qgj1oUxaTe7+nSXBXOaRRtJzHw1GZj8w/8ZSDJMMb4E0
	LRmJFUp99QFWF/WGNA27dGNxG5ylYquypAi/9bukp5XneZcn2l31+dm5XM3TkT//
	7fYK3tq2MHI9ePNFswCvpIWXxvBLSjUN6h7k1sUZ2lEHL5P9ALpeAiFWtsQH0yPa
	RcmpezzArzg+ahXFC1PlcSLW9rxawZFeOisOErFmiThOBFBFq9SOJPkFqCXsAPC/
	+mz9Hw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpw2y4pa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 17:43:20 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b07ae72350so2552501cf.0
        for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 10:43:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754588599; x=1755193399;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0Od/ZKluRoSM/BcGXTLmoioXy7cALgrxeTgJ4Ai4K8w=;
        b=S15Md0GzkRr0+zKm32EF27oEO9NhWtASk27irpLPfjfhKEC+zJethyHRJXvHn7u937
         SbuVkpsucCOiBIVJBMpeWjcUdL37zCC5DCEFbhgyq1ok6NR5o1oWysq6Z5cRvCNKf+n0
         7kgMHnJfIekPuCcOxVCeSj7qbnertaf09TmDWt/ZdSk8u8lU3nfM21wTpr0vMt5LAbCA
         m01j62xAFhJb2eAv3ZuSnhbvTJitbr/K9u8vF3hK78+PQkeb39kx1+fnngzq1j0J32aC
         XK2hgCJd1wiT2/7QjLGgMKve5JM54+OQVgWudUh+fxDC9vM5jMd/0+OyBdit6mCGHfrY
         0t3A==
X-Forwarded-Encrypted: i=1; AJvYcCUp3zjsoZJWxkjHN7OhgKaDUek3w/i+ou5Vxo/Dvn5tVWo6pqHc/lEW1L9dUN+d8KeKILKDenfY8fu0@vger.kernel.org
X-Gm-Message-State: AOJu0Yykmp7ddsgd7FMvGrGgSfQ5t0ECv1ULQQ3g7JsnPNRdW5IXyEjk
	irQmz+/kFff5uKk+0S0yLZobO6Q8Tyt9jCHTsklD18nEzPWY+l+FW/QxLhojgEAjhK1+jB7mlDa
	CFdN8JPIYGQ+b3ZQsg0j7CSie8nQAmiCXdVUNbpUbpNgYyyRx6thGXvxSZWBiQC/k
X-Gm-Gg: ASbGncs5N50J4vp0YymgbA0uda8aGUCN/BBM5B65smBOkcc4Nat6wmFNzijPmTYaJOU
	8BsT/pwqadmT6OoIZSGyFJK6uMivHlbIKWr/wbpYxyMERNfXms1j3ADmDfEocN/Hi9fnXayFSfT
	FFlbpy7h1sZZ9cokI5PE8GY5WwClrifZKohIBVTRr4Msiz7Qh8A4VZsFuqaOiC9tQxtBwAgTOCC
	dvwALAVT3p2cKKQpcCEmz3SFblACcX4nUKTuIr1HUbSZBVLP6tX2QjXAthgZoAX71HExEkOYSDj
	653ND+1Ef9TS3TE18GTjlWxkj3yX4gdJ6WiLfa/CI76ntmnQLHiq4aZIhMqNOl3HuY1ehw7VWUk
	58vB2oPTf2erLZEV6qQ==
X-Received: by 2002:a05:622a:312:b0:4ab:63f8:ef30 with SMTP id d75a77b69052e-4b0aed0af18mr1366041cf.3.1754588599009;
        Thu, 07 Aug 2025 10:43:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFHLFzrAlG05kU0lQgJu60RCziGvOVzGLUIw/jn+UFlM1u+n2p8sqqoxnN8rbCSwb2mMlHI1Q==
X-Received: by 2002:a05:622a:312:b0:4ab:63f8:ef30 with SMTP id d75a77b69052e-4b0aed0af18mr1365771cf.3.1754588598476;
        Thu, 07 Aug 2025 10:43:18 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af99604e648sm347662666b.6.2025.08.07.10.43.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Aug 2025 10:43:17 -0700 (PDT)
Message-ID: <8c7f8cfc-2090-449e-b6ec-688a0021bac4@oss.qualcomm.com>
Date: Thu, 7 Aug 2025 19:43:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 4/4] phy: qcom-qmp-ufs: read max-microamp values from
 device tree
To: Mark Brown <broonie@kernel.org>, Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, mani@kernel.org, conor+dt@kernel.org,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-5-quic_nitirawa@quicinc.com>
 <f368b6da-1aa3-4b8e-9106-3c29d4ab5c5e@oss.qualcomm.com>
 <fe2bc07c-8fe9-47fd-bcd7-c2f0ebbd596f@sirena.org.uk>
 <aed1de56-fafe-4ccc-b542-69400b574def@oss.qualcomm.com>
 <acf89420-743b-4178-ac05-d4ca492bfee3@sirena.org.uk>
 <599b8a4b-324a-4543-ba27-0451f05c3dfd@quicinc.com>
 <3aa82f65-4812-4bf0-9323-96f40824a004@sirena.org.uk>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <3aa82f65-4812-4bf0-9323-96f40824a004@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Vbz3PEp9 c=1 sm=1 tr=0 ts=6894e5b8 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=lkdlCDLHdhMUbxeqZWYA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: OZS1-F2jFZspq9L9SnbhbSOU33_Qan2w
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOCBTYWx0ZWRfXwH7tFGkJXMLn
 ima+/+5314nU2QIAKNOZpm0Llh6L9PH/vXSVwXxO0qZM4lvyJxRY+W563IWAAvUJA0/1hBkdl+i
 7R5Skosegu1TcVf54xVICG5wGc6GPHWERX3Ev5El++SRavUAvgKlcgRm7lZCF3zE85/BOifbfVt
 KqOFGDVwBZtsztdSIW+bz0wyZ6+i8OxfdBsHOwUnvCQimXRiyjEc6BZEfAzqf+Hjbetg6mQ4Upd
 GBdpE4tVeXd/245Qe7iWQVbHywGBjG2lJqohRd5OQpD1+9jKd3+ir80w67EmCCMoyKh2Ocm6a5m
 KtZ4h8/MyM6ar7UVAOQYNBFlmuAaaIMCzHPmBFai3eM8YVTKyaOh0hvC8RkxOQIsaHXhq35vSOL
 Yd+FIRxG
X-Proofpoint-GUID: OZS1-F2jFZspq9L9SnbhbSOU33_Qan2w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-07_04,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 adultscore=0 suspectscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508060008

On 8/7/25 7:26 PM, Mark Brown wrote:
> On Thu, Aug 07, 2025 at 09:12:53PM +0530, Nitin Rawat wrote:
>> On 8/7/2025 7:14 PM, Mark Brown wrote:
> 
>>>> The intended use is to set the load requirement and then only en/disable
>>>> the consumer, so that the current load is updated in core (like in the
>>>> kerneldoc of _regulator_handle_consumer_enable())
> 
>>>> My question was about moving the custom parsing of
>>>> $supplyname-max-micromap introduced in this patch into the regulator
>>>> core, as this seems like a rather common problem.
> 
>>> Wait, is this supposed to be some new property that you want to
>>> standardise?  I didn't see a proposal for that, it's not something that
>>> currently exists - the only standard properties that currently exist are
>>> for the regulator as a whole.
> 
>> The UFS QMP PHY driver is not the first client to use regulator_set_load or
>> alternatively set load requirements and invoke enable/disable or
>> alternatively
> 
> The issue isn't using regulator_set_load(), that's perfectly fine and
> expected.  The issue is either reading the value to use from the
> constraint information (which is just buggy) or adding a generic
> property for this (which I'm not convinced is a good idea, I'd expect a
> large propoprtion of drivers should just know what their requirements
> are and that a generic property would just get abused).
> 
>> These drivers also define corresponding binding properties, as seen in the
>> UFS instances documented here:
> 
>> UFS Common DT Binding ((link - https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/ufs/ufs-common.yaml?h=next-20250807)
> 
> Note that that's specifying OPPs which is different...

The microamp properties are in the top-level, not under OPP if
that's what you meant

Or are you perhaps suggesting that any device requiring explicit
current requirement settings, should do so through an OPP table
(perhaps a degenerated one with just a single entry detailling
the single requirement most of the time)?

>> There was a previous effort to introduce similar properties
>> (vdda-phy-max-microamp and vdda-pll-max-microamp) in the device tree
>> bindings.
>> Link - (link- https://patchwork.kernel.org/project/linux-arm-msm/patch/20220418205509.1102109-3-bhupesh.sharma@linaro.org/#24820481)
> 
> That patch also fails to supply any rationale for making this board
> specific or generally putting them in the DT, AFAICT it's one of these
> things just pulled out of the vendor tree without really thinking about
> it.  The changelog just says the properties are in downstream DTs.
> 
>> Currently, the regulator framework does support automatic aggregation of
>> load requests from multiple client drivers. Therefore, it is reasonable and
>> necessary for each client to individually communicate its expected runtime
>> load to the regulator framework to put the regulators in current
>> operation mode.
> 
> That doesn't mean that it's a good idea to put that information in the
> DT, nor if it is sensible to put in DT does it mean that it's a good
> idea to define a generic property that applies to all regulator
> consumers which is what I now think Konrad is proposing.

Yeah, that's what I had in mind

I was never able to get a reliable source for those numbers myselfe
either.. At least some of them are prooooobably? chosen based on the
used regulator type, to ensure it's always in HPM..

That said, our drivers cover a wide variety of hardware, built on a
wide variety of process nodes, with different configurations, etc.,
so it's either polluting the DT, or polluting the driver with
per-compatible hardcoded data (and additional compatibles because
fallbacks wouldn't work most of the time)

Konrad 

