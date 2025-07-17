Return-Path: <devicetree+bounces-197288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F086BB08B96
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 13:16:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 20E685853CE
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 11:16:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49E89292B55;
	Thu, 17 Jul 2025 11:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ImT21xl5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9099C28C021
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 11:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752750999; cv=none; b=Nb+XBhDlDlbC4DNxFkZvHzENZRUlOgDQL8nxxIKyGDt7xk4brgbOEIIQ3XjXEIGLW77U1EHq5BZ8oY1VcQ2/F0IQEyS/SB925Tuh7raXTDtx7n+eUVizeSONYnXX3YAkgSqs/Gv/nKGc28u1INOmEfkWasCNIufHWAdJrb+QsGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752750999; c=relaxed/simple;
	bh=IRUe127TymGTKdjcSBkg4PKr2Cb+9jXVulcgUozWB3g=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LrLG0dxB3e+VXQBmaw5oGhERKVZcYmeOnK26Fj7afHDYpSj5UU41UWw3gMMNWXxHWSeukuSWh4uXgBSUEh0PqEBHg1q/FFV8PTk1lgnchpNCELrYiOpqECN1ZQiH+hyPw6K6H+dNq4HzPPBNMEsekZGy0nvziDDYO9QBdMf65SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ImT21xl5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56H5PRtV021567
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 11:16:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IviiJoOMAMhIycQf6n/gwd8j
	l6mb2ERtOrn+nwQU3d8=; b=ImT21xl5J3z2RjTL+w0brBj1bgtU8/SxQB53LPR/
	dCxD3ieMSN2yneOkGbPBeA+st2e/PKPOxAxMaWyU+6qAs2u9xgNm5IS/8iKqvtsu
	UrvDHXjHltRVygdo6WEg18CXtXuTY+XS66hiiqcEpUk0YZv2sCu6KRUA5mMjRpBf
	k63m6hqupVPUZRWZWZQQY0mMUnyRpMtW/no8IUSp/Vzz25VJH/kXHuJdBTlTaVn2
	XevX4RElhdB6GIUAsB+Mb3c1We3CQ2poKxlqglaMoBmo2qfF/gKp5Y7yA+m87XN6
	3L9q9GXE6kCFS5/1ukR34Rr53nI+BTc9pAZIf5XvcqoLJQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufu8f8ek-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 11:16:34 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-702b5e87d98so14841396d6.0
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 04:16:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752750994; x=1753355794;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IviiJoOMAMhIycQf6n/gwd8jl6mb2ERtOrn+nwQU3d8=;
        b=G1LjASmXS9SeSfTsxzYEzTKIq/EdAYEMdYzxot8s+4vnvbGbxLCGeS8+0fcUfmiZpS
         40w7jyzHi2WRy70rDyW6DqIx8UZVHLTTNs2kntNfdB6XmqzqmB/ic3MKiUjnYsX8WZ25
         3E1iWFeNMVmcvlmZ0krOSCPB5wPFU43COAwwKF4yfLzC+fBVrDF7PrxCWU3JCd2Ruv3M
         bFbmsn3dAMroyrlHY3MNLMTrSooYwLqSeQAaEbByvoA1ANvSLJB3r4T8381SjuqglpLB
         2O3KBbdspafnrGJUkiqBa2AEBptZFg3s9HViubCuMze35FTtkfbiH6ctN39U5qCQtitF
         xpag==
X-Forwarded-Encrypted: i=1; AJvYcCUFJGoCWE61j1jSJ0z2OmSzWR14T1arooxmGk+mhJCCzgxRwNX3ZcrvD64gvmaqzb6jJohdBmc5IWX+@vger.kernel.org
X-Gm-Message-State: AOJu0YwzDjNJiHbPzCdldFSiAJ//vY6ilTyspFZAjaWNVw5eWKsaCg+M
	IwVQd9e2qcyi6z3MxavgLiAYywKN3n/d+jVuYZ2n1E19ddUlNPtNM+2+hEkTLpMrFPu3lnE4wdk
	25MLuZ99p4LelYy+lbASIlZN8eOmZD/FoxDT0zet+LJpmOsyhsdL5zSauuoCWPFSc
X-Gm-Gg: ASbGnctr/+tRsOkHzpiwDTgI8dxkuX0WeQfyEdgxotMTn7drjm5c15ljzH97AO1S1bz
	hRn4V3dVxQu5bh3f9gCkeAQi0bVggcDlq9rbTkA+yYUiQqggHVeptO0baqZDkTxrhmh32OUzzKc
	snsSXlcyZbrfhowTPxqivsVTOrukJbrRQ81fDjfbO5fRzIKWtPMv2Skg8fyxt2s8yHI7CIYal5D
	6spASfHcRLvwqOKIyhsXNEooagABpcWvD4nHnNsM0Dl0ee/FHnriDlLfPW3WUdoAf9gLZi6hM6n
	7PRyWMCe4p6SI+vkywe+3ij3EN5nPRCWgzfnriv/HkJwbhtMP6YBOnhm0MUxZfZ7vTccm7gYLW0
	=
X-Received: by 2002:ad4:5bce:0:b0:704:e120:50da with SMTP id 6a1803df08f44-705073a2d83mr30439786d6.29.1752750993886;
        Thu, 17 Jul 2025 04:16:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG2v1zi0j2L7zsAt4Ih6tCoD4JfALtxxdhEUf9CdOlZ0NqloLBOpqpwEjtfUDhbRRRGRobiQQ==
X-Received: by 2002:ad4:5bce:0:b0:704:e120:50da with SMTP id 6a1803df08f44-705073a2d83mr30439216d6.29.1752750993357;
        Thu, 17 Jul 2025 04:16:33 -0700 (PDT)
Received: from trex (153.red-79-144-197.dynamicip.rima-tde.net. [79.144.197.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e0d872sm20627262f8f.60.2025.07.17.04.16.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 04:16:32 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Thu, 17 Jul 2025 13:16:31 +0200
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com,
        krzk+dt@kernel.org, konradybcio@kernel.org, mchehab@kernel.org,
        andersson@kernel.org, conor+dt@kernel.org,
        amit.kucheria@oss.qualcomm.com, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 1/7] media: dt-bindings: venus: Add qcm2290 dt schema
Message-ID: <aHjbjw8Z79Xcd/ZJ@trex>
References: <20250715204749.2189875-1-jorge.ramirez@oss.qualcomm.com>
 <20250715204749.2189875-2-jorge.ramirez@oss.qualcomm.com>
 <8a63f517-a443-48e4-9b9c-0c4b362f59f8@linaro.org>
 <aHiZpnFhhR5O0h97@trex>
 <0bb2867a-393b-46f9-ad6f-1aeee5a3a9d4@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0bb2867a-393b-46f9-ad6f-1aeee5a3a9d4@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDA5OCBTYWx0ZWRfX5kif1L59gVZB
 +K/tVf00uDrwZmPdgoptskjub3iBoG8DZcxqWKip2ZgD4HHtbnJNFjaNG1Pe4oVP33U8KirCn/V
 a19rlL2AnM3O63uCcqstwYfNOzvWdnWpGLELhz6C0qD+4wT4TcSL9jCc4AyUI/yMh88qZcD19Pg
 uO7yURANnni0s3EkeD4nsIknC+w/l4m3bUN302IggzK5Aif2UyDou5eMZvtH35htu6nFo5rJjl9
 RNoXQuRZFk6ZKA6G9g35rvG/jRb34uc6e1P0Y3pj1pxY7QR4VAFXKh0hJ3YihbsQQzLAl03PD7e
 iKmdLJucxnnZA1nUGZJtmGa4KZwLjU9TS8HNFdzwDsM5qu6/cAwwQcBUWzi0LLfCM7pmXsk9sqK
 +TBxpWZz6kyNlfC5FENwZOckMC9JN2zYuJNrGCidioBvQFLwzsFAw28KAK5jpRzZfv0bFgph
X-Proofpoint-ORIG-GUID: QHIoJH5Xp2D_kQCoeGOSnc7ArhRYOklG
X-Proofpoint-GUID: QHIoJH5Xp2D_kQCoeGOSnc7ArhRYOklG
X-Authority-Analysis: v=2.4 cv=f59IBPyM c=1 sm=1 tr=0 ts=6878db93 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=Ki5fnJvzvo7yLsyA0quaxQ==:17
 a=kj9zAlcOel0A:10 a=Wb1JkmetP80A:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=cAyxk2cvX3BNt2Rx_zQA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 spamscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170098

On 17/07/25 08:45:17, Krzysztof Kozlowski wrote:
> On 17/07/2025 08:35, Jorge Ramirez wrote:
> > On 17/07/25 00:22:53, Bryan O'Donoghue wrote:
> >> On 15/07/2025 21:47, Jorge Ramirez-Ortiz wrote:
> >>> Add a schema for the venus video encoder/decoder on the qcm2290.
> >>>
> >>> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> >>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> >>> ---
> >>>   .../bindings/media/qcom,qcm2290-venus.yaml    | 127 ++++++++++++++++++
> >>>   1 file changed, 127 insertions(+)
> >>>   create mode 100644 Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml b/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
> >>> new file mode 100644
> >>> index 000000000000..0371f8dd91a3
> >>> --- /dev/null
> >>> +++ b/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
> >>> @@ -0,0 +1,127 @@
> >>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> >>> +%YAML 1.2
> >>> +---
> >>> +$id: http://devicetree.org/schemas/media/qcom,qcm2290-venus.yaml#
> >>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>> +
> >>> +title: Qualcomm QCM2290 Venus video encode and decode accelerators
> >>> +
> >>> +maintainers:
> >>> +  - Vikash Garodia <quic_vgarodia@quicinc.com>
> >>
> >> Shouldn't you be on this list ? If you upstream a file I think you should
> >> list yourself as responsible for its glory or its mess.
> > 
> > happy to do it. The MAINTAINER's file covered all the files named
> 
> This should be the person(s) interested and caring about this hardware,
> which means:
> 1. Subsystem maintainers: no
> 2. Driver maintainers: usually yes
> 3. Author(s) of new hardware support: usually yes

perfect, will do 

> 
> > schemas/media/*venus* so my understanding was that I shouldn't.
> 
> I cannot comment why people decided to go one way or another in other
> code, but it as well could be just incorrect choice thinking only people
> in MAINTAINERS care about hardware.
> 
> ...
> 
> >>> +
> >>> +        memory-region = <&pil_video_mem>;
> >>> +        iommus = <&apps_smmu 0x860 0x0>,
> >>> +                 <&apps_smmu 0x880 0x0>,
> >>> +                 <&apps_smmu 0x861 0x04>,
> >>> +                 <&apps_smmu 0x863 0x0>,
> >>> +                 <&apps_smmu 0x804 0xe0>;
> >>
> >> You're listing five iommus.
> >>
> >> I understand there's some disagreement about whether or not to list all of
> >> the potential use-cases but, TBH I don't think those are good arguments.
> >>
> >> Unless there's some technical prohibition I can't think of listing all five
> >> maxItems:5 .. let's just do that.
> > 
> > since the device tree should describe hardware and not policy, and the
> > driver seems to be able to ignore the unused SIDs I think this is the
> > right thing to do.
> 
> 
> It was never about the driver but about whether you should describe in
> DTS for non-secure world the entries which are secure world. The answer
> in general is that you can and there will be benefits (e.g. sharing DTS
> with secure world implementations).

all right, sounds good then, thanks

