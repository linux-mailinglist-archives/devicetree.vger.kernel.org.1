Return-Path: <devicetree+bounces-137915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6668A0B183
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 09:44:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B3297167027
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 08:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DFCA2343AA;
	Mon, 13 Jan 2025 08:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s47YjWke"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26E4233D7C
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 08:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736757842; cv=none; b=Prs76LOwQWaGagcoYD+emtgy+FjxuqT1nxyEi9NmBL3OsjoIldOvemX+MXHuojj3QI35KisOoqwvW8KQ1iv3Qs0smjCpq6z6/TKpHzMLTrNw5gVOOxW5g8KIA9w+0yzXm6vqSsOnW9RkFf3aNT0V5e+Jj6O0McQKEGxI2A709Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736757842; c=relaxed/simple;
	bh=A5UwJ4xTHOsuoyyy3BEtdF0duObFIXQD0RkPE1f5f2Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CKXFaikfWqcPgvZaGuMuox+x3H5SfB3QJu6hOicNPlUxZ2Ai4tb0nkJgALXIlpqcV0u7jh9au5jEtgv6D2am9PSsF8H3ujRWRP67aL45GTBPHjoNGUu9yF+9lW19RPAcMBZGt1qoXvjKUWWK8nLL7nZPJnmLf9pY/OZhxVq4j5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s47YjWke; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-54025432becso3705372e87.1
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 00:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736757838; x=1737362638; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MWTv8k1B3J3FaWjfN8qADIkUbxhAzRPicYRxev1lj6o=;
        b=s47YjWkeGr0/fcP2VL48uOSdomX/WmlnheD79LGvXs6eF6rCj0NnfMU0NO0kU9Dx8e
         +bKRjCHLquYRAh9ZX9Za/1njhK4UQmZ/8PMwlGpuLNfQ5CX4oNuuRuGJzh6B5DUr/8WL
         fkjyamcNZAQ6BtPg8Gp1QFq8fOEFtXSSJw3LDppYGg+xqghlZOvLvUoxtLCuxzVaht9q
         uOA3d0euiowceBLPKuLIkNXwnwSUJcnQt9R0iyALZC1sz+93Z6ypsm7UZ96rhksVDpD8
         0S/6mHZ/R8g/kShfRp3JV29wXo7Bhe0j4fxHjM43HgmV9wrD7OuSaQPhrm9cR0WQ20vk
         pEJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736757838; x=1737362638;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MWTv8k1B3J3FaWjfN8qADIkUbxhAzRPicYRxev1lj6o=;
        b=jMAgs4beYizdzlwtH2XAHyRmBJ9dE7e6FGL67QbzN6x8fTy0cD832DmlBE1zHL5VD2
         6WEhjCMBe+FK0Mrrved9CruXYGGcIW//njGW+AdNjqxsnYjepLWvNHm1MBAxl5nB6aiL
         5e7aZl6dJ7Ik93fwNwwP9iWI5cSr0tNg0381LdAhVg8/CP6dlVL03PPmgBpUzYnBC7pC
         /TAvg79JJ5tgpA8YoFK/gRdQweurQmAeosly3sp8RAkZBq9/jDa3j7hpitAFm1cFDHYP
         G9sOFI3zIyPPmygdLgmXWBks6rmiFVdib1VQ8RI+eo55UDM9m0r5DXOecHfoS06p968r
         onNQ==
X-Forwarded-Encrypted: i=1; AJvYcCVotEG/gXzTfOJCncILoxK+VXLoHLS5q636GJ5RNtzYD1mak5nh7WljqgLil9X561ABGzUao32sQjLH@vger.kernel.org
X-Gm-Message-State: AOJu0Yy13j0vnBu6isoG6P1cLuIfFdUacMB662G/quWAwSzDy2y6VGz8
	1ViladwhL9PpRYdHRyeFzTj0gU0mJkZjyYUOHWlETPYw5zGrp4ePWRCUvDg2iZs=
X-Gm-Gg: ASbGncs6aut+nFHTVyt2VdcX9/yTo7Qsf6byzDsMcvcWr0aaMBDYxGupb0ny8M8Kn7b
	jqmmkpRfyiRBrB1kn99PSCFDC/dpmp/YfndWhDzl1uLzdrUq2keqe5WVACJPFYq0zFUUQLEbJ7F
	54SFbx3qpVMYqQfhJTzFT07WkcXrkcx80uCVJUYV7wU8sL1CGggmpgTBeaj4NEXMcAAP4GKnGNZ
	4UmqiRaJnvQvzU0E9iCT27vv0LLfzS2ymF4rxnpzOjI1cHXK8Ujvowr7Yq5daHRh0q6V02pU1HX
	o4u4QJtFBzoArmN1USzpBrmit0bORChisQC4
X-Google-Smtp-Source: AGHT+IEB5Fd5VVj7DS9ykAk49nxB8j0E1Gm+dV0EnEhjruNxp6XC4G/xyYsTt3oGN7HYXx43etbVCw==
X-Received: by 2002:a05:6512:398b:b0:542:29ec:d338 with SMTP id 2adb3069b0e04-542845b0a94mr6246252e87.39.1736757837666;
        Mon, 13 Jan 2025 00:43:57 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bea67d5sm1299920e87.136.2025.01.13.00.43.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 00:43:57 -0800 (PST)
Date: Mon, 13 Jan 2025 10:43:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>, 
	Wasim Nazir <quic_wasimn@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel@quicinc.com
Subject: Re: [PATCH v5 6/6] arm64: dts: qcom: Enable cpu cooling devices for
 QCS9075 platforms
Message-ID: <y4jlmm64nd5xip5kcprk2zvwis66iaosy2jrjjzfqjq4rhq7h6@jnant4eonkya>
References: <20241229152332.3068172-1-quic_wasimn@quicinc.com>
 <20241229152332.3068172-7-quic_wasimn@quicinc.com>
 <zn4uf3mmlmt3who474hwkr44poycfqtjtidshybbg55a3hr63y@zxefqbhiwkbg>
 <d54c6706-3c6b-211c-6acb-fa3984c30c67@quicinc.com>
 <ubasbsyspn5euygihgphyw3xg4ckveytvgnjpwdiyg4pv7degr@6y44ya4gvaqj>
 <07c41571-28ca-6f9e-bcee-899bbf77f687@quicinc.com>
 <sufmykle5inyk73i3qfmy3xqq7plgfr7txiruyahc5wgvvn6uo@kytxtb5zc3tg>
 <cf2ad828-d00d-133b-f310-1688fc0ed59b@quicinc.com>
 <6zftdu5myuporxsvxlxhojnlhnfa74pjj7nvy3wmiaw7jdsuo2@3ebcpevzvtlc>
 <fdba317e-abd2-4620-a341-568ae497622e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fdba317e-abd2-4620-a341-568ae497622e@oss.qualcomm.com>

On Fri, Jan 10, 2025 at 01:31:00PM +0100, Konrad Dybcio wrote:
> On 10.01.2025 12:54 AM, Dmitry Baryshkov wrote:
> > On Wed, Jan 08, 2025 at 09:38:19PM +0530, Manaf Meethalavalappu Pallikunhi wrote:
> >>
> >> Hi Dmitry,
> >>
> >>
> >> On 1/8/2025 6:16 PM, Dmitry Baryshkov wrote:
> >>> On Wed, Jan 08, 2025 at 05:57:06PM +0530, Manaf Meethalavalappu Pallikunhi wrote:
> >>>> Hi Dmitry,
> >>>>
> >>>>
> >>>> On 1/3/2025 11:21 AM, Dmitry Baryshkov wrote:
> >>>>> On Tue, Dec 31, 2024 at 05:31:41PM +0530, Manaf Meethalavalappu Pallikunhi wrote:
> >>>>>> Hi Dmitry,
> >>>>>>
> >>>>>> On 12/30/2024 9:10 PM, Dmitry Baryshkov wrote:
> >>>>>>> On Sun, Dec 29, 2024 at 08:53:32PM +0530, Wasim Nazir wrote:
> >>>>>>>> From: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
> >>>>>>>>
> >>>>>>>> In QCS9100 SoC, the safety subsystem monitors all thermal sensors and
> >>>>>>>> does corrective action for each subsystem based on sensor violation
> >>>>>>>> to comply safety standards. But as QCS9075 is non-safe SoC it
> >>>>>>>> requires conventional thermal mitigation to control thermal for
> >>>>>>>> different subsystems.
> >>>>>>>>
> >>>>>>>> The cpu frequency throttling for different cpu tsens is enabled in
> >>>>>>>> hardware as first defense for cpu thermal control. But QCS9075 SoC
> >>>>>>>> has higher ambient specification. During high ambient condition, even
> >>>>>>>> lowest frequency with multi cores can slowly build heat over the time
> >>>>>>>> and it can lead to thermal run-away situations. This patch restrict
> >>>>>>>> cpu cores during this scenario helps further thermal control and
> >>>>>>>> avoids thermal critical violation.
> >>>>>>>>
> >>>>>>>> Add cpu idle injection cooling bindings for cpu tsens thermal zones
> >>>>>>>> as a mitigation for cpu subsystem prior to thermal shutdown.
> >>>>>>>>
> >>>>>>>> Add cpu frequency cooling devices that will be used by userspace
> >>>>>>>> thermal governor to mitigate skin thermal management.
> >>>>>>> Does anything prevent us from having this config as a part of the basic
> >>>>>>> sa8775p.dtsi setup? If HW is present in the base version but it is not
> >>>>>>> accessible for whatever reason, please move it the base device config
> >>>>>>> and use status "disabled" or "reserved" to the respective board files.
> >>>>>> Sure,  I will move idle injection node for each cpu to sa8775p.dtsi and keep
> >>>>>> it disabled state. #cooling cells property for CPU, still wanted to keep it
> >>>>>> in board files as we don't want to enable any cooling device in base DT.
> >>>>> "we don't want" is not a proper justification. So, no.
> >>>> As noted in the commit, thermal cooling mitigation is only necessary for
> >>>> non-safe SoCs. Adding this cooling cell property to the CPU node in the base
> >>>> DT (sa8775p.dtsi), which is shared by both safe and non-safe SoCs, would
> >>>> violate the requirements for safe SoCs. Therefore, we will include it only
> >>>> in non-safe SoC boards.
> >>> "is only necessary" is fine. It means that it is an optional part which
> >>> is going to be unused / ignored / duplicate functionality on the "safe"
> >>> SoCs. What kind of requirement is going to be violated in this way?
> >>
> >> From the perspective of a safe SoC, any software mitigation that compromises
> >> the safety subsystem’s compliance should not be allowed. Enabling the
> >> cooling device also opens up the sysfs interface for userspace, which we may
> >> not fully control.
> > 
> > THere are a lot of interfaces exported to the userspace.
> > 
> >> Userspace apps or partner apps might inadvertently use
> >> it. Therefore, we believe it is better not to expose such an interface, as
> >> it is not required for that SoC and helps to avoid opening up an interface
> >> that could potentially lead to a safety failure.
> > 
> > How can thermal mitigation interface lead to safety failure? Userspace
> > can possibly lower trip points, but it can not override existing
> > firmware-based mitigation.
> > And if there is a known problem with the interface, it should be fixed
> > instead.
> 
> I think the intended case to avoid is where a malicious actor would set
> the trips too low, resulting in throttling down the CPU to FMIN / Linux
> throttling CPUs to try and escape what it believes to be possible thermal
> runaway / a system reboot. Not something desired in a car.

Being able to set trip points via sysfs means that the system is already
compromised. At this point it can do whatever the actor wants - e.g.
display malicious HUD or just a gren bar or black screen, scream into
dynamic, etc. That doesn't sound like the temperature trip points being
the only or the major problem of a car.

Anyway, if that's really the only problem, please use the framework to
make the temperature and hysteresis of the trip point R/O for sa8775p /
qcs9100. Other attributes might need to be made R/O too. It well might
be that I'm missing one of the automotive peculiarties here. In such a
case the commit message should be more explicit that it's AGL or some
other requirement and provide a link.

-- 
With best wishes
Dmitry

