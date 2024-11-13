Return-Path: <devicetree+bounces-121481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 692B19C6E2D
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 12:51:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D166E1F2481B
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 11:51:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 461652003A2;
	Wed, 13 Nov 2024 11:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FUyaYKGv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C1B2003C1
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 11:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731498666; cv=none; b=iTpHW/zCyOZmR/Ct3jLlKoKkaqdBQ0JMeT4qISuf6HdBcUI1FWtfhpqI00dHFa5YTH6Q1iDgIcfhaQp/D/eASSfYazrvP+xg8sCJQjik56v4BSnXBlweH2ivzkfCXX4g2/W4+Z1iHMbL8eMNVMpoOCR5IonsWjDapV82sSeW1tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731498666; c=relaxed/simple;
	bh=oER26TiWJSFpXsVdQ6bGEIMRHGFwFM8nuUhPGvrwGHY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m4+j8w8Z2KhEATk3Pn+e6wbh2gAojJqpsvn3UoGEso8aGT25aciBmnVh/fT7bhowBIPx/PK8ZziXP7k7h6YzLQcHH0mssHLfv43cOB3v21Cb3ugW1rrmmjpqVor/g7Nbk3y+1IieGbHrZ69w38HpJtSqtAP89y+VosChGv6KV2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FUyaYKGv; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e290222fdd0so6857673276.2
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 03:51:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731498663; x=1732103463; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BsrLaWejC/ftmloCesoB/FYlHPJx14/EbyH4gPODitg=;
        b=FUyaYKGvHHd0DYQ8UkBNyejlS3qCToLWy7RRmRSTgoBhJ+VFdgEgVKib/vVFp14xow
         rppoWaMq9eRXtE5kW7C8MzaKBjuQlQUwWIzv5vmMs0zodxuyJPfGGUyfAkXI5PodW1VC
         2Brc4V3eOLuZ2lR7e3T8sXS/oWxvuCV7ONxl+wc/xUBBVcW0aYVLOA00sOvzqdbCJSKv
         Ix0cHhnHXTd83ogMfTXL+dpwniM2Pk3Xo93kOf9YEvidubDBMSmtIEbEsuio1vhwApHC
         AN8Ek4TK5m0qSR8sHE6vEQUkZVvAHkLYO6DzaUSTe1l4lGkmPXnaZnZVEZHiEbe4JgFK
         Q9XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731498663; x=1732103463;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BsrLaWejC/ftmloCesoB/FYlHPJx14/EbyH4gPODitg=;
        b=IJFvl3RzPBX0UzktnqQEcDGEgmEF2EInur72baJAqDjAHpFWLvZUcAIbyrnwR7nQkw
         kqe7kWv6TDBQ8PxFiqK5Q3kBDhMGz719ZtZXd1PQ+ryaGZ/1SGyOcRZy4b3EiH8H65Ri
         v+Xq7huLsR7OIoyZdbJvvCbd72Fuo13TrZUq3qDDPF24y2cDm8DYjqAYnRZqdThLS2Cm
         wtvAM4BCJMyNf6PDBjNa88ikVl0xIJ/lcWkQTxyjAzLPSateUiwlLYWrmZvV29ZrUP4H
         jiFfmaROy3HmU9bhyvDvQ5ptKD/Z4UMzv3xzLvvpoRnpFHSy6LgnEXGYaDTIWqLIsnRd
         jd3w==
X-Forwarded-Encrypted: i=1; AJvYcCXQol6mNET8mHoJBz2InvuO7oR2pS3jKC2slMymJGyCjb1vyD6+wXSpL1krZO+74q0YKmQYZ6CLaSSl@vger.kernel.org
X-Gm-Message-State: AOJu0YyB17TzEhQn6V/eviQzNrM3nbc6IKlAyOSJracMNcCuebwiL3mi
	PHThrhY7fHIUPXFCNT+vX6mA2/i/QmLM0fceFBmt3R++RvTpXjkTHPtTQBrE+tWcqVDqjy+2ehQ
	AaLLu9vaoj8ReeyNIDOr9AhfgDIQqNAe81QNccg==
X-Google-Smtp-Source: AGHT+IHjDzgRAhLOx+8Hzt3WxFR+RaBIzyvPTo33dC4tsm88armcJo0nXWTHRRUPSz2V/gRlsfOfnics0nwKx6TjnQA=
X-Received: by 2002:a05:6902:c11:b0:e29:1def:1032 with SMTP id
 3f1490d57ef6-e337f8c7023mr17826557276.41.1731498663441; Wed, 13 Nov 2024
 03:51:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241113050042.181028-1-quic_ekangupt@quicinc.com>
 <5oqzxppquoeppt6xnjfm2rdwm23hbui5k3caz5v5ffqzizepob@dz5ikvzgbd4x> <c1f0e56b-b489-4370-99e3-0973641410b8@quicinc.com>
In-Reply-To: <c1f0e56b-b489-4370-99e3-0973641410b8@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 13 Nov 2024 13:50:52 +0200
Message-ID: <CAA8EJprDTz7b4rNtR4e9A-=j9_z-aJGBg3+g5is8Bmy=cgTM1Q@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: qcom: sc7280: Make ADSP a secure fastrpc domain
To: Ekansh Gupta <quic_ekangupt@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, cros-qcom-dts-watchers@chromium.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, srinivas.kandagatla@linaro.org, 
	quic_bkumar@quicinc.com, quic_chennak@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Wed, 13 Nov 2024 at 08:18, Ekansh Gupta <quic_ekangupt@quicinc.com> wrote:
>
>
>
> On 11/13/2024 11:13 AM, Dmitry Baryshkov wrote:
> > On Wed, Nov 13, 2024 at 10:30:42AM +0530, Ekansh Gupta wrote:
> >> FastRPC framework treats ADSP as a secure domain on sc7280 SoC
> >> which means that only secure fastrpc device node should be
> >> created for ADSP remoteproc. Remove the non-secure-domain
> >> property from ADSP fastrpc node.
> > If this prevents the non-secure devices from being created, isn't that a
> > regression from the userspace point of view?
> The actual intention of having secure and non-secure domains is to utilize signed(high privilege)
> and unsigned(low privilege) DSP processes properly.
>
> Non-secure device node is intended to be used by untrusted/generic applications which needs to
> offload tasks to DSP as unsignedPD. Only unsigned PD is expected to be allowed if the process is
> using non-secure node.
>
> Secure device is intended to be used by trusted processes like daemons or any application
> which needs to offload as signed PD to DSP.
>
> The ideal expectation from userspace is to first try to open secure device node and fall back to
> non-secure node if the secure node is not accessible or absent.
>
> I understand your concerns, can you please suggest how this can be improved/corrected?

Thank you for the explanation, and thanks for the description of the
expected behaviour, but the question is different.
Currently (with the property being present in DT) the driver creates a
non-secure fastrpc device for the ADSP.
Can it actually be used? Note: no mentioning of a particular userspace
implementation or the (un)expected usage.
If it could not and an attempt to use it resulted in some kind of an
error, then the patch is a fix and it should be decribed accordingly.
If it could be used and now you are removing this possibility, then it
is a regression. Again, this must be clearly documented, but generally
this is not allowed.

>
> --ekansh
> >> Signed-off-by: Ekansh Gupta <quic_ekangupt@quicinc.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 1 -
> >>  1 file changed, 1 deletion(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >> index 3d8410683402..c633926c0f33 100644
> >> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >> @@ -3852,7 +3852,6 @@ fastrpc {
> >>                                      compatible = "qcom,fastrpc";
> >>                                      qcom,glink-channels = "fastrpcglink-apps-dsp";
> >>                                      label = "adsp";
> >> -                                    qcom,non-secure-domain;
> >>                                      #address-cells = <1>;
> >>                                      #size-cells = <0>;
> >>
> >> --
> >> 2.34.1
> >>
>


-- 
With best wishes
Dmitry

