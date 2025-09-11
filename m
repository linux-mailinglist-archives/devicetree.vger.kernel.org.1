Return-Path: <devicetree+bounces-215793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 207C3B52AA6
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 09:55:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 18E741BC26AE
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 07:55:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 068312BEC2D;
	Thu, 11 Sep 2025 07:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GOfBmC5S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480512BE65C
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 07:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757577320; cv=none; b=DQXKvvD8wW3LqMYXr3jlNkb1nRLTJPpy35MVx3iX4KJCxKda4TwfWRnCuP+dYEvSQJGoAFwHPGILEFRK3WyvcYLc350R+I7GCD6vZpjOb1uB4tHqmG9jqZr/YfJVmQCKmpX4ZjiQ9L+ev10a3NJXCsqd5oWlztrkvMRsGnfNruM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757577320; c=relaxed/simple;
	bh=uW93kY0+OZCRekYhUWm/qQ0d+bv3Ef14UmeWSYv06cc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=srftDiqZqKgxT1LY6otx2VQvMjLFPfPTwoAaUHSpxIok8DSO+XtQuMVkHgYN8vHqsiJtmWVdNz+yI5m3va+qiE3EJ2qabiPDRb+7iZYdB141865EMmcAhBRd2R/Eh6BGc2W8nM7spFFdxaT3qQQ4vSxcLeS+ICYw/SYhXHwuBsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GOfBmC5S; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-6228de280a4so681955a12.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 00:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757577317; x=1758182117; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c/Zni9gQlrJqNXECo6PJyQCl0lpKWQXeS/S54r6ee38=;
        b=GOfBmC5S42YcrCrrMbZ5jwxBkT5P+nlczpqfYQy1V22cSJi9KRMqEGkwIH2RJqFFpR
         jLiK8ujHiMeSN39H22OlgtZWyZIjfbu71ZsZ0tbWn/5RV1u8kTYUiEDEuvX7KWGpg52n
         LcWS1QQRuGV2gmoELKhEJR1kPHWnTm4wR7Lx1QUA3WBeJOR6gg511RP72wgD9CHlPu0j
         0Oy0q4KoSt3XVVRYK30YlpzRm9rcpwN3WLt9eJjlVxTtrtI1HuQlRr/+jfn7VbW/eK15
         EaB2r0vR+Clu+a01t/0E7zpML2n4Sgw3KyWwpnN+Z8y39gkvA8Xj+F5uKNVXwAN35ua0
         w61g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757577317; x=1758182117;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c/Zni9gQlrJqNXECo6PJyQCl0lpKWQXeS/S54r6ee38=;
        b=P/lBE26S9R13lMuHZmuPc+u4igkHQ8CO8OwNNPQSlDy1Mp4cnMQE6zdNI3/A5t6weT
         Hfv1xPz5cMZiH/SUd8J42EUfsW6pQC5FMx1kA9I2p2stJPB66l2h5QylgUknVejXmeeJ
         nreVUi5CpkByVVMcjbIvks9ALE27Yg7XZ3cFdzcFsiLZJ6hPPWr4vojEtaUyWYJ6qYMB
         peHXHbQyRt/oUlJUFSCoU7Z0VsH1pDb2MA8g5pnXo3Ovrqp9C4P8ElMLfpfkY+HbfvlE
         xxYUhewPuC66sI9AJljOqwefLmj6rM4zCyi4OzCbV77MTbC6KV5TBLbkkof/GGmKKPjO
         g9Jw==
X-Forwarded-Encrypted: i=1; AJvYcCV7kiHm4dtPNfRkuQqfJRB+K3XCZ+vp7s6ryHxOez0NSgNa/GcGNRgi6RwVsNaeKpWHnwu5L0rUgB+R@vger.kernel.org
X-Gm-Message-State: AOJu0YwymvU4ejSOat656uiCOqe7iaqZ/GMmMyRJHhOh+8gQXDNr+TnG
	tkxFeoDruXzvDQXLLrcxDPpXsUctKTDxr95i/uTMZfdXiCH0zInJBC3FYSwLMuHST4sdR+A3cf/
	/kklJ3JTs4cYpeiBJMLobXfqnXEV5m7U=
X-Gm-Gg: ASbGncugELyA5Y8shTJXCGuqsfikGxN2xe85yOReI0Q++vvGJmHZAosNiVI/Z9P+4I6
	Bi/c4N02VU2tyJSqsNn5ejFGyX+s+dVl99Ylx+j7kgmVSRyeXzeO/1KD+AvaLwAy3aaHjApOiKD
	x+SAwZ84GPAjjGvKFVe77q+9vvSMsV5aZLXuPVavN6idzutXcq4Q2o0qIXCoKYWmVseUT1/LNwj
	bdbkFIz3g==
X-Google-Smtp-Source: AGHT+IEQYL88af+znhDJjCoMbmK7lED2mZrcyiOVZkFqEOFz4gATF4l90/Zv3H30LLZwTPuhz78xnP1a64hjMASXg/8=
X-Received: by 2002:a05:6402:4406:b0:62c:34ed:bbed with SMTP id
 4fb4d7f45d1cf-62c34edbf2fmr7977478a12.19.1757577316373; Thu, 11 Sep 2025
 00:55:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1757318368.git.zhoubinbin@loongson.cn> <2f93b8f20c6e93a15258888998e926814bfd0adf.1757318368.git.zhoubinbin@loongson.cn>
 <20250910-fast-seahorse-of-valor-bf6c86@kuoka>
In-Reply-To: <20250910-fast-seahorse-of-valor-bf6c86@kuoka>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Thu, 11 Sep 2025 15:55:03 +0800
X-Gm-Features: AS18NWBY0ItJVlEtg4-Jrs_bUJGB4ODfYLmQ4u0lZWjWBEGzhnR72KNCiw8ZDmQ
Message-ID: <CAMpQs4K-6Re=-gELPEg8kP_NKR5_1U=BD6fnXM3wgUF+eMtpGg@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] LoongArch: dts: Add uart new compatible string
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Haowei Zheng <zhenghaowei@loongson.cn>, 
	Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof:

Thanks for your reply.

On Wed, Sep 10, 2025 at 4:27=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Tue, Sep 09, 2025 at 08:11:20PM +0800, Binbin Zhou wrote:
> > Add loongson,ls2k*-uart compatible string on uarts.
> >
> > Co-developed-by: Haowei Zheng <zhenghaowei@loongson.cn>
> > Signed-off-by: Haowei Zheng <zhenghaowei@loongson.cn>
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  arch/loongarch/boot/dts/loongson-2k0500.dtsi | 2 +-
> >  arch/loongarch/boot/dts/loongson-2k1000.dtsi | 2 +-
> >  arch/loongarch/boot/dts/loongson-2k2000.dtsi | 2 +-
> >  3 files changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/loongarch/boot/dts/loongson-2k0500.dtsi b/arch/loonga=
rch/boot/dts/loongson-2k0500.dtsi
> > index 588ebc3bded4..357de4ca7555 100644
> > --- a/arch/loongarch/boot/dts/loongson-2k0500.dtsi
> > +++ b/arch/loongarch/boot/dts/loongson-2k0500.dtsi
> > @@ -380,7 +380,7 @@ tsensor: thermal-sensor@1fe11500 {
> >               };
> >
> >               uart0: serial@1ff40800 {
> > -                     compatible =3D "ns16550a";
> > +                     compatible =3D "loongson,ls2k0500-uart", "ns16550=
a";
>
> You clearly never bothered to actually test this against own code.

Sorry, perhaps I should have included more detailed descriptions in
the binding file.

As per Chapter 15 of the Loongson-3A5000 manual[1], the Loongson UART
registers and functionality are compatible with the NS16550A. However,
generic 16550A drivers cannot support full serial port capabilities,
such as hardware flow control.

Based on your feedback in the V3 patchset[2], I attempted to use
compatible fallbacks to avoid API breakage.

These fallbacks match according to the Makefile's compilation
order[3]. Therefore, if 8250_loongson exists, it will prioritize
matching ls2k_* compatible; otherwise, it will fallback to ns16550a.

[1]: https://loongson.github.io/LoongArch-Documentation/Loongson-3A5000-use=
rmanual-EN.pdf
[2]: https://lore.kernel.org/all/51f564ea-9507-40b4-a943-23bdd330e6d6@kerne=
l.org/
[3]: https://elixir.bootlin.com/linux/v6.16/source/drivers/tty/serial/8250/=
Makefile

>
> NAK
>
> Best regards,
> Krzysztof
>

--=20
Thanks.
Binbin

