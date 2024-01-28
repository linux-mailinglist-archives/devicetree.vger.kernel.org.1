Return-Path: <devicetree+bounces-35949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C306B83F62A
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 16:50:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F488283DFF
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 15:50:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D96AE23757;
	Sun, 28 Jan 2024 15:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YloWInVu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356AF2D605
	for <devicetree@vger.kernel.org>; Sun, 28 Jan 2024 15:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706456996; cv=none; b=LsdYA9VEKk4lrQYrdD5TGxzkYpN4uThKLa55MTyvDZIkMyI0aLtrjsG0nl7DREpfzK2q2zL2JDHXJ/EVHq1iYG8yF3ZC6eRYFQycig2dcaYPW55pRmwHDakzsxW6IxorbG+TPuT8eefu1OQfGhQDIzsQm7TRNFTi9g3SP+UNNLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706456996; c=relaxed/simple;
	bh=b9YOMazdycLIyx8go7JhQ7ohEA+spjOnKg86jFJ9vGQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m/W143EbeSA3S9FB0AqObHt1iBFZg86uPqSsDLNZuA9C6POoECXxZpx3E5HaJa+Z3ZauuYheDXauDBMJoWLfHiWPdP9uaKM5goxF1f9/2YdBchOJbP0kKnlRM8Oxw8eI22CKi/wpZoBIVp0WmhhXQnRvioV+HrXl0OYp8ASraW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YloWInVu; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-dbed0710c74so2135185276.1
        for <devicetree@vger.kernel.org>; Sun, 28 Jan 2024 07:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706456994; x=1707061794; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gi0ytb2PS1JbjjM4o7VAyC0Cey5FRxMI0Z/urzxWn1E=;
        b=YloWInVurMqV0uCP9OF2WZNs+Lp9fsWC3kSNTxALfD0J9liZih1XGjw1uPN3XfGg2r
         xFQMeqtqe+Puv1tMzkLlLCfeTKfo1T55aKnkAPh88YcHXvpuXkEYzdgjfCfQLbfs33E9
         oD0EH+NkzXAFJqYp0rZMYUoNUrkXRUfIilxBata0rd0rjZqiJXpelc4lqFtatYawa9vI
         qXbUCBZxNa2ppRWaQGAm5uGHcA1brGS7SM5lR5+uVl/JWL7noyPB/A6g4QZbtXetk2Xm
         TtTxO+LnHqHxDBhepxRN4qv1w015fTTmf2TTGOmMgSjatFifay+uD8O/4AreQqxJ8U5q
         F6hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706456994; x=1707061794;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gi0ytb2PS1JbjjM4o7VAyC0Cey5FRxMI0Z/urzxWn1E=;
        b=oYEGzk22M//1BHjpWjARyW1/H89OViFy5GqbwK0wASlSkhhgYaEJ4YLIfhsyC+Krtl
         dZ7NU5FH5yLUp7mJ5dOkYrRPT49Dla07sh3LP6nJjOroB4omejEbwnlRG+9GmtOyvQh1
         dEidNPHiKITAYXbuRuL5d840ty2ZX10mhM9FwVopXp2oC10dLV5EbEYwbxfmV89z6j6Z
         GrP66bNhqphN1bOU4cRcjo6JlVyuS5F5ngiBOxgTVSfmVSGihiQ+Qd5epeenM8Tkbwtg
         dS9YiNP/me0WB0mXG1FDjjbJIr29Qvgyrbi9ayDhvb3Wdzd1a1tYsBzgAyqtx34LXTNf
         Nt4w==
X-Gm-Message-State: AOJu0YwuwZZrtkY6c+MoEeu5ZEFvWsrdoOHtBWSwJ+lypo/vSDpXBVb2
	7kn+6IPSBxlGOWDBo150P6SZ5ho7hTqhiL7dQyS0PfcPYuA4+ESLlxDejItYOqTW30KnjUiUBun
	XaeUhIiE5O3IRiqgWcBkCUQroLnlHY11E2QZtSg==
X-Google-Smtp-Source: AGHT+IGJWMQydQjjqGuMPg05Ai+wt32rzyv2gomooaD3rn4+LJmjeir6ImCczZPw+dWTd7x/1YV5YVnQnyEGpklyaLY=
X-Received: by 2002:a05:6902:2808:b0:dbd:ac60:bcd4 with SMTP id
 ed8-20020a056902280800b00dbdac60bcd4mr3313016ybb.75.1706456994245; Sun, 28
 Jan 2024 07:49:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240123080637.1902578-1-ychuang570808@gmail.com> <20240123080637.1902578-5-ychuang570808@gmail.com>
In-Reply-To: <20240123080637.1902578-5-ychuang570808@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 28 Jan 2024 16:49:42 +0100
Message-ID: <CACRpkdYi-y9zWAR71rQOtKVJOuGgE4n8Q47YXZW=Pt345UWDkw@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] pinctrl: nuvoton: Add ma35d1 pinctrl and GPIO driver
To: Jacky Huang <ychuang570808@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	p.zabel@pengutronix.de, j.neuschaefer@gmx.net, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	ychuang3@nuvoton.com, schung@nuvoton.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jacky,

thanks for your patch!

this caught my eye:

On Tue, Jan 23, 2024 at 9:06=E2=80=AFAM Jacky Huang <ychuang570808@gmail.co=
m> wrote:

> From: Jacky Huang <ychuang3@nuvoton.com>
>
> Add common pinctrl and GPIO driver for Nuvoton MA35 series SoC, and
> add support for ma35d1 pinctrl.
>
> Signed-off-by: Jacky Huang <ychuang3@nuvoton.com>
(...)

> +       if (ma35_pinconf_get_power_source(npctl, pin) =3D=3D MVOLT_1800) =
{
> +               for (i =3D 0; i < sizeof(ds_1800mv_tbl) / sizeof(u32); i+=
+) {

Isn't this equivalent to:

for (i =3D 0; i < ARRAY_SIZE(ds_1800mv_tbl; i++) {

> +                       if (ds_1800mv_tbl[i] =3D=3D strength)
> +                               ds_val =3D i;
> +               }
> +       } else {
> +               for (i =3D 0; i < sizeof(ds_3300mv_tbl) / sizeof(u32); i+=
+) {

Dito

Perhaps more cases, pls check!

Yours,
Linus Walleij

