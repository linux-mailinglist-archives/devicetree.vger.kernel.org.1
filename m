Return-Path: <devicetree+bounces-65616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7068BF308
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 02:04:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11AB6281686
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 00:04:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAEB085935;
	Tue,  7 May 2024 23:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="E3SO/rAm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2962F8563D
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 23:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715124941; cv=none; b=ZN9Z3QEvZbu5tivtEXWOY8VpjYhSNgfTJ38BMn48nvUGZ7ixclMRh/AQb/awMHmMrIT1JW9ImNwAHYTSk5k9x5aIJerY5xeDaRMSyCaDJfzfaUzFnhBJF6ilqebLfof16Wz+1IcMEaMagqcjy1sFYYAdv7dwc5Q41PSyxDn9R6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715124941; c=relaxed/simple;
	bh=Li0X4iqoRtM4qps2P21m1AAYS3O31kVrWcT2DZZF9Uo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tpVY+M55p9sYDpI58aWOEDN9aMN1EZTLudYaBz/ravYHs276EoNB9yyDkP4fXupU1nGPco2yPRnZT3EGsTi1mGlq6h7/XDoNi0OHoOdNWwo7Pkue6f+5EIP1ViAlUZW+Y56bfSHQ5K6LKQF6y753fSfU1O/d1y+4iV6fYTrgleQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=E3SO/rAm; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3c96871b854so1857272b6e.0
        for <devicetree@vger.kernel.org>; Tue, 07 May 2024 16:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715124938; x=1715729738; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mqTzibYiVMH3+7a4PfBn8xbaOrudxt3kbfsLVjNZMAo=;
        b=E3SO/rAmGuugm692GhdLVoTxGv1jlAr0664wJ79zhKxH/OE7yoCTjNANVIbE39To3V
         w3Pdvl/4IqzWHmIaDcO3SnxDzMRdsu025isNs/+TiCV2dF8MvvXJvyP39mXUJSvmUgQh
         mRjbds3Yo8ZGYg3VQIklHS86RXvl3i5fZGIyE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715124938; x=1715729738;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mqTzibYiVMH3+7a4PfBn8xbaOrudxt3kbfsLVjNZMAo=;
        b=OX6T/a42of7hydpBHpt6i5EzPP71kTrXWZsq5vbql23fl+9HzNc9XKbAowYeFxl5B+
         Bef1FkI+wRIulWiB2AkK+rLcb0iJqfkGizag+qXCeoMK0tqh6StYwcJFmEddSSOKyYZh
         +f3c/skt0c5G57AXUsOL9klsIackzmiApjNrSnHG9NG/y+ZCtr9ToQN6xGwoZUSxlwfx
         GxH4UBMeYKpKJOw4XmSw9HXuK25wPNUfSb0GT7HbPC9IhbUYGcHyzQRE8RKyoe3szHf2
         gl2FGv/Ef36f27DKz9U3fXRfentU86cZORAYXO++J5wvxc4O2g8+ScPjkR1rR/F8JfJG
         IPJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVMhR16+WLPjVKb+ttnETCAYKz4P6IsbUqDslvIFG/tXDw4QTmHTRyaEv3I0PSG9Sbl3KniMqUNC68wNBCTTorUoSJHWChttMVrkg==
X-Gm-Message-State: AOJu0YwYImQOYyaZ2Pskptv0wcIwrPMrEcV86dVBd+Is2zG2BQA8hY9G
	8sz7pCFo/qIq0lRZtmgjePDUf8ZsmO1IwF/9yySsZPkgv+ZnrSg7x0HgX3cEFsyV+Nkx5XZoCtE
	=
X-Google-Smtp-Source: AGHT+IG3C9EFjAH+orBBWiJ5SJ0lzzfFCY8nbKasNI+BRvQ9CsWE8E2I+Pg9xmhaW6ppRYCyvcxShQ==
X-Received: by 2002:a54:4889:0:b0:3c9:6915:7f39 with SMTP id 5614622812f47-3c9852cfcf3mr1179985b6e.25.1715124938259;
        Tue, 07 May 2024 16:35:38 -0700 (PDT)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com. [209.85.160.174])
        by smtp.gmail.com with ESMTPSA id mh15-20020a056214564f00b0069942e76d99sm5056841qvb.48.2024.05.07.16.35.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 May 2024 16:35:37 -0700 (PDT)
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-43d361a2124so150141cf.0
        for <devicetree@vger.kernel.org>; Tue, 07 May 2024 16:35:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVifrOMZ73g7barI3rPinHEnNY+o3sKq09k3bW8J1Hw5UCfbVyX0TPJpbgQ7A5zldKICUhW6U+5i7y4oMeIf+Chr0tpokYK0iDq/w==
X-Received: by 2002:a05:622a:191b:b0:43a:c166:4d7e with SMTP id
 d75a77b69052e-43dc3180484mr1013991cf.28.1715124936576; Tue, 07 May 2024
 16:35:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240507135234.1356855-1-yangcong5@huaqin.corp-partner.google.com>
 <20240507135234.1356855-3-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20240507135234.1356855-3-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 7 May 2024 16:35:20 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wj5WKcVbNGHQ_BbZa_fsVJkpYb2C8TE8bjhvJvx+N_hw@mail.gmail.com>
Message-ID: <CAD=FV=Wj5WKcVbNGHQ_BbZa_fsVJkpYb2C8TE8bjhvJvx+N_hw@mail.gmail.com>
Subject: Re: [PATCH v4 2/7] drm/panel: himax-hx83102: Break out as separate driver
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	linus.walleij@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, airlied@gmail.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, May 7, 2024 at 6:53=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> +static int hx83102_enable_extended_cmds(struct hx83102 *ctx, bool enable=
)
> +{
> +       struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D ctx->dsi };
> +
> +       if (enable)
> +               mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETEXTC, 0=
x83, 0x10, 0x21, 0x55, 0x00);
> +       else
> +               mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETEXTC, 0=
x00, 0x00, 0x00);
> +
> +       return 0;

You're throwing away the error codes returned by the
mipi_dsi_dcs_write_seq_multi(), which you shouldn't do. You have two
options:

Option #1: return dsi_ctx.accum_err here and then check the return
value in callers.

Option #2: instead of having this function take "struct hx83102 *ctx",
just have it take "struct mipi_dsi_multi_context *dsi_ctx". Then it
can return void and everything will be fine.

I'd prefer option #2 but either is OK w/ me.


> +static int starry_himax83102_j02_init(struct hx83102 *ctx)
> +{
> +       struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D ctx->dsi };
> +
> +       hx83102_enable_extended_cmds(ctx, true);
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPOWER, 0x2c, 0x=
b5, 0xb5, 0x31, 0xf1,
> +                                        0x31, 0xd7, 0x2f, 0x36, 0x36, 0x=
36, 0x36, 0x1a, 0x8b, 0x11,
> +                                        0x65, 0x00, 0x88, 0xfa, 0xff, 0x=
ff, 0x8f, 0xff, 0x08, 0x74,
> +                                        0x33);

The indentation is still off here. You have 5 tabs followed by a
space. To make things line up with the opening brace I think it should
be 4 tabs followed by 5 spaces.


> +static int hx83102_enable(struct drm_panel *panel)
> +{
> +       struct hx83102 *ctx =3D panel_to_hx83102(panel);
> +       struct mipi_dsi_device *dsi =3D ctx->dsi;
> +       struct device *dev =3D &dsi->dev;
> +       int ret;
> +
> +       ret =3D ctx->desc->init(ctx);
> +       if (ret)
> +               return ret;

You're still changing behavior here. In the old boe-tv101wum-nl6
driver the init() function was invoked at the end of prepare(). Now
you've got it at the beginning of enable(). If this change is
important it should be in a separate commit and explained.


> +       ret =3D mipi_dsi_dcs_exit_sleep_mode(dsi);
> +       if (ret) {
> +               dev_err(dev, "Failed to exit sleep mode: %d\n", ret);
> +               return ret;
> +       }
> +
> +       msleep(120);
> +
> +       ret =3D mipi_dsi_dcs_set_display_on(dsi);
> +       if (ret) {
> +               dev_err(dev, "Failed to turn on the display: %d\n", ret);
> +       }

The old boe-tv101wum-nl6 driver didn't call
mipi_dsi_dcs_exit_sleep_mode() nor mipi_dsi_dcs_set_display_on() in
its enable routine, did it? If this change is important please put it
in a separate change and justify it.


-Doug

