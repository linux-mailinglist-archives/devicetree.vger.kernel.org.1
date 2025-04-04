Return-Path: <devicetree+bounces-163151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F68BA7BB0A
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 12:38:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 614763AA1CB
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 10:37:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 371FF1D8DFB;
	Fri,  4 Apr 2025 10:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iwXkQ3H7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E581D8A12
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 10:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743763033; cv=none; b=e+mG/D08mTGvHV42PJGIsaGuoZbzTj8H1qHtIYQc8mXmCg56EKr0CednlLUDUXYHkGYstf1OEEFHGhTS+G89kSXLnranjVDKrXEd9IwuvN1I/cdGQzxnCAZTDIkWtHKI1uMZU4HWSl+/0Ju4qJ+uVSpaOuoF0RGkQX+h+WYLJ/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743763033; c=relaxed/simple;
	bh=XpFbSVqvEDgZgwyFUE/9ri5Zlpd76Q27/crMcE9fE2c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HSZh51E3QeIxy2LWrQqzmpuZxS4GVUzsQtfKINxT9NfzTFLDAx7Tc75/BquvipzXubEQznoIHEpBpAVqk0e01lBcYc4TKY1fRhvj5uMpHHOnICvlmIDB/cREHLje8DEI4fRXIYZfDELEmVZnR6/WNbnFzNADoY3MZxKfotn6MHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iwXkQ3H7; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6ff1e375a47so19390337b3.1
        for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 03:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743763030; x=1744367830; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=s85N6LbGyDvlbfm+7fjpbjUdhdaXcYheIAW+0EJPQoQ=;
        b=iwXkQ3H7cVoSJCZqlnhIONUL/03XXTbrr+Z50cvIfpa5goqD+dL19peRpLIJhs89fc
         iBAlQAnKWJ0DJQFs60qUVYIwQmrNtSIxPyyjmA+46KbXa3kmI28eROkylKIEnkLxkLtw
         vx3Cw3g89qivoeNk+fzbZkUdwPv+Ocqh3iKp6Poyt3WvNjCgrKju9TXz92a3249xoArE
         itzj8T6ReL7mzZdvsKeAw9iwD6nO3RfzLO1ysd4Taz3l+i0828EIc8S8JU14nejzPlV5
         vvw3xiwdWhXb/GNHawsTO03PEN2bN3bM76OaYLj9DU26BC8RuJ6gXycZ7lNO3ibIvPm1
         75FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743763030; x=1744367830;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s85N6LbGyDvlbfm+7fjpbjUdhdaXcYheIAW+0EJPQoQ=;
        b=Ki1p0mtTitfbJJrCrRxmpO4AXIeknP9STjjwDOTROyRz1T/SgvogelWt09+uWW/h2G
         x+vpj0HTF/RV+JtFrzReVC9CK4wHBXiWcfsbmpqZcHU5uiNUoeKRnvEDup3HcXpfCb8o
         XZ34hKPRTmfwdmn4VcS/N6ucgsKidgqRLxhlxKtxrM9ibJlYuD7S0ut7cfyQOE2C7m8o
         gJT3k7WlWBLP1mURRoQ13byLsR+93RdFvGxQiXvsSIDUCra3d0QTt0HpRJOeWPOsZQB0
         gVCQCSt2uKyPnMFDImM7cj1oKqgdRy9BEJpQlT6Dgscsp6uMS1U3myEPmve/3jb6a0+z
         AkJA==
X-Forwarded-Encrypted: i=1; AJvYcCVaP/tE1fVPfAtj1fI0gYMFD5eZk3YSwj4jaZS/FnBQSfufyRiC3FneZNeXg+sfSc8bprf0rpB2uDX3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2Kw9kP8n9QWEP08MSTVRZw21kkicLuIACHRxS65fi9qdlGR0u
	sRSxYa/O4VDTOzVUgg1LCoVJE/qv15dKLZ/5v2JmpSUZOXgMFgBd0bZA98Cc4hWbBlBaI1FqIn9
	f03H3yPvyvvx+qRoS0c16KTN5Xguz5dD6mG5IuQ==
X-Gm-Gg: ASbGncv1Ll5mxpv7EKq789kCtVPwLI262reNL4olODtvK74ludr6zeT+0akhUl76oPI
	YwNJz6BLj+rIkbPw/OLYT+4hoBG65zN/Frln+Oms5566hodx5t2o9wvOhaKh+Q278XR4KLsTB+t
	J+nTiyuUCojtx3+mEBGpgH7qAJ5vA=
X-Google-Smtp-Source: AGHT+IGuuSb2kyra+w2zQGcM5KZ+95CLnIjAJJ+ZAGPbM9ApbFO7sbm4a8zwJjSrMRu7/2gU0ViAtYbSOKTRdRXJ4YY=
X-Received: by 2002:a05:690c:4c11:b0:702:5689:356e with SMTP id
 00721157ae682-703e1546003mr46207307b3.12.1743763029893; Fri, 04 Apr 2025
 03:37:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org> <20250403-dt-cpu-schema-v1-18-076be7171a85@kernel.org>
In-Reply-To: <20250403-dt-cpu-schema-v1-18-076be7171a85@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 4 Apr 2025 12:36:33 +0200
X-Gm-Features: AQ5f1JqCiMQtdQdQn1tCIXwltI0szojsJGdKxwputYjFQK19pJwwJrC7p_ihypo
Message-ID: <CAPDyKFrFRrPVJ_t0JrAE1VTbS02hwr=L-EHtqb7CQiWzB1MnQg@mail.gmail.com>
Subject: Re: [PATCH 18/19] dt-bindings: arm/cpus: Add power-domains constraints
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, 
	Sudeep Holla <sudeep.holla@arm.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Viresh Kumar <vireshk@kernel.org>, 
	Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com, 
	Conor Dooley <conor@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Claudiu Beznea <claudiu.beznea@tuxon.dev>, Steen Hegelund <Steen.Hegelund@microchip.com>, 
	Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-mips@vger.kernel.org, 
	imx@lists.linux.dev, linux-rockchip@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 4 Apr 2025 at 05:06, Rob Herring (Arm) <robh@kernel.org> wrote:
>
> The "power-domains" and "power-domains-names" properties are missing any
> constraints. Add the constraints and drop the generic descriptions.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/arm/cpus.yaml | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
> index 6f74ebfd38df..5bd5822db8af 100644
> --- a/Documentation/devicetree/bindings/arm/cpus.yaml
> +++ b/Documentation/devicetree/bindings/arm/cpus.yaml
> @@ -313,19 +313,15 @@ properties:
>      maxItems: 1
>
>    power-domains:
> -    description:
> -      List of phandles and PM domain specifiers, as defined by bindings of the
> -      PM domain provider (see also ../power_domain.txt).
> +    maxItems: 1

There are more than one in some cases. The most is probably three, I think.

>
>    power-domain-names:
>      description:
> -      A list of power domain name strings sorted in the same order as the
> -      power-domains property.
> -
>        For PSCI based platforms, the name corresponding to the index of the PSCI
>        PM domain provider, must be "psci". For SCMI based platforms, the name
>        corresponding to the index of an SCMI performance domain provider, must be
>        "perf".
> +    enum: [ psci, perf, cpr ]
>
>    resets:
>      maxItems: 1
>
> --
> 2.47.2
>
>

Other than above, feel free to add:

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

