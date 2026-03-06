Return-Path: <devicetree+bounces-272253-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aItPFy34qmlxZAEAu9opvQ
	(envelope-from <devicetree+bounces-272253-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:52:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D175E224447
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:52:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 082D9301DD92
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 15:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C3C43537FD;
	Fri,  6 Mar 2026 15:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jJN1hOtd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C069C36C0DE
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 15:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772812304; cv=pass; b=MyGyRF7TxZlwrbe50XOr39ZrMWXDCZDE+XAu+gltsJU4Czxyln1AaA3UMHq5EF6ldMyuFgjhHVC6lGa8catfqUEewNxg2AEGJeOiBMMjunYRUBvcgqg5EkzETv8Vy3hcUAmdVs2vqvCo2vXXaL3rScjgV0vOKqyKllu60NTmrbo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772812304; c=relaxed/simple;
	bh=zt/0UNt3uP18aJxtk0eoO7x0Py6Ek1ZFUdGvve+hz54=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QakIGHwS9pR0zqTaGxc2RtSeOMeDJOuetDYYkxQi6dq/ELxyXsbKcKWpitN5pg9ff0h+8Gwre+CFtl90Mt5JLvVLDE4V9i8S/etLP60VWHaMVApdou3idf/l+TtA0ayPN18K5uQPrEGkLKXeXyQCpeFKVxnLeOUju9I2KdrRNG4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jJN1hOtd; arc=pass smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-660d2e4846cso5208168a12.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 07:51:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772812301; cv=none;
        d=google.com; s=arc-20240605;
        b=W1oTIjurLWn0IPy2YVQiaLIjvO3aARNt0qx3AT1mv4CL5fxSmO0en1fKwH9BdqaqKn
         FRaF521x4DKcNvT/6J2vvPzZM/96CpzJeXa8xoiOje2Wz3AwPm7mdtrjyAUoUzAZ2qEv
         zt9owR52UwHGUIIfATFn72X3isjfi9ADEr2YSwjoe9G9awP3Vqyj2JNDD213jHV5r3p3
         4Lm0t0ROUTfT7fLeMGNpyS48DSptO4KEgySrPLlpY8WVuKN2vn7LL4XBGh9Q8/e725xt
         jm+r7+v4CchT8ztsrPU6twrFMFCB1yrPJcqbHfp97GXyztwLiEZakZsBrXjqxdahntRt
         EtTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xzcKbGMLVorHlsZLyV1rvqs6i8R7J8sRM6aIMH0+nN8=;
        fh=gsx9iPv6sAujY65K37ume2d8QF6tGubVn6dc4NgoQsE=;
        b=iBbng/2fXKVvdMw8d7m+e6FP+3k1nZrW2F5BtYHqvlPJzUH0bKKDr6+UqQQLQq7Yb7
         HmH+O9mW0Ab97TXoOvBTHVniMK0+++DVid8ZDT7qlK9V/M3CLz3FvIMxOvrV3O77kddJ
         QQLa5NE4b1tFzi8C9e6VwfJre7c00nriiqY0xW8XcCJufI3M+wYWzE1QhabYED7Urr0G
         +l6bKBqg8fTfVzjS4/FYjRNw93UBKX9Be14yg2AnH52BNmNynz/RXaM0zhAljemTqhs+
         /C3R4IdVEEt1a3BcSi8qPI3ClPpQSOk+6RSlsFsiu3h1Je22VspBartuRhpiBFAGcSiU
         VyIQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772812301; x=1773417101; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xzcKbGMLVorHlsZLyV1rvqs6i8R7J8sRM6aIMH0+nN8=;
        b=jJN1hOtdwsskWc1pefnfQcjLiGmjUKNymGSXkMS2DHIWWFDik2mp7S6FwL709lcD6L
         eMeMJBQDT0wtlGsDv5f8F49DsbENS1Opqgw53IG0OVKThm515JIcdl6oyJTftzgaJAK3
         eOJF/TWqggjJm4GLS0g7KI7BvMKGDWP1q1Sg/jfUy01z1RpaT56xlp0FBkDJUwo0t2Ba
         HrPG0/QvWEnDvrkdMmzKFSocqXwg7c8RrBZWOa1AE+r1hpt1zBDPUykT0wqh4t3yTvDf
         LOJWgdtin9gyfeivQ1lWmTM+fq7uamU+J5+Z7W13xEX2I70ywKrS4kNL6p5lwkbIilfC
         +XYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772812301; x=1773417101;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xzcKbGMLVorHlsZLyV1rvqs6i8R7J8sRM6aIMH0+nN8=;
        b=tIjYSFFxZIWN79UX9Tk+UeOEJE43hW0eSTYXaWKTAQSjwLWiYPdDMfcVdubR7Uxk9b
         NJGm4T7JtJrcGmDxuspCCfW9xpRFygTQK+e5Z9VIyFnWg1lqfRbBLojjAtH+XngBSTig
         fJatWZ16NNV3QAwKDX0+ZVvJ6SLtaHqUk3qgqqUUAnI1edcOoDTCbtaq0wHORYCErNgt
         PmdshKnLMpAJOA/tpPzp3xeiCCDEQ9Q6F1aqnLP9JQLgxC9BpAiUKrVjPrHVkS6thQG+
         o1CeZjewlzP+EQ4aLdjDDPbosf3kWlvujpOVM+5dpaCqsXP64NtQ9/whSwniLIN0fpAl
         cA2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXYWAuT6y3m7GZUvobW7vm9cncYvAsTEtdvvhjUS6mjzh0HCYMpxzCsAUc9N1qlu4duvbUriTMzsYn6@vger.kernel.org
X-Gm-Message-State: AOJu0YyhPB4IRlWSp35d52Lv4tfiRCOT0A4SH1C1TTIKX3ugTWm8oE3J
	7pfTaCc36/s09aFyV6OCpWD0V/fVEawJj9YFqPd1aKoGvvTMd2G8fdGI7KgaTYhra9uY/xe2Ppc
	t0Q4z4E2UfOJn9rBnDf/D1kKaJ38YjC14Ob5dQrQXbw==
X-Gm-Gg: ATEYQzytUallCkZYrhenK7lsZZ/JbythwplPMRyAtIaBMOrcUyf/N7zqiUtiSM3gPAw
	KZyJHeaQ7YAIGAovQKMfyytd2cK/RHqPiIr0WIObv28pKwA9hwEUXHbeG1FrzZICVeqo48z4eBR
	1SwEWEvrBpFhn3yczWyku09LTPz10xj7wAJUe2HsXXTlRicomu3wJRW0ep+wxtiIlFa59l9qZYQ
	QZxXxoUf1r+5MepdfLUr3kd9PfiYUmQOKkVrSECfIs+thd4CrS/uCZk3paMeaSfgO6FhdiYwWSw
	20DQECr1dA0qyxDQEQY7y7gQ/T0+yjN7FJNfBzQvIw==
X-Received: by 2002:a05:6402:440b:b0:65c:354e:94f0 with SMTP id
 4fb4d7f45d1cf-6619d467bf2mr1553000a12.8.1772812301052; Fri, 06 Mar 2026
 07:51:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306-gs101-pd-v7-0-03f7c7965ba5@linaro.org> <20260306-gs101-pd-v7-6-03f7c7965ba5@linaro.org>
In-Reply-To: <20260306-gs101-pd-v7-6-03f7c7965ba5@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 6 Mar 2026 15:51:29 +0000
X-Gm-Features: AaiRm50XSyJAhZxudj29YJ-AfLARk18pjf_9-ZTH2qd-aJZzO76tWKTXAR6KLlw
Message-ID: <CADrjBPqB60UtWpZjBdsGtijw+OSq76vfBaiKoJg8We2na-ixhQ@mail.gmail.com>
Subject: Re: [PATCH v7 06/10] pmdomain: samsung: don't hard-code offset for
 registers to 0 and 4
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: D175E224447
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272253-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[kernel.org,samsung.com,linaro.org,gmail.com,google.com,android.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peter.griffin@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.992];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,linaro.org:dkim,linaro.org:email,mail.gmail.com:mid,samsung.com:email]
X-Rspamd-Action: no action

On Fri, 6 Mar 2026 at 10:29, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> On platforms such as Google gs101, direct mmio register access to the
> PMU registers doesn't necessarily work and access must happen via a
> regmap created by the PMU driver instead.
>
> When such a regmap is used it will cover the complete PMU memory region
> rather than individual power domains. This means the register offsets
> for the configuration and status registers will have to take the power
> domain offsets into account, rather than unconditionally hard-coding 0
> and 4 respectively.
>
> Update the code to allow that.
>
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

>  drivers/pmdomain/samsung/exynos-pm-domains.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/pmdomain/samsung/exynos-pm-domains.c b/drivers/pmdom=
ain/samsung/exynos-pm-domains.c
> index 3bcba7d38ac1..8df46b41f9bc 100644
> --- a/drivers/pmdomain/samsung/exynos-pm-domains.c
> +++ b/drivers/pmdomain/samsung/exynos-pm-domains.c
> @@ -30,6 +30,8 @@ struct exynos_pm_domain {
>         struct regmap *regmap;
>         struct generic_pm_domain pd;
>         u32 local_pwr_cfg;
> +       u32 configuration_reg;
> +       u32 status_reg;
>  };
>
>  static int exynos_pd_power(struct generic_pm_domain *domain, bool power_=
on)
> @@ -41,7 +43,7 @@ static int exynos_pd_power(struct generic_pm_domain *do=
main, bool power_on)
>         pd =3D container_of(domain, struct exynos_pm_domain, pd);
>
>         pwr =3D power_on ? pd->local_pwr_cfg : 0;
> -       err =3D regmap_write(pd->regmap, 0, pwr);
> +       err =3D regmap_write(pd->regmap, pd->configuration_reg, pwr);
>         if (err) {
>                 pr_err("Regmap write for power domain %s %sable failed: %=
d\n",
>                        domain->name, power_on ? "en" : "dis", err);
> @@ -53,7 +55,7 @@ static int exynos_pd_power(struct generic_pm_domain *do=
main, bool power_on)
>         while (timeout-- > 0) {
>                 unsigned int val;
>
> -               err =3D regmap_read(pd->regmap, 0x4, &val);
> +               err =3D regmap_read(pd->regmap, pd->status_reg, &val);
>                 if (err || ((val & pd->local_pwr_cfg) !=3D pwr)) {
>                         cpu_relax();
>                         usleep_range(80, 100);
> @@ -164,6 +166,8 @@ static int exynos_pd_probe(struct platform_device *pd=
ev)
>         pd->pd.power_off =3D exynos_pd_power_off;
>         pd->pd.power_on =3D exynos_pd_power_on;
>         pd->local_pwr_cfg =3D pm_domain_cfg->local_pwr_cfg;
> +       pd->configuration_reg +=3D 0;
> +       pd->status_reg +=3D 4;
>
>         /*
>          * Some Samsung platforms with bootloaders turning on the splash-=
screen
> @@ -174,7 +178,7 @@ static int exynos_pd_probe(struct platform_device *pd=
ev)
>             of_device_is_compatible(np, "samsung,exynos4210-pd"))
>                 exynos_pd_power_off(&pd->pd);
>
> -       ret =3D regmap_read(pd->regmap, 0x4, &val);
> +       ret =3D regmap_read(pd->regmap, pd->status_reg, &val);
>         if (ret)
>                 return dev_err_probe(dev, ret, "failed to read status");
>
>
> --
> 2.53.0.473.g4a7958ca14-goog
>

