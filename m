Return-Path: <devicetree+bounces-140924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDAFA1C5F5
	for <lists+devicetree@lfdr.de>; Sun, 26 Jan 2025 01:45:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 598DF1887FAA
	for <lists+devicetree@lfdr.de>; Sun, 26 Jan 2025 00:45:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75E5525A645;
	Sun, 26 Jan 2025 00:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="D1vhyeA1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40ABB25A629
	for <devicetree@vger.kernel.org>; Sun, 26 Jan 2025 00:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737852316; cv=none; b=S1aRPn0qfRMS4+5k11qbXgUvWsAXzVRsLcpOMqsLSVMJ8e2IhhX9kxFVRzbf/FhhxKKrGmPzasz6aqAEFZjMQKdYOaFCuRX0lIUUEcgpTOmiOuZbAjAB5Q9nvsnzOXJuKd56WbyD3+TYRm4a+LqKlzq9zGtDw2W/4Z9EmHCxJM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737852316; c=relaxed/simple;
	bh=cRw38/X0cEniIxOQcPiT4srYhWSbp8afuf9WKKPRqFA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kyYreWSatgNwdshV2KrUfdlpxZMJ4Q2Mngxrm36RRi1hN25PrCI7Sa5MH2O04k9ov3+cZjnzFQZ8p7bQizDwqVqfnlD0aLngQtzw+lJ0cv6HvfPX87lFSINDBgBBZ78mixFq3yaiZfuJ4h3K9Nkr1yB/FCHEbSbMkJMeecYgPrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=D1vhyeA1; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-54020b0dcd2so5050858e87.1
        for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 16:45:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1737852307; x=1738457107; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e571IkY7EK87y3Sunky/t3TOpY/BAarwHBxbWfeNYyU=;
        b=D1vhyeA1tnNI6CBPYp2GZ8eKEzjJQJ9y5YM8Qg6pasbwlbQItHpiWmNMtltyIHkSra
         jdQevzOzJNI9cma0S+vD7X9QJcZiEGlW3cMcvhsHwxsKpQS+yDGV9MEZw2KA7vGA2eSq
         kn5WCw7BiZi0esFk8CShi0KGBqRq2HXTctBlo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737852307; x=1738457107;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e571IkY7EK87y3Sunky/t3TOpY/BAarwHBxbWfeNYyU=;
        b=ZlWWNK+8LeSkNTKbmOZzvzb0MaEyzx8LFRufTwZkR8AveshiznxKi6xHKnmNdvjXcn
         haQOKXxI5qMV+s38L9mML0qXsc1iRJiJ38Q2k8F0EHohSAnvLvgrlH/fByudrIzthFvL
         ye8RoKwOOpZQH9QkxQPeOpiSjadJFZtYoBYRycqOypBS2wBw22xws27Et7oRt/foePog
         wjedrlTdRJ/9a+0lQzllgCgLvL5EdEIZ2kizs1yzkyA2AmkheG3NiAl+IIExq4IB8wn+
         zaJs8gveO4jDzLZN/guuvlir8oT5BmLallWBqMJUcwDB30CFieTGCId3jGYJvaYhaJWw
         FN+w==
X-Forwarded-Encrypted: i=1; AJvYcCWdeQJA7srd6cXORPkzl74IYRd3tCiBo+vchvsiV/yYzHaC5pWlDfrOjLW+vtJ9ZfLtA2J0BjTy4L+s@vger.kernel.org
X-Gm-Message-State: AOJu0YxaY5W9tHwrXf4VxO6EER1kVTmW6RVNhhFl5Z4tC86heXIQlSe6
	7PyXDPdgSikI03+yt0leN0w4cXh6f2FwX9QJZ75/999A/8r72h0K7W7rD+8iBs95PiY/97LbyCA
	MOA==
X-Gm-Gg: ASbGncsK//+/pa9OP9kNZ1tc38SXF6OXQmekMOFZB4yueQ7ykVYKcT2FMP4cso92/M5
	87apTkWS4KWXn8Sg8KIRKG/nP62R6mo1HVqR7N9y9P0DO8TY+bjQNtvMclEvhkpWnR3Wu/Qs3Nq
	PfMVd5IJOsHVyhJ/hqkoyR/4O3bkgexkRRDcLxviYJRHFEC6ZdwUH+cW4Zqaq+VnYtawJONvMKb
	KI2jhucYCxFuTrNa49kkcnVQz5ZvQiUuJUNX0d+8fuOHiI6kOEAJrT9q7wUXXkyHNnGgfPlrox9
	Tnf9NFRXgY+SUHpphYUSOmu+r9nvPT5Sv68P3tpWqnsI5r5U
X-Google-Smtp-Source: AGHT+IH7l2+RGP+D19FYJpZbiOArQ8I1AhakAEktDNaa8p1iVVGYLdg2h6OSdrq4nBOt3GCKXbCW8w==
X-Received: by 2002:ac2:46e3:0:b0:542:8d92:158a with SMTP id 2adb3069b0e04-543c2207854mr3615240e87.10.1737852307177;
        Sat, 25 Jan 2025 16:45:07 -0800 (PST)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com. [209.85.208.182])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c8381992sm754183e87.254.2025.01.25.16.45.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Jan 2025 16:45:04 -0800 (PST)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-30219437e63so45260241fa.1
        for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 16:45:04 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUC6xJqEdP9BObE8uW6QJ/azXU/oCm4rMkhU5X/fr+dbG1ZMXfd+FEfBepPU08Ms+r6RaZtQ11u6xEC@vger.kernel.org
X-Received: by 2002:a05:651c:205c:b0:300:17a3:7af9 with SMTP id
 38308e7fff4ca-30761c517bdmr37753901fa.19.1737852303712; Sat, 25 Jan 2025
 16:45:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-13-damon.ding@rock-chips.com> <rwn3g7tqgjnc525cjqtivgfgedhooiayn5nujng7bdzazgqhle@wfpuvoyr2tii>
 <CAD=FV=WKsA9fcq-LzGcYmgbMuMLUp5SMggpzBzZnvd3sxGf9BQ@mail.gmail.com> <7ef0454b-fddd-44c0-be4a-c81c443f08f6@rock-chips.com>
In-Reply-To: <7ef0454b-fddd-44c0-be4a-c81c443f08f6@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Sat, 25 Jan 2025 16:44:51 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XZOfqcV51Sog3CNBe0mengYyX5cRbftdDY0e73mZNWQA@mail.gmail.com>
X-Gm-Features: AWEUYZlT8dd77sVC0SZMqkozj-k92yxOjbM1lGN9IVzDz0DDUqySb4xOYDl6kKM
Message-ID: <CAD=FV=XZOfqcV51Sog3CNBe0mengYyX5cRbftdDY0e73mZNWQA@mail.gmail.com>
Subject: Re: [PATCH v6 12/14] drm/edp-panel: Add LG Display panel model LP079QX1-SP0V
To: Damon Ding <damon.ding@rock-chips.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, heiko@sntech.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, 
	l.stach@pengutronix.de, andy.yan@rock-chips.com, hjc@rock-chips.com, 
	algea.cao@rock-chips.com, kever.yang@rock-chips.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Jan 24, 2025 at 8:18=E2=80=AFPM Damon Ding <damon.ding@rock-chips.c=
om> wrote:
>
> >>>   #define EDP_PANEL_ENTRY(vend_chr_0, vend_chr_1, vend_chr_2, product=
_id, _delay, _name) \
> >>>   { \
> >>>        .ident =3D { \
> >>> @@ -1955,6 +1961,8 @@ static const struct edp_panel_entry edp_panels[=
] =3D {
> >>>        EDP_PANEL_ENTRY('C', 'S', 'W', 0x1100, &delay_200_500_e80_d50,=
 "MNB601LS1-1"),
> >>>        EDP_PANEL_ENTRY('C', 'S', 'W', 0x1104, &delay_200_500_e50, "MN=
B601LS1-4"),
> >>>
> >>> +     EDP_PANEL_ENTRY('E', 'T', 'C', 0x0000, &delay_50_500_e200, "LP0=
79QX1-SP0V"),
> >
> > I don't love that the ID is 0x0000. That makes me nervous that the
> > panel vendor isn't setting the ID properly. ...but at least the string
> > matches in the EDID so hopefully that will be enough to uniquely
> > identify things.
> >
> >
>
> The ID "0x0000" makes me nervous too, but the EDID obtained from this
> panel indeed show it, which is quite surprising. May I still set it to
> "0x0000" as it really is?

Yeah, keep it as 0x0000. Since the panel name is in the EDID then
commit bf201127c1b8 ("drm/panel-edp: Match edp_panels with panel
identity") should provide some safety.

-Doug

