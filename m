Return-Path: <devicetree+bounces-222583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C83BAB1EC
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 05:03:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3718B1924D9A
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 03:04:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3BC4533D6;
	Tue, 30 Sep 2025 03:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VK8JxIZQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA4413EFE3
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 03:03:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759201425; cv=none; b=HVG37p0Qr5ht6FzCJ5ThXyNKFJvWp1LOtDmO3si7a02WpZzzQVQSl3LZ+K3WMGYyBU4OCLx8olFZ85aFLw0FKKZMNMeJtWBVnssf6lJyE9d78Al6XvrOLsNNTo5MhaWT3kvIrE/xvG6U6xcE0JG1yabLqX/HjSMWm02gUx7r5kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759201425; c=relaxed/simple;
	bh=TlSrEI1g4LJ14N4ECMUQYeDV9+p/D6qPn677XjVLXis=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=He9SwFzznEAJMLCVIKQFH1B0bRctLggIkQbo9pDNjawXhj6OXYmSp1ukvMVISoRWtsM4VkHzUf9nBczqc7h9GYgZj1OcgXJUH4GUYTG5rWPhs3cRPCWPTWiUTDrL3kyDbdawQ5yjesiUd9BLdaKKCGoVHdtD42CKMJPOU3SyNtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VK8JxIZQ; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b00a9989633so989881066b.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 20:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759201422; x=1759806222; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9NFP/aRPpSqSxRRCDSAPryYMxFsX/KQ2AaIdR8RyNrI=;
        b=VK8JxIZQVOn6GH8f8yUZpXfKXgsFg0T7VCBzu8UaPFAptq213KE9rmwtSLoIzeW6lv
         okEgDaRfsW/Jjkdu5qSrt8FplDgOXxb30vUDu8Id/EuaZ9LD7t87cTpJfkTgclHQHSCm
         HBnVKWX76FYP55hJz3ac/rqp9qqBiYwEDGQeGc9YQRllbpV2anKK5wd5T0FRH38hhAWT
         0jdDRAp69nA3q/FwLJHfLRoXxmofvXDmMUXz/e6tHC6+0wSJrkBay5x76K0vJpDpnxvC
         Bwe2LeuxOTPCR0LMXwv1MMkzaL5nwIriw/be1sM1vLZas0PY7WlqQcNZBja3XZe07iA7
         nWZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759201422; x=1759806222;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9NFP/aRPpSqSxRRCDSAPryYMxFsX/KQ2AaIdR8RyNrI=;
        b=lfQA7K4po+Ub7hPOTkKeC418tqTNTBADNjKQyOJ44TTUd37aKprWLerGk9f1BciIZ5
         j7CHu7ocirhWO1rWtHMJs6AXxJOYSUpeZzGuY0EJi8p1hV20JX1u7FZXhGkSfPo8lGhZ
         /BG2rCMnzCOxyjqBxFYP338V4u0mEUJ1SLTQKhfnphRsw3oWlBt4hJg+hRk7b7F9DPUX
         AIEZUZ77BULbDJgzT8qo8imPNaOoPV7Q485GwGc1k2A8ggZzR2QoJr4a1rP3zSJrlZK6
         o7GeSCmfvMkq/JPOTT0cZIovUYJ63/RzZyIqDohK+NbFlxxE/LsxZigdD2Z0uYiK6C2e
         98JQ==
X-Forwarded-Encrypted: i=1; AJvYcCXa9vqhMAHL+FCzBk3jF9figjOaUqwf4ofsWSbt5Avg/c7eY+cjqZkmuZSyoAl3QQGy42T+GYjEie5Z@vger.kernel.org
X-Gm-Message-State: AOJu0YyRVypMe9WgulWh7jygEaa0PrZQAYljOXu1QDlQomLDAyYWvSNY
	eEQZVIVY2Ynsu0X74juKXWn0mxHrdyKdgvLAqiJtxR8ODCsffSrw38ild87J1I3FA8zD0rDhppF
	RqlsnE1IqdV2n+ITqpaqtHmNfAHbAF5k=
X-Gm-Gg: ASbGncvfXhQMgszn/C2g+ErdLIvI771O81GFDw5exb8ZCMwegBkBadNyp31WBNKgJBI
	8bcpTA+uy+3klcZmOTChWIOB9FgB8SDxL0GN59to70JxxuwmgX1v0h8lqV39dQoYaNoUhJGDQ6i
	CV+sSDLFcDAcModN0BPJClv8drWWPTj9TuW71aiMDgjeqNv6wxoCVqLJ/XrH91cSkQDcFbicBGm
	mZ0Yn37BTHtk2pbK64jFrd+15aL7jecUg==
X-Google-Smtp-Source: AGHT+IF/n5rxioCLmT/RhA4+s+0eSGWB5ynhr3d237Tn0J8d1xLcsm+RN0zUj0iTmh5Xi96u/TsBTy9XttW3rYTj7eY=
X-Received: by 2002:a17:906:6a13:b0:b3d:d30b:39c0 with SMTP id
 a640c23a62f3a-b4138d54e8fmr254813966b.21.1759201421958; Mon, 29 Sep 2025
 20:03:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1758676290.git.zhoubinbin@loongson.cn> <9823e7afe713450e210dab9dba6fa18683dc1fe0.1758676290.git.zhoubinbin@loongson.cn>
 <2025092428-glade-monologue-3663@gregkh> <CAMpQs4JgR=iG6LAuYeVxOpE31S6n=dC4+FGUJczOYDVfWHDuFw@mail.gmail.com>
 <b862846d-fb2a-4df4-8457-d858aa63031d@kernel.org>
In-Reply-To: <b862846d-fb2a-4df4-8457-d858aa63031d@kernel.org>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Tue, 30 Sep 2025 11:03:29 +0800
X-Gm-Features: AS18NWCm6-Znvj04Md8NL1AWVBDpMDNMtoDJ4KZsLhmeYeLRSp3jYSKwZzNeE88
Message-ID: <CAMpQs4KVgSFk=B5JtQ1KM02HydTkwaYqi+LzzhdJAyoSUfAxLw@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] serial: 8250: Add Loongson uart driver support
To: Jiri Slaby <jirislaby@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Binbin Zhou <zhoubinbin@loongson.cn>, 
	Huacai Chen <chenhuacai@loongson.cn>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Haowei Zheng <zhenghaowei@loongson.cn>, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jiri:

Thanks for your reply.

On Mon, Sep 29, 2025 at 2:19=E2=80=AFPM Jiri Slaby <jirislaby@kernel.org> w=
rote:
>
> Hi,
>
> On 28. 09. 25, 4:48, Binbin Zhou wrote:
> > Hi Greg:
> >
> > Thanks for your reply.
> >
> > On Wed, Sep 24, 2025 at 6:22=E2=80=AFPM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> >>
> >> On Wed, Sep 24, 2025 at 02:29:37PM +0800, Binbin Zhou wrote:
> >>> --- a/include/uapi/linux/serial_core.h
> >>> +++ b/include/uapi/linux/serial_core.h
> >>> @@ -31,6 +31,7 @@
> >>>   #define PORT_ALTR_16550_F128 28 /* Altera 16550 UART with 128 FIFOs=
 */
> >>>   #define PORT_RT2880  29      /* Ralink RT2880 internal UART */
> >>>   #define PORT_16550A_FSL64 30 /* Freescale 16550 UART with 64 FIFOs =
*/
> >>> +#define PORT_LOONGSON        31      /* Loongson 16550 UART */
> >>
> >> Why does userspace need to have this value exported?
> >
> > Sorry, this was a cheap mistake.
> > It should follow the existing latest macro definition as follows:
>
> That was not the point. The point was why do you need that at all?

Emm...
We attempted to define Loongson UART as a new `uart_config` entry.
Therefore, `PORT_LOONGSON` is referenced as follows:

diff --git a/drivers/tty/serial/8250/8250_port.c
b/drivers/tty/serial/8250/8250_port.c
index 719faf92aa8a..53efe841656f 100644
--- a/drivers/tty/serial/8250/8250_port.c
+++ b/drivers/tty/serial/8250/8250_port.c
@@ -310,6 +310,14 @@ static const struct serial8250_config uart_config[] =
=3D {
                .rxtrig_bytes   =3D {1, 8, 16, 30},
                .flags          =3D UART_CAP_FIFO | UART_CAP_AFE,
        },
+       [PORT_LOONGSON] =3D {
+               .name           =3D "Loongson",
+               .fifo_size      =3D 16,
+               .tx_loadsz      =3D 16,
+               .fcr            =3D UART_FCR_ENABLE_FIFO | UART_FCR_R_TRIG_=
10,
+               .rxtrig_bytes   =3D {1, 4, 8, 14},
+               .flags          =3D UART_CAP_FIFO,
+       },
 };

 /* Uart divisor latch read */

Additionally, `uart.port.type` will also be assigned the value `PORT_LOONGS=
ON`.
>
> --
> js
> suse labs

--=20
Thanks.
Binbin

