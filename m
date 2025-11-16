Return-Path: <devicetree+bounces-239122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D04AAC61694
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 15:11:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A41C3B30C7
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 14:11:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FF692D8771;
	Sun, 16 Nov 2025 14:11:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F5A29BD91
	for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 14:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763302260; cv=none; b=Jx2GDv2f4xC5LB6lbQqxtFyEa/OveFJWK6hsnEZqfYfP9w8r8JOC+vZV+PKUygTjhTAl+/QFXNTXbfAy6Rm2htbFDlb4Xm079GPXLyah5xCkzQ1BR1J9J26/tkoD6dyqxh2yYpWYWIVfsHTC41byJP+4y5wrnYjy0IQFjGkH494=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763302260; c=relaxed/simple;
	bh=6z2t3fnQ7xiPY0tvUjdQLsEvcN5HAqfOnKKPIwC09Ko=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Zw3J3U3B3whegK20D/sT/4xLz37TSblS2oT5AtfsXsb53nHXa4RYsqhU9Gw5DrYTjtzVC1CmZ0jPmp1vPQmaovZ1DsyDdi2/ouqauQedNVWySj2j80RQLUWuZZBYDUW7qy4WGeuZ4tlLr8Ul9DXCY22pe+vvAeDviaNpfM/J8AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-37a2dcc52aeso31927241fa.0
        for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 06:10:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763302257; x=1763907057;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1P5GUNQOH0XPCOyCgZr+gwsMYMYyLhVYsxtxGdPiZx4=;
        b=KtUKebtkTf9hRLIUdIGXhjQ4vCIRB9O56uK1wF4O6rCT+q8TUkjg4ZM2tSrsXHU9fW
         5I//5nQE3Ky/voPEAKH4wkXBbvZDLHWWprC2xjm4ZktSl2+th1V2kOtHP2+zinP/DCFj
         POCrsYbYB6fnW5CPuWxB51io+1mwMfsqcvu36FjhTDyCkyLfYGLoLJV5gChg8CfacQhE
         0OwLbtmo9sEghxUP2V8mcl/IUX8trM5Kl6TC+gAHJt37ed9wBqpLwKIxcu994VSXcFR4
         jamYEaf2AR2Sns5ye9jsYXP6Djs8UAHLXDO56EkUUABlfbHaUghrzxvdECejTidwW1v5
         QxEw==
X-Forwarded-Encrypted: i=1; AJvYcCX1kaJXc5eXC6KeHj4meWxqkIfXbMGaUQVcxwHIhggkBzq5wCxWWrE5yu0kuHClRQY7wwOO98SIve7W@vger.kernel.org
X-Gm-Message-State: AOJu0YzXSWgz3zk3ldMhiFkfll139vqlpuvMXO5g1zbgBOxO9WZCtQz7
	Wc9kXB61p05xu5jWyfHL0ffVbqcVw1/LzgoV7JbpwfdPTEjFFCm3grSfyOYgFFmkk2I=
X-Gm-Gg: ASbGnctosQLQ6g/qCF5q/cdNY8ScwqWtfEDcexwLKzZVAcM+0ScjvtnenudZ+q0QRAI
	9kXrBrDDPbBdy4WdTsOcjALAl1OIaoXCPc9ynwAFScjB70M7OUD3c/lvXjvYQXlPw7SIMm+SdNR
	1vHsPMEHZjt/2f2BRp6qd0GEQs81ercFvwELXSOPj6tLxqbHt6KbrhIg+Gy7OlpwqvcGcCSgp2O
	4U5nfH5tzyAEuuw4jq4vSsbTTmJj89tw/7n7LWcghTAHYBoDt0+AWgLhZfI5whszPwLu3223YFK
	S4y85swMQovV4Dwp3CskIE1gnoeHI7QKAcFNi4DAGLFAkkREbb8/kNOvzDA6CE+GeYnE064rvoN
	PFmEMyp8gg2ZQcv7uvPkhTZpXnP6zkL85NShKePZcamLohv1KWacwqYdL+UhbyxIfbAuHoxAF8h
	ZV0KCLbcusAEZN8SUnjgXUQc0LgxrJc5jUMWj1SEo=
X-Google-Smtp-Source: AGHT+IGheF8lyLszWaxLrX2WO1hwyuVBElURgQCwOr45CEZYSSsA+j37qEYP8y78haENS+MIjmmSVw==
X-Received: by 2002:a2e:3005:0:b0:36e:ca93:62df with SMTP id 38308e7fff4ca-37babb6c707mr18119001fa.3.1763302256787;
        Sun, 16 Nov 2025 06:10:56 -0800 (PST)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com. [209.85.167.45])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37b9ce15251sm22102011fa.16.2025.11.16.06.10.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Nov 2025 06:10:56 -0800 (PST)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-59584301f0cso3464688e87.0
        for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 06:10:56 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWD5xNm1LnLX1dewth/kqLWAJpfdhMnHxOkqpkq7B1bOQAlkyP+dvJIkrT9YHDB079DzWN09+gYIc7p@vger.kernel.org
X-Received: by 2002:a05:651c:440f:10b0:37b:9e27:89f with SMTP id
 38308e7fff4ca-37babd73323mr19895421fa.37.1763301811739; Sun, 16 Nov 2025
 06:03:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250221161751.1278049-1-kuba@szczodrzynski.pl> <20251116134609.447043-1-kuba@szczodrzynski.pl>
In-Reply-To: <20251116134609.447043-1-kuba@szczodrzynski.pl>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Sun, 16 Nov 2025 22:03:18 +0800
X-Gmail-Original-Message-ID: <CAGb2v67V01k8zj2r+Dd+JDEsH2LX2Jtx+CP=i8aQfX_JyFtLfg@mail.gmail.com>
X-Gm-Features: AWmQ_bnVpj5bkGX3ksszDMr19xhbiJNyazuPC_F2JRblaiVwkcXftIdoMcMBl8Q
Message-ID: <CAGb2v67V01k8zj2r+Dd+JDEsH2LX2Jtx+CP=i8aQfX_JyFtLfg@mail.gmail.com>
Subject: Re: [PATCH v3 0/6] drm/sun4i: Support LVDS on D1s/T113 combo D-PHY
To: =?UTF-8?Q?Kuba_Szczodrzy=C5=84ski?= <kuba@szczodrzynski.pl>
Cc: Maxime Ripard <mripard@kernel.org>, Samuel Holland <samuel@sholland.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, parthiban@linumiz.com, paulk@sys-base.io
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 16, 2025 at 9:46=E2=80=AFPM Kuba Szczodrzy=C5=84ski
<kuba@szczodrzynski.pl> wrote:
>
> [replying to v1 to keep the same series on Patchwork]

That is not the right way to do it.

If you reply to an old series, the tooling does not pickup the new version
as a separate series.

ChenYu

> Some Allwinner chips (notably the D1s/T113 and the A100) have a "combo
> MIPI DSI D-PHY" which is required when using single-link LVDS0. The same
> PD0..PD9 pins are used for either DSI or LVDS.
>
> Other than having to use the combo D-PHY, LVDS output is configured in
> the same way as on older chips.
>
> This series enables the sun6i MIPI D-PHY to also work in LVDS mode. It
> is then configured by the LCD TCON, which allows connecting a
> single-link LVDS display panel.
>
> Changes in v2/v3:
> - Applied code formatting changes from review comments
> - Changed "dphy" to "combo-phy"
> - Made the LVDS setup/teardown functions abort early in case of error
>   (adding a proper return value would require changes in several levels
>    of caller functions; perhaps could be done in a separate patch)
> - Added the PHY properties to DT bindings
> - Renamed lvds0_pins to lcd_lvds0_pins
> - Rebased on top of drm/misc/kernel/for-linux-next
> - Hopefully corrected the incomplete patch list of v2, which happened
>   due to an SMTP error
>
> Kuba Szczodrzy=C5=84ski (6):
>   phy: allwinner: phy-sun6i-mipi-dphy: Support LVDS in combo D-PHY
>   drm/sun4i: Support LVDS using MIPI DSI combo D-PHY
>   drm/sun4i: Enable LVDS output on sun20i D1s/T113
>   dt-bindings: display: sun4i: Add D1s/T113 combo D-PHY bindings
>   riscv: dts: allwinner: d1s-t113: Add D-PHY to TCON LCD0
>   riscv: dts: allwinner: d1s-t113: Add LVDS0 pins
>
>  .../display/allwinner,sun4i-a10-tcon.yaml     |  6 ++
>  .../boot/dts/allwinner/sunxi-d1s-t113.dtsi    | 11 +++
>  drivers/gpu/drm/sun4i/sun4i_tcon.c            | 50 +++++++++++++
>  drivers/gpu/drm/sun4i/sun4i_tcon.h            |  6 ++
>  drivers/phy/allwinner/phy-sun6i-mipi-dphy.c   | 70 ++++++++++++++++++-
>  5 files changed, 141 insertions(+), 2 deletions(-)
>
> --
> 2.25.1
>

