Return-Path: <devicetree+bounces-188514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75704AE3ED7
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 14:01:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB08A172CAD
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 12:00:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 552A6246BC9;
	Mon, 23 Jun 2025 12:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r+G6Jus5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4530E244661
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 12:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750680029; cv=none; b=gHVGa4kO8vNodE3Y5argVFEGHIYBh3889ftMifGJ8QDypGaL2cgmbFYQ83fOIwoHu3nHXv7PiVuJpvKhYKEX71ezkWwzdtzCF09Avv1kGLo4GTW07qW+3r5//iAjtfzV0oaDLny0cGS6VPO+i4CfDN0bRJehtvdNmHXhwyqqi/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750680029; c=relaxed/simple;
	bh=9AVM/WcfGAXb2jXKPXSmnU+MPuytzkKUS7VdlPBrkYk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DR/8p12RW94tBa3I6WYdpzkimEtee0qsbhgh623WwkszyA2y1WA6FIl6EGrTEjR6Qq/qsObgE77oJ49dsGYaaTzbARLAnP2CY2Cb2BFfmGljxlJnnzo6rFChVmq2kDw5gTnk1UKZ7SpKppXE/M7mAMjSbRy7qzUI9efA0dSZ+yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r+G6Jus5; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3a531fcaa05so1687880f8f.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 05:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750680026; x=1751284826; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=X56zb7wq5BXdd0ZdmI2KEfFF5TzzFXQroLEo90/IQmA=;
        b=r+G6Jus5uKWN4PZxrcCn4T6zyQtisqPvflNfxwcbRMXfMGFPfTK9uwmXDCqBDyJUrp
         luG5NCxC1f3EvbJsvdFY0ZljDNCVhg8nQsH4z16Xew4IUH7pHbvwlJk1m2654FkkiE/7
         QNsgEcOBmVX8RebfZDrpqIwKpGd/QXjB6/7+oIj2I/6rahaZAecRkaDWo5styIFu7Yal
         Js0IEjLIFNdgKM5hVxsQXKAmTOWrk1ekvXVqpn3JM2XgKLB9DWY3QZhwnGPY0oHe/cRq
         FwHBm7LncnUeloq6rfRvMUtVMWhVD9Leupn/CzeUaMkBWobY36aEeOi7RPb6ul+YBVCg
         86Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750680026; x=1751284826;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X56zb7wq5BXdd0ZdmI2KEfFF5TzzFXQroLEo90/IQmA=;
        b=swDGIG/Q/ZdmvikPbczFX8ZguqCAuFqpbEtDS3AVV/ou4ykUylPEcqnbjMTa7zXODK
         Hsz+7XDpFkDshe7KBq9F22uAjjM8EKe3PwYpI+kUSAYd+xomAtWXWncwX3xfN+m6piZu
         VYukt84sc/7eI2R3TBOIrZJa02ihvkt/MnhZ4ZH8Yc3Wwnu9nOgHBetwc+j9M7nTuD+p
         SK5sfIOKMIOHTTkL4Nt2cN+D0Nmu85WjtWx5WrgEz8ZY+8AKwLO88BljgqTAkRb+TwnW
         OZcu0oDWQe5nMV9OElZ/5ClU/UYUh5B7Wvrh85ZIAV5VLFL40O+Yo/A9+lvpNUxVOhwI
         ms9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUP7zlf2jw90PPBPbXn2IGdXqVn+ujIcLyocnC9S0SXNQ2qs4ThAGp5YlrKAcO0QxmzXCZ0ZddlVt6/@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs7RaitcwSXxXmawl49YClbyfEmOtH1BsuXE4lUXDO3DWsV2dz
	JmSIgBjG6/RC5WsGTNAxrhq9rRiqcnJvfuGR/BTNw3Z+ZfVrqL4R9aPVogDfVwezEIk=
X-Gm-Gg: ASbGncs4yyqKJCm2t3iN1raMmiGxxn92gT0+n4R69OF5gk9pBjkKUQ1dVMw6d/b2v18
	nmChEHgkFBWrpyMUGvutlrCFcIsq1/ZTBEaQshhblkvECQXLxTu5ejeSL+h/1++fMp2htk7rbPY
	MGp3mC1mpX+0i96DN2QghoXR5Ygy9TQ61+9aBiW2RMmd7oYweIC+QJ7E6QG0GcNHOOYEekC2WKv
	leghd0e5U/C7ZQt0cX4Vl4ZMRAXNymvVSihsxNPq0cpm0THTkhK9udsmJtyD3qDRdNO+mulk70A
	fzU+7Wlw6B4DUmrY+9qWGpx5mKd/SPpo+fBPJBxCVJboqGHTkUZ/wpDE6tyeyVgUwh/tWzG55w=
	=
X-Google-Smtp-Source: AGHT+IE8eEz4YX2pbEuLSpbBhCa03WIl1GDVOGO4rzNJG+/ebJsxYE3HJyTVgaO5O4s9i3NglkcOqA==
X-Received: by 2002:a05:6000:3103:b0:3a4:f7af:b41 with SMTP id ffacd0b85a97d-3a6d128db06mr9661784f8f.15.1750680025428;
        Mon, 23 Jun 2025 05:00:25 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:b3ca:db17:bc4f:ae5a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a6d117c3f7sm9472262f8f.63.2025.06.23.05.00.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 05:00:24 -0700 (PDT)
Date: Mon, 23 Jun 2025 14:00:20 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/5] Add missing OPP tables for Venus on qcom/arm64
Message-ID: <aFlB1Ae6ZRPX_TM5@linaro.org>
References: <20250531-topic-venus_opp_arm64-v1-0-54c6c417839f@oss.qualcomm.com>
 <aD1cUF56-IX_tSpp@linaro.org>
 <a47842eb-6d65-4928-8226-461ee36b480b@oss.qualcomm.com>
 <4b3cd0a9-ef63-4adc-b2c2-52fde30fed83@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4b3cd0a9-ef63-4adc-b2c2-52fde30fed83@oss.qualcomm.com>

On Wed, Jun 11, 2025 at 10:46:17PM +0200, Konrad Dybcio wrote:
> On 6/11/25 10:43 PM, Konrad Dybcio wrote:
> > On 6/2/25 10:09 AM, Stephan Gerhold wrote:
> >> On Sat, May 31, 2025 at 02:27:18PM +0200, Konrad Dybcio wrote:
> >>> Sparked by <20250530-add-venus-for-qcs615-v8-0-c0092ac616d0@quicinc.com>
> >>>
> >>> No external dependencies
> >>>
> >>
> >> Are you sure?
> >>
> >>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>> ---
> >>> Konrad Dybcio (5):
> >>>       arm64: dts: qcom: msm8916: Add Venus OPP table
> >>>       arm64: dts: qcom: msm8996: Add Venus OPP table
> >>>       arm64: dts: qcom: msm8998: Add Venus OPP table
> >>>       arm64: dts: qcom: sdm630: Add Venus OPP table
> >>
> >> None of these platforms has a power domain that supports performance
> >> states specified in the venus node of the DT, and the venus GDSC does
> >> not have any parent either. I think you will need to update the venus
> >> bindings and add
> >>
> >> 	.opp_pmdomain = (const char *[]) { "cx" /*???*/ },
> >>
> >> for all these in the venus driver (plus backwards compat if not already
> >> there). And then add that power domain additionally in the DT.
> > 
> > Making use of these tables would certainly be welcome.. This patchset
> > was aimed at pushing them to fdt, so that we can debate dropping the
> > hardcoded values in the driver in the future.
> 
> I don't think we can just plug them in to the driver right now, as
> it would also happen to break backwards compat (since
> devm_pm_domain_attach_list() seems to not be particularly happy about
> missing resources) - though arguments can be made both ways: "it
> could have never *really* worked" vs "don't poke at the old driver for
> old hardware too much, as it's gonna break"
> 

You could just make it ignore the returned error for the call to

	ret = devm_pm_domain_attach_list(dev, &opp_pd_data, &core->opp_pmdomain);

? Perhaps with some extra flag that only enables that for the older
platforms.

I suppose having the DT complete is also helpful, even without the
driver changes. But at the end this would be untested "dead" properties
that may turn out being subtly wrong when someone tries to actually
enable it. So having it properly enabled and tested would be good,
especially since the required changes don't sound too massive and
intrusive to me.

Thanks,
Stephan

