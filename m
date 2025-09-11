Return-Path: <devicetree+bounces-216020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C83C0B536E1
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 17:04:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC3981883318
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:04:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A32431355A;
	Thu, 11 Sep 2025 15:04:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF98A2DE711
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 15:04:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757603060; cv=none; b=Y0F9qSwPoveLCHkHnAM98NYf7xf2OTqeVxZBvCxdTaZF3aN10F92X7r9OXvtYvXHAmVpI6Ftf9utsSVJ0Ks8WdjaZTjSObtwPQscTWGrdx5B2rTNhZRhB9wTPPQ90ZrSJ5f8ZQxNgVBxQKdkXx0ardLb5FGUGfBBSdUSJFNx7Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757603060; c=relaxed/simple;
	bh=oWtxSBVhDimdr6SjfynlXvRAiMg/Q+KHFuZIgiM0LVA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fz/r/J7ihj2iYOrCxmtxgXKgj7QZhkj6mUFZ4q3rNNn8/QqeA1Z9Z8p6ZWwcBbOSzkUcsKAxjLUf5obrF9bYj4JGBsVa5cf5PG5cvZ80YCHyIIQxAmWtOYaVgws83wMEEmm5CgFvTsR6mcMqrfM4yX8lRiR003KKHXEQRqjcZGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-807e414be94so84796985a.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 08:04:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757603056; x=1758207856;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MhSpd5S4ftC19lFF4e4ovsw+6zbB9iulG9RQAY9XGQ0=;
        b=N/Mbjz1Bw89kaSnKL9nfTbCN1kNC7NFYSwm0rbcMKOeurj00/p7xj7qRjKKkU8LnCZ
         iJLTfwaCJRRuAvasWb3wT4uE7VUEZYp0+MiockAgBOriPZ0206sN0sZXi3alQDiaIY7J
         L4K3sJYRedf7o5y+h0IZB/lkGv96Acd7wJEoHHHEWRoca8MhIuDLMfUQMARQGYfSfD/Y
         3AztPgEkaWD9HD0nMbjepAIUtsLZieC6x8UmDv27sFeeuo/HHddAg+CX+HpIoXgWOvHi
         HhJo5s1kd9nIwm1v1Gib2USBjC7aYqKYABB5gheJu4THGI1j4ULSCyJQzV9CYzGQkjkr
         FCnA==
X-Forwarded-Encrypted: i=1; AJvYcCVMqmoHSLXT2dYPNEYGTFZwtAEbthBlW+lu4Z8a/55Dntv+pfzJwuXzmoOUmaNNo5OYN+hFE4LSozJf@vger.kernel.org
X-Gm-Message-State: AOJu0YyZjftKoDda+0SDxb/5jYkDjNKyUasu272nhagGPHycXyhXDchi
	qsZlO8rHaoXmdDcUKA60YYZn7e9VTtiOv1sJbKdyGg5cr+IqJnsZtMGp/CQPXuCQ
X-Gm-Gg: ASbGncsz1KZXMsaeDoO/nomg/pA4DXuORaUrBv1wKeZlzatSh8/UpU8Ga0QCQt9siy0
	ivu0cZX0V2nSswHWjoGSc2MluW4Ef5OdWRaEH7j0z545VS95PM0i7C4EWjb0s/2Wg4YtrfdGNE5
	iL4oKfXLnqe9WAF+24sk5sxMxbp+ZEy8Vrv8nyWOdHKAJgV3eOrurauyxfU1BgCpc5RlcGCc+k3
	qd6GL5BJUjCyrrgKsoEKKTCd04g8e9/EjCuL7yz+22OZks2Gk4fBGNMNOjKUkCcoYi7qxAS+tH6
	5YkMeeqIf0dZCN9ku6n4vs8b5g3Ww31RXEsVgB/qD3fqQ+CscMAJnFv3RrBUBO9Tls+/Iev/XAk
	gljeuvYLTZc62BFglGOs1rgkTFAz/TR1UcOu7vlMztcPjCp9Pd6+dtwgjWPXS
X-Google-Smtp-Source: AGHT+IHdAlwpkGKHqWBgoaasBAdFCdxTQmc2IdhvpMBx+joaEERNYLduo57SlocMBKX2/9NJZfERyg==
X-Received: by 2002:a05:622a:1a0e:b0:4b3:4e8e:9e4a with SMTP id d75a77b69052e-4b5f846303bmr262680341cf.56.1757603055911;
        Thu, 11 Sep 2025 08:04:15 -0700 (PDT)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com. [209.85.219.42])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b639dd11d8sm11313071cf.45.2025.09.11.08.04.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 08:04:15 -0700 (PDT)
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-72816012c5cso6910666d6.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 08:04:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXe2Sqk9YUf7usXU+U3MgnDpTyOFI+RfTSqQ+YkvFHxHeYjOjv3LuCKVS0wc1fha8Ffn9F3J8FJHVM/@vger.kernel.org
X-Received: by 2002:a05:6214:cc4:b0:71e:a083:f188 with SMTP id
 6a1803df08f44-7391f304070mr229589496d6.21.1757603053669; Thu, 11 Sep 2025
 08:04:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250905084050.310651-1-niklas.soderlund+renesas@ragnatech.se> <20250905084050.310651-3-niklas.soderlund+renesas@ragnatech.se>
In-Reply-To: <20250905084050.310651-3-niklas.soderlund+renesas@ragnatech.se>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 11 Sep 2025 17:04:02 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUP0x1QOsF_CL_pk7A1RL-D3QJRuiZ86JQ9ToBbyE-nxw@mail.gmail.com>
X-Gm-Features: AS18NWD6acvKzOUuqSg1o2nuZAq-uubKmAvzpXi8O8YvebaNo6zjuBwRr5FZcrc
Message-ID: <CAMuHMdUP0x1QOsF_CL_pk7A1RL-D3QJRuiZ86JQ9ToBbyE-nxw@mail.gmail.com>
Subject: Re: [PATCH v5 2/4] arm64: dts: renesas: sparrow-hawk: Add overlay for
 IMX219 on J2
To: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marek.vasut+renesas@mailbox.org>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 5 Sept 2025 at 10:45, Niklas S=C3=B6derlund
<niklas.soderlund+renesas@ragnatech.se> wrote:
> Add an overlay to connect an IMX219 camera sensor to the J2 connector.
> The IMX219 utilizes 2 CSI-2 D-PHY lanes. This enables the video capture
> pipeline behind the CSI41 Rx to be enabled to process images from the
> sensor.
>
> Signed-off-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.=
se>

LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.18.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

