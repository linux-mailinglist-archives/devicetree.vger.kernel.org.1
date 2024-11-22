Return-Path: <devicetree+bounces-123790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C689D5F7C
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 14:06:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A6D6C1F2164B
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 13:06:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7CE81DE89D;
	Fri, 22 Nov 2024 13:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f6vlWPsy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F7B01D86C4
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 13:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732280764; cv=none; b=Jri3NlqECoTRphdbf0rylyjLe2yMxkXJeN+1mliu/7eTdwRJiRakNko0OGaXVGnVtaA9h2y8nTOd5sfbzbJiHJ3rpb3VXnb7SkZKxDP3n6JG49oCz3u/PkLufkDXzl+PIHTaLV4w92f4sAQUho6AVrb+pzRGjkgAHof4hsQPpLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732280764; c=relaxed/simple;
	bh=/dlSRdirAmXldQET2Ge72ybo3eTzSkqiDtwo9z4OH6s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JYNQk3g1z7Jn8tPGWI/AbZ596wxt5VkdrxoUNWBd3dPDC6woKsj4tRflN4x/i5NTtIO2nZ3/4fUWeC1TE+twiUwBZ0cXjT2C50OyfPLhaIWoIh6P6bBfa2tF8bvz7n/2KrueoA7VjS69CDfFNK5H+lJf6EeCACkJLucAJeBsaUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f6vlWPsy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AMD5f0o020913
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 13:06:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AaHOhFj0Pi9aA28279AVxSRISiCPQlgDopG/l4doSPc=; b=f6vlWPsySXRWFdVI
	5d8H0BCO81pc9bio5up7KvMApRgzFdoP2+MX4H2BW2GCIQx7TMqAkQMeNBQu9QnA
	rLy2KKkDYX1+vSzZPM9rZYx2VoWkdjmbQyNdCIblYgEqaAADrHGH8HXKYdtLJDzG
	ZpvHzrC5Sq+E8TqWZifEHXGgwBz2Aifv9Nokb+YHE8zkmgNtH0+QKGSqc+slNJfT
	sE+QI5Q33jtEuRYedFzimpK6viF96ooEOut7pGqD0BWcvzkYuRAOyJAk5Ai1S90O
	EhwJMtZDSsCItq5NIos8x3lejiTa2v6849Jv754+80PRCaljX0SIlNrkvtnO5lrd
	fRvqOw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 432thpg07w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 13:06:02 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b1440702f2so14656885a.1
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 05:06:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732280761; x=1732885561;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AaHOhFj0Pi9aA28279AVxSRISiCPQlgDopG/l4doSPc=;
        b=pvI9Uhsck7Pin9+KDYgjxvMMLu/LW9Y7bm9V20r2byECroKAI8Tu6y6dDChM8BT/v7
         Wh1yw/8I0KxEchabhjsiLdhZauhx6LkXrKcqWYcOsH3uobnbulT4SjaQiCZNsyHfyFBr
         q5PJlOmcaOEVOS7m7mH1Sr+GLhPgrzhDZco+67DR0pCrDFQ0ULdWIuJcoj/wYF9iIHvI
         xhHCroltfWylxa8kvXT6M4wwPCUrWl5KBTxPSalsNxuWrp8l0PHOltu/oQqbZ6rkR6s1
         hWzoBPLmNPW6oNQxUiEF6YpRAjHS1Hy5ok01zLjyCTxShHANhEMQhGFbhTzJ6Xq8EPih
         osqw==
X-Forwarded-Encrypted: i=1; AJvYcCWdU+bJUdVz3yEIa/pRM1wurB9SVhYNoT4Rsf1hMnrCCv+MS9OXI/SdGyQ14oYM7p7KQ0m/50lVBADB@vger.kernel.org
X-Gm-Message-State: AOJu0YxsYUtKPWrhLX9iajNMV6sLBojgIninTe0OIHhlfEEnwEKyxmvk
	+UoQPEQYAbMpM1GEYqL1FNQPCHPacPEeM7fPy5HmsjgX5PCcgU8LO9qXEX8SZjsR9qIpKakgsdm
	/PbhpwVT5rmzE0LOVdnkSaQDlypK/JYuYKyWOORFJUs2oUog0Aamvl72nwKNB
X-Gm-Gg: ASbGncvZc7tUloFckJzDYeBlypTz5P9b/pyfzzl3bL0UI7UMFR5ehVBDrZCyY7h9Ssp
	vFMyi7b1jgT9DI30C7B6iw2VoL8khpcXv4bAMRUQ7bDKaMpRQXs3ZTGpbQxz8Uj68XUZhu+0zbA
	IcAG3tdCG12YvxEqIdxCFuu4Bfrc1BVV3jzR6GSuAOb+cpn0yFBZNi6EedjZ7hWelDJRXmZoUM+
	0lWmiicssnj9VnU6U68Hbl8nA218ipoTvftMzscs38G1DI3sYU3K15KzG0vyu9sjwp5Q6+Jb1LJ
	gperWE68iSht6p3R4Hmlcjg0cLpTPQc=
X-Received: by 2002:a05:620a:2982:b0:7b1:4920:8006 with SMTP id af79cd13be357-7b51459e2fcmr143208285a.11.1732280761240;
        Fri, 22 Nov 2024 05:06:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG7jXetbMhOkrobfsZwzS9OMeNJtv9q6mIqwiOPbk/X99BrgD/3iA9g6QNlS2xUlHcrhl5i0Q==
X-Received: by 2002:a05:620a:2982:b0:7b1:4920:8006 with SMTP id af79cd13be357-7b51459e2fcmr143205685a.11.1732280760662;
        Fri, 22 Nov 2024 05:06:00 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa50b2f41d1sm96992966b.59.2024.11.22.05.05.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2024 05:06:00 -0800 (PST)
Message-ID: <0eaa951b-5eed-44eb-95d8-8220bc6c0ca8@oss.qualcomm.com>
Date: Fri, 22 Nov 2024 14:05:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: sa8775p-ride: Enable Display
 Port
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_riteshk@quicinc.com, quic_vproddut@quicinc.com,
        quic_abhinavk@quicinc.com
References: <20241120105954.9665-1-quic_mukhopad@quicinc.com>
 <20241120105954.9665-3-quic_mukhopad@quicinc.com>
 <lkovymvjsbd44v2huij7paikvnmo7i7rrmkmvpha2wn5sc4hr3@ppr2dgvhzy6d>
 <a741b71b-af04-44aa-9e08-a3f852b8a801@quicinc.com>
 <qpdponpaztryzacue5vtythr4b4cu6fohmgiwlzredm7ky7caw@eose6vpy4e7y>
 <4da87d98-823f-4781-b138-c6f6caae38fb@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <4da87d98-823f-4781-b138-c6f6caae38fb@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: hPMxBEtejh3k8sP8LBRj8PPPce4X7VMQ
X-Proofpoint-ORIG-GUID: hPMxBEtejh3k8sP8LBRj8PPPce4X7VMQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 lowpriorityscore=0 mlxlogscore=999 priorityscore=1501 phishscore=0
 suspectscore=0 mlxscore=0 spamscore=0 clxscore=1015 adultscore=0
 bulkscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2409260000 definitions=main-2411220110

On 20.11.2024 12:53 PM, Soutrik Mukhopadhyay wrote:
> 
> On 11/20/2024 5:13 PM, Dmitry Baryshkov wrote:
>> On Wed, Nov 20, 2024 at 05:05:50PM +0530, Soutrik Mukhopadhyay wrote:
>> > > On 11/20/2024 4:42 PM, Dmitry Baryshkov wrote:
>> > > On Wed, Nov 20, 2024 at 04:29:54PM +0530, Soutrik Mukhopadhyay wrote:
>> > > > Enable DPTX0 and DPTX1 along with their corresponding PHYs for
>> > > > sa8775p-ride platform.
>> > > > > Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
>> > > > ---
>> > > >  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi | 80 ++++++++++++++++++++++
>> > > >  1 file changed, 80 insertions(+)
>> > > > > diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
>> > > b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
>> > > > index adb71aeff339..4847e4942386 100644
>> > > > --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
>> > > > +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
>> > > > @@ -27,6 +27,30 @@
>> > > >      chosen {
>> > > >          stdout-path = "serial0:115200n8";
>> > > >      };
>> > > > +
>> > > > +    dp0-connector {
>> > > > +        compatible = "dp-connector";
>> > > > +        label = "DP0";
>> > > > > Thundercomm's SA8775p RIDE platform doesn't show such a connector. At
>> > > least not on a device advertised on the web pages.
>> > > > Are you referring to this product in the Thundercomm web page : SA8225P and
>> > SA8775P
>> > Ride SX 4.0 Automotive Development Platform ?
>>
>> Yes
>>
>> > For this particular product we
>> > can see
>> > eDP 0/1/2/3 serving as the dp connectors.
>>
>> Please correct the labels then. And also please mention why eDP2/3 are
>> not included / tested.
> 
> 
> Sure, we will update the labels in the upcoming patchset.
> edp 0/1 corresponds to mdss0_dptx0 and mdss0_dptx1. We have validated only these.
> edp 2/3 corresponds to mdss1_dptx0 and mdss1_dptx1, and these are not validated,
> as already mentioned during the driver changes for the same.
> Should we mention the same in the commit message for the upcoming patchset ?

So the box on the store page has these 4 ports next to each other..
Please take the additional 2 minutes and plug in a monitor to the
other two ones as well.

Konrad

