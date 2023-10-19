Return-Path: <devicetree+bounces-9999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5BD7CF4FA
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:20:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8897281F32
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 10:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C35EF18030;
	Thu, 19 Oct 2023 10:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h5Z/y7cF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB75182A7
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 10:20:03 +0000 (UTC)
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C2AF11D
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 03:20:01 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-5a7c011e113so104413097b3.1
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 03:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697710800; x=1698315600; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+2ay1Mv9/C/v7lm4yctcbzZyj+Oa+YNr3iWCqPoUf2M=;
        b=h5Z/y7cFwgKw9S8cVQcz3HXGtNJ482/Ay6QvTVj5BIhhHjpsBC6AtLd2GgG5whjv1T
         4AK6TzxScahwldNiLVBT9KlHQp7bAKa20Y5qhpjSfaKmba3uuY5eTlHvH0kVy3L7L9/Z
         DxjmGXZ5yA/4g2KQNmgs8WsW1QDiBjPpPpYsvmAHQWMcsEe/8worgV2rQwOjQ1TE1byp
         Cp6sAVfva1DDTbkqptl/RlP0HkRVLHDuplW7RLnnxMd1WI/go4pgNEMUiHuG+aCxYPCl
         aUS09EB0oxeivbcK1KJy3cQN4va/4rQmXQT4pKdk2eok3+neGx8SeB2xdpcDE7Xub3mF
         dX+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697710800; x=1698315600;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+2ay1Mv9/C/v7lm4yctcbzZyj+Oa+YNr3iWCqPoUf2M=;
        b=TnBrw6iBfExYkgQdPJKGp9ALhCJ7F7MjKA4T1tSjpG15s2tDxcVHwUa7eR8hXrpnIu
         JLCEq1izWYGgugjKLiXLTQp+4g0kWWVF0sqglDNNRhc20j52tlJEeKQFykIVLTQC51zC
         mcx8ogC5MuiLYyocluRPvk1PV+Mqxi8L2vm4bkFyKpi25BGjCDjsPvCAJthNCmE6f+xC
         pU7BhRis+6C1a++pMVuiGzAiDNV8gEWv5OR0FkL6RxeAH/v9WE21+mY0oJ0pc6RA1yhI
         H938rhV4tyg7VEUCx0CVS2JLo+nH4oTAMsQX232jZ9b99AtWfaonOl7SpND7ED94Z9he
         YYyg==
X-Gm-Message-State: AOJu0Ywv6ySSVatBmnxXtxtpcZ+xcNfNdHRWSoAZycSpgIB2e4NNSVw6
	Q1o0YHnVS/N0tj4ceFvUFn2mGFL/VowpgJWD+qQaTA==
X-Google-Smtp-Source: AGHT+IH1co3QGaifyt8+FiiqfpjOwl6MBA08MqBPrTv2587EQVcy78LceP4jDc7WDl2ukXOpfEvW2AFLyTZgEbN6+oQ=
X-Received: by 2002:a25:d0a:0:b0:d9a:fd25:e3ef with SMTP id
 10-20020a250d0a000000b00d9afd25e3efmr1674227ybn.64.1697710800490; Thu, 19 Oct
 2023 03:20:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231018-msm8909-cpufreq-v2-0-0962df95f654@kernkonzept.com> <20231019061608.wjlf4orkdlpnv3a5@vireshk-i7>
In-Reply-To: <20231019061608.wjlf4orkdlpnv3a5@vireshk-i7>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 19 Oct 2023 12:19:23 +0200
Message-ID: <CAPDyKFr5xC6yaB4REQ5FwROfh_Rsfco5KBw4A9T9A2JZepTk8w@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] cpufreq: Add basic cpufreq scaling for Qualcomm MSM8909
To: Viresh Kumar <viresh.kumar@linaro.org>
Cc: Stephan Gerhold <stephan.gerhold@kernkonzept.com>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Ilia Lin <ilia.lin@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Stephan Gerhold <stephan@gerhold.net>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 19 Oct 2023 at 08:16, Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> On 18-10-23, 10:06, Stephan Gerhold wrote:
> > Add the necessary definitions to the qcom-cpufreq-nvmem driver to
> > support basic cpufreq scaling on the Qualcomm MSM8909 SoC. In practice
> > the necessary power domains vary depending on the actual PMIC the SoC
> > was combined with. With PM8909 the VDD_APC power domain is shared with
> > VDD_CX so the RPM firmware handles all voltage adjustments, while with
> > PM8916 and PM660 Linux is responsible to do adaptive voltage scaling
> > of a dedicated CPU regulator using CPR.
> >
> > Signed-off-by: Stephan Gerhold <stephan.gerhold@kernkonzept.com>
>
> Applied patch 1 and 3. Thanks.

I did spend quite some time reviewing the previous version. Please
allow me to have a look at this too before applying.

Kind regards
Uffe

>
> --
> viresh

