Return-Path: <devicetree+bounces-94398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD5C955634
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 09:42:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B12281C215FB
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 07:42:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 202F71422C8;
	Sat, 17 Aug 2024 07:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="e3xgFAKF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4846E140363
	for <devicetree@vger.kernel.org>; Sat, 17 Aug 2024 07:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723880527; cv=none; b=bhLAzwqilq9zw0cTisqh5OhVgXvhJrekM4Dirq0KxeU3etumhkaGJAGli/hHKEMdqcUXUY1FN2yx3ttwKynugb2ZLEQsDl/lJAF+KJ9mMLtu5m9G6yX4bx5CSeA2yzjtiRX5+pYsgbOGC+mp5sAY6tqX+ho0MrtRXjE2pVldE/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723880527; c=relaxed/simple;
	bh=o1vH8b9lO6cU5Jga3PyafNVQi/jAQmAcUgSiItYk5P8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R2qSQ6WJm0aQtZ4o+lev7lnSLTlbp5z8zle9RLzCdX5S3F+It+71qJC5Xh5Ff+gQx+HF38RF8KHhDYdeXjiMXbUASXlrUfNHPs6aln1IGsUsOCr6fjf7t+VASKGu04IkIzfzfNLzE2DPkTgztN1o2zUnHOOfwMVvpat1ALwGewo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=e3xgFAKF; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5bd13ea7604so3333393a12.1
        for <devicetree@vger.kernel.org>; Sat, 17 Aug 2024 00:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1723880524; x=1724485324; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Scgmx1Gy14t/+J79KcdymAvZdzIGaTJBly1hyr+iYTA=;
        b=e3xgFAKF6JI9whX4wq8h3sskurvBAN3e6ihnt6o+ee/dWaKnrSgt8rgcQo5Ud4oTSc
         GtuawfDfIHKI3czfzNPMz7l2AxWkEZY/YrnNNsJ8vwYHM2saSfMCs8RUqLonkFIa808O
         4+zTJhCMVaJ5u0YDy3ZTRdxpeYPNqnojWh7AZntORDdJv/gpuBF3PpzfqR5Q3AtIa+Oq
         tHfuHTPRle0IqLbWzI5d+ws2brhOyW95/Qvzf6i0zqC5FCPLQ3LYrZcndq0Y906fRVhp
         jJceJIuCEaCsU3CDAuwvoyhtYm3HFePkZ+YABnaoS+/hwcWRYe+1eGDS9fk8Aglc3zve
         /k4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723880524; x=1724485324;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Scgmx1Gy14t/+J79KcdymAvZdzIGaTJBly1hyr+iYTA=;
        b=EkYOL4U1uu3cVnX30CqmdXnwzmPFugsFNIh57rfAjRrKUOJtBSyCJcoCFkvHxIRo1i
         98kKYMtO5020XuRf8VEejee+FPoKD0sHfnEa9ox7vdy9FlvX7wg0m7VWShFRXYUzwH23
         yvkoJeHcK+G5qBlTwxOODN7gvjrgqJ6zY26FD+MxBGeDxHtg5p+RFd1xPpTLCelZNIJB
         sfRHkAVmhQkfbt0lpRsCgDlY6Td65Ehn8+/AE1tz8+tU3AtyLWTWFReZ7z8GY1xAOJWp
         y8F2SkMAF6PxWW0a8rm8EFgaMmn/3xhSAGoXyh2chP/2gX1jw0vPvXgL6c5fg9RsKVpY
         orLQ==
X-Gm-Message-State: AOJu0Yx+nPVQwOJImXAmi26kzyoveHmpjMKfyIEu2vH2eg/m0vE9tyQg
	oZ+d0tOzM5BUC03GIvZkR5s4nJZK8N0Dy5jvPp1IZ+oykRakt5Fr+2xex49pcUk=
X-Google-Smtp-Source: AGHT+IEyEY1ACb4tUAripTPSCmB0FUFFTAKoRc5xxNQCmxLh1aHgyMRfh2Kx1r4BMktxuhjgrrRvVw==
X-Received: by 2002:a05:6402:2710:b0:57c:c166:ba6 with SMTP id 4fb4d7f45d1cf-5beca5c5750mr2878547a12.19.1723880523014;
        Sat, 17 Aug 2024 00:42:03 -0700 (PDT)
Received: from localhost (cst2-173-13.cust.vodafone.cz. [31.30.173.13])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bebbde5cbdsm3166518a12.37.2024.08.17.00.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Aug 2024 00:42:02 -0700 (PDT)
Date: Sat, 17 Aug 2024 09:42:01 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, loongarch@lists.linux.dev, 
	linux-mips@vger.kernel.org, maz@kernel.org, mark.rutland@arm.com, saravanak@google.com, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	Anup Patel <apatel@ventanamicro.com>
Subject: Re: [PATCH v2] of/irq: Support #msi-cells=<0> in of_msi_get_domain
Message-ID: <20240817-c1d2345fcc50ade60ce09449@orel>
References: <20240816124957.130017-2-ajones@ventanamicro.com>
 <CAL_Jsq+0fXJarCjLA1ZYOiHbM_qn3dtG00Xz+Z8qGCg8Wu=dgA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_Jsq+0fXJarCjLA1ZYOiHbM_qn3dtG00Xz+Z8qGCg8Wu=dgA@mail.gmail.com>

On Fri, Aug 16, 2024 at 02:18:41PM GMT, Rob Herring wrote:
> On Fri, Aug 16, 2024 at 6:50 AM Andrew Jones <ajones@ventanamicro.com> wrote:
> >
> > An 'msi-parent' property with a single entry and no accompanying
> > '#msi-cells' property is considered the legacy definition as opposed
> > to its definition after being expanded with commit 126b16e2ad98
> > ("Docs: dt: add generic MSI bindings"). However, the legacy
> > definition is completely compatible with the current definition and,
> > since of_phandle_iterator_next() tolerates missing and present-but-
> > zero *cells properties since commit e42ee61017f5 ("of: Let
> > of_for_each_phandle fallback to non-negative cell_count"), there's no
> > need anymore to special case the legacy definition in
> > of_msi_get_domain().
> >
> > Indeed, special casing has turned out to be harmful, because, as of
> > commit 7c025238b47a ("dt-bindings: irqchip: Describe the IMX MU block
> > as a MSI controller"), MSI controller DT bindings have started
> > specifying '#msi-cells' as a required property (even when the value
> > must be zero) as an effort to make the bindings more explicit. But,
> > since the special casing of 'msi-parent' only uses the existence of
> > '#msi-cells' for its heuristic, and not whether or not it's also
> > nonzero, the legacy path is not taken. Furthermore, the path to
> > support the new, broader definition isn't taken either since that
> > path has been restricted to the platform-msi bus.
> >
> > But, neither the definition of 'msi-parent' nor the definition of
> > '#msi-cells' is platform-msi-specific (the platform-msi bus was just
> > the first bus that needed '#msi-cells'), so remove both the special
> > casing and the restriction. The code removal also requires changing
> > to of_parse_phandle_with_optional_args() in order to ensure the
> > legacy (but compatible) use of 'msi-parent' remains supported. This
> > not only simplifies the code but also resolves an issue with PCI
> > devices finding their MSI controllers on riscv, as the riscv,imsics
> > binding requires '#msi-cells=<0>'.
> >
> > Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> > ---
> > v2:
> >  - switch to of_parse_phandle_with_optional_args() to ensure the
> >    absence of #msi-cells means count=0
> >
> >  drivers/of/irq.c | 37 +++++++++++--------------------------
> >  1 file changed, 11 insertions(+), 26 deletions(-)
> >
> > diff --git a/drivers/of/irq.c b/drivers/of/irq.c
> > index c94203ce65bb..690df4b71ab9 100644
> > --- a/drivers/of/irq.c
> > +++ b/drivers/of/irq.c
> > @@ -709,8 +709,7 @@ struct irq_domain *of_msi_map_get_device_domain(struct device *dev, u32 id,
> >   * @np: device node for @dev
> >   * @token: bus type for this domain
> >   *
> > - * Parse the msi-parent property (both the simple and the complex
> > - * versions), and returns the corresponding MSI domain.
> > + * Parse the msi-parent property and returns the corresponding MSI domain.
> >   *
> >   * Returns: the MSI domain for this device (or NULL on failure).
> >   */
> > @@ -718,33 +717,19 @@ struct irq_domain *of_msi_get_domain(struct device *dev,
> >                                      struct device_node *np,
> >                                      enum irq_domain_bus_token token)
> >  {
> > -       struct device_node *msi_np;
> > +       struct of_phandle_args args;
> >         struct irq_domain *d;
> > +       int index = 0;
> >
> > -       /* Check for a single msi-parent property */
> > -       msi_np = of_parse_phandle(np, "msi-parent", 0);
> > -       if (msi_np && !of_property_read_bool(msi_np, "#msi-cells")) {
> > -               d = irq_find_matching_host(msi_np, token);
> > -               if (!d)
> > -                       of_node_put(msi_np);
> > -               return d;
> > -       }
> > -
> > -       if (token == DOMAIN_BUS_PLATFORM_MSI) {
> > -               /* Check for the complex msi-parent version */
> > -               struct of_phandle_args args;
> > -               int index = 0;
> > +       while (!of_parse_phandle_with_optional_args(np, "msi-parent",
> > +                                                   "#msi-cells",
> > +                                                   index, &args)) {
> 
> I guess you just maintained essentially what was here, but
> of_for_each_phandle() should work here. It's a bit more efficient too
> because of_parse_phandle_with_optional_args() is implemented using
> of_for_each_phandle().

Thanks, Rob. I just sent v3.

drew

