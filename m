Return-Path: <devicetree+bounces-197421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DC77EB0928B
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 19:02:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 288B35A0C83
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 17:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23BDC2FD5A3;
	Thu, 17 Jul 2025 17:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UWzKu8oI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB252FCFE9
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 17:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752771645; cv=none; b=sz3m5nEt2J/L6pza2k0/Z2s5/CYtnLBRhSOP95x3M7M9Rkh+Mtz09A+EZwq/gmspOgagTD5K5sCFSH68XTlpCYLSoJ+6lGZ4EHQZfJfhgnAMooMbcWYGuYIsx9KP4K5gDjbR4tXQCCQv7/lFyKAYNWQ2wAzWFpmR2/sEDkq1oH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752771645; c=relaxed/simple;
	bh=NDCiaPHHvFC8MHDbl6A6XCRon1+womNVTklJcLNhzRE=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MuHh02MGSmnhTfXy4ZkJeDjMp04VPcLjPYPsema434Py8GlMgBTpCCso3ZBHulkUpoZBM7s8sWfcpSUBSn229jhzoMYZpwgLuhydWvq8hD9WCuR21GQQDRk3fJBYmhB6R2PCxnhkMMXGt8OLeCSAsaeBL+80TBqZDliRJAGQdPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UWzKu8oI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HBv19o000564
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 17:00:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZnaFm/Ffc8wfwisyBrnfaJ5Lm4uxQyCgsEmOOlToRX0=; b=UWzKu8oISFvidEQJ
	km5GIVn8CQ7fORUrjTTAZlUaR9uBKtdGImWgrGSbgKn6s7TsUKGdf2THJ0zyNzk6
	pcIJQY28T9Rh8XEDVyoDXHUYrQQLWVBSMAC3MU05/Mk8x6eo7ujKrCP5laQsROf2
	Ol0kwObwb5kKom93woofvXDle2VY3DQDMohXLqHKRChX81qfBcxT4A4e2CGQrTMA
	zT1OXFz+kkAS5imainXIxDojXS2vNZs1qMX5HOGEX9q3w545Inm60J24yvqFdH+8
	kEZBNMd+WeAm06UGFMDY/BDQsBijSyYE0TACjFf1gLxHYcKqIiUmta6PX74/MSaY
	fDKXmg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5drukcs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 17:00:42 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e33d32c501so237489485a.3
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 10:00:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752771628; x=1753376428;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZnaFm/Ffc8wfwisyBrnfaJ5Lm4uxQyCgsEmOOlToRX0=;
        b=QJ6L6x9DB+iCGkbQIs9X4bAVyBe53Xtvfi76rA4qNJnfos1mrvZdTV3leMKtB2iIGm
         J1UpRbMSibSnfha+2ynEqtANYE5Ykt99qvQ3EvpZdpzC8JqXCnEWMYO0uJ+/VlcUdGtS
         M1NAFWS7YbT8ajbVBC2ms1UNItTKI1gW3kKIbIfO/vXzI5T+wHetSudu93h8qY27cKYn
         a5RqONqV7jrJWfrtGIrI4Qve2rubMbemCP8xdlz7EsG6mBPquLlJmBuDy2dUO/7SM6zI
         DUsLP2bP1o8gyiiMr6d85EikrXhTS2UamuV0UEWjHDVK2bfmZdVUlhQBBKfqG+AMVMf8
         tvcw==
X-Forwarded-Encrypted: i=1; AJvYcCXWtNeZurYBTU6PypreVd6ofcrMcDC4G3pLiig44BK9W92Mssm7Arxwo5+2SvsBW4HFtqUf1z1X1i7V@vger.kernel.org
X-Gm-Message-State: AOJu0YwB6kV8iyeiT7d112xrCYaOolUkbmAM2ipd7NBN95HaoAAdHHa5
	2ekrOKmbiQ2PdIX2qK2vJ6Osi5KWPXp6nwF4m+OE+5AdavSCA4Yhadva6ART+b1GNmDlyrdWtDN
	nqH5KQsKyw7sat8gGoueMWtkC2gZsrHL9+ZPJy0T7HyB+aIvbPf8Oru8oXM6UiUMd
X-Gm-Gg: ASbGncsxUWUTICeude3A/fp8QfFeN3LgMU18I/GUcI6iZ/zF4U1ASyrU/EZ1uRsXQpC
	ZqlzyrpfslCBL/BGIOA1FlXHN6d3Ltl9Pwx8z/n6XoKUej/gdkSk41J7bjvNMwiN9luIjGEdfhD
	252M6MSejBuelmKWLFkGQDaHUDcMm/3VYctQuJMRyHhSV1u7/b//t4Kg4+wU31ZHOViqXSG8B0h
	UG2jAcT3nJsi/vzeIY5QW7aCfCTj/uBuFUvtC42NIW5ASK1Jcv2I0CCMNY8iLY06s9lycQ3gL4v
	GLWxUD8fUxMVS6FW4J0akvOQb3M5LPjF16iby99cI1e+/Knc03HM2ftR3BZw3UFJJze8Ud65eC4
	=
X-Received: by 2002:a05:620a:4892:b0:7e2:769a:c858 with SMTP id af79cd13be357-7e34334b731mr1186607685a.3.1752771626301;
        Thu, 17 Jul 2025 10:00:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHELtWEcCOwz0hrmwliEHdBT6M5H3LL+GL0mj3fwaKNKS9qMdnaY0yySi2QLqD+D97Rj4pj6Q==
X-Received: by 2002:a05:620a:4892:b0:7e2:769a:c858 with SMTP id af79cd13be357-7e34334b731mr1186580085a.3.1752771624557;
        Thu, 17 Jul 2025 10:00:24 -0700 (PDT)
Received: from trex (153.red-79-144-197.dynamicip.rima-tde.net. [79.144.197.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e1e3bdsm21052951f8f.81.2025.07.17.10.00.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 10:00:23 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Thu, 17 Jul 2025 19:00:22 +0200
To: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com,
        krzk+dt@kernel.org, konradybcio@kernel.org, mchehab@kernel.org,
        andersson@kernel.org, conor+dt@kernel.org,
        amit.kucheria@oss.qualcomm.com, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 1/7] media: dt-bindings: venus: Add qcm2290 dt schema
Message-ID: <aHksJum91s4ZmI56@trex>
References: <20250715204749.2189875-1-jorge.ramirez@oss.qualcomm.com>
 <20250715204749.2189875-2-jorge.ramirez@oss.qualcomm.com>
 <8a63f517-a443-48e4-9b9c-0c4b362f59f8@linaro.org>
 <aHiZpnFhhR5O0h97@trex>
 <0bb2867a-393b-46f9-ad6f-1aeee5a3a9d4@kernel.org>
 <aHjbjw8Z79Xcd/ZJ@trex>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aHjbjw8Z79Xcd/ZJ@trex>
X-Proofpoint-ORIG-GUID: ApZ4bkl_s_10t7yyl8XnR-0k0ioyBCrj
X-Authority-Analysis: v=2.4 cv=D4xHKuRj c=1 sm=1 tr=0 ts=68792c3a cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=Ki5fnJvzvo7yLsyA0quaxQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=pj_CNGcikdX4u3R1mKcA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: ApZ4bkl_s_10t7yyl8XnR-0k0ioyBCrj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDE1MCBTYWx0ZWRfX2YRdiMLM1La7
 7ol6zRU80ETYxuIeJVSMuOw0lomW6ttqTmIHeAyqj9DEshcRCVy23h4k12Wk7UlRDJuoZpLauNz
 0ZB66ahbO+98xbcSLQtKFMLC1E+17o/VNgwykq2Nwp/dOHqsfKT5nOd4OwKTcAlQHF2fiGUetnW
 P16lArMhu3zWzRdu0T6cFk+LdTAFHPXgSPPNu6MdsIna7orPVUq+Tf/nBeU8d6wgeExftA6xsa5
 AdMxlUpwm2Og97J/Cb1LTzwyfRCtNtQSzVzpG96v6DH5106r142uVCAcefoyi1HJBaMvzfqPJgh
 N25fLYXlxLvNo5sdT3M08IsuMkWLbzDQcj5c0GZSbaf65Il/6rF2OZrRkorFo51boXYvXEOvskn
 uDZNOKGPs8EewyNubd22CYBpuvN8450h2k+LxZrTRezhAdB3RAlofBeiKHhs50WY8BZIytOt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_02,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=999 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 suspectscore=0 bulkscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507170150

On 17/07/25 13:16:31, Jorge Ramirez wrote:
> On 17/07/25 08:45:17, Krzysztof Kozlowski wrote:
> > On 17/07/2025 08:35, Jorge Ramirez wrote:
> > > On 17/07/25 00:22:53, Bryan O'Donoghue wrote:
> > >> On 15/07/2025 21:47, Jorge Ramirez-Ortiz wrote:
> > >>> Add a schema for the venus video encoder/decoder on the qcm2290.
> > >>>
> > >>> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> > >>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > >>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > >>> ---
> > >>>   .../bindings/media/qcom,qcm2290-venus.yaml    | 127 ++++++++++++++++++
> > >>>   1 file changed, 127 insertions(+)
> > >>>   create mode 100644 Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
> > >>>
> > >>> diff --git a/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml b/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
> > >>> new file mode 100644
> > >>> index 000000000000..0371f8dd91a3
> > >>> --- /dev/null
> > >>> +++ b/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
> > >>> @@ -0,0 +1,127 @@
> > >>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > >>> +%YAML 1.2
> > >>> +---
> > >>> +$id: http://devicetree.org/schemas/media/qcom,qcm2290-venus.yaml#
> > >>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > >>> +
> > >>> +title: Qualcomm QCM2290 Venus video encode and decode accelerators
> > >>> +
> > >>> +maintainers:
> > >>> +  - Vikash Garodia <quic_vgarodia@quicinc.com>
> > >>
> > >> Shouldn't you be on this list ? If you upstream a file I think you should
> > >> list yourself as responsible for its glory or its mess.
> > > 
> > > happy to do it. The MAINTAINER's file covered all the files named
> > 
> > This should be the person(s) interested and caring about this hardware,
> > which means:
> > 1. Subsystem maintainers: no
> > 2. Driver maintainers: usually yes
> > 3. Author(s) of new hardware support: usually yes
> 
> perfect, will do 
> 
> > 
> > > schemas/media/*venus* so my understanding was that I shouldn't.
> > 
> > I cannot comment why people decided to go one way or another in other
> > code, but it as well could be just incorrect choice thinking only people
> > in MAINTAINERS care about hardware.
> > 
> > ...
> > 
> > >>> +
> > >>> +        memory-region = <&pil_video_mem>;
> > >>> +        iommus = <&apps_smmu 0x860 0x0>,
> > >>> +                 <&apps_smmu 0x880 0x0>,
> > >>> +                 <&apps_smmu 0x861 0x04>,
> > >>> +                 <&apps_smmu 0x863 0x0>,
> > >>> +                 <&apps_smmu 0x804 0xe0>;
> > >>
> > >> You're listing five iommus.
> > >>
> > >> I understand there's some disagreement about whether or not to list all of
> > >> the potential use-cases but, TBH I don't think those are good arguments.
> > >>
> > >> Unless there's some technical prohibition I can't think of listing all five
> > >> maxItems:5 .. let's just do that.
> > > 
> > > since the device tree should describe hardware and not policy, and the
> > > driver seems to be able to ignore the unused SIDs I think this is the
> > > right thing to do.
> > 
> > 
> > It was never about the driver but about whether you should describe in
> > DTS for non-secure world the entries which are secure world. The answer
> > in general is that you can and there will be benefits (e.g. sharing DTS
> > with secure world implementations).
> 
> all right, sounds good then, thanks

Not sure if I’ve shared this before, but following an internal
discussion, I think it’s worth highlighting a functional dependency in
the current kernel:

 - the driver only works if the first two IOMMUs in the list — the
non-secure ones — are placed at the beginning. Reordering them breaks
functionality, which introduces unexpected fragility.

Regardless, this seems like a valid concern to me — a driver shouldn't
rely on the order of phandles — and I just wanted to make sure you're
aware of it before I post a v8 (likely sometime next week or the
following, as I’ll be taking a short break soon).

Do you consider this serious enough to be called out in the commit
message, or is this kind of behavior accepted as-is - ie, do you know if
the DT binding for iommus rely on the order?


