Return-Path: <devicetree+bounces-187497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FE0AE026B
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 12:11:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6722B7A5635
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 10:09:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AABA2222A8;
	Thu, 19 Jun 2025 10:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kW/KnEOW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E6E202F8F
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 10:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750327851; cv=none; b=tdzokMBDb9sh14Trsh4KEW0oQ6P7PpYgXdi5YpOw+j90p/VHrwASEpfuiJ4CAP/DxMHySrBV7CCa5tbO4biQW4DmmAD29/JxxS6wm+pwXzubwFBOU0dj5FapeemmPuZzIB9kjD5ceRpjzvIe8bDJUfJuOO/Nvw1g7komOaI7AuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750327851; c=relaxed/simple;
	bh=hHqKAmuilssQpAIAOYxJlpJjZqO5f+LEmYaAgwzbgWM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=COJYpJ+ePMJ2mkwLpi28hxuOGv18N8blNl+39wpJxfL3surPcDeuw+uH+fXlhFXlEChPmG35Yrk5AHMuFrPENvu0dBBdmwhNSCPYqbBRZk34yF0S3sQKXLp7uxIQ7uFFS0kyfH4TCc+K+h8Vg3QGgJG5Mb67cA8fPL5zs6yDFcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kW/KnEOW; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e7b4ba530feso573987276.1
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 03:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750327847; x=1750932647; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VkMa7zCOwJFBXp4u830hcQ72uAnUwDe4mfF5t4wTHIU=;
        b=kW/KnEOWrfhXevVCYQzA51wI/gGzm+w3Dtije48nRcKnjuew6pqcUVxFKDC+yfL/w4
         9nv+rtPpxJ+FO/ob+op9h6905mWJMKu2t+H/ifkbvNgQjRn3tgf3shlEXzJ6+qf/nsr4
         HLiOjahK0hUELeDxO2CGbr/Q/NXSGOGfUBMdCrx8c8ROV+ykgrCQ24QFA0cmUAtsUOZe
         JjDQWcNlGTDeKpaRKiCgtdOtIT9y1YDI23KcJMyHJguA3u5fWISBghsovEsJOdR+gxJF
         5ERgrgAbmaTy0ea6kuvSYBmyBXBTECoq9kXma1g2s7S2df4uzjp3jB9OfwPVTn6Lp+hJ
         48yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750327847; x=1750932647;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VkMa7zCOwJFBXp4u830hcQ72uAnUwDe4mfF5t4wTHIU=;
        b=ofO21rodOS+N+DlfCW4FRr/MCcfQWrwLdnL/JkL8wgxaTegLR7wpnoP9iTJi5M9sQh
         gDtVF+ZvATbWgvnUC7eEhiy4JptWw4DZ4loV4eDuLPO2Gx7v5WR1O2ZgDIQ+aUIpWrlD
         6dKVTcIibXWP2pdnCoFRCKZyhyDi3nK6ZAwUSOq8gLtq+pCwl4UgWXIMhenzAE/KG7Nj
         tKv0n9j5zOE7nQfq5iQzbA6OvQ4A59DLvIC9FQS0RWlxDzBe4sxQXMo9q0JzBVC3Whf+
         4FNH6/5jP/rXIfBtNOBBsPqDFpcSQOu8LI25jivtDMM2rOapp7NSlC23vFJyggF46fGE
         0yVw==
X-Forwarded-Encrypted: i=1; AJvYcCVnPj6Nip0iYFnHNAtaPBIwc3/OFtWHkUVDhvzLAlgDTrg1lOJLcDzo6/V5JoH4A0aVvJSMnjh4Stf0@vger.kernel.org
X-Gm-Message-State: AOJu0YyPhBNqCaQ2k427Ak+gRnmoNji8NBpXBUHIOlo/5Oj/c1bpOH0D
	RtoM6RquLqtAFq4YeVGOF4zwrSFy0qfd1u1zX1rLVJdDEI4S/GtUU6fYcCxT0Tx4VS6dv43LCsB
	JC2qVM6ssSRpALIsY34hXj5sfCTl6/92oaNgq3N2X3g==
X-Gm-Gg: ASbGncuqyJCR4Tk3Dp5/cFRQ34K/iqb5ocCbV/Q3x4AUtRgd+0v024I774/K8nHdiAy
	7vwIY5gFJwVCDvOSQtl2GawlShLg8N/op0aTHmbZgZfiWresgRyXto95VxH9dPhRkNLvjFF/XUe
	vlaTfiZuqMroVguEZQKiXVHlohYl7LRPK6uJ87NaC/vPxe
X-Google-Smtp-Source: AGHT+IH5AnJNTeaOpQfhCSIOt0GGrB4zzpiy2QbI+yGdJHsyyZt9Nll5fYWwGlsxCE+duvtf5q0NiWwdDhOmdVRkycw=
X-Received: by 2002:a05:6902:1a4a:b0:e81:5197:3dd5 with SMTP id
 3f1490d57ef6-e822acab8d5mr26603182276.1.1750327847290; Thu, 19 Jun 2025
 03:10:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250613-pmdomain-hierarchy-onecell-v3-0-5c770676fce7@baylibre.com>
 <20250613-pmdomain-hierarchy-onecell-v3-2-5c770676fce7@baylibre.com>
 <CAPDyKFrO9rb0eDb2qO+EGaVjOFG=7emgca8511XACDhWY=dt5g@mail.gmail.com>
 <7hsejzp4xg.fsf@baylibre.com> <CAPDyKFo-iPBPgkM43q+5cGR2sptkLk4E6TAERCQbCu24o1RfFQ@mail.gmail.com>
 <7hcyb1os9y.fsf@baylibre.com> <CAPDyKFpTgAmLBq2ZExPoxWM0wL756zH96vW7M6wHSA1MTTG1wA@mail.gmail.com>
In-Reply-To: <CAPDyKFpTgAmLBq2ZExPoxWM0wL756zH96vW7M6wHSA1MTTG1wA@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 19 Jun 2025 12:10:10 +0200
X-Gm-Features: Ac12FXzaqfxrAphuKw6VXAdZX7cnfQhXcwTzb-TGim72mKFJI9xJDvfwXzajzx4
Message-ID: <CAPDyKFo0Cu0OkD9BgcLTAhme4k1FWKJ=yPiP6o7ofEN6AKVrZA@mail.gmail.com>
Subject: Re: [PATCH RFC v3 2/2] pmdomain: core: add support for subdomains
 using power-domain-map
To: Kevin Hilman <khilman@baylibre.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org, arm-scmi@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 19 Jun 2025 at 12:04, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> [...]
>
> > I've done an implementation with struct device_node *.  This works
> > better (IMO) than struct of_phandle_args * because the caller (in my
> > case scmi_pm_domain.c) already has device nodes, but not phandle args.
> >
> > The result will be that the pmdomain helper will call
> > pm_genpd_add_subdomain() instead of of_genpd_add_subdomain().
> >
> > Below[1] is the current working version, which includes adding the
> > helper to the PM domain core and showing the usage by the SCMI provider.
> >
> > How does this look?
>
> It's a lot better in my opinion. Although, I have a few comments below.
>
> >
> > Note that doing this at provider creation time instead of
> > <genpd>->attach_dev() time will require some changes to
> > of_parse_phandle_with_args_map() because that function expects to be
> > called for a device that has a `power-domains = <provider>` property,
> > not for the provider itself.  But I have it working with some local
> > changes to make that helper work if called for the provider directly.
> > If you're OK with the PM domains approach, I'll post another rev of this
> > series which includes the OF changes for review by DT maintainers.
> >
> > Kevin
> >
> > [1]
> > ---
> >  drivers/pmdomain/arm/scmi_pm_domain.c | 12 ++++++++--
> >  drivers/pmdomain/core.c               | 34 +++++++++++++++++++++++++++
> >  include/linux/pm_domain.h             | 11 ++++++++-
> >  3 files changed, 54 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/pmdomain/arm/scmi_pm_domain.c b/drivers/pmdomain/arm/scmi_pm_domain.c
> > index a7784a8bb5db..8197447e9d17 100644
> > --- a/drivers/pmdomain/arm/scmi_pm_domain.c
> > +++ b/drivers/pmdomain/arm/scmi_pm_domain.c
> > @@ -54,7 +54,7 @@ static int scmi_pd_power_off(struct generic_pm_domain *domain)
> >
> >  static int scmi_pm_domain_probe(struct scmi_device *sdev)
> >  {
> > -       int num_domains, i;
> > +       int num_domains, i, ret;
> >         struct device *dev = &sdev->dev;
> >         struct device_node *np = dev->of_node;
> >         struct scmi_pm_domain *scmi_pd;
> > @@ -115,7 +115,15 @@ static int scmi_pm_domain_probe(struct scmi_device *sdev)
> >
> >         dev_set_drvdata(dev, scmi_pd_data);
> >
> > -       return of_genpd_add_provider_onecell(np, scmi_pd_data);
> > +       ret = of_genpd_add_provider_onecell(np, scmi_pd_data);
> > +       if (ret)
> > +               return ret;
> > +
> > +       /* check for (optional) subdomain mapping with power-domain-map */
> > +       for (i = 0; i < num_domains; i++, scmi_pd++)
> > +               of_genpd_add_subdomain_map(np, domains[i], i);
> > +
> > +       return ret;
> >  }
> >
> >  static void scmi_pm_domain_remove(struct scmi_device *sdev)
> > diff --git a/drivers/pmdomain/core.c b/drivers/pmdomain/core.c
> > index 88819659df83..3ede4baa4bee 100644
> > --- a/drivers/pmdomain/core.c
> > +++ b/drivers/pmdomain/core.c
> > @@ -3220,6 +3220,40 @@ int of_genpd_parse_idle_states(struct device_node *dn,
> >  }
> >  EXPORT_SYMBOL_GPL(of_genpd_parse_idle_states);
> >
> > +int of_genpd_add_subdomain_map(struct device_node *np,
> > +                              struct generic_pm_domain *domain,
> > +                              int index)
>
> Providing the struct generic_pm_domain *domain as an in-parameter for
> the child-domain seems unnecessary and limiting to me.
>
> Instead I think we should parse the power-domain-map DT property at
> 'index', to find the corresponding child-domain's specifier/index and
> its corresponding parent-domain.
>
> In other words, we don't need the struct generic_pm_domain *domain as
> an in-parameter, right?

Having said that, why not skip the index as the in-parameter too and
just walk the list of the power-domain-map DT property.

In this way, there is no pre-parsing needed for the genpd provider
driver - or need to try all child-domain indexes (not all may have a
parent-domain associated with it).

[...]

Kind regards
Uffe

