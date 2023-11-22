Return-Path: <devicetree+bounces-17805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24ED17F42B9
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 10:48:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6318281950
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 09:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7CC65B1E9;
	Wed, 22 Nov 2023 09:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZWgqgljS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE3021BF4
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 01:48:40 -0800 (PST)
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-db029574f13so6404982276.1
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 01:48:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700646520; x=1701251320; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OgOu9OX/gdDlTcObaS5UnH2tHRUs1zEOv8i4Nf8OEww=;
        b=ZWgqgljSDZpiqAPRGgtQAGps5T2tAKFw1j7wikGqmpfBRLUIn4JcaVga8ysDzmVsHu
         HCpXHykHcVyd0pz0rb1sLZXN2iBYVVLa7nDY6L9y7HVMV6uCAzKppxp5k9VsRkHWhj+9
         6/i17+7go7L6/JM9vKXRtgVDIjKmNTi083XZExL2F1eC0JmTQtjNOMqDJI2g4g601njd
         a84Flh3K+G3/ocHiO5vDSN0RcbD146Bl7ptn5EmCD+2r3O0rjhGUrWPgY2clmxCx7t+h
         6oo3l5edJcINFVE6OZqAAGvSsMdhg5Do+Kx0AbvVLzxwkyhro9pxvyIK726u00JqRb8/
         8UYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700646520; x=1701251320;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OgOu9OX/gdDlTcObaS5UnH2tHRUs1zEOv8i4Nf8OEww=;
        b=IJSzuewawOYlwv+xZInokChlQP7AHSF75fnslHtl+xFUcLSvt1FzHcvRS0GtTzg8f9
         I8Wwluu3kGmWRq1P021nEou0rEVMaPvjrEFMtpFjHzdq7FsIEFliq5YcVKpx/913tVYx
         ACZknwvRzpBTlQVh9NOiL8GS5zn5HI/xfhnqKsDsEvJGU1+tpPiIFNPn+y0/SwSJopEu
         WOIQioFLIJCyb2t7RxWlL+3LoK7pLZW6dWZIx/eS57aW8SuVJlnSUp3XCM3weR8pPSI6
         VAIkUuMyQOdR8yVv0NXGTe83p8LeSiG8A70ynwODkqRomuC230vigtzWlJjL7iLkzgJc
         3k1Q==
X-Gm-Message-State: AOJu0YyGle9jwaxsTVUhIPPv8dKXeQhPTdwYz3S1twMt4wlrE8+JHzoB
	x7Czat2CDv1HzBV7p2Fehkz1ExdSOnXVHlzE8I9KBQ==
X-Google-Smtp-Source: AGHT+IGEx2UFEWBYXKoM1hxVrMkNovyA5JKzYrMvxDK90RIoFbZvnci5tNlT3RfwuPABorNkQoKIuBP1BwH2xgMp040=
X-Received: by 2002:a25:e812:0:b0:daf:81e5:d2fa with SMTP id
 k18-20020a25e812000000b00daf81e5d2famr1697557ybd.33.1700646520191; Wed, 22
 Nov 2023 01:48:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231114-msm8909-cpufreq-v3-0-926097a6e5c1@kernkonzept.com> <20231114-msm8909-cpufreq-v3-3-926097a6e5c1@kernkonzept.com>
In-Reply-To: <20231114-msm8909-cpufreq-v3-3-926097a6e5c1@kernkonzept.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 22 Nov 2023 10:48:04 +0100
Message-ID: <CAPDyKFqQoq0DdsxdrKUW9awL1HOn3NCEgqpnzD+=S5fb0aJLEA@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] pmdomain: qcom: rpmpd: Set GENPD_FLAG_ACTIVE_WAKEUP
To: Stephan Gerhold <stephan.gerhold@kernkonzept.com>
Cc: Viresh Kumar <viresh.kumar@linaro.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Ilia Lin <ilia.lin@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="UTF-8"

On Tue, 14 Nov 2023 at 11:08, Stephan Gerhold
<stephan.gerhold@kernkonzept.com> wrote:
>
> Set GENPD_FLAG_ACTIVE_WAKEUP for all RPM power domains so that power
> domains necessary for wakeup/"awake path" devices are kept on across
> suspend.
>
> This is needed for example for the *_AO ("active-only") variants of the
> RPMPDs used by the CPU. Those should maintain their votes also across
> system suspend to ensure the CPU can keep running for the whole suspend
> process (ending in a firmware call). When the RPM firmware detects that
> the CPUs are in a deep idle state it will drop those votes automatically.
>
> Signed-off-by: Stephan Gerhold <stephan.gerhold@kernkonzept.com>

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe


> ---
>  drivers/pmdomain/qcom/rpmpd.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/pmdomain/qcom/rpmpd.c b/drivers/pmdomain/qcom/rpmpd.c
> index 07590a3ef19c..7796d65f96e8 100644
> --- a/drivers/pmdomain/qcom/rpmpd.c
> +++ b/drivers/pmdomain/qcom/rpmpd.c
> @@ -1044,6 +1044,7 @@ static int rpmpd_probe(struct platform_device *pdev)
>                 rpmpds[i]->pd.power_off = rpmpd_power_off;
>                 rpmpds[i]->pd.power_on = rpmpd_power_on;
>                 rpmpds[i]->pd.set_performance_state = rpmpd_set_performance;
> +               rpmpds[i]->pd.flags = GENPD_FLAG_ACTIVE_WAKEUP;
>                 pm_genpd_init(&rpmpds[i]->pd, NULL, true);
>
>                 data->domains[i] = &rpmpds[i]->pd;
>
> --
> 2.39.2
>

