Return-Path: <devicetree+bounces-28119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E9E81CD62
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 17:59:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 73D781C226F5
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 16:59:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A705725775;
	Fri, 22 Dec 2023 16:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hqj+d6I6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75CA2555E
	for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 16:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-6d532e4f6d6so1317713b3a.2
        for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 08:59:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703264364; x=1703869164; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ACmJFfilUh4/qCtQEksIqI4mnR+VgyeD/6SXnBrVOJA=;
        b=Hqj+d6I6hmeQNs+9mKrGPEUak4mUwsLFCioJqEdovdl14b+VcLd1MLR1yfZxXmz/TW
         N2eVAICJHE2PNoNdL2PQvPY4MOMyaQB11h97DHeEopwndk/t2iOfIED5yd1X5JO57D+E
         bvs4UYT6TC/GDT+0XwNzsUTvG5Q23U+q91Sevb/stG7CVl+PlTUBKUgy+bLTIO9D5JWN
         WaoyaRNonVdcup5X3PLrQhwYcdBJT/nw8VwrGYZQKU0d+zenARnRozNzr9/HbmwCnHBC
         zmUTpqTOMQJ20ARa4pHE55nN+x1ggbxbPgco3HdfEy0YW0PUTpad6fqX+27Kmb/Ks30M
         0V2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703264364; x=1703869164;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ACmJFfilUh4/qCtQEksIqI4mnR+VgyeD/6SXnBrVOJA=;
        b=SslrE4laikMckiRueh5zxSCi8hf8AhpZu/e5lOE1QEzSwXM8fzMaWsxre3QsXAJFiv
         ZnNe77mcNNdTCedaqGD3Hnlayw/ei2ZUsLkfH17eCurBAK+hqSnCfqylzZeO13Mwfj/+
         3EHRILF5zpg9q8YxrTc+WdlJU2WTaBg8dDqYypjCxgwOW47U2peOGF0yr+MpqnWL3rC6
         QWmAIWQ6YZFYT590YCzFgiwy6RBtW11PBzPA5547JLrl0aCzb8kRuc+pPk+2Wi+c0nxd
         TGASPoO0TVw/t4hkDzJWN2sBxjNg8HJonia5FF9JXlpsUCZXJPsnuBMB2kzUKcVNMb26
         gL/Q==
X-Gm-Message-State: AOJu0YxHCEm30CJ0zcuiZ0JDJ4fRao+qdAjkssd+4hcxiDhKhbSacHnX
	03uT/8omrUTuUN4WHf30wF/tYIDa50Ssyb8ooVMJYm+wQ4JeJQ==
X-Google-Smtp-Source: AGHT+IETjYzmZQ54QRmOOdNnqTmsUeKaHxfY1knEuI973zH36pzxQOvWL8dUk4vz7UBrKL6Ztrec7BnrNi8GE/FyEWo=
X-Received: by 2002:a05:6a00:1822:b0:6d9:5ea7:5ed8 with SMTP id
 y34-20020a056a00182200b006d95ea75ed8mr1251619pfa.23.1703264364134; Fri, 22
 Dec 2023 08:59:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231222165355.1462740-1-peter.griffin@linaro.org> <20231222165355.1462740-3-peter.griffin@linaro.org>
In-Reply-To: <20231222165355.1462740-3-peter.griffin@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 22 Dec 2023 10:59:13 -0600
Message-ID: <CAPLW+4konUmivej17mjxyMJF7kBfQ9qZGMzr=Fq6ROiGtEASzA@mail.gmail.com>
Subject: Re: [PATCH 2/3] clk: samsung: gs101: register cmu_misc clocks early
To: Peter Griffin <peter.griffin@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	daniel.lezcano@linaro.org, tglx@linutronix.de, conor+dt@kernel.org, 
	alim.akhtar@samsung.com, s.nawrocki@samsung.com, tomasz.figa@gmail.com, 
	cw00.choi@samsung.com, mturquette@baylibre.com, sboyd@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel-team@android.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, saravanak@google.com, 
	willmcvicker@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 22, 2023 at 10:54=E2=80=AFAM Peter Griffin <peter.griffin@linar=
o.org> wrote:
>
> Update cmu_misc so it is registered early, as it contains
> the gate which clocks the Multi Core Timer (MCT). This clock
> is required early in boot, otherwise exynos_mct will fail
> obtaining the clock.
>
> Note this wasn't previously an issue as exynos_mct wasn't
> enabled.
>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  drivers/clk/samsung/clk-gs101.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/clk/samsung/clk-gs101.c b/drivers/clk/samsung/clk-gs=
101.c
> index 0964bb11657f..590119a25c18 100644
> --- a/drivers/clk/samsung/clk-gs101.c
> +++ b/drivers/clk/samsung/clk-gs101.c
> @@ -2478,6 +2478,15 @@ static const struct samsung_cmu_info misc_cmu_info=
 __initconst =3D {
>         .clk_name               =3D "dout_cmu_misc_bus",
>  };
>
> +static void __init gs101_cmu_misc_init(struct device_node *np)
> +{
> +       exynos_arm64_register_cmu(NULL, np, &misc_cmu_info);
> +}
> +
> +/* Register CMU_MISC early, as it's needed for MCT timer */
> +CLK_OF_DECLARE(gs101_cmu_misc, "google,gs101-cmu-misc",
> +              gs101_cmu_misc_init);
> +
>  /* ---- platform_driver ------------------------------------------------=
----- */
>
>  static int __init gs101_cmu_probe(struct platform_device *pdev)
> @@ -2495,9 +2504,6 @@ static const struct of_device_id gs101_cmu_of_match=
[] =3D {
>         {
>                 .compatible =3D "google,gs101-cmu-apm",
>                 .data =3D &apm_cmu_info,
> -       }, {
> -               .compatible =3D "google,gs101-cmu-misc",
> -               .data =3D &misc_cmu_info,
>         }, {
>         },
>  };
> --
> 2.43.0.472.g3155946c3a-goog
>

