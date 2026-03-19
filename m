Return-Path: <devicetree+bounces-277683-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOJLFonMu2mXogIAu9opvQ
	(envelope-from <devicetree+bounces-277683-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:14:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DC82C9520
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:14:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 02E3A302F710
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:14:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8BEE3BE634;
	Thu, 19 Mar 2026 10:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DCrnyDXv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31033AD536
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 10:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773915262; cv=pass; b=OA38/sH1a5SfJCnS7TViJQgo4n9z0yOnVqmo4tunQRFGGbrs4BPk9QzMyMRzPQfEiKYcXdH14EJeTpRBnSN8Fyl8FFMDLQe1WGfXFpRtP3OmCToCWcDcMN1jgT4sgxe7zUsCyXaaYPb/JUUhC1fVkwsuMX+5gHn0jnTsnEULxIY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773915262; c=relaxed/simple;
	bh=v17TFrkeat0+iYNY8nfXZ5t8sCUXRNMA6XJWPzLyY4o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kiKol7D4Rthz2huJCcxHsE0lzR+zWDXQ6iVUyZcta4ldBlKdj8zYGmTooNY8zeo5opjjCxrrCWRw7uLhI5pAwcop/fSoFoKvRpwKoWMoxMa988TO06Y9iNwZUnGITgkH9itmA4VE/d7JmxIwfonh+4AXvLDzwBPOFSggc3Lbixk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DCrnyDXv; arc=pass smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5a13f6bcbf4so1132992e87.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 03:14:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773915259; cv=none;
        d=google.com; s=arc-20240605;
        b=LuZAH1vOnCF59zsmc12qz65yNANq502g2gPURpkzE7SeX2Bwd5KdslUn5if8rhzwmg
         qH3yzOwfTnUl0SJDUve42CaH5Z49lgiK6LDLu17H9XCYVix16gqf9HSlgILGbWTka6cA
         x79NotmrWSQWLg6DMgaRJZ6F9Y3qhM9dAokbgr8JPvwOYz1WS9f0Px0uSQa/eIQwPgMW
         i59MLfeSCNp7zEhyjNanpR1WWpbDLBBbo5FJe1DQdUxpF/Dw/VvUiFDs1LnQFN7uprUb
         197VZLO2TcxM7PZKxou0KjYIPOQouOKPxzLYpGnhIcU0hes2TDgDIfUjJpFaAEfO2ctD
         +mwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ujZTJk7VIt/xvASexQ2VToUKfUsb3Y+OQiXRRgGyWt0=;
        fh=mj6xZEoV75GN+vcwSKeuqHKXxYGeVs0ozerancOrE7k=;
        b=bszIYEdjCz6ylV7cYk5JCGZb+4kchWk4S8T0+DkxrijA9B2aRoxsbk+rucVFrGjyuD
         jXw3ChJtjyd1aWTQ4P+JeyKZzUEN/jkDDyhEVC05mmoPWGW08Q+5YnMBCibXjJKv06nA
         GTHkfaN2qYn0mVvXf4fWUBIqG6pcOwAkYuxTlDLPmGyKbFHElfW4Ij2RPiYlh7tftPSc
         WUycH0GL7av9t+0oKCRjHnHRunvlH31nHXEfkVOSL/uk0RJfsodshK0jb1/vmdj9RweA
         kz8hnDYOQ6a01Zf9KogVqiQ/d+Uh0rqJvaaVDwiDbvQFwAyK1aiyBe2gZ3ZkaSka7XRs
         VVJw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773915259; x=1774520059; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ujZTJk7VIt/xvASexQ2VToUKfUsb3Y+OQiXRRgGyWt0=;
        b=DCrnyDXvFNLAHsbEWSzR0ZXcgGPpILgzIhAOXQhwFHdxpDFriY3A+MBIY37ur4aRg6
         KRJtjDhpZ1A8zBHO1qiMsFaCL7sRHS2can6e3mLtPNbCAqeNnCMaIrXK7ipzz6wI8rF6
         JvwvZfhOoMg+NPm6QchtiFKKyuFqFdjbEKAZe/U+Cw3w+lEKPS6PTgpjUyJiqh4OigHz
         P/vKXBoh/OyNkY1JZuMLV3I8mb03EMQQMdGVC8+MCKQG3JrBR1jDqDx3FkRUcxgm32xa
         HOAhLH0cCKn2J3XaSoy0khI0Dt+0bmGY6mc+s2goEmhFiFHfXdGZS8WR013bek5S/PpL
         2Ptw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773915259; x=1774520059;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ujZTJk7VIt/xvASexQ2VToUKfUsb3Y+OQiXRRgGyWt0=;
        b=oA4l7oSDeHO9wq4DSlERR+1tnzpVQtGmY6ipDfC1JJslo/Vtc9AEqTeDhVPhfJnhZo
         aOSKAy1JyikZpYS9RUR/qzK9D7A5SzU2cujH5V6DdP2B+sDaUDeb5PmUhWVpNG9Y+MxF
         g437U2wVz2Rjau645Re40mXXBAEuMjbW3k+zRirTFLT48DBUsUM9Bpc7Vyb1P2r2IjvH
         UcPpJhD1Mr9Nb0hkjEZg0NpdcG2/jbgmZibq2LGG81gXcYR39fYeOtGd0EPv73JagZAo
         j1plU9lH6H7xiK3dyyv2LZLwlYoyG1IMHuon6FP+6UszYuVrijAAQdH31EdlSDU0dr/V
         mz1g==
X-Forwarded-Encrypted: i=1; AJvYcCUerZ/RpYKzaQDn/8iLpDV29rflCjH83wH1sjMbM+rjd98jocd9ptAGkV58gUKDcMgv7bhYQ97zHSyH@vger.kernel.org
X-Gm-Message-State: AOJu0YxVGlkR+2+9+sQsqMFX0FG14nR5QxWoU8gRLapE3MuYOKaDj/9A
	58yEbTHKAIj72Vgh+Z2lbH6fPcHkWBUAHOYjQbHHUPizdVI3rkWI+IlJKp+rXB3ClDNdcx1Du+7
	tkiVX1arJD20t2UivSgYxYP3vkGXwaiQLDIqt0Ccwxw==
X-Gm-Gg: ATEYQzy+DEmIUQklFlly0U/09HjAxQYGXw+16jzVTH12EfmFRfqW8azTfB5jQQwme9p
	FiDEeioUMC4d1pJ3RAFjLWkxhMDhQYhblZdDwOcv06HM1D8Zse0u+cn60sRRhp1zf/wkEKlhhQB
	7F4XKeqFKTecI2WmjJHxLZzNoWaaD55p95KH2sWvnnx7Zr0tvuq/bFGjenf7Oebr8MxLumazdzO
	joDMcWUNG7eziWMA64hXwDXhYW2opTdM15Xnzf4HSeN+bi9QYS+utD9rsLW97H9TSgrmNMg0sKA
	uWCDJOWv
X-Received: by 2002:a05:6512:31d2:b0:5a1:db06:764c with SMTP id
 2adb3069b0e04-5a2796b6074mr2602865e87.40.1773915258920; Thu, 19 Mar 2026
 03:14:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260318-gs101-pd-v8-0-241523460b10@linaro.org> <20260318-gs101-pd-v8-5-241523460b10@linaro.org>
In-Reply-To: <20260318-gs101-pd-v8-5-241523460b10@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 19 Mar 2026 11:13:40 +0100
X-Gm-Features: AaiRm53xTSuLVdH9AhqcT-kXTsfPbIEbom5uTjkqz8fSS91buviGLW-90zzWxN8
Message-ID: <CAPDyKFrprMSLOBMB_BHbi=j6UXV4dXBn-H8M1BsqDWNSCJwvuA@mail.gmail.com>
Subject: Re: [PATCH v8 05/10] pmdomain: samsung: convert to using regmap
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277683-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[kernel.org,samsung.com,gmail.com,linaro.org,google.com,android.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.939];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid,linaro.org:dkim,linaro.org:email,samsung.com:email]
X-Rspamd-Queue-Id: F2DC82C9520
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 18 Mar 2026 at 16:28, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> On platforms such as Google gs101, direct mmio register access to the
> PMU registers doesn't necessarily work and access must happen via a
> regmap created by the PMU driver instead.
>
> In preparation for supporting such SoCs convert the existing mmio
> accesses to using a regmap wrapper.
>
> With this change in place, a follow-up patch can update the driver to
> optionally acquire the PMU-created regmap without having to change the
> rest of the code.
>
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

[...]

> @@ -36,31 +35,42 @@ struct exynos_pm_domain {
>  static int exynos_pd_power(struct generic_pm_domain *domain, bool power_=
on)
>  {
>         struct exynos_pm_domain *pd;
> -       void __iomem *base;
>         u32 timeout, pwr;
> -       char *op;
> +       int err;
>
>         pd =3D container_of(domain, struct exynos_pm_domain, pd);
> -       base =3D pd->base;
>
>         pwr =3D power_on ? pd->local_pwr_cfg : 0;
> -       writel_relaxed(pwr, base);
> +       err =3D regmap_write(pd->regmap, 0, pwr);
> +       if (err) {
> +               pr_err("Regmap write for power domain %s %sable failed: %=
d\n",
> +                      domain->name, power_on ? "en" : "dis", err);
> +               return err;
> +       }
>
>         /* Wait max 1ms */
>         timeout =3D 10;
> -
> -       while ((readl_relaxed(base + 0x4) & pd->local_pwr_cfg) !=3D pwr) =
{
> -               if (!timeout) {
> -                       op =3D (power_on) ? "enable" : "disable";
> -                       pr_err("Power domain %s %s failed\n", domain->nam=
e, op);
> -                       return -ETIMEDOUT;
> +       while (timeout-- > 0) {
> +               unsigned int val;
> +
> +               err =3D regmap_read(pd->regmap, 0x4, &val);
> +               if (err || ((val & pd->local_pwr_cfg) !=3D pwr)) {
> +                       cpu_relax();
> +                       usleep_range(80, 100);
> +                       continue;
>                 }
> -               timeout--;
> -               cpu_relax();
> -               usleep_range(80, 100);
> +
> +               break;
>         }
>

[...]

As a follow-up patch on top, please consider converting the open-coded
polling loop above into a readx_poll_timeout_atomic().

That said, the series looks ready to me, but I am awaiting an ack from
a DT maintainer on patch4 before applying.

Kind regards
Uffe

