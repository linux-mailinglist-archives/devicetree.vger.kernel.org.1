Return-Path: <devicetree+bounces-46931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B122D86B4B2
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 17:23:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 50E471F23511
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 16:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A74376EEEC;
	Wed, 28 Feb 2024 16:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y1GdcdKB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB1D46EEF9
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 16:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709137415; cv=none; b=aWZI254hnUXU+/4vuQt3aPHKl+LH75lZcKtbC/VdcIptK/YdfDjDxeQ/QnoYRu10H5z/ngiLwkrUMEtcQLNrtOsesq/X6Mp6QfW94VYmqNu7kUAXGflotmYFCyaYCL1MG8pePXvm+rVL0SFHqjuO6+JGRNmoNEk6y/UqCXNpftQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709137415; c=relaxed/simple;
	bh=PTrBRLQbTApMxiKLnb1Fvk35EDcCGz+5WKWyseJbxic=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eWERtfL3UN6Lw0FWb99tH8IWQ/s8ep/6jgmpck896T8CXO9F3kJ/e6zAUlFB9vJ6OPioGYm1cksnkS0C4tIdp9XfKxma3yw0KmFbcV406OUBm7pq7zVHFHeP6CXdcvgdTi4cPOheb9M5ke4YBCZLIcJ8I6Weq9OlGsZ1QrwDcAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y1GdcdKB; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-dcc71031680so5470962276.2
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 08:23:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709137413; x=1709742213; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EmCwbhflKVPWRP+q43aE32nK+t+6okXPGDDjl3sIpU4=;
        b=y1GdcdKBzId8WqJotO2qC3TXyTPGJLMxMEE1IUFq7/bIdEZ1CJV7IvcjbWy116TNxV
         SEBJOQTsfN4mCMbnkXWo82icdsDJJMgpfInmbh6LumALH5KS66Ef+UFeA4Q+ddd+E34M
         BtvDU8x8X0b5M4CCsyExcodoTxDtsrj/RJ2Bqhv45+x8B94PLUbsXd1cPQV7nKM+tFN2
         Cc7s3cs94YpYeA8yzM9RzvE7f4a/xPcI+NXIsInfIHpUBXvGDgWH19hmBIRc+tujpg1C
         Tn+Qj+l6pokFSCUSdoC85uzQVQVNagBiJNKzXJUcOTkec35bCWkDeswXKa3kHPhfBZE/
         1q5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709137413; x=1709742213;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EmCwbhflKVPWRP+q43aE32nK+t+6okXPGDDjl3sIpU4=;
        b=ZSlzZx+hx1g2mS1sw77FnykLNpq7UPVnafZbzRiJhjXz3K6/EOl9iTBtLLL5TOrvTP
         ln5h5P/MCyQAlXjNlAmMSu34MxmwRrAJpqJNf/McLaCKRUCvHvgruK1R2GIDWxSzctbR
         VIKcbIdpsmuHLEx29PgnKiZ4l4BNEn7sIrS3sWwsEbpD9aFaeiL0Kup5xufA7FGmaDUN
         28s4mPC/mxTuK3A3H5nd8E1AEe3Lm5gke957DTXcgkYS7wbDJx0NGQRoNELj5Spw6HOe
         t2hdzb6nqKdAwllqSTkC1h9FCU3htsmB+Wnl4RgMinRB593lg/w4vYMCR1CiHIu8U8h5
         L9JA==
X-Forwarded-Encrypted: i=1; AJvYcCXIYGrIaK0CufgaWTF7hqig+NKmawmDggRo9aDePQaoDOIDCAojUN+Z1iw/YzrHHAY7m4HJsTDiErpMRKG/zHAh4krK8HFQHxqhPw==
X-Gm-Message-State: AOJu0Yy4dchKsgAvabWa05NqiF2pDqBb91Ox+eb730AL26NKGMV/ztDf
	v64cxtZVsA4/fFwHYuaGxKaMWNt2sFZFiGUVI9Y+qXfjKb3JVB+Sx8hR6/iSsHjHKTP0zO1JNJd
	6Ivn7foCN4Lw0sil9wkTVxLwH7a6xapXPsDeYgg==
X-Google-Smtp-Source: AGHT+IGhSUW4gUZM4lIL18VzfLa045UtgvuWQaxRrc9kDQB4gKkzYVf4M5/U8ogJ86i+Yl6uMAEaFYs6KfLpbqgssoc=
X-Received: by 2002:a25:b98d:0:b0:dcc:d3ab:2fc0 with SMTP id
 r13-20020a25b98d000000b00dccd3ab2fc0mr2595499ybg.23.1709137412938; Wed, 28
 Feb 2024 08:23:32 -0800 (PST)
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
 <20240228160925.fcitj2yz7hisidsl@bogus>
In-Reply-To: <20240228160925.fcitj2yz7hisidsl@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 28 Feb 2024 17:22:56 +0100
Message-ID: <CAPDyKFqEDu1KRsT2YWv7MhoosCSj_bgV4xE=-2hDaS1ZP7AkvQ@mail.gmail.com>
Subject: Re: DT Query on "New Compatible vs New Property"
To: Sudeep Holla <sudeep.holla@arm.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Nikunj Kela <quic_nkela@quicinc.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, krzysztof.kozlowski+dt@linaro.org, 
	Vincent Guittot <vincent.guittot@linaro.org>, robh+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, 
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>, srinivas.kandagatla@linaro.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 28 Feb 2024 at 17:09, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, Feb 28, 2024 at 03:20:44PM +0100, Krzysztof Kozlowski wrote:
> > On 28/02/2024 15:02, Sudeep Holla wrote:
> > > On Wed, Feb 28, 2024 at 02:27:30PM +0100, Ulf Hansson wrote:
> > >> On Mon, 26 Feb 2024 at 15:24, Nikunj Kela <quic_nkela@quicinc.com> wrote:
> > >>>
> > >>> Hi Sudeep,
> > >>>
> > >>> I would like to conclude on this thread. I was discussing this with Ulf.
> > >>> He thinks that using the domain names to identify if platform is
> > >>> abstracting clocks etc. are not scalable and sufficient. Instead he
> > >>> thinks that the change in the interface to OS(and FW) is a good
> > >>> candidate for a new compatible(even though HW is same).  Even for SCMI,
> > >>> we do change phandle in DT to SCMI protocol phandle so that is like a
> > >>> different platform altogether. Could you please let me know if you still
> > >>> think that using a different compatible in this case is not warranted.
> > >>
> > >> My apologies for joining this discussion at this late state. Yet, I
> > >> just wanted to confirm what Nikunj said above.
> > >>
> > >> In the end we are indeed talking about adding a new platform, as
> > >> changing the FW interface from a QCOM proprietary one into SCMI,
> > >> simply requires updates to a DTS file(s) that is platform specific.
> > >>
> > >
> > > The way I read this sounds like all this are platform specific and need
> > > new compatible.
> > >
> > >> That said, it also seems reasonable to me to use a compatible string,
> > >> to allow us to describe the update of HW for various affected devices.
> > >>
> > >
> > > While I agree with the above statement, it depends on what you refer as
> > > update of HW above. It is all Qcom specific and there is so much turn
> > > between SoCs that this shouldn't matter but I would like to take example
> > > and describe what I initially mentioned/argued against.
> > >
> > > Lets us assume 2 SoCs: A and B. A is old and didn't use SCMI while B is
> > > new and migrated to use SCMI. Now let us assume both A and B SoCs have
> > > exact same version/revision of an IP: X. Now just because B uses SCMI,
> > > should X have one compatible to be used in A and another in B. That
> > > doesn't sound right IMO.
> >
> > That's trivial to answer, because these are different SoCs. Compatibles
> > are SoC specific and every SoC-IP-block needs its compatible. Rob was
> > repeating this many times that versioned compatibles are discouraged.
>
> OK I may have confused or derailed the discussion with the mention of
> "exact same version/revision" of X. This is not related versioned compatibles.
> Let me try to explain it with some real example. If you look at all the
> users of "arm,coresight-tpiu", they all have same compatible on all the
> platforms irrespective of the clock/reset/voltage/power domain providers
> on these platforms.
>
> E.g. on juno it is based on SCMI while on qcom-msm8974/apq8064 or
> hi3660/hi6220 it is platform specific clock/power domain providers.
> However all these platform have the same compatible "arm,coresight-tpiu".
> That was the point I was trying to make and not related to versioned
> compatible for different versions on an IP.

That's perfectly fine, if that is sufficient. It would also be
perfectly fine to extend it with a platform/soc specific compatible,
when needed.

An example could be:
compatible = "qcom,sm8450-coresight-tpiu", "arm,coresight-tpiu";

Krzysztof, please correct me if I am wrong.

Kind regards
Uffe

