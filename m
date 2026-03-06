Return-Path: <devicetree+bounces-272218-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PJ/CMDxqmncYwEAu9opvQ
	(envelope-from <devicetree+bounces-272218-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:24:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D4990223B91
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:24:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7BA1730985A9
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 15:21:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD40F3624AF;
	Fri,  6 Mar 2026 15:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZNLCmAag"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C45368279
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 15:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772810486; cv=pass; b=UeGc1uyQykJx1S98KhY/wsRKdGafv8q5uBElL/NLr+JwgJx0lI3azlOdTsmGqv7zRdqxrmz70VRgxCh9niOhGo3LnuMaPmF59A1mtMSmrnXhbEB91fBJ6hpxYRXTlIxJJX8lAHsOMcAaDucbEZHIAv4VxHaBsJBuFUQV9JeLEh0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772810486; c=relaxed/simple;
	bh=clDN9Q/ggH6IxCcQFM2Fua/woNyxwC6yrqnlD16EscQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oNVjFMyStVX4Hq1mEm9d9eLN1GeeLJfBJ309o0ziNCqEj0Nb/JxDpl9wR10/7w7+HitYo4x1QReZKkLO8oh7QY4ta4dwAWh4v0s1Hzq6aC5JT6SgPmGy/Zhjzk6nPZtwbQXIZ8o2OhXRHZOK2BH73l1/dGL0vL/fg0IBaJQGGLU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZNLCmAag; arc=pass smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b9382e59c0eso499938166b.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 07:21:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772810478; cv=none;
        d=google.com; s=arc-20240605;
        b=XecDehTQWRBmjeoelX9uSi1w7QYXlFdPQzIrpeCUykeFTWKGMT4Ku+I22Xxeot9+6I
         THF4XW5hmI7b1CNJjSECz6ziLAmDHNXMruHnCDmlRy7uwIxlVxtj82l0daE+vgIotj3c
         IOFM7cxKz6X+wwK9pdAqSus4Zulw4OMuekENVedCOBd3ep0Hdw7BIPKIiaclhKhDbL4i
         TVmgK4KaMU2p38XIVfs0rWYqc/8HOhoVlpiHuzJW1AR2Iqk2PHelOtmyU+fXCoAeITRh
         Lx3yHMaZk4NrhNGNzxL95JNNaI6EshQjh371A53WzzlDIGGZ6b7TfsWKGQpEj/lCaMzi
         xuQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=fVf18GuOCj4KUJQyL5+kDdyR0nQ8PeWTy0/PXRvmRP0=;
        fh=JPCKM7qDWzgN9p+T5jtnAD9TxQA1dG2qUq40Kzi6Tqw=;
        b=IloAVWdGARhHL/LzENuVaA/g8atdI5nbOMIyhMvyIuGTegnfvWYeJmR1adoVsvbBTX
         +sF5VNrutHAHwlHXIhWpzQ4L/Z6VBagFanHZQigXM5d3mgVi4eJPTO8CtrtvVniFpXRu
         WjdzPl4cUxuowNge1Mrvh37UY6nUnWxvhFcMBwF09kx+W/WKtB8uYjiRZyRKWe89LgPp
         f7Ljk4txYxtMwcHGWIfyeSrBQTB3yecHMSO42fsqDNoJWuiyZx/Glreu81tSJLn9BYP2
         B2U5O588R/+O/YP6BysZq/kind2vDsEaSpQANBjJiopxL4D6ePQQOHZHxurRV680GNNk
         zgug==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772810478; x=1773415278; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fVf18GuOCj4KUJQyL5+kDdyR0nQ8PeWTy0/PXRvmRP0=;
        b=ZNLCmAagGeCgfsW7k7dfrDPZU9Pz5OCW0dPv84z6mZ8Y7bvXNC2GedgDhbGi+AAMbj
         VfaqdgP7PHzF64KBl/Nvbr/IjhMuv1KZlm5mNpL2muvGt5IauVZ6FGtea+Ru3vz6aZKw
         R+c9U4jxZrQkilY0P6PfuEf48KYvXanQzxvLKHg6cTcE3QWKr+YaWQwdaOETSE+OU+Jk
         0xAb6UdItKQ3zCNFB4WLazMHlieqwHL1G4GdbZtykyfTUBjyU0BGrZD8/ZGlY7Vvvr2L
         yALj4c7O+UsaNjPiw9IR5rJshgvBC+Op8veKALmgpxqOkr4fn/0RloMb4O9YzyGaY8vh
         BPpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772810478; x=1773415278;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fVf18GuOCj4KUJQyL5+kDdyR0nQ8PeWTy0/PXRvmRP0=;
        b=DKoyomsJxJmb6HMdMNq36ggCBcbQat1abS1ZxJTMz1exGfEZ8mMr5gpyYUnvdMeV00
         ARG1DKO8Ic/9Ep4dWTNrxTsV9H7UbUXxCu+xNeGm9y/JULg6he1869zN1C5j1WbC9uVd
         paCGiNTZMy5EJsMMvgMlDJUiAytgEoRvdC2yVeBD0Zq2k8UNxNL2o89Q2y1kPqE8l7Uc
         O7cOrMCHSTtEpZchePbyRE7Uzloko0Rz8ekVwHMiypaqGwz2Pe4A5aT3lMgqN8Zp8GDu
         +sudGhWl5LQby+mR0oep4kM4J0gBbreDnRJqLHFwkhDZcestZkW95JqZkBrTA7QQ/XMe
         v2Ww==
X-Forwarded-Encrypted: i=1; AJvYcCUmOuojs6uKwY/43Ji2dXNq+LnA9nBgJbJUDbz5iHcNYv6+pe/iOPHchJ/d0lEGln0ZL+bMlrhqIEdy@vger.kernel.org
X-Gm-Message-State: AOJu0YwUTijVvQ5s0qcCnHcq5Ff2bfUPuK5Xtb7DXMsmnORbSq8L8L3k
	VyIdudxL/VRkMNfxMZphXiA00FKNhwtA19E92V1XfFY/5cXozM3bIrBDTPkDGw/5DYKZzGcJHIL
	t8sj0Mlbs6+4jdyvev6IolJbOT1kg4jrznh59XmGyvg==
X-Gm-Gg: ATEYQzwoBoylLXSafVEege/IZWBNxfL2eOYhMcuRuFTTFSDjsG0FN6zcLFyPautrOEL
	rCXvjP6VuZ3tWzgJ5AlPOjHJqYDKLujs4mAng7AKz0lWImLLSokRdwTcv/5khmcqJvhyrjIxaPu
	AL5xjqrphmhQKSpfGyr0xABB0UBfUaiAigNQHY73fgkbWKOoJZ4wsI8FObPsEjdj5Zvv8BzdVH1
	0W4bCdpKzEviQmG8QqR7BVf9cHxU7N7ZXaOfuguvwvaVCCz0A+QLeyq0Mq3tW3b4zVN2xzzXOcP
	f7a0aG2qpHINyfANZ0ljuRLxs5Dgg3oZOMw8pKiM9g==
X-Received: by 2002:a17:906:6a0c:b0:b8e:3d49:25db with SMTP id
 a640c23a62f3a-b942e00db25mr143796466b.54.1772810477794; Fri, 06 Mar 2026
 07:21:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306-gs101-pd-v7-0-03f7c7965ba5@linaro.org> <20260306-gs101-pd-v7-8-03f7c7965ba5@linaro.org>
In-Reply-To: <20260306-gs101-pd-v7-8-03f7c7965ba5@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 6 Mar 2026 15:21:06 +0000
X-Gm-Features: AaiRm53NoJSram8HquKNMruwU8Hhr-XYeKCTUDRI7ADZLhZOeyB6oV1YUnbVV6A
Message-ID: <CADrjBPqnf9YVeOgY=uSETnbcQLgi5OY2N3usPOjzJx4o0hGEPA@mail.gmail.com>
Subject: Re: [PATCH v7 08/10] pmdomain: samsung: use dev_err() instead of pr_err()
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
X-Rspamd-Queue-Id: D4990223B91
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
	TAGGED_FROM(0.00)[bounces-272218-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,samsung.com:email,linaro.org:dkim,linaro.org:email,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Fri, 6 Mar 2026 at 10:29, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> dev_err() gives us more consistent error messages, which include the
> device. Switch to using dev_err().
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

>  drivers/pmdomain/samsung/exynos-pm-domains.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/pmdomain/samsung/exynos-pm-domains.c b/drivers/pmdom=
ain/samsung/exynos-pm-domains.c
> index 2214d9f32d59..41a232b3cdaf 100644
> --- a/drivers/pmdomain/samsung/exynos-pm-domains.c
> +++ b/drivers/pmdomain/samsung/exynos-pm-domains.c
> @@ -30,6 +30,7 @@ struct exynos_pm_domain_config {
>   */
>  struct exynos_pm_domain {
>         struct regmap *regmap;
> +       struct device *dev;
>         struct generic_pm_domain pd;
>         u32 local_pwr_cfg;
>         u32 configuration_reg;
> @@ -47,8 +48,9 @@ static int exynos_pd_power(struct generic_pm_domain *do=
main, bool power_on)
>         pwr =3D power_on ? pd->local_pwr_cfg : 0;
>         err =3D regmap_write(pd->regmap, pd->configuration_reg, pwr);
>         if (err) {
> -               pr_err("Regmap write for power domain %s %sable failed: %=
d\n",
> -                      domain->name, power_on ? "en" : "dis", err);
> +               dev_err(pd->dev,
> +                       "Regmap write for power domain %s %sable failed: =
%d\n",
> +                       domain->name, power_on ? "en" : "dis", err);
>                 return err;
>         }
>
> @@ -71,8 +73,8 @@ static int exynos_pd_power(struct generic_pm_domain *do=
main, bool power_on)
>                 /* Only return timeout if no other error also occurred. *=
/
>                 err =3D -ETIMEDOUT;
>         if (err)
> -               pr_err("Power domain %s %sable failed: %d\n", domain->nam=
e,
> -                      power_on ? "en" : "dis", err);
> +               dev_err(pd->dev, "Power domain %s %sable failed: %d\n",
> +                       domain->name, power_on ? "en" : "dis", err);
>
>         return err;
>  }
> @@ -140,6 +142,8 @@ static int exynos_pd_probe(struct platform_device *pd=
ev)
>         if (!pd)
>                 return -ENOMEM;
>
> +       pd->dev =3D dev;
> +
>         pd->pd.name =3D exynos_get_domain_name(dev, np);
>         if (!pd->pd.name)
>                 return -ENOMEM;
>
> --
> 2.53.0.473.g4a7958ca14-goog
>

