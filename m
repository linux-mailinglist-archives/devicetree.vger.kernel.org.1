Return-Path: <devicetree+bounces-225818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F236BD13AF
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 04:32:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 443383AA596
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 02:32:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEE922586E8;
	Mon, 13 Oct 2025 02:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AXUl1n8I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189782AF00
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 02:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760322769; cv=none; b=MShnpzpLS+xpiNhU1hSWWuwY4WEeCcy/nlx6Z0+CMk1V0q7s60jurXOpKo9A/O8VbWMRqfI48dLUW/NqfwS7tZ7SkxcLt8+pTsGtk05akRaqgLFR34vWSuLPMu5HNA/fMTVehU1uj2AO4zaCdU0Rb5ZUkkIyuR5ebQ4yLF8/hG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760322769; c=relaxed/simple;
	bh=Mobd2nPQjln/iaGH+phCc81JbmWHC6V+ZX+OEP8c6WQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=berZioL6sbCQdBG8MuPZVUy8+4JDwU6Jw9GQTV9wdFaZmbH3kPfz7imCSyHtqikT1wG7g0EMTu4BuPABe8mjNabUtGut217HA4ul2Gq21DDVXxilHR7h6pdjfdntuif1TfwN9GLRETgZQ18D4DdjxhgS3zcqRQ3qjhz543SFXHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AXUl1n8I; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-57dfd0b6cd7so4291082e87.0
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 19:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760322766; x=1760927566; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rSyKix+dExsW53zwh7yt2N4OdGXjl30i0H4cWLjWmaI=;
        b=AXUl1n8IHV3cVpOOSU6jhy5H9gRtJCqQqlFmwpSNEXYIIAxjniKANxWCRPkgyI4F9b
         FZCYvgFHjRlFhzyElVY9ULVvkhqDJUP3I5K/6ywQpgL82np+hl++/lu8EkH1Ycdxp/Kd
         aq9ZDSEqmTi1mVpQQBhurmmsq7UX0Sj806RIM2uqwoLL8H0k8SC4gfrz3ZTbKsQdRayu
         IhraNnBEIsv/XDqbqvjo2/Xwn2pBVg/Mqcp/kwj1PD3fM72o1zTf2+DRxr+W1PajRVRd
         O2osOnO4xKgLCkIDgjNrNuGMYbWlbwiubp+/O9q7GJz8tzKH2wpj4yZGIEHjKxBrpjbf
         UC2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760322766; x=1760927566;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rSyKix+dExsW53zwh7yt2N4OdGXjl30i0H4cWLjWmaI=;
        b=lkdWp2GJE+oF5Dtr5z7A2W0YsQ8DDPBN7R7wB9hDOkAyTRCzG1X5/aLnjEGxhTcInj
         fvtmqTN8NeFeo87RLwsRamO0UO2feeefxwI6J5iPWAXIyh9fWuwJh/BCXB1ZaTzqMUy7
         BQLENou+tuEI9GmpTHD7Mm7EsKYM5T9xyRA5FRXQpu2XB2jJJYgDPOwPhtWKoqGZa74n
         6XZ/Tw1I4dsgoECmRzRuugtJPGiOLqD0s+NQWX5BatXGLEdedmLzT3Ebje0p7eqpz//l
         o/wRdUsUuTXiqe9DtZvL6WWTL68M2prp2L5dP3ubdQzV79IIPN7LwTiKEs080OSKF8Qs
         j/1w==
X-Forwarded-Encrypted: i=1; AJvYcCUGFYJnMGP+dmtf3ROX35+xrd7zFxBGd7kesF5Wnv2lHrQPw5iOCxQltja+NpY/+DchQ3foJFfl/OWk@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7rOgZrEPhBTK9siVxlobOFoT9gSRQNI7D+L1f0j6NfUxSNZOM
	lxSWJYvd4f9+3bASqPWlaAbbc1LYYdzx7xjc3FW7Hi87/MXpurQ6I2Q5zyu+j7zi5qmhTMG3G57
	H2SI9uSVpztYM0hFZpIsex+Pr3fWdpVs=
X-Gm-Gg: ASbGncu8c+s8VqVZafyWA73JAtmEagPuS1lPfjvOe222m1RC7Rf8YH9svCP/fblM+Pu
	/v7kFMrViBRxy0wm/7MolImTB7R9PODsrkbPDQPC980ywZ6dCLod1r8c6zSp49rTw8gz9HuwroP
	Exsx/7hLw9OkvP5jgfZqqJQG7HaXtMHDH/hhNv6RKx3aiHEuT+uRzKFd7rdeR/hHlESnFR+T4eP
	sEe7O4G//yr8gPmdZiHb5/TXQ==
X-Google-Smtp-Source: AGHT+IHWj20Z//Zd/Bj3pk8xg9qchfT20FaF7gZ8rC2cQFm5rgDMz1ihnaPh6KkjuMjFtQn3GvJXwEat84MrHNsMau0=
X-Received: by 2002:a05:6512:31c2:b0:57b:7c74:67e6 with SMTP id
 2adb3069b0e04-5906d75f85bmr5366512e87.2.1760322765941; Sun, 12 Oct 2025
 19:32:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250909-tegra186-icc-v2-0-09413724e781@gmail.com>
 <20250909-tegra186-icc-v2-1-09413724e781@gmail.com> <20250930103006.octwlx53p2shwq2v@vireshk-i7>
In-Reply-To: <20250930103006.octwlx53p2shwq2v@vireshk-i7>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Sun, 12 Oct 2025 21:32:34 -0500
X-Gm-Features: AS18NWDaKTgv8GyE1hN1DRdGL5_G-8YoPjy4LzB-vGT0ghwtG2kFi7JSPl6_Rmg
Message-ID: <CALHNRZ84s8rxQKWZeF-bfS31nK6ay4_MspmYa4+qapf9gtk+Fg@mail.gmail.com>
Subject: Re: [PATCH v2 1/8] cpufreq: tegra186: add OPP support and set bandwidth
To: Viresh Kumar <viresh.kumar@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 30, 2025 at 5:30=E2=80=AFAM Viresh Kumar <viresh.kumar@linaro.o=
rg> wrote:
>
> On 09-09-25, 01:21, Aaron Kling via B4 Relay wrote:
> > +static int tegra_cpufreq_set_bw(struct cpufreq_policy *policy, unsigne=
d long freq_khz)
> > +{
> > +     struct tegra186_cpufreq_data *data =3D cpufreq_get_driver_data();
> > +     struct dev_pm_opp *opp __free(put_opp);
>
> The usage here looks incorrect..
>
> > +     struct device *dev;
> > +     int ret;
> > +
> > +     dev =3D get_cpu_device(policy->cpu);
> > +     if (!dev)
> > +             return -ENODEV;
>
> On failure, we would return from here with a garbage `opp` pointer, which=
 the
> OPP core may try to free ?
>
> Moving the variable definition here would fix that.

If the var was NULL initialized, would the free handle that correctly?
Keeping the declarations at the start of the function reads better
imo.

Aaron

