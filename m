Return-Path: <devicetree+bounces-188639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64966AE4726
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 16:43:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F116446D3C
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 14:32:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D43E125D534;
	Mon, 23 Jun 2025 14:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="VOiZosdb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E157425D1F1
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750689189; cv=none; b=fkkSiottD2n/SeVH/JU3g/w4os1jp09Dibmh5j4YdvzU7qwW/xojywP1dcIJJeDZw1rHg4fb8K3dAkpcR0iJ8sJt0Gjg27Uu8AFNGiNwUfB8iJZLoUqI+U+gaY6pvNQqHcWeVki2qkUrRwhlWazHTE8RJpnegoMxFjCWtq3eWB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750689189; c=relaxed/simple;
	bh=x5KqFZXgElR9++LB0VjgJyofXv4fHihwvsOF6Nt7N04=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R3tjADcFadTS3B7EVkqsdpPx8SfMSSk6xslsVr6YkxmDaEDYvg/Cpa0rMDTRqJV2KzhaxHrhsVHXCCTcKCbfbx9v3N5ggPH+zeJHHcbR0VVLzp1vMnXujGwGReQ6zfYJFu3oDmP8fn+ldtKs7eOnar5NrXFU/gyMw/YFQm/9g/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=VOiZosdb; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-553b9eb2299so4515962e87.0
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 07:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750689186; x=1751293986; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f9kmviqp5IY6ttItDCr2Op9/HvBDwWl4i3kTfEm4FXc=;
        b=VOiZosdbTybJuF7v/OhkFRl79zz79vJ97USjAMuXDNRxzrJasc5eTMIrCFXZKBbFtd
         HLQ/beyvUhoTlriLK0inUc0za/zkiA9+htLr4rusxabuCE/2JLVs8qs1UifferGUP70p
         xlZYBdsNIvxgng+YbHStMl9HO/H1Lgq/UBlMBDzM6aO2rKm3S9QBiVft1zvlLfjtGysB
         ovs/xrC003pqtfmdWivTZ8BvCYX4K7wZlbbqAZfO9tNceJDQ8ZOYS6Ni03R9bjCpNaqg
         vCVgA88Ao6XV7+gPBWjcXMnwqktdmfgyRcbwJfC8nvdU5WLBQxfAl8V1474tq0kA3FxA
         PPwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750689186; x=1751293986;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f9kmviqp5IY6ttItDCr2Op9/HvBDwWl4i3kTfEm4FXc=;
        b=n0P/AHxLWygaRKeDVD8LfGM1dMNo3ixUSJcWx7xYSPwcGXyDDHQH4vAjbI9mc/iDhE
         f47vqypg957184sICGJK0V1/dp6fqwN0YrTP+gGg7kMO9C74Oyb/k4nzXK6f1FTsVZxD
         uQN6ks3a8iiuj/dcKKiwGIF5s09Aht7dk6PRqKl8vW8YNaEV4I5M3ZH2rb4uoay78HNk
         V22II6q2Pw2huJLeXShGozH4vbKj/NCcMXXw2mbNNI0XuSlwdHD7Y7YPUHJsNmTtRrCf
         YWOzykrF9q+l5gT/XR1iSw3RQE0gQx+eZLkzH8WzZ3IXJPt9XCV/Mhelb2G0+cJcjoBO
         uQ8g==
X-Forwarded-Encrypted: i=1; AJvYcCUuBYoNKw2Lejp4lkJb5GQrm1mEB9V9tX9pX4Sf4Rt6bZzZF+n/R3Pr2RM24GSUfLDrcGXraOYi78/6@vger.kernel.org
X-Gm-Message-State: AOJu0YzAR8haE/2s+Yr0Ls5mEnKpH332OCiOkcVjymXBWipXnarKqg4H
	KhQZ8DFWqXjkixxtZu57+w8wRh3/F2mhyIQktTMkkdKrZOswS//CDTqoe1elLuDhqurAghzvQzH
	dhZquaZxeQKPrJEDPSilfQlbAh+m9YODzU67x0GU+lQ==
X-Gm-Gg: ASbGncuCDGJlJNXHos5MpeoYW3GbwIA5L1QbYOVmsJWlMWpgy3b7Mkhh8eEGqf12vRb
	6FITpbLL0hQMvxHM6NS7CgHgm1RyC+mS9BMfnqB/ne6ikzypScT97hCZzUlFdEm5DU4hQJPnh/U
	asgMdJANKEGQ0VRkQPuKH7kZ6dZJv0UuU9seL5JsKcsDNq7Y31C3MQTt/QYLVyzuF9a3uYsSHZO
	w==
X-Google-Smtp-Source: AGHT+IHy7lPbB51UgKZbeAiEHWJjzs4pV8mJk0NbuirPhDOStHcXQ3Z+f7X+tD5fIjGZbRD5DTCBFLexuzsXjZ0eBBQ=
X-Received: by 2002:a05:6512:3b25:b0:549:8ff1:e0f3 with SMTP id
 2adb3069b0e04-553e4fdf72dmr3670967e87.5.1750689183720; Mon, 23 Jun 2025
 07:33:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20250623114430eucas1p2a5bb2bbc0049186ff25e1b3e1a131ca2@eucas1p2.samsung.com>
 <20250623-apr_14_for_sending-v6-0-6583ce0f6c25@samsung.com> <20250623-apr_14_for_sending-v6-1-6583ce0f6c25@samsung.com>
In-Reply-To: <20250623-apr_14_for_sending-v6-1-6583ce0f6c25@samsung.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 23 Jun 2025 16:32:52 +0200
X-Gm-Features: AX0GCFtTbdiml00OQLqQ03QSeuySTknlMk23hbdQ1cT1QnS7KP2eYmI1IjWfLlA
Message-ID: <CAMRc=MfPLZ7oMVjLv+_GMoC8X+O=k+mMrQKxELho0=+Z7=HApQ@mail.gmail.com>
Subject: Re: [PATCH v6 1/8] power: sequencing: Add T-HEAD TH1520 GPU power
 sequencer driver
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Frank Binns <frank.binns@imgtec.com>, 
	Matt Coster <matt.coster@imgtec.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 23, 2025 at 1:44=E2=80=AFPM Michal Wilczynski
<m.wilczynski@samsung.com> wrote:
>
> Introduce the pwrseq-thead-gpu driver, a power sequencer provider for
> the Imagination BXM-4-64 GPU on the T-HEAD TH1520 SoC. This driver
> controls an auxiliary device instantiated by the AON power domain.
>
> The TH1520 GPU requires a specific sequence to correctly initialize and
> power down its resources:
>  - Enable GPU clocks (core and sys).
>  - De-assert the GPU clock generator reset (clkgen_reset).
>  - Introduce a short hardware-required delay.
>  - De-assert the GPU core reset. The power-down sequence performs these
>    steps in reverse.
>
> Implement this sequence via the pwrseq_power_on and pwrseq_power_off
> callbacks.
>
> Crucially, the driver's match function is called when a consumer (the
> Imagination GPU driver) requests the "gpu-power" target. During this
> match, the sequencer uses clk_bulk_get() and
> reset_control_get_exclusive() on the consumer's device to obtain handles
> to the GPU's "core" and "sys" clocks, and the GPU core reset.  These,
> along with clkgen_reset obtained from parent aon node, allow it to
> perform the complete sequence.
>
> Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---

[snip]

> +
> +       /* Additionally verify consumer device has AON as power-domain */
> +       if (pwr_spec.np !=3D ctx->aon_node || pwr_spec.args[0] !=3D TH152=
0_GPU_PD) {
> +               of_node_put(pwr_spec.np);
> +               return 0;
> +       }
> +
> +       of_node_put(pwr_spec.np);
> +
> +       /* If a consumer is already bound, only allow a re-match from it =
*/
> +       if (ctx->consumer_node)
> +               return ctx->consumer_node =3D=3D dev->of_node;
> +

That should be `!!(ctx->consumer_node =3D=3D dev->of_node)` or preferably
`ctx->consumer_node =3D=3D dev->of_node ? 1 : 0`. I can amend it when
applying if you have no objections. The rest looks good to me and I'd
like to pick it up into pwrseq/for-next in the next two days.

Bart

[snip]

