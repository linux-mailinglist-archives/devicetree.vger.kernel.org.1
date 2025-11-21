Return-Path: <devicetree+bounces-241077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 77911C78EF1
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 13:06:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 842FD35DA66
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:06:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C74993451AA;
	Fri, 21 Nov 2025 12:06:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ToSpSG6b";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XGlxi1CI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5F534B433
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 12:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763726796; cv=none; b=se/JgFGwKslsjH5LfeiJ/IpSTms3geiBebiFon9Vh+5z38neBQIMwCiRfxRr/AEquYQGkUotsKvCLSox7mcLihjGakz777XJV+DNzgB+KZ/L2yPskFbP/Zz5OXF4xlGzU+LjlbiimPZ/w+Ih6KbUi1mySVvV2td7mbt7ufVfNo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763726796; c=relaxed/simple;
	bh=746rsNDjBMk7Z4rpwkbRd3clz6HoCvs/f7su2CgWID0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BNRNfRcYnKTMOBEcEcIGWRi+szRjbOrGHYtaHzHrgipKuKctf0r+/owHYXtyJnFUmFCQgcTYvdnuFnYgnoIaB5UJrTVhZxpwtJNM+qDRZHB2bmNRsvwIiVFcm2HDb0HKGPrCfsGylgWElmbjcku6BHdbkefqbSR026H0M2mK/Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ToSpSG6b; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XGlxi1CI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL6p3aB1637216
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 12:06:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PN7S3HLUxf2qPXs19dEiJhwg1jcc8AI9kWIISyH/wQM=; b=ToSpSG6b1gROt/Uz
	gPRe+Xf2stRQhInSyfG2UjYx0Qz0kMMxd1XZhrsbd9Uhrw9FMARLi3H35RmzAc85
	RGcWwH/Ztl5wmqsxzRfy+OTDj5VFu+JZ1dqfr25nkJXWkY5vNBm7jBqw6mrR8icw
	9O9mAJyAyiKoajI9aZF+r/T09ZID3HzQPblW+AYM3IvlGlm6c9nD6q59t986EJo9
	TCgwaDFSf1jrOpG8C143ABVo68A+LKvFtd4hSy6NUXKzThlD9paUZGWeHYiittP1
	CEPiGAzCNoGvZZ0unbv2IU7cePywL4uIEtJl/lGfphFNSd88eb7wL55iwVqeVcZx
	dkUMHg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajagatgme-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 12:06:34 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2e2342803so583221785a.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 04:06:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763726793; x=1764331593; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PN7S3HLUxf2qPXs19dEiJhwg1jcc8AI9kWIISyH/wQM=;
        b=XGlxi1CIMLLH4iXxs+EWvm+w2N1PYCcyn3mwX3vVyj9yQ8DBHZkHqpPWonyzphTrAm
         SPBN2zoJEzfIRB9FylTkOmqFVSsTW7vdyTcKxLl9itzlmPUzmGG1X+4E0UxAGjzkGDoF
         0TR0gi+WHy1044WR78EF5Go4pTCHlXraq5KhakPdULYtfwupHwqfjW3wPVicKU0nXTtF
         1XfztSkDGc57/oh2n8HbJ9eMPRPV/FA36B+/G4Vs0uF2+ChtnNrjle9BeLhFE7r5C5qL
         PtWGW40CxcnmdfUYg4f567g0mYIiEcg9EJQ4d2m8JQ+X2DBmOz28kDj7MN6SlSRz9g1X
         yugw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763726793; x=1764331593;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PN7S3HLUxf2qPXs19dEiJhwg1jcc8AI9kWIISyH/wQM=;
        b=UVgNnxx4cRboA2yyUKOgnOGud64V0sGI2FFcohceQSpmoDa70WEjBv6iDLQ9wxHU66
         wnzYR/YRhHJ5MaK5I+fgr7YqjYRdGm6dwYB8P1uU0BjKXr+gYEnPME0MLTQ/a6t9M4Gv
         vJ2IcChGaPYir/pZd+7awQ32YItg/PMzCeZy6lCnLxpNZbovjq3SgwQjJZ2njKjEutk7
         K/kpyyYSV/ShVmdPketzAPzOubIZR++eMewB50Vwyu7efp7UlqkR8PtdJSPEZvpOQIJZ
         FAZbbnYJ6Bj4+qb/p04AEl4CENucVKpT9PER87d2hAiL+a0bH7SKuX67/ZZJUmuNG8Ab
         4bHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWzbEXWtE61NComzGMx0Dp4IbYopDiWM8U79dOEF0JHTUzSPrIL7yO1cVH8t+g2uSaY0yNqqilhfIeu@vger.kernel.org
X-Gm-Message-State: AOJu0YxUuVYT85FQRYUsgymc6fV276jtS4F0/HjkX4p2sQ/CA1cc7G8P
	nVPvsWeqtszIO78Y56pbI6dP5k6MZAxIyKS6w8D0GGf2LkPbVv9dndyLQH/CN+Irrd/qi8jKA3J
	G7PccPcD7bktgW+0Bs6YWs25ak9EeqJ/O04oA2Id+ZWmp6icTz/5FZE1QPDMcmeMRXPDN1Chb
X-Gm-Gg: ASbGncsAvEaDkqvDd/zfpvnUIWIbww9aFoPSUSX2BQ510r3X80udk3FRNN3/6OteW3C
	Mgr9YyB9Fa6a3N4ajiAizAvl06JFnFxFkcspCLenNX4OS/H6wrIRlDSHVfjfpGd6xVsT3ZB7nru
	/8zmNvVMpTRiYDmELf/fW3GmBekWI5MbeyCzLOCC1C28HqrcM9g9t02aff/3n1A7vpZaQ09K2a4
	b+EKC+tO5EnTeRyQSReWcJZ9S8qJsEFl5sjp3cBYV27O8IbJPGYt2n+nNLQE/7LkpB22BOX0AAv
	r3RoI8QPjnwuoeqqvc6Yr5L0bjiqcIbyhB68B1zsCD8wy7WtNsxqVo5Sr5a4NLxjof8lPadDAGS
	COH5UJyk8jfFBAAOHD7L9vGuOjzMGKzckmvb4UKPTaMJYVyW7qnVfN/r0NZAUyQCbwwfkZhrCyp
	wV+7RzjTImXMZctWHu4VmYakg=
X-Received: by 2002:a05:620a:3952:b0:89e:b0bd:ced9 with SMTP id af79cd13be357-8b33d479f3amr169642685a.43.1763726792724;
        Fri, 21 Nov 2025 04:06:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHVxJT0dkqbL63v+yDnIa9azbsS2UNRO5ETOjevr8q4Iyn7dt3ADYoCwmgRAlqpudCLKZLITQ==
X-Received: by 2002:a05:620a:3952:b0:89e:b0bd:ced9 with SMTP id af79cd13be357-8b33d479f3amr169636885a.43.1763726792257;
        Fri, 21 Nov 2025 04:06:32 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969db81b1dsm1532937e87.23.2025.11.21.04.06.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 04:06:31 -0800 (PST)
Date: Fri, 21 Nov 2025 14:06:29 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Cc: Nickolay Goppen <setotau@mainlining.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, linux@mainlining.org,
        Chenna Kesava Raju <chennak@qti.qualcomm.com>,
        Bharath Kumar <bkumar@qti.qualcomm.com>
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sdm630/660: Add CDSP-related
 nodes
Message-ID: <vlvieye2nwrh77l74rxlusuc2cwos754b7c7a5hfrjl6eothsb@4xftv36j7utj>
References: <a3cb6633-1595-41e7-8e87-ca48a98f822c@mainlining.org>
 <83c3aea5-764e-4e60-8b16-67b474f19357@oss.qualcomm.com>
 <d17548bb-ddce-4d60-8dc4-2c0633989299@oss.qualcomm.com>
 <f5c7eb1c-28b1-4cf1-afb0-b993384b7712@oss.qualcomm.com>
 <80836b8f-16a8-4520-ad11-5ca0abb3403e@oss.qualcomm.com>
 <99c22e73-797c-4a30-92ba-bc3bd8cf70f0@oss.qualcomm.com>
 <eddc16cb-d951-401c-8fb8-fccfcf600143@mainlining.org>
 <0b06f744-b695-43d9-8da3-4424e2b53a5e@oss.qualcomm.com>
 <ab054cf7-83bb-452d-aa52-d431672c63e3@mainlining.org>
 <d5972f14-6558-4e7a-9b1e-8e899ef72fcd@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d5972f14-6558-4e7a-9b1e-8e899ef72fcd@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Ce8FJbrl c=1 sm=1 tr=0 ts=692055ca cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=NEAV23lmAAAA:8 a=OuZLqq7tAAAA:8 a=yndEOxBYSl4MgmjmzHQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDA5MSBTYWx0ZWRfX5KJ8uT08QV3v
 5kF8mXuh8UB+Kg96AyQ5LWwdoBzlpJpZgfWeZf6sboD5W6BKl1VndrUTn/GA7e+10ClDjIO6Nfa
 FabRAD/6KwJbr2/WV7Dxkoe8nWePa82uwCJWYrKI7qwQqpquJZjncJtj3NknU6oOfL8wqxrV/dT
 5bOLZ1ZtY73BjNUp5sVkTCr65p6MYyKuUqZpATUBU7mYm3/b1FlUkbYuxZchcdNfE3cKDUJRjiV
 RQv3sBAB/Nw8yIPN9YpPjtvScfZguFHoP/4fCuZEmIe7STDCmSJMCEBu03hfsUHRLwGswwuxzzQ
 4ltGj1HKwWF/66vpUKYk/j8nqdP0eIBDCLsaTFHLWz5N97m0qDqtityJQDgrkP8u20V4KhTLPGR
 vY0mph4RIbfVjVr0csWExQ8aDAtG2w==
X-Proofpoint-ORIG-GUID: dOVhHtidhrYJT-miuqvhb5TgY7UZBui2
X-Proofpoint-GUID: dOVhHtidhrYJT-miuqvhb5TgY7UZBui2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210091

On Fri, Nov 21, 2025 at 01:28:09PM +0530, Ekansh Gupta wrote:
> 
> 
> On 11/20/2025 4:52 PM, Nickolay Goppen wrote:
> > 20.11.2025 13:54, Ekansh Gupta пишет:
> >>
> >> On 11/20/2025 1:27 PM, Nickolay Goppen wrote:
> >>> 20.11.2025 07:55, Ekansh Gupta пишет:
> >>>> On 11/20/2025 1:58 AM, Srinivas Kandagatla wrote:
> >>>>> On 11/12/25 1:52 PM, Konrad Dybcio wrote:
> >>>>>> On 11/10/25 6:41 PM, Srinivas Kandagatla wrote:
> >>>>>>> On 11/3/25 12:52 PM, Konrad Dybcio wrote:
> >>>>>>>> On 10/31/25 12:30 PM, Nickolay Goppen wrote:
> >>>>>>>>> 24.10.2025 16:58, Nickolay Goppen пишет:
> >>>>>>>>>> 24.10.2025 11:28, Konrad Dybcio пишет:
> >>>>>>>>>>> On 10/23/25 9:51 PM, Nickolay Goppen wrote:
> >>>>>>>>>>>> In order to enable CDSP support for SDM660 SoC:
> >>>>>>>>>>>>     * add shared memory p2p nodes for CDSP
> >>>>>>>>>>>>     * add CDSP-specific smmu node
> >>>>>>>>>>>>     * add CDSP peripheral image loader node
> >>>>>>>>>>>>
> >>>>>>>>>>>> Memory region for CDSP in SDM660 occupies the same spot as
> >>>>>>>>>>>> TZ buffer mem defined in sdm630.dtsi (which does not have CDSP).
> >>>>>>>>>>>> In sdm660.dtsi replace buffer_mem inherited from SDM630 with
> >>>>>>>>>>>> cdsp_region, which is also larger in size.
> >>>>>>>>>>>>
> >>>>>>>>>>>> SDM636 also doesn't have CDSP, so remove inherited from sdm660.dtsi
> >>>>>>>>>>>> related nodes and add buffer_mem back.
> >>>>>>>>>>>>
> >>>>>>>>>>>> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
> >>>>>>>>>>>> ---
> >>>>>>>>>>> [...]
> >>>>>>>>>>>
> >>>>>>>>>>>> +            label = "turing";
> >>>>>>>>>>> "cdsp"
> >>>>>>>>>> Ok, I'll change this in the next revision.
> >>>>>>>>>>>> +            mboxes = <&apcs_glb 29>;
> >>>>>>>>>>>> +            qcom,remote-pid = <5>;
> >>>>>>>>>>>> +
> >>>>>>>>>>>> +            fastrpc {
> >>>>>>>>>>>> +                compatible = "qcom,fastrpc";
> >>>>>>>>>>>> +                qcom,glink-channels = "fastrpcglink-apps-dsp";
> >>>>>>>>>>>> +                label = "cdsp";
> >>>>>>>>>>>> +                qcom,non-secure-domain;
> >>>>>>>>>>> This shouldn't matter, both a secure and a non-secure device is
> >>>>>>>>>>> created for CDSP
> >>>>>>>>>> I've added this property, because it is used in other SoC's, such as SDM845 and SM6115 for both ADSP and CDSP
> >>>>>>>>> Is this property not neccessary anymore?
> >>>>>>>> +Srini?
> >>>>>>> That is true, we do not require this for CDSP, as CDSP allows both
> >>>>>>> unsigned and signed loading, we create both secured and non-secure node
> >>>>>>> by default. May be we can provide that clarity in yaml bindings so that
> >>>>>>> it gets caught during dtb checks.
> >>>>>>>
> >>>>>>>
> >>>>>>> However in ADSP case, we only support singed modules, due to historical
> >>>>>>> reasons how this driver evolved over years, we have this flag to allow
> >>>>>>> compatiblity for such users.
> >>>>>> Does that mean that we can only load signed modules on the ADSP, but
> >>>>>> the driver behavior was previously such that unsigned modules were
> >>>>>> allowed (which was presumably fine on devboards, but not on fused
> >>>>>> devices)?
> >>>>> Yes, its true that we allowed full access to adsp device nodes when we
> >>>>> first started upstreaming fastrpc driver.
> >>>>>
> >>>>> irrespective of the board only signed modules are supported on the ADSP.
> >>>>> I think there was one version of SoC i think 8016 or some older one
> >>>>> which had adsp with hvx which can load unsigned modules for compute
> >>>>> usecase only.
> >>>>>
> >>>>> I have added @Ekansh for more clarity.
> >>>>>
> >>>>> --srini
> >>>> For all the available platforms, ADSP supports only signed modules. Unsigned
> >>>> modules(as well as signed) are supported by CDSP and GDSP subsystems.
> >>>>
> >>>> qcom,non-secure-domain property marks the corresponding DSP as non-secure DSP.
> >>>> The implications of adding this property would be the following:
> >>>> on ADSP, SDSP, MDSP:
> >>>> - Only non-secure device node(/dev/fastrpc-Xdsp) is created.
> >>>> - Non-secure device node can be used for signed DSP PD offload.
> >>>>
> >>>> on CDSP, GDSP:
> >>>> - Both secure(/dev/fastrpc-Xdsp-secure) and non-secure(/dev/fastrpc-Xdsp) devices
> >>>>     are created, regardless of this property.
> >>>> - Both the nodes can be used for signed and unsigned DSP PD offload.
> >>>>
> >>>> Note: If the property is not added for CDSP/GDSP, only secure device node can
> >>>> be used for signed PD offload, if non-secure device is used, the request gets
> >>>> rejected[1].
> >>>>
> >>>> [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/misc/fastrpc.c#n1245
> >>>>
> >>>> //Ekansh
> >>> Does this mean that the qcom,non-secure-domain property should be dropped from both nodes?
> >> I checked again and found that unsigned module support for CDSP is
> >> not available on this platform. Given this, the safest approach would
> >> be to add the property for both ADSP and CDSP, ensuring that all
> >> created device nodes can be used for signed PD offload. I can provide
> >> a more definitive recommendation once I know the specific use cases
> >> you plan to run.
> >
> > It would be nice to have some testing instructions or how-to, something simple as "hello world" to be able to test it, to see if it works at all 
> There are some test pre-builts available here along with how-to instructions:
> https://github.com/qualcomm/fastrpc/tree/development/test
> 
> You can try running calculator from here for basic offload testing. 

But this would test the signed binaries.

-- 
With best wishes
Dmitry

