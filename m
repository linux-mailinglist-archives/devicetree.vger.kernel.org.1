Return-Path: <devicetree+bounces-75955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 382E89093B9
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 23:42:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 35C1B1C20FD5
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 21:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBB7C184134;
	Fri, 14 Jun 2024 21:42:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AlXQOVu7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F01C178CE2
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 21:42:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718401340; cv=none; b=qe7RKuKbCzkszcOtFGCSanBfs8SYERpTxMwLk+MxHooTOUxwuiM8gcLj31/BzxB80t50CaFdg/GI26k3EhrIQmWtZ1weBjp5O3T1acy7vLYhmlssroXgpkXLigJCUUN8/CseXvT3p1bFvVGGpuAksugs6rw9YLbDQZ184tKuNrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718401340; c=relaxed/simple;
	bh=faSPDpcL3yqC7PLRvANwHerlzIJ1Baevv3BJdpBQmo4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kRlbE6+GkLzWiqYYGmXWo1buys8J+//D2Jd3E/1G5znWuTmsksoBaYGd1nZSV3HE5Bq1ER//HyQ3Bpj+K8ODqvl/GVUB4F8tb1F1IHZCTZoinO9nsrmJjFQVH52FFMvKHFmW/Ut7nYu5OaBYhUZYH0n7OIh4y//zyr8Vsx6prpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AlXQOVu7; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52bc335e49aso2997437e87.3
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 14:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718401337; x=1719006137; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rfrFywGdxRVKDtBlePZ25waSont2SOCWw4599ELCJWU=;
        b=AlXQOVu7NEhGuQ0a/O4HIf7ElahCxbZ805Z2rcv7aCX8lcnrMfm9wigZFgqyA+jDAZ
         Nl21lN56B1oWka0akfreOipWwNxQ6GVBslOpuL5ZlXLDvY4NCPc0AoxO64dZSRuaB9Be
         S10ESwpjT8KQbMgXEK9B7ARWbLW8jRaQk7cENgHWaJWW2lHQVyp4cJlMMWVcQwIRS9j6
         0IABzCBi5RNr0HKA09daZFDkByzAfABzhw2SQOwm/xOVv9FjUUO8Dc9IZkt3KyUXkGt5
         LjOr98crCTDfvfuOLmGzwejNlBhBrkFbtNvGeOnebE+qT2A+PJbCAEevmOq5GxVLTZCM
         zxzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718401337; x=1719006137;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rfrFywGdxRVKDtBlePZ25waSont2SOCWw4599ELCJWU=;
        b=O28sSbYGuL+4G9GwbraW2gGY5cUmM4FLr+yQ5Boge3Dhc5oHKHc1uiU7KkdytsEqd7
         IaBYNzRviBXtXrVUcvQ3WnCGwqFv20utCZKsSWDmSKhGjt0FOWT2f1Z5l81arg96VOkM
         gyZas2SYdhtA++HXULB4Cj7TfD1Ckw99DDkoIqnNwb3kLizFZdZoMdz1GYanqDp7hPdc
         Jz/KXAw6kUuZheTRM37WEJbEu09z7x5HqtYvNARbnTqwOSmpJpGJ5PbWo2JTEuMcSZl3
         VkEtkxyutOfExbAjR7tq2tZsmKNosbQCJ2UrZ/N/5uKERFz1tQt6fRRvtSq9/ipkrnxT
         NLhg==
X-Forwarded-Encrypted: i=1; AJvYcCUVlcq3LgJAMsC7w+5HVSVIWIESm8+tPapfzQ+3Vlf73cwgsjYLc1FK4yn6R6sHluqoNbZNh0HL6r7guW7dR1hVmaQAzy8UAz+Gvg==
X-Gm-Message-State: AOJu0YzVQ4gX0yuMX3+PV1ALkWWMYPrEdmEFXstNzvbHfmXq4slkfHyv
	AVxSKwcw7WWPKiOODR8Kyn9ERXFhOi5eRcWWVpzEq3sdVcOep6aCuz5p0P4S0iM=
X-Google-Smtp-Source: AGHT+IGsVkod4fXLOnmg6/ZcW7K93n3FUSjBDvgJc0I4Ni8Y7vOmxBSXmUWJdfTPkDiGDeGmgJ40Yw==
X-Received: by 2002:a05:6512:4028:b0:52c:9a89:ecee with SMTP id 2adb3069b0e04-52ca6e94220mr3573266e87.52.1718401337253;
        Fri, 14 Jun 2024 14:42:17 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca2825c61sm600737e87.7.2024.06.14.14.42.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 14:42:16 -0700 (PDT)
Date: Sat, 15 Jun 2024 00:42:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sibi Sankar <quic_sibis@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	andersson@kernel.org, konrad.dybcio@linaro.org, djakov@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, srinivas.kandagatla@linaro.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-pm@vger.kernel.org, 
	quic_rgottimu@quicinc.com, quic_kshivnan@quicinc.com, conor+dt@kernel.org, 
	abel.vesa@linaro.org
Subject: Re: [PATCH 2/4] soc: qcom: icc-bwmon: Allow for interrupts to be
 shared across instances
Message-ID: <r6bwmhfa4csubsvetnjlj6gzgovewupxf6hkuygqdconldpk2v@otrs4lhd3baj>
References: <20240604011157.2358019-1-quic_sibis@quicinc.com>
 <20240604011157.2358019-3-quic_sibis@quicinc.com>
 <5e5f052b-df59-47fb-aed0-10b4f980f151@linaro.org>
 <5df5dc6b-872f-34c5-a6d2-a64f9c881193@quicinc.com>
 <672b6156-e425-4f3b-86f4-02a34cab2b67@linaro.org>
 <122b5418-ca2d-df7d-a1d5-d7682ce0ed5a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <122b5418-ca2d-df7d-a1d5-d7682ce0ed5a@quicinc.com>

On Sat, Jun 15, 2024 at 01:49:34AM GMT, Sibi Sankar wrote:
> 
> 
> On 6/14/24 13:54, Krzysztof Kozlowski wrote:
> > On 13/06/2024 19:02, Sibi Sankar wrote:
> > > 
> > > 
> > > On 6/4/24 12:16, Krzysztof Kozlowski wrote:
> > > > On 04/06/2024 03:11, Sibi Sankar wrote:
> > > > > The multiple BWMONv4 instances available on the X1E80100 SoC use the
> > > > > same interrupt number. Mark them are shared to allow for re-use across
> > > > > instances.
> > > 
> > > Hey Krzysztof,
> > > 
> > > Thanks for taking time to review the series :)
> > > 
> > > > 
> > > > Would be nice if you also mention you checked that it is safe to have
> > > > both devm and shared interrupts (so you investigated possibility of race
> > > > on exit path).
> > > 
> > > I didn't see any problems with devm being used with SHARED when I posted
> > > it out. After your review comments I went back again to vett the exit
> > > path for races and ran into an pre-existing splat [1] but the bwmon
> > > instances work as expected on module removal/re-insertion.
> > 
> > Using devm and shared interrupts is in general sign of possible race
> > issues and should be avoided. Just "not seeing problems" is not an
> > argument for me, to be honest.
> 
> Didn't I go further and say I got it tested though? Also can you
> elaborate on what race do you think the bwmon will hit rather than
> being too generic about it?

devm_request_threaded_irq means that the IRQ is freed after the
bwmon_remove() function returns. Having IRQF_SHARED means that the IRQ
can still be triggered even though IRQ for this device has been disabled
in bwmon_disable().

In this particular case such IRQ probably won't cause issues, but at
least it needs to be validated and probably commented in bwmon_remove().
Just stating that "you tested and had no problems" usually isn't enough
for the expected race condition issues.

-- 
With best wishes
Dmitry

