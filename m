Return-Path: <devicetree+bounces-229469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBE7BF7FF9
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 19:58:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0C4804E4E52
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 17:58:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F23534E756;
	Tue, 21 Oct 2025 17:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R4Mr0Ft2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9B634D4CE
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 17:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761069503; cv=none; b=ulyvoF4gSM9cxzgel+V6s36nohD38D7TBzv+vU+3GWfd6Wr5GCh7PjK5ijJsMoTXWkXOZsAADvIga/K1czAPUlvzBSQiXy+r64VUO497M+WrIg5kAASoEt8411nAbkaSzdy4mjV8igAmDhubbDGfxQ+IMXrIQccVf5aYAhB95Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761069503; c=relaxed/simple;
	bh=G47MvJWvuOhJGsJjH6oTOX1ThsvCSd/b1SDd+h4dpKo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JMD0x9i3ve3C/BbZYH6HBzMH40s+KiLHuUVsPyuJG5ngKb4NFMLdU/Psrm7g0sWgGPNWLMCbBiRmnygoyyFQA0GslGQymIg62z5wYMKD2Xf+YUoVKrS84lzJfMmbqph0VxpemJrN6Thf9B3exHUUafbRWtF4sgYZGnrWpANZO08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R4Mr0Ft2; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-57f0aa38aadso7636262e87.2
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 10:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761069499; x=1761674299; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QOocNKmVfDLIyakQcVwyYTTBvpO95NrPUt1n/fTcY6Q=;
        b=R4Mr0Ft20d+Tg1bgvcdO594QJTjZ1dvyIxKq5sVpbqAYeEjwTEUW4kPK+AerqIzuvl
         fRdK3IqrHmPY44a13qS55JQOiCTbmt3NiMCBQ7eVRIzfc/B+PZ2XsrFqNdM04xUbITPv
         0g84ZLw1lh0wSSY1b+SPt/l0W2+baZt2Q8qnEvqq0E5lteMnmlvQf5LILSXh13WZ+YxA
         lf4f7tX/t9xG7ItYsDyxe56vPjzzi4Lt+AmMx3s3o/eje2qOXcoASSIDgluIiZLwZ89m
         tShleadB3byK6cyN/EK6n/DRSYDHf1p7vNVO4yk+1Jo5Eh0g2oSz299veeLSMCcjnp9c
         Mkug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761069499; x=1761674299;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QOocNKmVfDLIyakQcVwyYTTBvpO95NrPUt1n/fTcY6Q=;
        b=ZSvAUK0/l46Eloy7sX/n5SOjRlHphumRuEhSqnw9onEJ/i1XVSgKjVihUww5/OQkhg
         bM1nf/0Xy7Z/O18AoQujIRT9U92hLQyKK8kDb1NPvEDzEYeOExj/irNAGTj9AJ+ohZe6
         dxeExxl1560QRn9Ro/EOrgeBFFN3UuIhjHa8ykzwDT7JH+s/cKvaRbbD2HXQaxYhs6It
         51oeAmUriCUBbCnJLwv5F2M6rT62bT32n3nrwiiYhwgUk+gR1NZZdkL+DNLXQuSF+MnY
         DTvT3s2WJkdhO6AV7YZ1uuqy31CIqCBn1/gmuTwdox2BTaq4B6wh8+sC8XLzKVH5TX2R
         yogQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFHw00IZMQOgZsona0PRu9FVqY+egYTKHqZ9xfHwDZQCLhYCmOb8KPKLfTg634OD+J/GDdFyBZjFeN@vger.kernel.org
X-Gm-Message-State: AOJu0Yyf763neTe2sctfoJl9Rt6pVLbCOEv75qwAcSDLyMnElzMsaooy
	jadNUQWguvnkOiqvfExEVRBrXyx5nE3lGXS9Pw1VAsS+/vPmTdQJUagjkA8YdE5PpEH9lnrZOUN
	Beb2MREF8xQbKsxBNUTGUoxhDQirkRYY=
X-Gm-Gg: ASbGnctIyPuJFeS3TGhUdhADUx7sWOjhy1vX6RKOXnuicgYoe0s4lREfA8NzMYqoP2/
	mahZZHDkjDoJ9vxhmRbZWTCEBViy3WiFSXD5oTmLDTqaAhfQJq0HgWFYvzLoc8l7nQIfkLb7R76
	X61kSTp7azjVcOM2TN/PrS+HSL4STOjNJESrBNzAUwoGLjLXJOjptJuZNJr4sZwALBz3mXxqJ7c
	RApKjHuelHW1rcV1Hmts0jTRN8Uzr1v7iE9KHLnhVg2g8ecDKRZLtio8WT2
X-Google-Smtp-Source: AGHT+IGB2swM6EPMZAWJrbU+PYzr6bBq9/N58DfugsjDP4QfXY1a2mV6Zvt0xgfuUqpsHA0mxQibDBO32iQwd4Vsx3A=
X-Received: by 2002:a05:6512:1113:b0:590:651b:10e1 with SMTP id
 2adb3069b0e04-591d8566409mr5652069e87.44.1761069498973; Tue, 21 Oct 2025
 10:58:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250909-tegra186-icc-v2-0-09413724e781@gmail.com>
 <20250909-tegra186-icc-v2-1-09413724e781@gmail.com> <20250930103006.octwlx53p2shwq2v@vireshk-i7>
 <CALHNRZ84s8rxQKWZeF-bfS31nK6ay4_MspmYa4+qapf9gtk+Fg@mail.gmail.com> <5ind7yevxsrsd3ws5rkl5z3zuxw4yrqoclqg7q6beunc6kgr2n@qmgbgw5q2ltc>
In-Reply-To: <5ind7yevxsrsd3ws5rkl5z3zuxw4yrqoclqg7q6beunc6kgr2n@qmgbgw5q2ltc>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Tue, 21 Oct 2025 12:58:07 -0500
X-Gm-Features: AS18NWCSSly5o6m2t5VO9WpiY4hgkm_v2vXdcycfbSTP89Bkw5Qe_Byc5eywF7M
Message-ID: <CALHNRZ-frshyU7bGKEkMhqjJfLBawWH_F-J8-WLsU2ezYpR5rQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/8] cpufreq: tegra186: add OPP support and set bandwidth
To: Viresh Kumar <viresh.kumar@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 13, 2025 at 12:08=E2=80=AFAM Viresh Kumar <viresh.kumar@linaro.=
org> wrote:
>
> On 12-10-25, 21:32, Aaron Kling wrote:
> > On Tue, Sep 30, 2025 at 5:30=E2=80=AFAM Viresh Kumar <viresh.kumar@lina=
ro.org> wrote:
> > >
> > > On 09-09-25, 01:21, Aaron Kling via B4 Relay wrote:
> > > > +static int tegra_cpufreq_set_bw(struct cpufreq_policy *policy, uns=
igned long freq_khz)
> > > > +{
> > > > +     struct tegra186_cpufreq_data *data =3D cpufreq_get_driver_dat=
a();
> > > > +     struct dev_pm_opp *opp __free(put_opp);
> > >
> > > The usage here looks incorrect..
> > >
> > > > +     struct device *dev;
> > > > +     int ret;
> > > > +
> > > > +     dev =3D get_cpu_device(policy->cpu);
> > > > +     if (!dev)
> > > > +             return -ENODEV;
> > >
> > > On failure, we would return from here with a garbage `opp` pointer, w=
hich the
> > > OPP core may try to free ?
> > >
> > > Moving the variable definition here would fix that.
> >
> > If the var was NULL initialized, would the free handle that correctly?
> > Keeping the declarations at the start of the function reads better
> > imo.
>
> include/linux/cleanup.h has some recommendations around that.

There was a request to split this series into separate series
per-subsystem. So I will fix this in a new patch, but it won't be
tracked as a new revision to this.

Aaron

