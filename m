Return-Path: <devicetree+bounces-42527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C46C857AA0
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 11:48:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 141BE285238
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 10:48:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06F4C53812;
	Fri, 16 Feb 2024 10:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rPoakCyi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1CE1535C1
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 10:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708080523; cv=none; b=CUMSy2VF7F8tmhmdzMxXR9FtCC692mSR41rAiEJoJ2wiHSh038ZMnsDO+8WQC2xqwg55rkUsOl8BpBlLuhbkps7dD9wcWf2L+8flhbydvn5TT9ZwcPsryLsYkkS/D3c75CW3IS9vWUjjDeoHbzJVdQn6r0gWjwlou16xiOA6B3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708080523; c=relaxed/simple;
	bh=MjLtBHGl3EKFZpRSU/O6NS5UxcW+90Ac2k1SucdI/n8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dkTiLJL3xDp7C3DWjmOmyp3wAOkbTajdMxSCyuFqcuZl8jvAAr0b8x02r8p/Kyuwwdb/14W+GD/JU9zDQelydGEt6bYL0Ie6TrZJWx2zZgqgi7JXmj71igByzwO3A6Al6DdjlxzteUwhPCgNdXRFx1azv8PGRrNKZuIkSG8t/Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rPoakCyi; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-dccb1421bdeso1811061276.1
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 02:48:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708080520; x=1708685320; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NKfZzgXFQ7L4hFdgNuI/0C1mifl1ZkgKyzPDgn09DEE=;
        b=rPoakCyiYJCQvBxIioimrAoV0sl8is25zVnV80e6dBYErmUbypXiu2/MjWIvXWygUt
         LHaMmrfV44YH1y2OHsooO5+YIRW92Ef7OvYWcTsm4RA9kfVyOoYtu9FRowgVSbvxLn1P
         M4p2gJgiRydoCXXgRM+EKRQ/K7MB0J26vx9OJu8cIMoJR7ofJtO67W+f4EPXHZTTH3GI
         bzQF2aDLTtfHYHoG4EBYsrt8W/tZlusf6qOv1kJjhqtc4CpoCfDqDS83OwHGDFPmnAZr
         jkUhLeAw3a26y6NEAqWdChjDqjDkavt8W7UBwjSDjo95vrfqoGNefdNwVmGLxwq0aKZI
         gKzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708080520; x=1708685320;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NKfZzgXFQ7L4hFdgNuI/0C1mifl1ZkgKyzPDgn09DEE=;
        b=wesPDQb1pBUQu1kqoELFFWzsV7VX8/gYK56DHqkIW7U2gpFPIivs6SLbmdIPagbu5z
         LKBU2ttyD2mplQSTI4W4AOclATmA5KAlhDT27/1m+qIZoBpqrYMozL4R0wGRt4TalVYU
         BrdzXs9gjviAsnBbIHL2IntZgdiO5850S2/FH9IAxn1mjaerkrX6vppCNnJ+digUfWed
         HrJuTuF+hMKfsOzwl7DtNau3ZDPcc//tQJgTglakka8dPsReLBlHfOvs6pDoswymjxBL
         He+J22BQR2MxZWjxbt1drtHbHILKBd8BtZI9QRcivRTmrRAnCTOipmF6IcE68y2HzTvC
         JcpA==
X-Forwarded-Encrypted: i=1; AJvYcCVcPo6+FBOfiRi4hNW/7LzwrOOkZbIoIM5xfFUJc/e3BEaBkBZds5J+2G3DbelOypxtOnLhmfOYmNPh3PgB0QjYCZcok2lUtMwjkA==
X-Gm-Message-State: AOJu0YxGXab2UE21CKQNRyu8tqIaX4NTeFxjsbihPuQrs0Mt2AmV0MW6
	fBZ3LJgedmgEGTW6oKEf/WQT2G1HgOG/cKYAhQelwMG+Azi7UFAUCHX1Z3UBHDVtjGI1bEMMueh
	eVhlbmMs5Snp2vAt76TNzb5Rf99bAAqKzs5XfwA==
X-Google-Smtp-Source: AGHT+IFbejH6b7sinvG8KhiDdJHrIEdrQqXVLTFHjvll3gtnHa+pgS4X4AFWoxSUSZD0KqtQdIyD2hcJKMWbRbauHEE=
X-Received: by 2002:a5b:991:0:b0:dc7:32ea:c89f with SMTP id
 c17-20020a5b0991000000b00dc732eac89fmr4951588ybq.15.1708080519834; Fri, 16
 Feb 2024 02:48:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231231171237.3322376-1-quic_jprakash@quicinc.com>
 <20231231171237.3322376-3-quic_jprakash@quicinc.com> <3f812ffa-ec33-448e-b72a-ce698618a8c1@linaro.org>
 <13f2b558-a50d-44d3-85de-38e230212732@quicinc.com>
In-Reply-To: <13f2b558-a50d-44d3-85de-38e230212732@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 16 Feb 2024 12:48:28 +0200
Message-ID: <CAA8EJppsn2zsAXem-m=9U8izhtAZmVe62xS5qdkwJmFTqV30gA@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: iio: adc: Add support for QCOM PMIC5
 Gen3 ADC
To: Jishnu Prakash <quic_jprakash@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, jic23@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, andersson@kernel.org, 
	konrad.dybcio@linaro.org, lee@kernel.org, andriy.shevchenko@linux.intel.com, 
	daniel.lezcano@linaro.org, lars@metafoo.de, luca@z3ntu.xyz, 
	marijn.suijten@somainline.org, agross@kernel.org, sboyd@kernel.org, 
	rafael@kernel.org, rui.zhang@intel.com, lukasz.luba@arm.com, 
	linus.walleij@linaro.org, quic_subbaram@quicinc.com, 
	quic_collinsd@quicinc.com, quic_amelende@quicinc.com, quic_kamalw@quicinc.com, 
	kernel@quicinc.com, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-arm-msm-owner@vger.kernel.org, 
	linux-iio@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, cros-qcom-dts-watchers@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jishnu,


On Fri, 16 Feb 2024 at 12:39, Jishnu Prakash <quic_jprakash@quicinc.com> wr=
ote:

Please disable sending HTML emails in your email client. It is
generally frowned upon, it complicates replying, it breaks quotations,
etc.

>
> Hi Krzysztof,
>
> On 1/4/2024 1:48 PM, Krzysztof Kozlowski wrote:
>
> On 31/12/2023 18:12, Jishnu Prakash wrote:
>
> For the PMIC5-Gen3 type PMICs, ADC peripheral is present in HW for the
> following PMICs: PMK8550, PM8550, PM8550B and PM8550VX PMICs.
>
> It is similar to PMIC5-Gen2, with SW communication to ADCs on all PMICs
> going through PBS(Programmable Boot Sequence) firmware through a single
> register interface. This interface is implemented on an SDAM (Shared
> Direct Access Memory) peripheral on the master PMIC PMK8550 rather
> than a dedicated ADC peripheral.
>
> Add documentation for PMIC5 Gen3 ADC and macro definitions for ADC
> channels and virtual channels (combination of ADC channel number and
> PMIC SID number) per PMIC, to be used by clients of this device.
>
> Changes since v2:
> - Moved ADC5 Gen3 documentation into a separate new file.
>
> Changelog goes under ---.
>
> Why did you do this? What is the rationale? Sorry, this patchset goes
> nowhere.
>
>
> I'll elaborate this more in the next patchset. There are two main reasons=
 for adding this documentation in a new file:
>
> 1.This device is not exactly like the existing QCOM VADC drivers as it no=
w combines VADC functionality (reading ADC channel on client request) with =
ADC_TM functionality (thermal threshold monitoring).
>
> 2.Adding this device's bindings in the existing qcom,spmi-vadc.yaml file =
is not possible as it would require updating some of the existing top-level=
 constraints. (for the older devices in that file, "reg" and "interrupts" c=
an have at most one item, while this device can have more than one item und=
er these properties.)
>
>
> Changes since v1:
> - Updated properties separately for all compatibles to clarify usage
>   of new properties and updates in usage of old properties for ADC5 Gen3.
> - Avoided updating 'adc7' name to 'adc5 gen2' and just left a comment
>   mentioning this convention.
> - Used predefined channel IDs in individual PMIC channel definitions
>   instead of numeric IDs.
> - Addressed other comments from reviewers.
>
>
> +          per PMIC in the PMIC-specific files in include/dt-bindings/iio=
/adc.
> +
> +      label:
> +        $ref: /schemas/types.yaml#/definitions/string
>
> Why do you need it in the first place? Don't you miss some $ref?
>
>
> This is just meant to show the ADC channel name in DT for our reference. =
I'll check if I can use adc.yaml, which includes this property already, as =
a reference in this case.
>
>
> +        description: |
>
> Do not need '|' unless you need to preserve formatting. Applies everywher=
e.
>
>
>
> +            ADC input of the platform as seen in the schematics.
> +            For thermistor inputs connected to generic AMUX or GPIO inpu=
ts
> +            these can vary across platform for the same pins. Hence sele=
ct
> +            the platform schematics name for this channel.
> +
>
> +      qcom,adc-tm:
> +        description: |
> +            Indicates if ADC_TM monitoring is done on this channel.
> +            Defined for compatible property "qcom,spmi-adc5-gen3".

You are describing qcom,spmi-adc5-gen3, are you not? So this phrase
adds nothing.

> +            This is the same functionality as in the existing QCOM ADC_T=
M
> +            device, documented at devicetree/bindings/thermal/qcom-spmi-=
adc-tm5.yaml.
> +        type: boolean
> +
>
> Why do you duplicate entire vadc file? Why it cannot be part of that
> file? Oh wait, it was in v2.
>
> You now duplicated a lot of property definitions without clear reason.
> If this is intention, then you need to put them in common schema.
>
>
> Many of the properties used for earlier QCOM VADC devices will be used fo=
r this device too.....do you mean I can add a new schema file (named someth=
ing like qcom,vadc.yaml) and move common properties into it (like qcom,hw-s=
ettle-time, qcom,decimation, etc) from this file and qcom,spmi-vadc.yaml?
>
> Can I do it in the same patch or should it be a separate patch coming bef=
ore this one ?

I'd say, separate patch. Move first, extend later.

>
>
>
> diff --git a/include/dt-bindings/iio/adc/qcom,spmi-adc7-smb139x.h b/inclu=
de/dt-bindings/iio/adc/qcom,spmi-adc7-smb139x.h
>
> index c0680d1285cf..750a526af2c1 100644
> --- a/include/dt-bindings/iio/adc/qcom,spmi-adc7-smb139x.h
> +++ b/include/dt-bindings/iio/adc/qcom,spmi-adc7-smb139x.h
> @@ -6,7 +6,7 @@
>  #ifndef _DT_BINDINGS_QCOM_SPMI_VADC_SMB139X_H
>  #define _DT_BINDINGS_QCOM_SPMI_VADC_SMB139X_H
>
> -#include <dt-bindings/iio/qcom,spmi-vadc.h>
> +#include <dt-bindings/iio/adc/qcom,spmi-vadc.h>
>
> ? How is it related?
>
>
> This should have gone into patch 1, I'll fix it in the next patch series.
>
> I'll address all your other comments in the next patchset.
>
> Thanks,
>
> Jishnu
>
>
>
>  #define SMB139x_1_ADC7_SMB_TEMP (SMB139x_1_SID << 8 | ADC7_SMB_TEMP)
>  #define SMB139x_1_ADC7_ICHG_SMB (SMB139x_1_SID << 8 | ADC7_ICHG_SMB)
> diff --git a/include/dt-bindings/iio/adc/qcom,spmi-vadc.h b/include/dt-bi=
ndings/iio/adc/qcom,spmi-vadc.h
> index ef07ecd4d585..cfe653d945a4 100644
> --- a/include/dt-bindings/iio/adc/qcom,spmi-vadc.h
> +++ b/include/dt-bindings/iio/adc/qcom,spmi-vadc.h
> @@ -1,6 +1,8 @@
>  /* SPDX-License-Identifier: GPL-2.0 */
>  /*
>   * Copyright (c) 2012-2014,2018,2020 The Linux Foundation. All rights re=
served.
> + *
>
> Drop stray blank line
>
> Best regards,
> Krzysztof
>


--=20
With best wishes
Dmitry

