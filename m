Return-Path: <devicetree+bounces-141177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B05A1DB5A
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 18:34:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C21BB1884192
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 17:34:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D67518B476;
	Mon, 27 Jan 2025 17:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="daa5LANB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505621662EF
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 17:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737999230; cv=none; b=Fs86xq3e4IOjvyRzTb+IiNL5FndMrVxr/jIS6Zy5hjWJIth3JNTAuobfgPSWvJJd28hv2DFQ/MRH7xDcsswA7fhttvBH1q18vbW4MpCdKOCM65rPoc0qSGMs/cdbpW5mMSZSduaWtZg+fdYy05pH2G/3udUWyqOUKtcs8NgVqpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737999230; c=relaxed/simple;
	bh=yH8B3vGn7Jg4vExpowlmr+t8L8e0q0jCWUzjRJ9QQQA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=c/gzjpX+JqsfhYZ7g5d1/fK2LEZznUM1KQ/nUWAh+/920fo2yB6dI3Xh8gmUA+z6H7zW7K1UzHR5MisjshlHdNBt8Wc1UcRWnl99HubHook51zSc03w56jn/KLkh7g3/kPdkqW4cU62aTU8EXe/w9i4zggk1DZsXgB+6uAnW4X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=daa5LANB; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53e384e3481so4539850e87.2
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 09:33:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1737999223; x=1738604023; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2q28uO9Sl+8BmaEfGyy+z8Preej4d/ejPXFkJVl2+6s=;
        b=daa5LANBgI27EcomiHCXdhJqK/Tt2f6UQ+au8lJ1rSlWUBnRt1Idd2iMkYQTJBtyUT
         LWPw2PHJbPAyQCud/dU/ew9hFa6HbaUD7iaQRd680MQaV7I8uK3ovxZ6VCVFVQDwwq44
         TQeO1kPxFbVX78ZCxtwsrhkhgTG9S+uKTil4Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737999223; x=1738604023;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2q28uO9Sl+8BmaEfGyy+z8Preej4d/ejPXFkJVl2+6s=;
        b=Gy7MaTAeFlh9IsDM9PwUEiR9DgZqhOhoVKvzwt6bDUdUaawC3BuX0gce2jqhYnPXxu
         whdMh4wfND0cNxN2ytoRRnT6zq3VPgbxdVHYL/BuZnt/xqCWFhJY/YEQQx2TaDP4az3F
         KTcrQlr++qUwJG6wz7YdyatjKyvAbHb5pIiXYAjlk+y0L7nt6C4/zS2zu2v5iy2VrA2H
         EUSatvyqAb5zLlVur48fAA7u0xBxoKqIipfuPgwf+ZNPltlOMc7C22C7L1MQ6aNQnZcd
         xgmDfn6DiYXBsfKpKlSQAnoKBRKkcU9XkNaORNUpwwN66H89hP1iDPFAD1850mSgovG4
         ngow==
X-Forwarded-Encrypted: i=1; AJvYcCVZ13r2DgWkFpdx1m2CPcEYy5cjCmZi5sZuGkNVskUkuUBUZuxEiPNZyk2U7t7VomdsAcSCsjg7i6pY@vger.kernel.org
X-Gm-Message-State: AOJu0YyXZGOCUncb7kUL07Sx9n/Rf4jgdyDQtUWRlPOYqfJ6FZ+VG/No
	3QoqTnD0U0INeVEE4Q+L6ozwh4/7z/8oQFG+DEQ7oAqQMco8ZjrdRYyjRhNNUNOSLZj8uFgeLsb
	guw==
X-Gm-Gg: ASbGncu+Vp6nKyVhLIdxWKNGcPOAetfmUMEgnC1JyNY42XWifXpJOyWW5/8hnEBYkoS
	Fb9rv1G6XCbILjzXjPnM/iQvv0DqzOpZDEEEgtWBOiBlGM01zjGyANKN6BVvpptMy8yeG5Xu7DV
	vrQA232cj36PQfI9Nw6EdTLyA4VGxjyhm5BmKDl4DYuWlddSBb4XpAlVrI5maUrroOMRv2rdsJG
	cz4nDvVZnoNY8RbRkjNDkyreUBde7lBC3C8ENlrWk/JqNwOXZGFp/XSIaEdIrP4Lz4WOCKyyJBQ
	77ZMngcZmttAElPlZc8JeqFyXNCLaJlm88583apABlkMgHY6
X-Google-Smtp-Source: AGHT+IHsa+PFp3AUs+Y/f7mxkaF1gdV7Vrgmp9TATKGGewjWw57jQEiZLFMohPeTgEh2dSKnz58JJw==
X-Received: by 2002:a05:6512:230f:b0:540:1a0c:9bac with SMTP id 2adb3069b0e04-5439c267480mr15570231e87.34.1737999223364;
        Mon, 27 Jan 2025 09:33:43 -0800 (PST)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com. [209.85.208.171])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c83816bdsm1358358e87.232.2025.01.27.09.33.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 09:33:38 -0800 (PST)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-3043e84c687so40766171fa.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 09:33:30 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUU5fgE68cdQ/j2yn46MJzXRiVab7g/Dvqdx4RVmVBMKuuJiE0dL4sdh5YCT8GXoontEer/FND6kmO4@vger.kernel.org
X-Received: by 2002:a2e:a4c2:0:b0:302:29a5:6e21 with SMTP id
 38308e7fff4ca-3072ca5bb11mr113388411fa.3.1737999210250; Mon, 27 Jan 2025
 09:33:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250127014605.1862287-1-yelangyan@huaqin.corp-partner.google.com>
 <20250127014605.1862287-3-yelangyan@huaqin.corp-partner.google.com>
In-Reply-To: <20250127014605.1862287-3-yelangyan@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 27 Jan 2025 09:33:18 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VBYbY6x0xmDAbXPD7yfyJm5XLqdHBWC-8RcyVCkXasxA@mail.gmail.com>
X-Gm-Features: AWEUYZmx-PxOZI0vw4Etv8fiXebC9FIHrAauGLI-1uDnCcUL38QZHwIOI1ep6VI
Message-ID: <CAD=FV=VBYbY6x0xmDAbXPD7yfyJm5XLqdHBWC-8RcyVCkXasxA@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] drm/panel: panel-himax-hx83102: support for
 csot-pna957qt1-1 MIPI-DSI panel
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Jan 26, 2025 at 5:46=E2=80=AFPM Langyan Ye
<yelangyan@huaqin.corp-partner.google.com> wrote:
>
> The csot-pna957qt1-1 is a 10.95" TFT panel. The MIPI controller on this
> panel is the same as the other panels here, so add this panel to this
> driver. From the datasheet, MIPI needs to keep the LP11 state before
> the lcm_reset pin is pulled high, so increase lp11_before_reset flag.

Drop the part about LP11. You must have copied it from an earlier
panel where that flag still made sense. It doesn't make sense to talk
about given the current state of the driver.


> @@ -396,6 +397,103 @@ static int ivo_t109nw41_init(struct hx83102 *ctx)
>         return dsi_ctx.accum_err;
>  };
>
> +static int csot_pna957qt1_1_init(struct hx83102 *ctx)
> +{

nit: can you keep the functions sorted to match the bindings? So this
function would be in between the BOE init function and the IVO init
function?


> @@ -462,6 +560,28 @@ static const struct hx83102_panel_desc ivo_t109nw41_=
desc =3D {
>         .init =3D ivo_t109nw41_init,
>  };
>
> +static const struct drm_display_mode csot_pna957qt1_1_default_mode =3D {
> +       .clock =3D 177958,

nit: similarly, sort the default_mode / desc between the BOE one and
the IVO one.


Other than small nits, this looks pretty nice to me and I'd expect to
give a Reviewed-by tag on v2 unless something major changes.


-Doug

