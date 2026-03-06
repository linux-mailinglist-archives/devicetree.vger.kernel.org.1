Return-Path: <devicetree+bounces-272250-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNQVJzf5qmmqZAEAu9opvQ
	(envelope-from <devicetree+bounces-272250-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:56:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A93AB2245E9
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:56:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5A340307DE89
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 15:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0B2C3FB040;
	Fri,  6 Mar 2026 15:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zR0CHvYe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434AE3F076F
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 15:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772812059; cv=pass; b=jXg0CoPD4ZAjszf3mKQeP+W67A47PipfHeQ4LOLEqMw7hXz1WuGzTfQcWVHQ+5I4lUNfzhCIrOpQeY8H04uOo4g9Bn4orl5xKvOGDW9vRO+6M4SFaoE5dprKJpu3ry2Amj0p3lV6zn9XXeP4MFTcwh0Li21JuYuZp9k93y67t9Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772812059; c=relaxed/simple;
	bh=aGRGwhJZcZdvpbIr5j6VxFzfRNr55VjDk3hvYSJyKU8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Syem5Sf5pEaT6zwl9PdTFGK68dn6zR64JGXNhR1YneVsnYNlmj3cDhOgYeeYv9b7b+Wpb4bujEq1NBPiUEbJtYkyx+qwWk8OTv+Z2ViyllkIPmIpACP9CaQwcXi+v7snK3y+9dAnUiDOTrJZffbWMRXHJizsyErjeS0SDgCdwOw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zR0CHvYe; arc=pass smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-6617f0bcad2so2353254a12.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 07:47:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772812056; cv=none;
        d=google.com; s=arc-20240605;
        b=febNcYtxsZP5W7fd0eykFhIXCAP5ulkH60qgkC1OlLrnpJWiDtMbg3idXN4/aqFHFQ
         Izf55xqQnKobwzbGsmJwJPkzRhSzklCbrs64mBPjr45QwKoHrw9MnCcRDHpNbjCHPJ8q
         NXdtVaClsLy3nqbiv/8Ta8s0Yy+FyV3EPMbuVFH/ex1ce0RHIcQ6tgxzPecTBr6Ibm1u
         yiDNTtSTfbYgiTdMlbH/yuKzfVxYQM9ePlR8VXd3Gbw8qwnbe2cP6+o2n+Q6UA+PnSHp
         9HVbPmFU8ZAgym01UK/wXxd9ujmrn1ueNixs6YcdxO0b/kj0O3KytGsKVh2KxKB0DagZ
         q5FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=MAibUuNCn/6BbfV0vtODnkSnkQDwc6wpTn7lzKFXoH4=;
        fh=7zSYN6bwpjOCwV5jw1r9awrvBSMsnWzUdj64WhQfrNU=;
        b=L7c9zeH/r4IwGu6fOCLnfz+52+4Zjor3/ccELbrKIo2A5ELABDCktXyJbVgZDsFVh1
         T0ts080ZpiB50dhAlKWuKgI+aPLBrB8TU6KZLInmuwGnjLKeTZdnawCf6N6kqwHksxPf
         4a3Z6R7PNeRSLC4Swm2MnJRhNFRSo339KbCoHFvBFFBoOpJjG13WFA8gxQvkm1vT6SSH
         2Mp6O2QS2fkddbDs5I77yOzjVD/mvSliddwgV/bNRRbk1ZGzdDqw4rL7VCxFz8alHBij
         RDbq8BPWCQRYSMiVmOmODptLZrKdtFkIpNqqQwoaCjjiG4jbG+jxfQF3cZdS0D+cxj+i
         E6hw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772812056; x=1773416856; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MAibUuNCn/6BbfV0vtODnkSnkQDwc6wpTn7lzKFXoH4=;
        b=zR0CHvYexvnQLu907O/6P3GDvF/jlerSfL/mRoBtldgmsL+ppE/GA/rsQ+fzigz83r
         gBzaDh30p7Whm6MjE83pcufJg8t0nhhZgt2WnMisgFhTns0WRZg6fsbic0+2nuDo9cMh
         m32pa8zpM0LAsdj59p8pING3uxnDYU7lvSMkzAfYm9jtRl/eFwVi+sS8C2nIGH0n7VSM
         gJUxu0qBxS+UlJlJ2EwUKKenJ1iOkxrhM8iswc6Qa5fooFX4jdp92y+AvYbLifr1HqnQ
         dfOEU95q9fS7eOJhayHv8vTIHddwLYm6+CM5WCMzixT2CsQ+ROXd+9sB5O7MErjQJFPR
         /aNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772812056; x=1773416856;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MAibUuNCn/6BbfV0vtODnkSnkQDwc6wpTn7lzKFXoH4=;
        b=O0PQWGpenlyNaY95NJM8dwSGDFZmftH8FM7kiqSuvOO7K1WaX0GPC/pv4OKiSzyx03
         L4dC1QYix7tYyuXgu3qw5xJL3MHmq1hOe4RguDR0cwf3iZWVRdqlOw+O8VvEf70ZMhRK
         qwMlbLLGYRXUcqw/d36yPvLmCKZ8PWlURwwlQZZ0TnYVfHwkWipkwr2iDpT15FonK38p
         x38sWnx7V7ybLTby5UtQzpVCyLkQma38keMqyHtMqnarbjqW732BUgXHhwnFn/hYak72
         TNWnmjvE3iFux0iRzYqZCxVluW8uvnlxd+ZseHaoyHdpVQJ+MmKkWkeDRdBBmT84F+bU
         7wfQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4rkNgMmERixU08OT6F0VoVVcFeLsDygxzfskfA+OE/h6A4gNFRVeQfFXTou5PWyifmZzAkTiY3Ry1@vger.kernel.org
X-Gm-Message-State: AOJu0YwAZh1m7IeNGjuXzkRXX8zThs7hl4JUploDRTABwfupBvp3sQRu
	7xoM1SRlnc/AL2keMyCQEuAuOZpLYlkucjdgWYzrWSoQwlx6vQNePjpNwCLyucUsVPAXNf7Fol9
	jtC+lzeriupcgSj8wLeQ73a2/lhG3wa51evxIpT3Ghw==
X-Gm-Gg: ATEYQzyj19we4LOFkhgexi3nKOo/0w9kfGA9VABcp9EHLnOzc7n9sX2xGDTGkhClFEr
	1Y8Pr4m2jpZ367w8wpXzmvYgV2S6Zb/DfXPvKhyI4bpDNrCqkpNHJQ1KRrFDDJnfncQPc0Wn8ai
	dWF1q6Tt+hXPZT4cLionID5q/rIPFx/Xu8yIKQQAoz0apuIrfbYl+h0jSAmmIOiV6+ySRgHAWz7
	GTJD9v/R4n4ygppU7PozxDmbjqccVGVf9G2pem/deoVS2kL5LLneRw1gHL3ghSSsPKTNYr9fehx
	A70z/6c1lSJI3Ilsjefh/wNgHPysbSNBHqmDnCF+8w==
X-Received: by 2002:a05:6402:278d:b0:659:4295:96e with SMTP id
 4fb4d7f45d1cf-6619d45c877mr1269842a12.1.1772812056473; Fri, 06 Mar 2026
 07:47:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306-gs101-pd-v7-0-03f7c7965ba5@linaro.org> <20260306-gs101-pd-v7-10-03f7c7965ba5@linaro.org>
In-Reply-To: <20260306-gs101-pd-v7-10-03f7c7965ba5@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 6 Mar 2026 15:47:24 +0000
X-Gm-Features: AaiRm50ckxtcAQiHBaxvyD5wpcj-AQFCGJHbC5hh7xV8KbjQj7W4u1kNphkwgtU
Message-ID: <CADrjBPr1jGX_-G0H2s8yKSNJYLawvdkYKZqQRwFhV+jy8cZWVA@mail.gmail.com>
Subject: Re: [PATCH v7 10/10] pmdomain: samsung: implement domain-supply regulator
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: A93AB2245E9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272250-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[kernel.org,samsung.com,linaro.org,gmail.com,google.com,android.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peter.griffin@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.991];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Fri, 6 Mar 2026 at 10:30, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> Some power domains on Exynos are fed by a regulator rail and therefore
> regulator control needs be implemented for Exynos power domains.
>
> On Google gs101, HSI0 (USB) is one example of such a power domain.
>
> While at it, add a to_exynos_pd() to avoid direct use of
> container_of() in various additional places, and update existing code
> to use it.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

>  drivers/pmdomain/samsung/exynos-pm-domains.c | 53 ++++++++++++++++++++++=
+++---
>  1 file changed, 48 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/pmdomain/samsung/exynos-pm-domains.c b/drivers/pmdom=
ain/samsung/exynos-pm-domains.c
> index f59986b56213..ed7a5807555b 100644
> --- a/drivers/pmdomain/samsung/exynos-pm-domains.c
> +++ b/drivers/pmdomain/samsung/exynos-pm-domains.c
> @@ -20,12 +20,15 @@
>  #include <linux/of_address.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
>
>  #define EXYNOS_SMC_CMD_PREPARE_PD_ONOFF                0x82000410
>  #define EXYNOS_GET_IN_PD_DOWN                  0
>  #define EXYNOS_WAKEUP_PD_DOWN                  1
>  #define EXYNOS_RUNTIME_PM_TZPC_GROUP           2
>
> +#define to_exynos_pd(gpd) container_of_const(gpd, struct exynos_pm_domai=
n, pd)
> +
>  struct exynos_pm_domain_config {
>         /* Value for LOCAL_PWR_CFG and STATUS fields for each domain */
>         u32 local_pwr_cfg;
> @@ -39,6 +42,7 @@ struct exynos_pm_domain_config {
>  struct exynos_pm_domain {
>         struct regmap *regmap;
>         struct device *dev;
> +       struct regulator *supply;
>         struct generic_pm_domain pd;
>         const struct exynos_pm_domain_config *cfg;
>         u32 configuration_reg;
> @@ -64,12 +68,10 @@ static int exynos_pd_access_controller_power(struct e=
xynos_pm_domain *pd,
>
>  static int exynos_pd_power(struct generic_pm_domain *domain, bool power_=
on)
>  {
> -       struct exynos_pm_domain *pd;
> +       struct exynos_pm_domain *pd =3D to_exynos_pd(domain);
>         u32 timeout, pwr;
>         int err;
>
> -       pd =3D container_of(domain, struct exynos_pm_domain, pd);
> -
>         if (!power_on) {
>                 err =3D exynos_pd_access_controller_power(pd, power_on);
>                 if (err) {
> @@ -126,14 +128,45 @@ static int exynos_pd_power(struct generic_pm_domain=
 *domain, bool power_on)
>         return err;
>  }
>
> +static int exynos_pd_regulator_enable(struct regulator *supply)
> +{
> +       return supply ? regulator_enable(supply) : 0;
> +}
> +
> +static int exynos_pd_regulator_disable(struct regulator *supply)
> +{
> +       return supply ? regulator_disable(supply) : 0;
> +}
> +
>  static int exynos_pd_power_on(struct generic_pm_domain *domain)
>  {
> -       return exynos_pd_power(domain, true);
> +       struct exynos_pm_domain *pd =3D to_exynos_pd(domain);
> +       int ret;
> +
> +       ret =3D exynos_pd_regulator_enable(pd->supply);
> +       if (ret)
> +               return ret;
> +
> +       ret =3D exynos_pd_power(domain, true);
> +       if (ret)
> +               exynos_pd_regulator_disable(pd->supply);
> +
> +       return ret;
>  }
>
>  static int exynos_pd_power_off(struct generic_pm_domain *domain)
>  {
> -       return exynos_pd_power(domain, false);
> +       struct exynos_pm_domain *pd =3D to_exynos_pd(domain);
> +       int ret;
> +
> +       ret =3D exynos_pd_power(domain, false);
> +       if (ret)
> +               return ret;
> +
> +       /* Ignore regulator errors - the domain was disabled after all. *=
/
> +       exynos_pd_regulator_disable(pd->supply);
> +
> +       return 0;
>  }
>
>  static const struct exynos_pm_domain_config exynos4210_cfg =3D {
> @@ -283,6 +316,16 @@ static int exynos_pd_probe(struct platform_device *p=
dev)
>         if (ret)
>                 return ret;
>
> +       /* get the domain power supply if required */
> +       pd->supply =3D devm_regulator_get_optional(dev, "domain");
> +       if (IS_ERR(pd->supply)) {
> +               if (PTR_ERR(pd->supply) !=3D -ENODEV)
> +                       return dev_err_probe(dev, PTR_ERR(pd->supply),
> +                                            "failed to get domain supply=
");
> +
> +               pd->supply =3D NULL;
> +       }
> +
>         /*
>          * Some Samsung platforms with bootloaders turning on the splash-=
screen
>          * and handing it over to the kernel, requires the power-domains =
to be
>
> --
> 2.53.0.473.g4a7958ca14-goog
>

