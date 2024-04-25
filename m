Return-Path: <devicetree+bounces-62780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D3B8B26D2
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 18:49:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7B3BA1C23093
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 16:49:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB68314D6ED;
	Thu, 25 Apr 2024 16:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vwaP65CK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CA15338C
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 16:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714063768; cv=none; b=fjsLgMO9MuZBr9obJpHb4I+dRF1NDpKKXne0giLqckiheqyqcLwWZ3MJKQpJ4OS0912D7zOw+u5rXd+AZc2yN5MQQbkRnQfgt0N9Px34EdyF+Cm7NoNOM6D+opRMlESQ++jf2XyKUe3bxhYDq7mZ8XJnh8xulYJhbIzoiCa0ps8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714063768; c=relaxed/simple;
	bh=MKvfwVZ3VjEw+spXFJ1a2UjO6QfAGuRev73DVWZbaUM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I7xGmvqG/77MYuYL5y7GizLIu57JhrutrUI4UUgr0Uky7EDsEZ0aRoTAD9UhHEwIDMXcS3mB2+MIMwou2bo+07tUT3tLpC/4RGuL0iJSw2pxYWpvPn+7P3rmhYhASGhNn5Cpr2+WvryxIha5TyMXakNcF3y95XegRCUF2lN5Yu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vwaP65CK; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-23a9d3c9153so621306fac.1
        for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 09:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714063765; x=1714668565; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5ukGEv4eef9O4oU5FT2ArMRccMeqiVjOsIZWttkttWM=;
        b=vwaP65CKWUR3Hgjrge/MD9U3FiR0QCLRSgkkd6qnbHpKwaqwezALAMIrPNLr4PO6Th
         2UuTdThPNxET3UfZsx3QG0bleJjXqL45JtT0a4C8LsomG1e/UGuU6tTEbIjxWXlmO4fc
         eKq40JXudTgJNVjUX8AY24dKyzSIQEw1I0Gevxx+oCAojID+5Gwi2hriLKsbX1mt1881
         x75IB2RaRGMiNbyjK4p8FLdgZB+Sr4Uco0EafENGEjJahSFGQjL8KdgBTCno5uCfmm8z
         lTteC30TYtJggxSSy6Iep4KPkoQKjdR62UhCogPpFW6zZA5MgHlIPX+oyK1lQG8y6hE/
         Q2vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714063765; x=1714668565;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5ukGEv4eef9O4oU5FT2ArMRccMeqiVjOsIZWttkttWM=;
        b=P43PRupHN3rdoyqrpsaCPYc0ZcQf6j2fvAj+GB4+nJMiM3825hWaqzrTK7BRC/RTRd
         zJ3PFQ7TczdSnm2/60g5YbD8myENHnqc/BCWh+wI3KUP3O/obXfvKajwnTjwCT7WFs8y
         yHyGlrIkFGCNdaiiNvawQ15HCN50DDzih8BYj5H4IhX40AmjSpDkUBpyUyxTIWRBGwBB
         JuOdKjmNRwNJ/iovXZXbyYhSUgXs409Q1xJvhhOB5+VOg3v1qeyeVo3YNY0q9cU5RSRE
         EqTWe9jzkixLTyX92ocf3JkGzzrKodrbVhIbVTBGstPHIeC5D/a5UQjYrDHwfZms8fkz
         MIkw==
X-Forwarded-Encrypted: i=1; AJvYcCXqTgpUXyA0bpGYdtyXSh5/98sSvMiWRyMjUM+F6W9wLLBb66D9HV5DeFop2DJtBVO0AhjsmOOpmn14/1iWaVANSraDrNywwsyugw==
X-Gm-Message-State: AOJu0YwncG7XVPoB6plv9uaExdekEWkZifJ+qmZnpXgFqFurOxC3JtO0
	minzejQDpgq81djgDgpha0qFzWBcu7WKxhxv3CYbUHikbXbGUcbmHqz91yZxUE4H+Cms9sXet07
	6St+LcrkcuQ5JGwNN5IHDitFxM5nhQeUju2IJvQ==
X-Google-Smtp-Source: AGHT+IHZ1YGe8mBmpi+s6MNal/Tnn6pc3qt4P8KtR6rNBxE+ojMFISn6UD+3xJRSRmAITd10pNraylhnueFfb1V3Mzo=
X-Received: by 2002:a05:6870:4201:b0:22e:e26e:73ad with SMTP id
 u1-20020a056870420100b0022ee26e73admr6867939oac.58.1714063765265; Thu, 25 Apr
 2024 09:49:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
 <20240423205006.1785138-4-peter.griffin@linaro.org> <20240424195318.GA367166-robh@kernel.org>
In-Reply-To: <20240424195318.GA367166-robh@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 25 Apr 2024 17:49:11 +0100
Message-ID: <CADrjBPpQE2bMkVUHQHmBBZfRO8Hjb86xPvLQgSvn4BN0guY9xQ@mail.gmail.com>
Subject: Re: [PATCH v2 03/14] dt-bindings: ufs: exynos-ufs: Add gs101 compatible
To: Rob Herring <robh@kernel.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, James.Bottomley@hansenpartnership.com, 
	ebiggers@kernel.org, linux-scsi@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, saravanak@google.com, 
	willmcvicker@google.com
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

Thanks for the review.

On Wed, 24 Apr 2024 at 20:53, Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Apr 23, 2024 at 09:49:55PM +0100, Peter Griffin wrote:
> > Add dedicated google,gs101-ufs compatible for Google Tensor gs101
> > SoC.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  .../bindings/ufs/samsung,exynos-ufs.yaml      | 38 +++++++++++++++++--
> >  1 file changed, 35 insertions(+), 3 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> > index b2b509b3944d..1179527d29d1 100644
> > --- a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> > +++ b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> > @@ -12,12 +12,10 @@ maintainers:
> >  description: |
> >    Each Samsung UFS host controller instance should have its own node.
> >
> > -allOf:
> > -  - $ref: ufs-common.yaml
> > -
> >  properties:
> >    compatible:
> >      enum:
> > +      - google,gs101-ufs
> >        - samsung,exynos7-ufs
> >        - samsung,exynosautov9-ufs
> >        - samsung,exynosautov9-ufs-vh
> > @@ -38,14 +36,24 @@ properties:
> >        - const: ufsp
> >
> >    clocks:
> > +    minItems: 2
> >      items:
> >        - description: ufs link core clock
> >        - description: unipro main clock
> > +      - description: fmp clock
> > +      - description: ufs aclk clock
> > +      - description: ufs pclk clock
> > +      - description: sysreg clock
> >
> >    clock-names:
> > +    minItems: 2
> >      items:
> >        - const: core_clk
> >        - const: sclk_unipro_main
> > +      - const: fmp
> > +      - const: ufs_aclk
> > +      - const: ufs_pclk
>
> 'ufs_' is redundant.

Will fix.

Thanks,

Peter.

