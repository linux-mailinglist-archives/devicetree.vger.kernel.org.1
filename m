Return-Path: <devicetree+bounces-35747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9268183EA0B
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 03:49:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 421C7287799
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 02:49:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76339B673;
	Sat, 27 Jan 2024 02:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WGjRojeq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E4DC4436
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 02:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706323750; cv=none; b=bjig7rHFSyS2aOrcjpWpUaEHF6dk0xUogq60uQHjfPMZkES1ILSf/cUniKl86YHzf3LBNpvSFRFufLYH5400KezPuirefWKz3W4T/PU8G8FXmA58tP1JcQcqw9V+3DkVLfa+xLwksHQjhwVDRPhBAo/GA1HmCGDfQ8GTy4XkW+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706323750; c=relaxed/simple;
	bh=fqT2UpnAdYgnN7May4dRnQvLGW6/Out1ORnIWaF3nC0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iEY2GL/kTkYURdqgqWNYamtbvsM8A+QoOWlK/UpRHelCK7kEUPlM1x6p4kqz++z7oIhxF3WjGIvZa9tgN3NIRoo1+GbzyLInuOif38vakWF0sKmDQzNK8y3Hkx4pCdIDMkgziKoqhY+3BY1LThVWgpW2v0Zrei3cmaXgOfAFX04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WGjRojeq; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6e0ed26cc5eso615228a34.3
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 18:49:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706323747; x=1706928547; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w7rKoYul0KmcSqDOGVscC5R5JwNbQDpPDbk1xOKD6OE=;
        b=WGjRojeqJQLNB4gwUVKjvTEWm0bHf44GUlaps2FpD4iOuBIZaXtMUp+ZKhAG2C3AFE
         2PgZH+uzGtOxtq8HS6RA9xcLjYHfr2/ycgtrt7pvk9RkQNjXpvzQkEFOdRGC0mqQOe3X
         Feee2afYigi0nL6OOTBRuqtaxXUm1g4kQkdsPaf9gmJXr57afsdB+K0g3wAE0w7lGC/A
         ReJnir5FnR0XcANCgraJq+zXhL1vwiikMOeYljwXzJ80Aa/4PfLpQRucQrEzOLR4E5Vv
         0PXzWRltJyhiq5DEM+gplvgycE/reHD7azjvCBI8EWykqMfkzhHz01GOM+UUhVH29/4l
         o6eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706323747; x=1706928547;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w7rKoYul0KmcSqDOGVscC5R5JwNbQDpPDbk1xOKD6OE=;
        b=JZKy/gbRCg6vt+YsAaJotlB8I6cI0GmNv0ZOie5LnhZfpaRAfSVpCbxZ9Xrzvk/W8X
         fGk+wBNKjPFSnJqiOOh23BUEYU0hberfBs6i7Zh7NkijfYPjuthqrgntuvofDL9AgS54
         toaahDxiOVRbM/RnsjSdlv604rACnhVu03/dMwolTf/N14Q8eq54HUf0ke+Myl6zJR16
         9Ny4zaWtpIJW37xIWwpypZAkg8yZ+0MKwKZEpjfnT1DeuaGai+4dgwhRM6nLeL0Yc2vk
         3S1Nig44Qf3pPd8Voqo5ez8Tb1LBfJFRPV37pUHZ1fTTIKgL9AHTYm9kCjYlYlmTOl4R
         wMeg==
X-Gm-Message-State: AOJu0YwBoFs+wgFUR3feZbUca7TPnJaOEyJbfePuBJZlQvyYZ+tmU35s
	sbis+fg6J8fEnZUACDC9K9SLMotT0MvpdFeJZUcoOJshJ7qeeen6kpM7XgQY3Ma6ns4pJatXLOy
	OjmGSPMozDxmVc1IHAsAaupATRLePr02w1yJ3jA==
X-Google-Smtp-Source: AGHT+IFouc2h3r7SAGTDBAQz269Vw5GN4xrygRaTlYXet5v/+wFM0Sfr+7jq1DD/JZgCD/s+bb6BMQXrVDTEZYU594c=
X-Received: by 2002:a05:6830:1281:b0:6db:febb:163f with SMTP id
 z1-20020a056830128100b006dbfebb163fmr893563otp.44.1706323747661; Fri, 26 Jan
 2024 18:49:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127001926.495769-1-andre.draszik@linaro.org> <20240127001926.495769-3-andre.draszik@linaro.org>
In-Reply-To: <20240127001926.495769-3-andre.draszik@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 26 Jan 2024 20:48:56 -0600
Message-ID: <CAPLW+4mii=vGVgPxjA94XP3Fg5sRYBJHhtE+1fdKNitESnvGDg@mail.gmail.com>
Subject: Re: [PATCH 2/9] dt-bindings: clock: google,gs101-clock: add PERIC1
 clock management unit
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org, kernel-team@android.com, 
	tudor.ambarus@linaro.org, willmcvicker@google.com, alim.akhtar@samsung.com, 
	s.nawrocki@samsung.com, tomasz.figa@gmail.com, cw00.choi@samsung.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 26, 2024 at 6:19=E2=80=AFPM Andr=C3=A9 Draszik <andre.draszik@l=
inaro.org> wrote:
>
> Add dt-schema documentation and clock IDs for the Connectivity
> Peripheral 1 (PERIC1) clock management unit.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
>
> ---
> Note for future reference: To ensure consistent naming throughout this
> file, the IDs have been derived from the data sheet using the
> following, with the expectation for all future additions to this file
> to use the same:
>     sed \
>         -e 's|^PLL_LOCKTIME_PLL_\([^_]\+\)|CLK_FOUT_\1_PLL|' \
>         \
>         -e 's|^PLL_CON0_MUX_CLKCMU_\([^_]\+\)_|CLK_MOUT_\1_|' \
>         -e 's|^PLL_CON0_PLL_\(.*\)|CLK_MOUT_PLL_\1|' \
>         -e 's|^CLK_CON_MUX_MUX_CLK_\(.*\)|CLK_MOUT_\1|' \
>         -e '/^PLL_CON[1-4]_[^_]\+_/d' \
>         -e '/^[^_]\+_CMU_[^_]\+_CONTROLLER_OPTION/d' \
>         -e '/^CLKOUT_CON_BLK_[^_]\+_CMU_[^_]\+_CLKOUT0/d' \
>         \
>         -e 's|_IPCLKPORT||' \
>         -e 's|_RSTNSYNC||' \
>         \
>         -e 's|^CLK_CON_DIV_DIV_CLK_\([^_]\+\)_|CLK_DOUT_\1_|' \
>         \
>         -e 's|^CLK_CON_BUF_CLKBUF_\([^_]\+\)_|CLK_GOUT_\1_|' \
>         -e 's|^CLK_CON_GAT_CLK_BLK_\([^_]\+\)_UID_|CLK_GOUT_\1_|' \
>         -e 's|^CLK_GOUT_[^_]\+_[^_]\+_CMU_\([^_]\+\)_PCLK$|CLK_GOUT_\1_PC=
LK|' \
>         -e 's|^CLK_CON_GAT_GOUT_BLK_\([^_]\+\)_UID_|CLK_GOUT_\1_|' \
>         -e 's|^CLK_CON_GAT_CLK_\([^_]\+\)_\(.*\)|CLK_GOUT_\1_CLK_\1_\2|' =
\
>         \
>         -e '/^\(DMYQCH\|PCH\|QCH\|QUEUE\)_/d'
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  .../bindings/clock/google,gs101-clock.yaml    |  9 ++--
>  include/dt-bindings/clock/google,gs101.h      | 48 +++++++++++++++++++
>  2 files changed, 54 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/clock/google,gs101-clock.y=
aml b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
> index 03698cdecf7a..1d2bcea41c85 100644
> --- a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
> +++ b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
> @@ -31,6 +31,7 @@ properties:
>        - google,gs101-cmu-apm
>        - google,gs101-cmu-misc
>        - google,gs101-cmu-peric0
> +      - google,gs101-cmu-peric1
>
>    clocks:
>      minItems: 1
> @@ -93,15 +94,17 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            const: google,gs101-cmu-peric0
> +            enum:
> +              - google,gs101-cmu-peric0
> +              - google,gs101-cmu-peric1
>
>      then:
>        properties:
>          clocks:
>            items:
>              - description: External reference clock (24.576 MHz)
> -            - description: Connectivity Peripheral 0 bus clock (from CMU=
_TOP)
> -            - description: Connectivity Peripheral 0 IP clock (from CMU_=
TOP)
> +            - description: Connectivity Peripheral 0/1 bus clock (from C=
MU_TOP)
> +            - description: Connectivity Peripheral 0/1 IP clock (from CM=
U_TOP)
>
>          clock-names:
>            items:
> diff --git a/include/dt-bindings/clock/google,gs101.h b/include/dt-bindin=
gs/clock/google,gs101.h
> index 64e6bdc6359c..3dac3577788a 100644
> --- a/include/dt-bindings/clock/google,gs101.h
> +++ b/include/dt-bindings/clock/google,gs101.h
> @@ -470,4 +470,52 @@
>  #define CLK_GOUT_PERIC0_CLK_PERIC0_USI8_USI_CLK                78
>  #define CLK_GOUT_PERIC0_SYSREG_PERIC0_PCLK             79
>
> +/* CMU_PERIC1 */
> +#define CLK_MOUT_PERIC1_BUS_USER                       1
> +#define CLK_MOUT_PERIC1_I3C_USER                       2
> +#define CLK_MOUT_PERIC1_USI0_USI_USER                  3
> +#define CLK_MOUT_PERIC1_USI10_USI_USER                 4
> +#define CLK_MOUT_PERIC1_USI11_USI_USER                 5
> +#define CLK_MOUT_PERIC1_USI12_USI_USER                 6
> +#define CLK_MOUT_PERIC1_USI13_USI_USER                 7
> +#define CLK_MOUT_PERIC1_USI9_USI_USER                  8
> +#define CLK_DOUT_PERIC1_I3C                            9
> +#define CLK_DOUT_PERIC1_USI0_USI                       10
> +#define CLK_DOUT_PERIC1_USI10_USI                      11
> +#define CLK_DOUT_PERIC1_USI11_USI                      12
> +#define CLK_DOUT_PERIC1_USI12_USI                      13
> +#define CLK_DOUT_PERIC1_USI13_USI                      14
> +#define CLK_DOUT_PERIC1_USI9_USI                       15
> +#define CLK_GOUT_PERIC1_IP                             16
> +#define CLK_GOUT_PERIC1_PCLK                           17
> +#define CLK_GOUT_PERIC1_CLK_PERIC1_I3C_CLK             18
> +#define CLK_GOUT_PERIC1_CLK_PERIC1_OSCCLK_CLK          19
> +#define CLK_GOUT_PERIC1_D_TZPC_PERIC1_PCLK             20
> +#define CLK_GOUT_PERIC1_GPC_PERIC1_PCLK                        21
> +#define CLK_GOUT_PERIC1_GPIO_PERIC1_PCLK               22
> +#define CLK_GOUT_PERIC1_LHM_AXI_P_PERIC1_I_CLK         23
> +#define CLK_GOUT_PERIC1_PERIC1_TOP0_IPCLK_1            24
> +#define CLK_GOUT_PERIC1_PERIC1_TOP0_IPCLK_2            25
> +#define CLK_GOUT_PERIC1_PERIC1_TOP0_IPCLK_3            26
> +#define CLK_GOUT_PERIC1_PERIC1_TOP0_IPCLK_4            27
> +#define CLK_GOUT_PERIC1_PERIC1_TOP0_IPCLK_5            28
> +#define CLK_GOUT_PERIC1_PERIC1_TOP0_IPCLK_6            29
> +#define CLK_GOUT_PERIC1_PERIC1_TOP0_IPCLK_8            30
> +#define CLK_GOUT_PERIC1_PERIC1_TOP0_PCLK_1             31
> +#define CLK_GOUT_PERIC1_PERIC1_TOP0_PCLK_15            32
> +#define CLK_GOUT_PERIC1_PERIC1_TOP0_PCLK_2             33
> +#define CLK_GOUT_PERIC1_PERIC1_TOP0_PCLK_3             34
> +#define CLK_GOUT_PERIC1_PERIC1_TOP0_PCLK_4             35
> +#define CLK_GOUT_PERIC1_PERIC1_TOP0_PCLK_5             36
> +#define CLK_GOUT_PERIC1_PERIC1_TOP0_PCLK_6             37
> +#define CLK_GOUT_PERIC1_PERIC1_TOP0_PCLK_8             38
> +#define CLK_GOUT_PERIC1_CLK_PERIC1_BUSP_CLK            39
> +#define CLK_GOUT_PERIC1_CLK_PERIC1_USI0_USI_CLK                40
> +#define CLK_GOUT_PERIC1_CLK_PERIC1_USI10_USI_CLK       41
> +#define CLK_GOUT_PERIC1_CLK_PERIC1_USI11_USI_CLK       42
> +#define CLK_GOUT_PERIC1_CLK_PERIC1_USI12_USI_CLK       43
> +#define CLK_GOUT_PERIC1_CLK_PERIC1_USI13_USI_CLK       44
> +#define CLK_GOUT_PERIC1_CLK_PERIC1_USI9_USI_CLK                45
> +#define CLK_GOUT_PERIC1_SYSREG_PERIC1_PCLK             46
> +
>  #endif /* _DT_BINDINGS_CLOCK_GOOGLE_GS101_H */
> --
> 2.43.0.429.g432eaa2c6b-goog
>

