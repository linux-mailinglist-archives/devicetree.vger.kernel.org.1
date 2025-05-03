Return-Path: <devicetree+bounces-173371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7A9AA82E4
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 23:02:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 42F42189D40C
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 21:02:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD5881A83E2;
	Sat,  3 May 2025 21:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NYKDzw5N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E294018E34A
	for <devicetree@vger.kernel.org>; Sat,  3 May 2025 21:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746306118; cv=none; b=LamLNqEFdFzbTqwxCTFZ8krRTbWCVHoWdzogpE/ghFgrmz2M6/NujFFxvF8RJ6mdnmLSZtdBfjMnC+u93Bl4nsPaPd1B7u3AkO9cSOry7+wGGq8HRAAK5908hT+9CKZLMko3Yo3pr5KpcicjX5ZKqZDevNCEXz/3ORkFB4a44w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746306118; c=relaxed/simple;
	bh=9gc2cmErwt3XqjWLbRuILM8RHadjD7i4EH+6dlra9/Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UShKjJ+JO8yj5Q5x/M8FAWYtOJoAdvL8fP6iOyRoExn2Zbk4ozFyQlSjM+CNLvTAMyxyHkVK9P4s3ImOooe0rB/GjoH6XbiQTMJEwEixRWBwkLXmdeJyjnpotBRd8d47nThjXE7zNc7fVeuQstWDO/cR9vmY6WVf2ciy6i6moUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NYKDzw5N; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 543KP1mG020522
	for <devicetree@vger.kernel.org>; Sat, 3 May 2025 21:01:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Cn80525Sq5fGq7ITOodRe4wI
	Al3PMn966j5BIVBXb1M=; b=NYKDzw5Nd1lUyzb5R76NWM9owHDbbchBvWDfns5t
	TdSXr1YkVvySpPsYOB8a51ZYZcEs9PW8A9I+79qHh6/bNctl9mEvVJ7FCCRD6ol5
	G3FVgH5v5dI01sXAqErjO8c6l5IWPjP2wVXYwHLJlan68iFGy2TMJpkpxJxoJHqP
	dD6u1MkXoYpu/iLjAU6JZuP9s4lZfwpVVi7Rb2tGMCu+KYBc1bfTPu5aUdZxF+xF
	IOVM3jnSJfE5aR6enEwj6neEhgJv5t4RvVNKIK2FgjJnSCh4HRIBKiPdf/31p1iQ
	i8u3x/zPWf4UNra1PESl56dbcECbtN84NBcG/Y/AzLAE4g==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46da55s58t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 03 May 2025 21:01:55 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-2ff64898e2aso3157679a91.1
        for <devicetree@vger.kernel.org>; Sat, 03 May 2025 14:01:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746306114; x=1746910914;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Cn80525Sq5fGq7ITOodRe4wIAl3PMn966j5BIVBXb1M=;
        b=SERM//NxefZbHIbgDnkkC3YDiA2dwYJ/FrcWet0wpl5oX18AB7hDLnmDpnb1Dg/uWY
         tzOSqVgAH3wwVGpNEDwLWHiF9d4/tNZ95CyCJf00Xmnx7L8LfWp+NRB79DcG31u5FxxA
         jtwUG77pMddQSiXU3+qoV+6Hr3YvNZpwwkKwbaAqwGkKzJDd3Qwu7jQWE5Ml0lpqDR8y
         6BDCUoGMUv/HsPGfEH0lY5LzcNkV6JPByGhyHpkgUxk4RSeajghHHu1jfl9rvWB8DGEE
         A3lK7BByU3sZzpTz2X4juavfc8fSBeXh44dpHCRpJl6FCvoO3kuRV7NWFmWZvkEP8XpX
         U5Ew==
X-Forwarded-Encrypted: i=1; AJvYcCUMjx9k7SlY+v07DJSSs6ab3l7wZTZ0QriipHZj8/zYL2DAY/m9fnoOf4Fh9rsHPylKGzilIXceRzZb@vger.kernel.org
X-Gm-Message-State: AOJu0YwxsUAiX+h8jSHE/nG3egPqmcdMpOY+RUwrJ1DPYWoWMFUQa+Ou
	fr98VQ7RY+h76YGe0K4PRBa9z5HrgnAzi4qls4UuOimTr4PHAP/Azi5vFvpLoh7e67paMp3VmGS
	PMs6hpq+henFXT7qATJ9tyAaYbo+ORwRXreES486CmXNeFzdq3GnLd7roNvjOI4qD45CyFj8EZa
	dgMl8IFUPOI5X9w9gCxDqGZ874Umkn0GTZLWk=
X-Gm-Gg: ASbGncuyqTxwtUeu9TByW7WgyD33N35KQH8yT9VvDbLThbJEyS7jntXCzBR8CytUFU/
	MyyAMjkiWjkxBD1XpkqUr7rlbABX0sOW7UTh13tE6ldnuQEO+wiTrWPzDU4r0rRBGC2A/BQ==
X-Received: by 2002:a17:90b:5247:b0:30a:204e:fe47 with SMTP id 98e67ed59e1d1-30a4e238283mr11780266a91.16.1746306113935;
        Sat, 03 May 2025 14:01:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFMPD8yryO4aAzVK3k9gU+rNogRSOlsGH1wBDwPmv/JPT86SoET3Mma8EmUZRb50amWkhM6oJtI4sBpmUEyplY=
X-Received: by 2002:a17:90b:5247:b0:30a:204e:fe47 with SMTP id
 98e67ed59e1d1-30a4e238283mr11780230a91.16.1746306113484; Sat, 03 May 2025
 14:01:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250424-sm8750-display-dts-v1-0-6fb22ca95f38@linaro.org>
 <20250424-sm8750-display-dts-v1-1-6fb22ca95f38@linaro.org>
 <81205948-ae43-44ee-aa07-e490ea3bba23@oss.qualcomm.com> <97ae84c6-0807-4b19-a474-ba76cc049da9@quicinc.com>
 <dc64ygn6pt5bvdgizc2qk2qnxn3on5nv7hes3hhc6qqmiumdfd@nxpfis6disof> <858be1b7-0183-47b3-97b5-7d162b5748d3@quicinc.com>
In-Reply-To: <858be1b7-0183-47b3-97b5-7d162b5748d3@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 4 May 2025 00:01:45 +0300
X-Gm-Features: ATxdqUH-zEu-Q8hx-hTs8Z0lWJcS4Lo1m6nzdFEbyO0oOCxxmfUEzj_5GmMtR44
Message-ID: <CAO9ioeV0H9OnmHke2prWSqB8+oD4PRfD0ph7qPahwKJHOPpOzg@mail.gmail.com>
Subject: Re: [PATCH RFC/WIP 1/4] arm64: dts: qcom: sm8750: Add display (MDSS)
 with Display CC
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jessica Zhang <jesszhan@quicinc.com>,
        Abhinav Kumar <abhinavk@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAzMDE5NCBTYWx0ZWRfXzEbu+kpMVlYg
 //oaInTQYcEzI7Odu9O1TeVT4zYUBqsIzwSXyB8gGLOeLfvxRvkgySZINAmeHWoRA1f4+PpbUhQ
 yZwJkD5ot3OLyJffacofuPzub0oYDWlvcpiw7UKheqNA3CThDH5gGaoXXk6fvC7GBS4zUU1Qs9a
 xAzxLlGEE0jEcfAVrZb+0UGahuamQHSMWtG9Vru1Khn3Plcx2/lBIwUJXtG9hVmYHvla0Ywt3FI
 xegmiLUdjbAvMpAJr2iSWhcCbEA30GqnLDfBCySzbObpsC85XyHy3Ah2FbuHO1FekP0/UUTkgSS
 Vd2N5F3LyB5GoZCF1UYF4iI0C2dYE8NnpOOqgo+4lNuU6Xe//70JJuSNqH3VY+FZQjmP8GbnLdd
 ZQ9vqeBkD3XIZqqoMaYxus9D0KcOHJwjVvmwZwuy3ZqyGYJ4/D1YkE0pabpAV6kGFLOPblgS
X-Authority-Analysis: v=2.4 cv=M9RNKzws c=1 sm=1 tr=0 ts=68168443 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10
 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=E0QJNo61N1AVLolVTSsA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: mhr3ir-k3rWXc04yhmrwBnWsZAWEaqUO
X-Proofpoint-ORIG-GUID: mhr3ir-k3rWXc04yhmrwBnWsZAWEaqUO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-03_09,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 mlxlogscore=999 priorityscore=1501 malwarescore=0
 mlxscore=0 bulkscore=0 adultscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505030194

On Sat, 3 May 2025 at 22:59, Abhinav Kumar <quic_abhinavk@quicinc.com> wrote:
>
>
>
> On 5/2/2025 10:51 PM, Dmitry Baryshkov wrote:
> > On Tue, Apr 29, 2025 at 04:07:24PM -0700, Abhinav Kumar wrote:
> >>
> >>
> >> On 4/28/2025 2:31 PM, Konrad Dybcio wrote:
> >>> On 4/24/25 3:04 PM, Krzysztof Kozlowski wrote:
> >>>> Add device nodes for entire display: MDSS, DPU, DSI, DSI PHYs,
> >>>> DisplayPort and Display Clock Controller.
> >>>>
> >>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>>>
> >>>> ---
> >>>
> >>> [...]
> >>>
> >>>> +                          mdp_opp_table: opp-table {
> >>>> +                                  compatible = "operating-points-v2";
> >>>> +
> >>>
> >>> The computer tells me there's also a 156 MHz rate @ SVS_D1
> >>>
> >>> Maybe Abhinav could chime in whether we should add it or not
> >>>
> >>
> >> Yes I also see a 156Mhz for LOW_SVS_D1 but we had a similar entry even for
> >> sm8650 and did not publish it in the dt.
> >>
> >> It was present till sm8450.dtsi but dropped in sm8550/sm8650 even though
> >> LOW_SVS_D1 is present even on those.
> >>
> >> I think the reason could be that the displays being used on the reference
> >> boards will need a pixel clock of atleast >= low_svs and the MDP clock
> >> usually depends on the value of the DSI pixel clock (which has a fixed
> >> relationship to the byte clock) to maintain the data rate. So as a result
> >> perhaps even if we add it, for most displays this level will be unused.
> >>
> >> If we end up using displays which are so small that the pixel clock
> >> requirement will be even lower than low_svs, we can add those.
> >>
> >> OR as an alternative, we can leave this patch as it is and add the
> >> low_svs_d1 for all chipsets which support it together in another series that
> >> way it will have the full context of why we are adding it otherwise it will
> >> look odd again of why sm8550/sm8650 was left out but added in sm8750.
> >
> > I think it's better to describe hardware accurately, even if the
> > particular entry ends up being unused. I'd vote for this option.
> >
> >>> [...]
> >>>
> >>>> +                          mdss_dsi_opp_table: opp-table {
> >>>> +                                  compatible = "operating-points-v2";
> >>>> +
> >>>
> >>> Similarly there's a 140.63 MHz rate at SVS_D1, but it seems odd
> >>> with the decimals
> >>
> >> For this one, yes its true that LOW_SVS_D1 is 140.63Mhz for sm8750 but this
> >> voltage corner was somehow never used for DSI byte clock again I am thinking
> >> this is because for the display resolutions we use, we will always be >=
> >> low_svs so the low_svs_d1 will never hit even if we add it.
> >
> > Please add all voltage/frequency corners. Think about low-res DP or
> > low-res, low-rate WB.
> >
>
> Sounds good, lets go ahead and add all the voltage/freq corners.
>
> Like I noted, even for sm8550/sm8650 the low_svs_d1 was missed out, so
> if we are adding it for sm8750 now in this series, a follow up patch
> should also be sent to add them for sm8550/sm8650 as well. That way we
> will fix them all up together and this does not come across as a
> discrepancy.

Abhinav, if you know a missing piece, please send a patch, fixing it.

-- 
With best wishes
Dmitry

