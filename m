Return-Path: <devicetree+bounces-47653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 370DA86E0BD
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 12:54:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 90B0BB216DE
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 11:54:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAC5C6D1A8;
	Fri,  1 Mar 2024 11:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BGxBGYWT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2366CDDC
	for <devicetree@vger.kernel.org>; Fri,  1 Mar 2024 11:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709294044; cv=none; b=Y5N/a5f3dNf4yTJhg10QAEaq0+0MHdbUFfH2+evpxIdb9YkRdzdfMfo/t27hMgV65yVvCVNSo6ZBLHxFrQGmhcRafY57KxPWvdFolpONy09iT9lwVOs0+pi6y86qyXDXiB1n2kkNxSPo7JT2AjBh4yqSkFLNBXzHub2h5WBmOtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709294044; c=relaxed/simple;
	bh=FqfgiE8rTsjv2yZ13++4/tBbMd5srM6+IqM9XHJmupc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SlETm4+wHJ3tBY9iuNpVyQmQWLTEnSXB2Tp6tULoFIjf428wyL4ncfl35M9fbg+3aKKoKUM18yGshTn2B3ZwXyeRq5KWm2QEICKCdJMvJyF/FemyEZYf9r/aSxc4Epqw11vV97PGM6+OP2oEuhXva2+QJqra5RaZDbuKUavo/vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BGxBGYWT; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-dc236729a2bso1863321276.0
        for <devicetree@vger.kernel.org>; Fri, 01 Mar 2024 03:54:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709294042; x=1709898842; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yso0ivGAInKc5Pvs5qCHC4r4ySELDjTsVXE+O+LwQ0A=;
        b=BGxBGYWTmEW8aMCsng6Ue0IHMrpPluBogwfjxtBp+1vdwx/eOulBamlknkVcaWlCSi
         4aSFM4Wepjgeyl6+wY22ypgAVZf5cw7FGJxXxFIki1FSLYidRfCHYnTCXWBfYMNRlu/3
         205G+gwI+jdFGbuOFGPxuaqUqL3aocf6YU6yxx9w2CE8+5YF/Y7NDeT5Ecm/dxpI+BDv
         XUuoOtzh2e3pPzEzS4rTI8+4gugdJiNG5lGvofMgjerBBD4pSOXSqBHM/IYDPATsgKcq
         Rng5jb0MNdfstsK4bimMBINN844syW0IxZ8BY1MNwIAL8oD9mzgrbNlbxrVjXyEdUY0M
         0AAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709294042; x=1709898842;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yso0ivGAInKc5Pvs5qCHC4r4ySELDjTsVXE+O+LwQ0A=;
        b=xFiYo3Rmi2cXa5/kWD1Q09UnGqf6WEJidNbgOmnFyQWgaX4x0Hupgj2U2nnwAaGCfb
         DtFbimY2X+F1a8Wwtt06m+5EBWDA6x6EeLkwvhP4Cc+w471svBPA0aD83k1Tz0MlfZS1
         BEmDk+TYmf3srgT1Bt1wFoFt6M1v2lO3HkNUw92EPRfaL9PvWMiMUba2mQvG972Tc4u/
         zmYmsA2mIhX95AuN29o7S5NkZVmFFq/mQ9HIFsbe6T6OEW91bhA2mekHww35qRyepYSz
         HNWyzPPW7ShFuannIVEGEDShAihgJsaLEKgqx29R+E1N1Xce/ASRxT1I09NS1T4TY5dc
         EPPw==
X-Forwarded-Encrypted: i=1; AJvYcCWGRFu7nwAh8gJUbyHp28ey8PPewCH8tx5LFd9Ryl68hf2d9iZuIL6QasZFTYyF186d81LamRAHVxfI6j58SDsLl6pCV1bMyjTbRA==
X-Gm-Message-State: AOJu0Yz8AW7IIow10h4IPTPA8zkNnRlGKrzRI08714fa0Zhx+GuxlxPR
	BcFVCuorkixEILjP6Y/2w6K1WCnWPd0KiG+MlCRqF3NN3FBlt1rukk1RBfFlAXLF/h+ZUhh2Ohf
	licEPHLs7EkgUNjXEYE8h+gEkYW9LgFAAcI7rmQ==
X-Google-Smtp-Source: AGHT+IFkhH15rTpXomOcTL/sca0OLI+GKFzhdjujIJXL6fL++bosqGfhJfcmsdoBf/YIv5eeJKJPfDAPG5EKn/NWJB0=
X-Received: by 2002:a25:ae58:0:b0:dcd:1436:a4ce with SMTP id
 g24-20020a25ae58000000b00dcd1436a4cemr1245758ybe.23.1709294042085; Fri, 01
 Mar 2024 03:54:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <7910de2d-6184-4f78-a286-d2e6e50c7a36@quicinc.com>
 <CAKfTPtCjR_MBO9Lh7=CU+dcFaigkbeKc27rVgCa-aEJyHyfK9A@mail.gmail.com>
 <ZbEY2X8CfOc-vPbe@bogus> <16db3da8-dfdd-4e06-b348-33e9197fe18d@quicinc.com>
 <ZbFH0UE9zZQFWm8Z@bogus> <32092ee9-018f-4cfb-950e-26c69764f35a@quicinc.com>
 <94a62a78-961a-4286-804c-fc0b9098b8a1@quicinc.com> <CAPDyKFrL2QcB-YbE25smGgJjf3iBEsSSB4ui3V98zJKghNNhKA@mail.gmail.com>
 <20240228140239.gkzcytw6cmb4opja@bogus> <799268ac-7ffb-4b99-b037-d5bb93d37f13@linaro.org>
 <20240228160925.fcitj2yz7hisidsl@bogus> <CAPDyKFqEDu1KRsT2YWv7MhoosCSj_bgV4xE=-2hDaS1ZP7AkvQ@mail.gmail.com>
 <2b0a11f4-f54e-461c-91e7-8f313d91abe8@linaro.org>
In-Reply-To: <2b0a11f4-f54e-461c-91e7-8f313d91abe8@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 1 Mar 2024 12:53:25 +0100
Message-ID: <CAPDyKFoo+-2AF096Sbn8EHP1H4Zw2+2sFnSyuq65sWGmMmXU0A@mail.gmail.com>
Subject: Re: DT Query on "New Compatible vs New Property"
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Nikunj Kela <quic_nkela@quicinc.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, krzysztof.kozlowski+dt@linaro.org, 
	Vincent Guittot <vincent.guittot@linaro.org>, robh+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, 
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 28 Feb 2024 at 18:11, Srinivas Kandagatla
<srinivas.kandagatla@linaro.org> wrote:
>
>
>
> On 28/02/2024 16:22, Ulf Hansson wrote:
> > On Wed, 28 Feb 2024 at 17:09, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >>
> >> On Wed, Feb 28, 2024 at 03:20:44PM +0100, Krzysztof Kozlowski wrote:
> >>> On 28/02/2024 15:02, Sudeep Holla wrote:
> >>>> On Wed, Feb 28, 2024 at 02:27:30PM +0100, Ulf Hansson wrote:
> >>>>> On Mon, 26 Feb 2024 at 15:24, Nikunj Kela <quic_nkela@quicinc.com> wrote:
> >>>>>>
> >>>>>> Hi Sudeep,
> >>>>>>
> >>>>>> I would like to conclude on this thread. I was discussing this with Ulf.
> >>>>>> He thinks that using the domain names to identify if platform is
> >>>>>> abstracting clocks etc. are not scalable and sufficient. Instead he
> >>>>>> thinks that the change in the interface to OS(and FW) is a good
> >>>>>> candidate for a new compatible(even though HW is same).  Even for SCMI,
> >>>>>> we do change phandle in DT to SCMI protocol phandle so that is like a
> >>>>>> different platform altogether. Could you please let me know if you still
> >>>>>> think that using a different compatible in this case is not warranted.
> >>>>>
> >>>>> My apologies for joining this discussion at this late state. Yet, I
> >>>>> just wanted to confirm what Nikunj said above.
> >>>>>
> >>>>> In the end we are indeed talking about adding a new platform, as
> >>>>> changing the FW interface from a QCOM proprietary one into SCMI,
> >>>>> simply requires updates to a DTS file(s) that is platform specific.
> >>>>>
> >>>>
> >>>> The way I read this sounds like all this are platform specific and need
> >>>> new compatible.
> >>>>
> >>>>> That said, it also seems reasonable to me to use a compatible string,
> >>>>> to allow us to describe the update of HW for various affected devices.
> >>>>>
> >>>>
> >>>> While I agree with the above statement, it depends on what you refer as
> >>>> update of HW above. It is all Qcom specific and there is so much turn
> >>>> between SoCs that this shouldn't matter but I would like to take example
> >>>> and describe what I initially mentioned/argued against.
> >>>>
> >>>> Lets us assume 2 SoCs: A and B. A is old and didn't use SCMI while B is
> >>>> new and migrated to use SCMI. Now let us assume both A and B SoCs have
> >>>> exact same version/revision of an IP: X. Now just because B uses SCMI,
> >>>> should X have one compatible to be used in A and another in B. That
> >>>> doesn't sound right IMO.
> >>>
> >>> That's trivial to answer, because these are different SoCs. Compatibles
> >>> are SoC specific and every SoC-IP-block needs its compatible. Rob was
> >>> repeating this many times that versioned compatibles are discouraged.
> >>
> >> OK I may have confused or derailed the discussion with the mention of
> >> "exact same version/revision" of X. This is not related versioned compatibles.
> >> Let me try to explain it with some real example. If you look at all the
> >> users of "arm,coresight-tpiu", they all have same compatible on all the
> >> platforms irrespective of the clock/reset/voltage/power domain providers
> >> on these platforms.
> >>
> >> E.g. on juno it is based on SCMI while on qcom-msm8974/apq8064 or
> >> hi3660/hi6220 it is platform specific clock/power domain providers.
> >> However all these platform have the same compatible "arm,coresight-tpiu".
> >> That was the point I was trying to make and not related to versioned
> >> compatible for different versions on an IP.
> >
> > That's perfectly fine, if that is sufficient. It would also be
> > perfectly fine to extend it with a platform/soc specific compatible,
> > when needed.
> >
> > An example could be:
> > compatible = "qcom,sm8450-coresight-tpiu", "arm,coresight-tpiu";
>
> The issue is not the same as the above example.
>
> We already have a soc specific compatible in this case
> ex: "qcom,sc8280xp-ufshc"
>
> making another compatible like "qcom,sc8280xp-ufshc-scmi" or
> "qcom,sc8280xp-ufshc-xyz" based on how some of the resources (clks,
> regulators) are provided in bindings does not really make sense.
>
> Fact is that we are representing the same IP block.
>
> AFAIU, we should go with same compatible irrespective of how the
> resourcing needs are satisfied.

I get your point. Nevertheless, we need to create a new platform (new
DTS file), as we are changing the FW interface to SCMI. That means the
toplevel compatible for the platform will be a new one
(Documentation/devicetree/bindings/arm/qcom.yaml).

I am not sure if it's correct/allowed to use that new platform-part as
an extension for the compatible for the IP blocks too? I thought it
was okay, but if not, drivers could match on the platform's compatible
too (not sure we want that though).

Kind regards
Uffe

