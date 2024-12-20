Return-Path: <devicetree+bounces-133129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAAD9F94F6
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 15:57:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 64A461672B9
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 628C821885D;
	Fri, 20 Dec 2024 14:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KlG+v7xm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C151D27462
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 14:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734706676; cv=none; b=uZBKgzEJCPFypehTuro8qCWzBEaXnw3yqUDhjiBa4A0ELdEGAqN8qqPdl+D9gI9bZq6DKW8y6tSiQhw55EcfV1ps0X+iLnoOtO4ql/iN1Dem918MHlTT6PheR7llPpaoL7mVBpn3F7m6IIFNiSZqUi7/h9bWu1NZzZvHMkdZ4Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734706676; c=relaxed/simple;
	bh=D4lKoZzzzacQz/r7+w6Oibbvv0SEbiPYB2M8cdSlZ6c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EB9sm97UH4TPkdX1FLA8XllPK/HmliZjGlXEY9juHeFY9QKREyLE91V5RsLUnNdnhjHAyKzoXpdD88Ezo7J4XREPFEvoIQ25lE4fPox+nYJ//0PBiQ0gLC9ZLkwpT6u2HKgqHN2kqQJ0q82AfoK5E3CBFbBhsiHEGW0A+nX4m+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KlG+v7xm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BKEflvO003845
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 14:57:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XnmgaMOYWLULeQHqhFGATty08VdlG+W/lq0TDKnDRoU=; b=KlG+v7xmVqecfoHN
	r/rKN6f8moNovc64PHLtNqjXkVPk9HV529JWYlSsxHWyczUTshqXaAkUlZiCIO8w
	zI/CPXjwaHa+Jx+MH/psmJ3l+7KdK+DfE7sH6QvqgMnREiIn/zGNkxxY89getx2H
	gP43WJFvZ04fbtL/ULak0n6Mpbqb/DEtDWSEsF5L+k1/djvWGPdENGvIYHJQurLK
	f8HG5dZRoDk8x0b80Urr756ZiRznJ2BIDOWdDVATp1Q6mS8O9hmyT868SYwhdkey
	damiLV3N68gwYsGac1RpoX8FAb9MDO3oiRfPtxE+FAEwZRFvRIg8Bmhz9iCBye8k
	I0Sx6A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43najt0157-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 14:57:53 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-467a0d7fb9fso5049741cf.2
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 06:57:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734706672; x=1735311472;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XnmgaMOYWLULeQHqhFGATty08VdlG+W/lq0TDKnDRoU=;
        b=OaU0bV9XwjkywRg5dvcJmbZ014MRuukRdF8vGcW8kks5OVlmSeAxBk5TgShXbHWJ/Z
         uyj3/dS+ONjZNjN495WI67K4thkST7y06b98gQ8Ee+h0sxQFZHU45Prd9tbEqT1OzNqb
         agLFWjR1GwePJpsnFxZ4Su1PI56RDJWc/oFOuk40kBOop4DZsyVAu6tgCPVWDbKS24QZ
         mWpEI9/LIw+RAqKZTPnqzAjdXhu/Ro0qu3/3suQxDwqFUpdLRxzzvpzJfWXjgrOTrnXZ
         zdZLwukeRJ+wiEiqjMXI83LDr5DIiCoxQpFre7QufeBSonJ4XiOpFTQC+YsR691sKyMd
         zSyw==
X-Forwarded-Encrypted: i=1; AJvYcCWzTLnuLQrDoKsMHGEM0nlnPkacw6NUNP3jr9lJvJba8uuIEGjgxl6u2Z/Fsku+aSeAfHkTupxl2LdH@vger.kernel.org
X-Gm-Message-State: AOJu0YzdJotE3Ap7QiEKNTf43SR3dK2uEJZ6CScnb6j5lcgtl+6uLDN5
	vtoy8lrHnzT+Maufjx5Pz25vr40Ul/0I0mLBwTk5bnbuDc69px2fPgdWCR1JH3IDNVqP6XXC89n
	BZiSj1t4QsCksEO+gDj37Fc6uQ7Xl2381X9nTNEdL4gGn2DRHW3K2Og9K21MC
X-Gm-Gg: ASbGncu5QcA2gE4sHnOv7OVGmZROA3x+zDr/T+NKZbUehF0ifmnSqJT0lYPcTaj/MxX
	hkNC9Gaj62a4ww16Ro4RLbft7mA3hgv2BdOxaHFDCp7ZpypeKBvA+HXUXUdJe51vwtzNXYrmWTe
	klc3YX3LN0WX05T7sDxZ6lvf58Y3j9HtsFvZKyrA58GkYfr/VcZqmNOQI/c/9tkBu8lSLpKYILr
	5dGrLVP6ioNnH7gE0mRTISBGN3U39nVj0f1/Mne/HpYFGPbV+zAj0KsKAS7gtFwZRTO7gImryUm
	Hn04BwabFt61FSE9vlWWixf8tnLr1r7fU60=
X-Received: by 2002:a05:622a:13c9:b0:467:5462:4a18 with SMTP id d75a77b69052e-46a4a689a11mr19646531cf.0.1734706672461;
        Fri, 20 Dec 2024 06:57:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEu3+VYOVDSPEPrh0c4+R4v5VJv/O9KFRtBxy8bN31SJszHdaNc8IVwgkQZ+PhUv2t29gwVvQ==
X-Received: by 2002:a05:622a:13c9:b0:467:5462:4a18 with SMTP id d75a77b69052e-46a4a689a11mr19646291cf.0.1734706672064;
        Fri, 20 Dec 2024 06:57:52 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f06629esm184361866b.189.2024.12.20.06.57.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 06:57:51 -0800 (PST)
Message-ID: <db755bda-8464-4882-a72b-1d860abcb2fe@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 15:57:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Allow specifying an S2RAM sleep on pre-SYSTEM_SUSPEND
 PSCI impls
To: Sudeep Holla <sudeep.holla@arm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Elliot Berman <quic_eberman@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
References: <20241028-topic-cpu_suspend_s2ram-v1-0-9fdd9a04b75c@oss.qualcomm.com>
 <20241113165329590-0800.eberman@hu-eberman-lv.qualcomm.com>
 <e4509104-c809-4d45-bdbb-a2d754a816db@oss.qualcomm.com>
 <Z2VXgkJ4x5TJTKJ_@bogus>
 <765bb1c8-31de-4aec-b8ef-f141a3e25c56@oss.qualcomm.com>
 <Z2V4IblZNgnS4T2Z@bogus>
 <875342b7-3825-47bf-810a-effdbeacab46@oss.qualcomm.com>
 <Z2WA0o0QJS64ftVh@bogus>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <Z2WA0o0QJS64ftVh@bogus>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Yb5HipegDrYzabhk--dOQTdXV9xC-3jm
X-Proofpoint-ORIG-GUID: Yb5HipegDrYzabhk--dOQTdXV9xC-3jm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 mlxscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 spamscore=0 bulkscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200122

On 20.12.2024 3:36 PM, Sudeep Holla wrote:
> On Fri, Dec 20, 2024 at 03:20:37PM +0100, Konrad Dybcio wrote:
>>
>> I would happen to think that, yes. Especially since the reference firmware
>> implementation does *exactly this*:
>>
>> https://github.com/ARM-software/arm-trusted-firmware/blob/master/lib/psci/psci_main.c#L179-L221
>>
>> PSCI_SYSTEM_SUSPEND seems to be simply meant as a wrapper around a specific
>> CPU_SUSPEND state (which may or may not be only callable from inside the
>> firmware when SYSTEM_SUSPEND specifically is requested, for reasons),
>> in a platform-agnostic way, so that the OS can enter suspend without
>> providing that magic StateID on all supported platforms.
> 
> Exactly, that's how it can be OS and platform agnostic. Yet this platform
> considered to optimise by not just providing it as a wrapper(if it was
> that simple on your platform too) without running any tests and leaving
> it to interested parties like you to mess around to get it working.
> That practice needs to be fixed and this change won't help and once we
> fix this, more such special treatment fixes are needed on newer platforms.
> So lets stop and ensure things are fixed properly.

And then remove CPU_SUSPEND support if CPU_SUSPEND2 comes in a spec update
because it's not generic enough? Sorry, this is not acceptable.

If you enforce PSCI as the only way of doing SMP/cpuidle/platform suspend
upstream on arm64, you should not gatekeep existing implementations that are
actually in line with the written spec, just because you don't happen to
like them.

If you want to start the process of getting rid of those, amend the spec
to deprecate and/or forbid system-level suspend in CPU_SUSPEND in future
PSCI versions. But you can't retroactively change your decisions like that.

>> But since it already requires more elbow grease on the peripheral IP side,
>> I'm not really convinced it's that much useful.
>>
>> Plus, the optional bit of doing more work behind the scenes doesn't seem
>> to be very wildly used across TF-A supported platforms.
>>
>> So please, stop making the argument that it's any different. The firmware
>> I'm dealing with simply didn't expose the same thing twice, in perfect
>> accordance with the spec.
>>
> 
> So that it can continue to do so in the future ?
> Thanks but no thanks. NACK with no arguments as requested.

That's already been "fixed" on QC platforms starting around 2022, as
mentioned in this series.

Konrad

