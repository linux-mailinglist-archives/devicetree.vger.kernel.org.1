Return-Path: <devicetree+bounces-12379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FAA7D9296
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 10:48:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 312CD282348
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 08:48:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAA02134BE;
	Fri, 27 Oct 2023 08:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fuvom1zT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3058BE7
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 08:48:36 +0000 (UTC)
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39F3DC4;
	Fri, 27 Oct 2023 01:48:35 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-6bee11456baso1732929b3a.1;
        Fri, 27 Oct 2023 01:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698396514; x=1699001314; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nvOPHwGJQebkrMEWHUin3lPRoZdTkotFVHLS8/2H+/s=;
        b=fuvom1zTlz+Rvjuo3K0pg83kKLjTEwICewWV0nchTcM8gliC2IvFzEbMLlgdz981iC
         eOWFqctq+7iHYHFtBZ9A9WeVtaHQ/Fz+y73SpXgK8yiT3SFUI33aZvcILiSQsBlO/A8X
         3QSyYApjLR7QIH5xIG+VizDFhR5vnKXMY4BrOwqMEvVFt8YxeXSskq2jDLyrShSs7CGp
         0VsGD5OkAufcGc5Q/du0mKAGUMdZmUH8QzL2z2dTtLwUJeRQnTfcHI5263qR7rQY5KBd
         /7/bYguXMHeJKlPggge8pmIUO/rCCKrvIjLCmEhv3qsEreZ3vjounfF3ulcVgpvu/mnI
         RxcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698396514; x=1699001314;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nvOPHwGJQebkrMEWHUin3lPRoZdTkotFVHLS8/2H+/s=;
        b=g1K7wzHh4yrPKxPeNZVXpUnn+S2D4f0dGZ6sXzriyhOYGR5IQZiy8VeilelA4vWSnf
         UUza/cOI8GT0RZx/yHeJcRn07kMVP+o9M+DPFsSM21afgwOGQxVOTivMaY4XZlteN5c1
         rWQMfexhXr4QYm3BBAj5sV3TffLIM8KWEYLjRYq8hmMMomQvprUzPqVRtwU+z4uIDhL3
         mmIjCkDzdu1vtrr5CPkdnRcvXWoxVoC4xJqXbBOeEmVu4TmMEIXDOBcwmCPHl1VrAVig
         5eXR1I9C0bg7LLdXS4jqVrptzZ0vzDynaNvKK3I6GFVq4aAUx1c7oyz331uEjqIL6PCZ
         f+/g==
X-Gm-Message-State: AOJu0YynXrtFN8488NuH83mHfJ/Mr00jtWNRLQzXTX1SkT7jl++3T83l
	DZXosmi1ZPHxFOa0ndkJ9zcJFgowhZPTEdARiTA=
X-Google-Smtp-Source: AGHT+IEPjsu0T5+FwEyTwM9n0U+omys2gq3u41JIwN/UvpWdbPS/4nRe4abawxvVWdlF+P6OxrHSTyQYByprePhJgZs=
X-Received: by 2002:a05:6a20:7489:b0:174:2286:81f4 with SMTP id
 p9-20020a056a20748900b00174228681f4mr2266082pzd.14.1698396514550; Fri, 27 Oct
 2023 01:48:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025104457.628109-1-robimarko@gmail.com> <20231025104457.628109-2-robimarko@gmail.com>
 <77314fe2-2936-4f89-a347-4eb288507c47@linaro.org> <1b99abed-6572-4550-98cc-56667a507883@linaro.org>
In-Reply-To: <1b99abed-6572-4550-98cc-56667a507883@linaro.org>
From: Robert Marko <robimarko@gmail.com>
Date: Fri, 27 Oct 2023 10:48:22 +0200
Message-ID: <CAOX2RU7gXAJM8xYOc2G__2HSQCQKuy5sUcXoyr_a8WKndD1yLg@mail.gmail.com>
Subject: Re: [PATCH 2/3] clk: qcom: ipq6018: add USB GDSCs
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	mturquette@baylibre.com, sboyd@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 26 Oct 2023 at 20:45, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 10/26/23 20:42, Konrad Dybcio wrote:
> >
> >
> > On 10/25/23 12:44, Robert Marko wrote:
> >> IPQ6018 has GDSC-s for each of the USB ports, so lets define them as such
> >> and drop the curent code that is de-asserting the USB GDSC-s as part of
> >> the GCC probe.
> >>
> >> Signed-off-by: Robert Marko <robimarko@gmail.com>
> >> ---
> > Applying patches 1 and 3 without this one breaks usb, no?
> Sorry, my hands don't keep up with my brain - that's almost another
> speculative execution vulnerability!
>
> What I meant to say is:
>
> applying patches 1 and 2 breaks USB
>
> but
>
> the solution here would be to apply patch 1 and patch 3, followed
> by patch 2 (unless it will make the USB defer, IDK, it's probably
> easier to just test than to dive deep into the code)
>
> with Bjorn taking both subsystems, we can make that work I think

Hi,
Applying patches 1 and 3 without patch 2 will make USB fail with:
# [   11.351681] dwc3-qcom 8af8800.usb: deferred probe timeout,
ignoring dependency
[   11.351729] dwc3-qcom: probe of 8af8800.usb failed with error -110

And yes, applying patches 1 and 2 without patch 3 will also break USB.
That is why I sent this as a series.

Regards,
Robert

>
> Konrad

