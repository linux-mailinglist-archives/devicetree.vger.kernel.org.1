Return-Path: <devicetree+bounces-249758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A2704CDEBB7
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 14:22:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D418A300CB80
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 13:21:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AE91322C73;
	Fri, 26 Dec 2025 13:21:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUCwRDLa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024D8322B9B
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 13:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766755310; cv=none; b=Q0D26FXmAuFUmiYhlPqHw0xNPMYnllQBRCQQYFLL0kg11Ev2ZJCqfRWNVEgAxgwI+odUNgED5fkwhusbnipT5NrJNOAp4zDGStUZdwZ4yq239VWMa4nXrWpFC1uoRm63aHMNhp7IeussugBGbg8hi1SkA6NjOLMUhhlb1SQnfeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766755310; c=relaxed/simple;
	bh=CrZiCh6Qx1PLXStQe7FVbV1LjrxgL24MOhR4EARJMMk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ezOOHE4rPn5A6VcWD1ZyhHr+2ut9XnlojgSU9z1Fv4MJZyMNhjWzKQBP+twxodZ1TVWQTW/SXKFonMPVWNNHcWmQ6dei3SapU7FOnlA53RmgFSUXcwNZEjCSfkwQqN7nmoO4jaf2rQpuQap+m/R8ck/hFXQ/1SJti02yMRbNCsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUCwRDLa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C09BC19422
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 13:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766755309;
	bh=CrZiCh6Qx1PLXStQe7FVbV1LjrxgL24MOhR4EARJMMk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=gUCwRDLaLqeFk6ht+v4J5U5onXKzzDgkS9MKFoXeJmuOr5s3448+IGnUqyzZeEl96
	 vD4x/HtNlH+RmzFDeQsn5b4Vr3/gL8N6QeV7cJeOxJjYan1Ytmnp4uGvLaluMu53If
	 O67nzFIM6imfdkHKqNCdzkrTGMeozh+u2q3s98aG0U4N2SXfV8b2cV9lCFQjRBbRxd
	 QAR7opkuW3feoTbIUffZwnGYN6m3MFrDXys9OYh5xXbICJCJTchCBtMdZEQQ9HwzPs
	 zSxQ3mRaJePN4Lm5XCOi4Pv+zC6+LJH0TBKdev9jFf4h2sxjgh2AjLmO+gBTN6UIfy
	 92r4xRUEQzcfg==
Received: by mail-yx1-f43.google.com with SMTP id 956f58d0204a3-6468f0d5b1cso2801299d50.1
        for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 05:21:49 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWiTqOywZUWL9bHMfXprVtb3p649F8DSGwtVaVvW/vSQ1frXNCaE6nNSnjRX6GIO3+JtbFIReLx8UxJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxR6dUlQaGbC8G1cTYsbfzGZEucLR2kgmOxE2gelD4tHvx525+1
	RxTG7nAPNeK1CykhGcK+DpCaHHUaSkvvfVoKRT1n+37foOWYQuCBo7qiLJ2JpRCPfO6eud3Lv6x
	1nSVaxUmq25TvJfuupQWWUdMLtBkO7yc=
X-Google-Smtp-Source: AGHT+IGSXcBHAPTnf5WqADdIUTP+vrIM0+bE71FaF9fJ/6rhEbgVxfIl2zpD3lIjfwmb7HmIf3DdifF7ubn4H7pQx2M=
X-Received: by 2002:a53:bc8f:0:b0:646:5019:f3ee with SMTP id
 956f58d0204a3-6466a8a55fbmr15145437d50.5.1766755308703; Fri, 26 Dec 2025
 05:21:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251222-drm-panels-sony-v2-0-82a87465d163@somainline.org> <20251222-drm-panels-sony-v2-5-82a87465d163@somainline.org>
In-Reply-To: <20251222-drm-panels-sony-v2-5-82a87465d163@somainline.org>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 26 Dec 2025 14:21:37 +0100
X-Gmail-Original-Message-ID: <CAD++jL=X1hX6kmodcOC3+x-w6t+Vg6XTaCMab-Dn=vHAeD82Gw@mail.gmail.com>
X-Gm-Features: AQt7F2oh_CqG-X0L5nsdSqPBi7IqUVPETUm-9P-fOEyHQMOak9rJaCdjfz9bFRU
Message-ID: <CAD++jL=X1hX6kmodcOC3+x-w6t+Vg6XTaCMab-Dn=vHAeD82Gw@mail.gmail.com>
Subject: Re: [PATCH v2 05/11] drm/panel: Add panel driver for Samsung SOFEF01 DDIC
To: Marijn Suijten <marijn.suijten@somainline.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Sam Ravnborg <sam@ravnborg.org>, 
	David Airlie <airlied@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, 
	Casey Connolly <casey.connolly@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Simona Vetter <simona.vetter@ffwll.ch>, 
	~postmarketos/upstreaming@lists.sr.ht, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>, 
	Martin Botka <martin.botka@somainline.org>, Jami Kettunen <jami.kettunen@somainline.org>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Konrad Dybcio <konradybcio@kernel.org>, 
	Dmitry Baryshkov <lumag@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marijn,

thanks for your patch!

On Mon, Dec 22, 2025 at 12:32=E2=80=AFAM Marijn Suijten
<marijn.suijten@somainline.org> wrote:

> This Samsung SOFEF01-M Display-Driver-IC is used to drive 1080x2520@60Hz
> command-mode DSI panels found in many Sony phones:
> - Sony Xperia 5 (kumano bahamut): amb609tc01
> - Sony Xperia 10 II (seine pdx201): ams597ut01
> - Sony Xperia 10 III (lena pdx213): ams597ut04
> - Sony Xperia 10 IV (murray pdx225): ams597ut05
> - Sony Xperia 10 V (zambezi pdx235): ams605dk01
> - Sony Xperia 10 VI (columbia pdx246): ams605dk01
>
> The amb609tc01 and ams605dk01 come in slightly larger at 6.1" while the
> others are 6.0".
>
> A "fake" porch calculation is included to artificially bump the clock
> rate necessary to account for "transfer overhead" (DSI packet headers)
> since this is missing from the MSM DSI host driver; porches aren't
> otherwise used on command-mode panels.
>
> Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>

Excellent work with abstracting all the sofef01-m panels!

Only nitpicks follow:

> +       if (ctx->panel_type =3D=3D PANEL_TYPE_TC01 ||
> +           ctx->panel_type =3D=3D PANEL_TYPE_UT01 ||
> +           ctx->panel_type =3D=3D PANEL_TYPE_UT04) {
> +               mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x5a, 0x5a);

The sofef00 driver tell us exactly what this sequence is:

#define sofef00_test_key_on_lvl2(ctx) \
        mipi_dsi_dcs_write_seq_multi(ctx, 0xf0, 0x5a, 0x5a)
#define sofef00_test_key_off_lvl2(ctx) \
        mipi_dsi_dcs_write_seq_multi(ctx, 0xf0, 0xa5, 0xa5)

I would just rename these two to sofef01_test_key_on/off_lvl2()
and use the same helpers in this driver to follow the sofef00 pattern.

> +       if (ctx->panel_type =3D=3D PANEL_TYPE_UT04) {
> +               mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x5a, 0x5a);

Like here

> +               mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfc, 0x5a, 0x5a);
> +               mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE1, 0x00, 0x00, =
0x02, 0x00, 0x1C, 0x1C,
> +                                            0x00, 0x00, 0x20, 0x00, 0x00=
, 0x01, 0x19);
> +               mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfc, 0xa5, 0xa5);
> +               mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0xa5, 0xa5);

And here.

> +       if (ctx->panel_type =3D=3D PANEL_TYPE_UT05 || ctx->panel_type =3D=
=3D PANEL_TYPE_DK01) {
> +               mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x5a, 0x5a);

And here.

> +               mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb0, 0x27, 0xf2);
> +               mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf2, 0x80);
> +               mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf7, 0x07);
> +               mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0xa5, 0xa5);

And here.

> +               mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x5a, 0x5a);

And here.

> +               /* Downstream: ERR_FG Enable */
> +               mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe5, 0x15);
> +               if (ctx->panel_type =3D=3D PANEL_TYPE_DK01)
> +                       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xed, 0x0f=
, 0x4c, 0x20);
> +               else
> +                       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xed, 0x04=
, 0x4c, 0x20);
> +               mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0xa5, 0xa5);

And here.

> +
> +               mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x5a, 0x5a);

And here.

> +               mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb0, 0x02, 0x8f);
> +
> +               if (ctx->panel_type =3D=3D PANEL_TYPE_DK01)
> +                       /* Downstream Xperia 10 V: FLM1,FLM2 On */
> +                       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x8f, 0x27=
, 0x25);
> +               else if (0) /* TODO: Both use the DK01 panel */
> +                       /* Downstream Xperia 10 VI: FLM1 On, FLM2 On */
> +                       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x8f, 0x27=
, 0x27);
> +               else
> +                       /* Downsteam: FLM1 on, FLM2 off */
> +                       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x8f, 0x27=
, 0x05);
> +
> +               mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0xa5, 0xa5);

And here.
(etc).

+/- these changes:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

