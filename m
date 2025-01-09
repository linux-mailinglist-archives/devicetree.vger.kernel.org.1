Return-Path: <devicetree+bounces-136963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74714A0717F
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:32:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 60E491611EE
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 09:32:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EBBB21519C;
	Thu,  9 Jan 2025 09:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eWPYawKw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87B05215181
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 09:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736415148; cv=none; b=a9C9zxjWqZpjOy3untG07j7x6HgTqwiaIGQ74meo2EpZyBlrNK0SNYicIUslRSwAC1jCYykeJOsPB6KMHOTCxQHgGmnjynf+a8gDxHkT2I1h6QfklMFDgiEhn8hmiiD6hoX9o/WBW9YVf0rPsJrVM89+oHJo+/DwrZzXzCQ8QKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736415148; c=relaxed/simple;
	bh=9xnoNkPWv5A/EKw0G+ew9QQvHb7vdX+BDlJnBGBZueA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oqL8C30UbNJgC71cAVIiMdc/E+2pGV42maIL9vys/lYqx4fDDQMNjFWEBpgNryJl0OPRSxtbCQIzeeplJgXHuVgbvZ57j3NgSufPk0O8fUYXZtRHvIKixwncjhAcXlqwKEKfNTOynMTWEEIW/G6qGJJzxLG6ORVOnAbaxdU9sgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eWPYawKw; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5d3f28a4fccso809517a12.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 01:32:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736415145; x=1737019945; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fJ2QwFixL+K+G9Hyf0+DPOZTVPXln2e6c1ZbpPhvs2c=;
        b=eWPYawKwCzSmWLexUIg8UdmIJdeSdxee5ZX3rK3cHO0kxlW9UEneHSj6O6ABPyFcWv
         GrneNcnBFS3iFbzC2fXGVAgs9O3Rxgt3pm9KT33vj4uxuKswfmoJQUrtbXNwu7q8NUUb
         yqYoGnn/X4GSIX3VGfcqrUcRhxh7AGbEQmw2NAUcFng3bWCsA5wUY5KYvx9AN4CNct46
         WZqMnD0g/ihjZVv5t25DLEd27oaGGwNe4ojZo+a9F+A2V62hEj1HRVsfRI8mpwXJAZgk
         cmLH2/QDdvtWQAb6yA0QzpbT1jT4RfFB1H5Vy3gwvRchgVvA8Pu+lOhcXHsK4Mw3l2gG
         6XQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736415145; x=1737019945;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fJ2QwFixL+K+G9Hyf0+DPOZTVPXln2e6c1ZbpPhvs2c=;
        b=evN4utRtSzPGuq67K0+9q9lP79oqT8uvnpX1klbBOIfA9BxNi6jmIe9Oca1BsQEjQ+
         QnX/Adl8SMVzJA0DcPGSmXp/OWnZ4A74kp6P5y2Q/K+roKwjZCAPKyJ2gX6BwHwxad7f
         eEPao6/aokm/6iv57OWZ+IJcQeEtV1cOBHDYJ3CEdUQhnEgkYeYP+PDpGaeTbBshET4i
         Ws/fJrEX6AjO2/2bJZN8JVbk+Ym+pzAiKrJQD+gBhzyStTjQbybPvEP0mRCGwbmxQO2R
         ZXuVHIC5ZURxfW/q9XenuEz2EVf/TsECNp4rzz32KaRt3ShciFA1rj6wuVPMDl2IomJC
         bl5w==
X-Forwarded-Encrypted: i=1; AJvYcCW+A5inT3NaqB6WrKK4QnE30+yOXZkwnFFIbU9b8+ObYu/Xhm2UU8UraFn/CHtBfIlmfCVTqCex6/5d@vger.kernel.org
X-Gm-Message-State: AOJu0Yyswc1i8DW+UHqBJDQ0YHiSzYOEMdnYIli9ZEuvQEBH93ZFlYfS
	gY6iM1QV1ogOjRy2z1Fh4+s6yuY78eD+9hRSb8itT+fKvNNNPT/vVgUYmOsJvz4=
X-Gm-Gg: ASbGnctt/JeZz/UH3kYGAGTUDDhfoxNdwVXawaEhh8bKp2lVrnoBaIvRpQ2Cnc5L46a
	+wEdvJoBqtzkPC9tDTsaBQC+Hh27212dYTpjztGOhvfWMuOebgVKNFt/1Tfl+5CaMmmDJFHF57W
	xbXqaWx/U7JaxIGhR328EnMkdGydb82Ka+MH4jRCOzFAu2NcHtBeOsnDIuHj5Gv0NaJnVrblTN8
	Ye2cW8SNy3XN6mydr7HFVrVXK1S+9vTSHiomL+SSvF3bYXCw2bWHsygFn9ZOmUvojI4
X-Google-Smtp-Source: AGHT+IGJHHcwKc4g6NxO/4zUAdoxyvVvC9rEHsWgT7mA8rQGtoh/JW2vJfu23NEEMdOh89wdCarwQw==
X-Received: by 2002:a05:6402:5244:b0:5d1:1024:97a0 with SMTP id 4fb4d7f45d1cf-5d972dfb883mr4809864a12.6.1736415144539;
        Thu, 09 Jan 2025 01:32:24 -0800 (PST)
Received: from linaro.org ([2a02:2454:ff21:ef30:32eb:2ece:5e7f:f59b])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d9903c309asm427886a12.42.2025.01.09.01.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 01:32:23 -0800 (PST)
Date: Thu, 9 Jan 2025 10:32:16 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
	Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100-crd: Drop duplicate DMIC
 supplies
Message-ID: <Z3-XoDgUgdS7DDvm@linaro.org>
References: <20241203-x1e80100-va-mic-bias-v1-0-0dfd4d9b492c@linaro.org>
 <20241203-x1e80100-va-mic-bias-v1-2-0dfd4d9b492c@linaro.org>
 <f65e1559-b409-4906-aabb-eb24b5b0fcf2@linaro.org>
 <Z1ATxAsXFhQraQwH@linaro.org>
 <afd010c9-8c24-482e-a479-2396f08c972b@oss.qualcomm.com>
 <Z1H1BHAeO-0832Ea@linaro.org>
 <6vfrlwir6sfommhn3met6wnjm76lnnxw4rdwzq75b7lzcy4jep@2cbcfvb3tvr2>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6vfrlwir6sfommhn3met6wnjm76lnnxw4rdwzq75b7lzcy4jep@2cbcfvb3tvr2>

On Wed, Jan 08, 2025 at 05:07:47PM -0600, Bjorn Andersson wrote:
> On Thu, Dec 05, 2024 at 07:46:28PM +0100, Stephan Gerhold wrote:
> > On Thu, Dec 05, 2024 at 06:11:47PM +0100, Konrad Dybcio wrote:
> > > On 4.12.2024 9:33 AM, Stephan Gerhold wrote:
> > > > On Wed, Dec 04, 2024 at 08:20:15AM +0100, Krzysztof Kozlowski wrote:
> > > >> On 03/12/2024 18:44, Stephan Gerhold wrote:
> > > >>> The WCD938x codec provides two controls for each of the MIC_BIASn outputs:
> > > >>>
> > > >>>  - "MIC BIASn" enables an internal regulator to generate the output
> > > >>>    with a configurable voltage (qcom,micbiasN-microvolt).
> > > >>>
> > > >>>  - "VA MIC BIASn" enables "pull-up mode" that bypasses the internal
> > > >>>    regulator and directly outputs fixed 1.8V from the VDD_PX pin.
> > > >>>    This is intended for low-power VA (voice activation) use cases.
> > > >>>
> > > >>> The audio-routing setup for the X1E80100 CRD currently specifies both
> > > >>> as power supplies for the DMICs, but only one of them can be active
> > > >>> at the same time. In practice, only the internal regulator is used
> > > >>> with the current setup because the driver prefers it over pull-up mode.
> > > >>>
> > > >>> Make this more clear by dropping the redundant routes to the pull-up
> > > >>> "VA MIC BIASn" supply. There is no functional difference except that we
> > > >>> skip briefly switching to pull-up mode when shutting down the microphone.
> > > >>>
> > > >>> Fixes: 4442a67eedc1 ("arm64: dts: qcom: x1e80100-crd: add sound card")
> > > >>
> > > >> If there is no functional difference and this is just redundant, then
> > > >> there is nothing to fix, so drop the tag. But the point is that users
> > > >> might want the low-power VA. You claim they don't want... sure, I am
> > > >> fine with that but there is nothing to fix in such case.
> > > >>
> > > > 
> > > > The fix here is that two mutually exclusive power supplies for the DMIC
> > > > are specified in the device tree. You can only have one of them active
> > > > at the same time. The Linux driver handles that gracefully, but the
> > > > device tree is still wrong and IMO deserves a fixes tag.
> > > > 
> > > > The functional difference is that we skip briefly switching to pull-up
> > > > mode when shutting down the microphone. Users won't notice that, but
> > > > it's not the intended behavior.
> > > > 
> > > > I don't claim that users don't want to switch to the low-power pull-up
> > > > mode (VA MIC BIASn). However, we would need a different mechanism to
> > > > give them the option to switch at runtime. "audio-routing" just
> > > > specifies static routes, so the current description does not allow
> > > > switching between the two modes either.
> > > 
> > > Is there no existing mechanism to alter this at runtime?
> > > 
> > 
> > I don't think so... Since it's currently exposed as two separate DAPM
> > supplies (instead of a mux or similar) you can only choose between one
> > of them in the static routes specified by "audio-routing" in the DT.
> > 
> > I tried looking at how downstream handles this, but this left me even
> > more confused than I was before. :-) On CRD we currently have the
> > following routes in DT:
> > 
> > 	"VA DMIC0", "MIC BIAS3",
> > 	"VA DMIC1", "MIC BIAS3",
> > 	"VA DMIC2", "MIC BIAS1",
> > 	"VA DMIC3", "MIC BIAS1",
> > 	"VA DMIC0", "VA MIC BIAS3",
> > 	"VA DMIC1", "VA MIC BIAS3",
> > 	"VA DMIC2", "VA MIC BIAS1",
> > 	"VA DMIC3", "VA MIC BIAS1",
> > 
> > MIC BIAS and VA MIC BIAS are mutually exclusive, so this is not correct.
> > But if you look at e.g. SM8550 downstream they have:
> > 
> > 	"TX DMIC0", "MIC BIAS3",
> > 	"TX DMIC1", "MIC BIAS3",
> > 	"TX DMIC2", "MIC BIAS1",
> > 	"TX DMIC3", "MIC BIAS1",
> > 	"VA DMIC0", "VA MIC BIAS3",
> > 	"VA DMIC1", "VA MIC BIAS3",
> > 	"VA DMIC2", "VA MIC BIAS1",
> > 	"VA DMIC3", "VA MIC BIAS1";
> > 
> > Note the TX DMIC vs VA DMIC. So they specify one of the supplies for the
> > TX macro DMIC, and the low-power one for the VA macro DMIC. That would
> > be fine.
> > 
> > Now the question is: If we can use the DMIC through both the TX and the
> > VA macro, and we're not doing voice activation, why are we using the VA
> > macro in the first place?
> > 
> > @Srini: Do you remember why?
> > 
> 
> What's the verdict regarding this?
> 

We started discussing this, but did not come to a conclusion yet if we
should be recording from the DMICs using the TX macro instead of the VA
macro.

The patch I submitted is still valid though, independent of that
question. Since we're not doing voice activation we want to have the
"full quality" MIC BIAS supply, not the low-power one.

It looks like there have been new users of this pattern added upstream.
I'll resend this patch with all the new occurrences and will try further
clarifying the commit messge while at it.

Thanks,
Stephan

