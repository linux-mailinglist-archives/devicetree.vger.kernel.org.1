Return-Path: <devicetree+bounces-244841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC4DCA94D8
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 21:53:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 59C94308970A
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 20:53:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC97D2798ED;
	Fri,  5 Dec 2025 20:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LMcAOc95";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XfhIuXQ2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB7021576E
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 20:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764967999; cv=none; b=IbJWHeP9Jmi3rPBfceP9GkMHOzNTlAgl0vnZAhNsIcQt08MR/SrzulVfnYN8aDvynYrr8skB7BLREIdWNYvaLK7ieboMIq0OuIk8PwmjLr/hAJxDGvxPg6zqYrvW5Gyi8J5j+ZsPxxEEoJ78dP2Ss8kNK+piDPT3jR1NMq/OAyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764967999; c=relaxed/simple;
	bh=VcPaRvErv2s8ZH5ML/MQ4Xra1e7aZmd22soA+euMXjU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IkfCMyPaAOWQPEJOnqbqE9MvHyAOCjjUHK2q80v/N3lPHoawkiXTVowrNVTFBnCCMMgb9NELgUFhpVwCUu41QJUEHuGHtxkB3z/GRARb8li+ASxNyZLogCoUyZ4UI86ffxVPfG3nURaBOfZ7FUYBk66O+g4jwINaE0IWpOlWOH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LMcAOc95; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XfhIuXQ2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5FC8Y0889471
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 20:53:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UYQU81Y6HLQpXXtuKLRqLyYo
	i+qOhrx18gQgzC4wJlA=; b=LMcAOc95i68EA+FSz5Ad5U66KYVwHQfWGYRnQCR5
	AaDoPGBp97UdjnuT1evFcmQOxipcQ6UqUmJPHk0EpMK+ZslPLGfC6OD51Cxn2AnI
	lL1TOe+rACGupzr0WAb+8Ut5YtVd2uPnBff/slyeCXcV0Zk1OL1LhdordBYmZ4kv
	P0e4slboGpVpnDiBwEhPsVAycuAIaAmLlAhNt+WbJvsh0Fbj2lxdXqHogciLgKw5
	lEDVGxo9UBgC79Pw6SrtL3NewyD5dTIAJ9ObdEv6wfnJHshcg8momHoxkXKQdXYZ
	rj9lantuVa4RC3hsBZquyexr2geIxkLZAeLn2sAx1okTMw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aurwvjj3k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 20:53:17 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b24383b680so807992385a.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 12:53:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764967996; x=1765572796; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UYQU81Y6HLQpXXtuKLRqLyYoi+qOhrx18gQgzC4wJlA=;
        b=XfhIuXQ2x6DtYfETwvJPB2oyX6VnDP7mJFP9DY39OGDNKHw1Wwc8Gs7utUaLo/b/XB
         cTMUgAI5c/tdziiTSifLJBJOOmDdgU1Tkzozw71fWgoDiFSnQJdLkgyLnOD5b/1h9L92
         /nsM5z1FUrTC4r0BEe6Q5UZnah5hsTgLkMQcV/kAA77mP46EcZr0WUP7d3b5xAyEIyJK
         QvKAgs3UJ591GV5r1vw529W3/x1LUTJQzfAcYKyA2JJVbO4+wpXoAnogRm0qp7rbZA1e
         fm693Asg6RHgZOIiV29MF4GRicwvBNkR/2x5BnXHdeq0coMThe+BIQJiKNpOc/6gt4k3
         bUQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764967996; x=1765572796;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UYQU81Y6HLQpXXtuKLRqLyYoi+qOhrx18gQgzC4wJlA=;
        b=aSu59in6nNNvYJyd3zwaRyjKpH36Z5EXZbbLHm1ATleUu9vmu310bj92qTFvvbKQ/u
         jN/L6/5O9+1TTpBVRZyqG6JNVjhxtJBpcxs/mCY/O/xgIQ41L1iHdYhwfSpS8y58kgUw
         n+Irnl+fgR8iS1iGzqHfzyOwS7TVrCFSeO23ChERgeQ4Jf/cTcVzhVwo+52XQ0eLc745
         hdiCr240kl8PKzXabzOCK8DFDaRRJ6xrPBCANwaEYIKhTzqZ1E8U6QvGocs6a8kIA+8K
         aLfmIGGD4TdGqwvt1JkSI2DSq8tuctMbf6/wgW8xaVn6VfiWTEG28JxEABFDdWzehyWr
         d39g==
X-Forwarded-Encrypted: i=1; AJvYcCXaoao12Iv/5GzssPT722qg5wNDYrlHGhdX70ev38oldnYgyNfNPe1CBXKFPeiLNvb5Qn+TrjGCqvLZ@vger.kernel.org
X-Gm-Message-State: AOJu0YymE/SI6u/AZOKfFDbm06RLUh4G2tTYM4/ptWV8YFoT3TvYvH9c
	Rg7y9cmBDq3q0aqppxSM80H63EocFcNgxujRSt2t5ufSLpfo92gdfOlZVd5E2W1KJwrANZPvndq
	0khoG2JosVUtB42+zfIzMbOhjHCcH2x36/6pcxOmETY1L/RFFGl5Qcy5+2iMSNslQ
X-Gm-Gg: ASbGncuNhM9ng6CnmfkX0C2oIEVDV1XTPBIhfTKURuMXHTaQiPyWnlXNHnXx4eXy/Wi
	X7cDMZS8q99fEZ4OAe1ZJvELThEDprq0kGGz3xS9gRrUHBYAZq3kSAtXWdoQuzBqpibQUwDP059
	FCJbnCp7g1RuXOU9OwXq5kRU1nCwuLLZ9zQ0y0VwpUuMh63/gOj12bbjsGA630OeVebvCMrvRez
	0JkMXzT2DlcEwRP+CXxsrn9jpyKPYTyMwPMb/nVtv1drOvFUdafgsFYKp1NP3yiETx15hxZqtV+
	NThVjuCb35PCcqYXCXr3+lW8QQRLv/Gwxxg01AqJ7sQREDomcHKzM1kJds4TwATp+OD5dJP0lJ5
	EZOVAIiNWtwx/yViSapvB7lphxmiL38i7pAsVhQXSHB0xWTgtZanfqRwTEIASlFycLXkY1RV+Kg
	nxX0e1bfc298z6kA2TwiqlQes=
X-Received: by 2002:a05:620a:480c:b0:8b2:9765:3a69 with SMTP id af79cd13be357-8b6a2586080mr56196485a.68.1764967996453;
        Fri, 05 Dec 2025 12:53:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHe1aQZfNJvea5YgqM/l7S+IW0I6k1UQ3u3irgB+qt5cziGghA1+4KgLqtOSq6Ucuz6XlhljQ==
X-Received: by 2002:a05:620a:480c:b0:8b2:9765:3a69 with SMTP id af79cd13be357-8b6a2586080mr56192485a.68.1764967995983;
        Fri, 05 Dec 2025 12:53:15 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c1e2fasm1850723e87.60.2025.12.05.12.53.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 12:53:15 -0800 (PST)
Date: Fri, 5 Dec 2025 22:53:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>,
        Dan Carpenter <dan.carpenter@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <jie.zhang@oss.qualcomm.com>
Subject: Re: [PATCH v4 3/8] dt-bindings: display/msm: gpu: Document A612 GPU
Message-ID: <iowdz6u6fw6cmgqkznxxmksz5tufkbgen2k2f2k6xi3fzwa5qx@73jldhd2yoab>
References: <20251204-qcs615-spin-2-v4-0-f5a00c5b663f@oss.qualcomm.com>
 <20251204-qcs615-spin-2-v4-3-f5a00c5b663f@oss.qualcomm.com>
 <e8243a84-a7bd-4087-87d7-2795d6bc7595@kernel.org>
 <aaae2ab1-04ec-4d42-afe4-7a2ed00ce903@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aaae2ab1-04ec-4d42-afe4-7a2ed00ce903@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDE1NiBTYWx0ZWRfX66y2irrBSaDG
 TpIPYUnvCHT1o6l8wQyuSa/Ort5K0SohbFey2kI0HVe9+GdPNrOgArtlYi78MQf2hbf0Jpm5U6g
 axUnep/jpaHPYXaV2jtTTG3EgAXT2l6jaQ7pFGKQvA3wTv2jcUjWFYWlqE4PyvuQAr/Obw4s8zs
 +LV6qe0f9d8reOl7v6vWvg245GPxQgCBWwVyF16mesxwtIcxIEcXbEzc9vnJzkqHngX/XeaYEzS
 YMiZJeWMhjJV+BPKwnnsZJjvfDt0/1s4kbfnX60lQDgY+sXXNamcEERM+JD02ZIBrf8bv9HHAGO
 4JljkhCDeL+E+VJ4Klp4y8hknqQ3/47pttj7CQRd/wARJ3D8CkeW8eFzdy8JOGmk9szyvX1nNjr
 V7m0Ot5HSkyfUqKZq6Ui8fKu7pXhQw==
X-Authority-Analysis: v=2.4 cv=Yd2wJgRf c=1 sm=1 tr=0 ts=6933463d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6r3IkYRDlMlQpd4nI30A:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: M_QKijsdQXP35AoGdVBPwqadiieoeZam
X-Proofpoint-ORIG-GUID: M_QKijsdQXP35AoGdVBPwqadiieoeZam
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_07,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050156

On Fri, Dec 05, 2025 at 07:28:52PM +0530, Akhil P Oommen wrote:
> On 12/4/2025 9:04 PM, Krzysztof Kozlowski wrote:
> > On 04/12/2025 14:21, Akhil P Oommen wrote:
> >>  
> >>    clocks:
> >> -    minItems: 2
> >> +    minItems: 1
> >>      maxItems: 7
> >>  
> >>    clock-names:
> >> -    minItems: 2
> >> +    minItems: 1
> >>      maxItems: 7
> >>  
> >>    reg:
> >> @@ -388,6 +388,32 @@ allOf:
> >>          - clocks
> >>          - clock-names
> >>  
> >> +  - if:
> >> +      properties:
> >> +        compatible:
> >> +          contains:
> >> +            const: qcom,adreno-612.0
> >> +    then:
> >> +      properties:
> >> +        clocks:
> >> +          items:
> >> +            - description: GPU Core clock
> >> +
> >> +        clock-names:
> >> +          items:
> >> +            - const: core
> >> +
> >> +        reg-names:
> >> +          minItems: 1
> >> +          items:
> >> +            - const: kgsl_3d0_reg_memory
> >> +            - const: cx_mem
> >> +            - const: cx_dbgc
> > 
> > The patch overall gets better, thanks, but I think I asked about this
> > already - why you don't have the list strict? I don't see reason for
> > making list flexible and I don't see the explanation in the commit msg.
> > Either this should be fixed-size (so minItems: 3 and same for reg:) or
> > you should document reasons WHY in the commit msg. Otherwise next time I
> > will ask the same. :(
> 
> TBH, I was just following the convention I saw for the other entries
> here. We can make it more strict. But I am curious, in which case are
> num reg ranges flexible usually?

This might be a historical leftover. Feel free to send a patch dropping
min/maxItems for existing devices, if they never were flexible.

> 
> Just to confirm, we should add this here for adreno-612.0:
> 
> reg:
>   minItems: 3
>   maxItems: 3
> 
> reg-names:
>   minItems: 3

I think you can skip minItems completely.

>   items:
>     - const: kgsl_3d0_reg_memory
>     - const: cx_mem
>     - const: cx_dbgc
> 
> -Akhil>
> > 
> > Best regards,
> > Krzysztof
> 

-- 
With best wishes
Dmitry

