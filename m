Return-Path: <devicetree+bounces-139815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF91A16FFE
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 17:19:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1BFB518802AE
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 16:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45F391E570A;
	Mon, 20 Jan 2025 16:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Muw7CPBf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAD9A19BA6;
	Mon, 20 Jan 2025 16:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737389984; cv=none; b=EGX1myk8FmGc1SgyD16OJ4NvxCh65lBDnMBQRxOAO/7WkniuV2QDrybB9fS31AFki2Wd2fAYk1PNDrWfZTZLKLCM3lzjGm7+ow3pmSPfVKWpRFrv439uo51ZJ3hXuFxTZdj79jnlQt/zn8FhxPX70wiyqq9cdOAwQ+uTQyYgNbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737389984; c=relaxed/simple;
	bh=xgAa9t2poYGtQTbvNgVxGEQb88ZIDI30Z7Kgwjx1cgc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GwYlkmH/m1S79she5E3aP9SOz1HaWpeGc5J1VqBMLRl9EGvvwDCx7ocz2ABhfrRiVMxY+dfgUK73I+JsK56lLHNU1lVD57c3ta95xDi24Z0Cact1fBtRXQEykuqVdnyxPuciyilUK6nyPdhfoWyWIE03AvctfcAtoEn4zZesFBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Muw7CPBf; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-29ff039dab2so2590858fac.3;
        Mon, 20 Jan 2025 08:19:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737389982; x=1737994782; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+T/dIQ467Pa8ZD5wlg+bKAWEAxn3LDzHlpZLZ1k1N6w=;
        b=Muw7CPBfilfmlHvkLWoQimeYfKFcqrNlWdsEGDS72fnIf/0lzBl2joemIMnERf5FcO
         IAcyXhbf0em24HRYpa5NqH5OaUlQCvCGhQONrFXfNOYEJoFQes+2po09d1u0rbBIwFIQ
         BX1lwqHPJ5vNyS0n5oN2Q/RSoWM5pkv5Kxsak9VyHPZKHofJ1a2SAaRTHinJwJJ+3baj
         0Ez6wClwBXpdPVOZ5VNxMATFT5SueBRs3TcWBjh/Mb3P5sgd3jHhEtWsnci0Cb3EQ973
         +y13Z2t+XoaAjpijpxTaZYuR7EfjDUFmNUYBizA9/HsKITTdvtWFiqS1ZgIsbUSaGsa7
         X0yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737389982; x=1737994782;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+T/dIQ467Pa8ZD5wlg+bKAWEAxn3LDzHlpZLZ1k1N6w=;
        b=taybJlbcFOGqCP7GMk21SClwj3Xc0GCCsDigBTGRKkE5eFSh8rLnH0a4U2aXgopKoN
         +NJNnp13NYZuKcZW93rrmtIVKNxYyMs4xdZFKha3An7W5It8trIlqsiu6nl5qxGx20Uc
         bbdzX0oKtIiFTm11Xi7hABOF1fZjUNlwQbRCr/NyOSs+UzRYkN5OFxZG3aemJqdJFBUF
         DtDCyT/bNQkV5QZxjLX4yab50wGiQHlNGMDMgnqU46TNBOxUusBPBniIaD7F0ua3P3Ky
         MjVn9fOXPzftewLWuEajit0/PkTBgghZyEE3i1VeCnp6uhWkBp1aBkrziNvnE2mEldnr
         8u9g==
X-Forwarded-Encrypted: i=1; AJvYcCVTtUrCFvUzOe4qVQsvdrUrcnDeJRnAKqxj44zMSRb2AzZp/wahB3AK+DOVeyeQW1R6ogtb8avQW8vzwvpy@vger.kernel.org, AJvYcCXeKPnexOmsNviw1usA1TkI8iXa6pI2LswTwh82Mw1lsoqvFWEM9S0nIXqs2PLJlK8ZFp8Az1CzYk0O@vger.kernel.org
X-Gm-Message-State: AOJu0Yx98aGLk7Hrv3kTC8lad0eJQrEAYPGD3FOaYNCfyrsRFuRJ7mZd
	QdKbSyM8UhMdP5tBXzlvuNJDRRNZU0HUlnrIZT5A2+O+BN3cj9cM1ik8AZKWe9x6lRm6FtDPioI
	NhOrUAg1ZGIizv3TEuipR5DH2rpY=
X-Gm-Gg: ASbGncs2sOZDgkzQcZLCSJl0R43nJqy24ZD98HKn5aoDcu26boxnnBJvLU6ZqJvvjC6
	CuS92fMl+h1PJVnK0gJRPMOv4Z6dFeC2NTn4JqIyAn4FIJ2TGQFjT
X-Google-Smtp-Source: AGHT+IHnTLKJ1iOMm82p/HqF4s1+0fn4hSD8bTysYRk+SmjK8L03MIUhxh/1RPy0nrzKuIVkAqZW1U4p7MaKhWJ4pH4=
X-Received: by 2002:a05:6871:2281:b0:29e:34dc:b0 with SMTP id
 586e51a60fabf-2b1c0c541e8mr6969151fac.25.1737389981709; Mon, 20 Jan 2025
 08:19:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241217113134.3508333-1-valentina.fernandezalanis@microchip.com> <20250120121955.GA3525889@ax162>
In-Reply-To: <20250120121955.GA3525889@ax162>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Mon, 20 Jan 2025 10:19:30 -0600
X-Gm-Features: AbW1kvZJgYzNR41b1_Dbh5-5hRR8Qhmy3g3DVfFUVOvzlrzH8EQEW5RnW27gQHM
Message-ID: <CABb+yY0jbBzhgGEo2wTczF14ndOa2=Bcs6FE8BjLt4icWcxAmw@mail.gmail.com>
Subject: Re: [PATCH v6 0/4] Add Microchip IPC mailbox
To: Nathan Chancellor <nathan@kernel.org>
Cc: paul.walmsley@sifive.com, palmer@dabbelt.com, conor.dooley@microchip.com, 
	conor+dt@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, 
	Valentina Fernandez <valentina.fernandezalanis@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 20, 2025 at 6:20=E2=80=AFAM Nathan Chancellor <nathan@kernel.or=
g> wrote:
>
> Hi Jassi,
>
> On Tue, Dec 17, 2024 at 11:31:30AM +0000, Valentina Fernandez wrote:
> ...
> > This series adds support for the Microchip Inter-Processor Communicatio=
n
> > (IPC) mailbox driver.
> ...
> > Valentina Fernandez (4):
> >   riscv: sbi: vendorid_list: Add Microchip Technology to the vendor lis=
t
> >   riscv: export __cpuid_to_hartid_map
> >   dt-bindings: mailbox: add binding for Microchip IPC mailbox controlle=
r
> >   mailbox: add Microchip IPC support
>
> I see this series is now in next-20250120 but you only applied patches 3
> and 4, so the build is broken:
>
>   In file included from drivers/mailbox/mailbox-mchp-ipc-sbi.c:22:
>   drivers/mailbox/mailbox-mchp-ipc-sbi.c: In function 'mchp_ipc_sbi_chan_=
send':
>   drivers/mailbox/mailbox-mchp-ipc-sbi.c:29:42: error: 'MICROCHIP_VENDOR_=
ID' undeclared (first use in this function)
>      29 |                                          MICROCHIP_VENDOR_ID)
>         |                                          ^~~~~~~~~~~~~~~~~~~
>   arch/riscv/include/asm/sbi.h:436:56: note: in definition of macro 'sbi_=
ecall'
>     436 |                 __sbi_ecall(a0, a1, a2, a3, a4, a5, f, e)
>         |                                                        ^
>   drivers/mailbox/mailbox-mchp-ipc-sbi.c:121:25: note: in expansion of ma=
cro 'SBI_EXT_MICROCHIP_TECHNOLOGY'
>     121 |         ret =3D sbi_ecall(SBI_EXT_MICROCHIP_TECHNOLOGY, command=
, channel,
>         |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   drivers/mailbox/mailbox-mchp-ipc-sbi.c:29:42: note: each undeclared ide=
ntifier is reported only once for each function it appears in
>      29 |                                          MICROCHIP_VENDOR_ID)
>         |                                          ^~~~~~~~~~~~~~~~~~~
>   arch/riscv/include/asm/sbi.h:436:56: note: in definition of macro 'sbi_=
ecall'
>     436 |                 __sbi_ecall(a0, a1, a2, a3, a4, a5, f, e)
>         |                                                        ^
>   drivers/mailbox/mailbox-mchp-ipc-sbi.c:121:25: note: in expansion of ma=
cro 'SBI_EXT_MICROCHIP_TECHNOLOGY'
>     121 |         ret =3D sbi_ecall(SBI_EXT_MICROCHIP_TECHNOLOGY, command=
, channel,
>         |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   drivers/mailbox/mailbox-mchp-ipc-sbi.c: In function 'mchp_ipc_sbi_send'=
:
>   drivers/mailbox/mailbox-mchp-ipc-sbi.c:29:42: error: 'MICROCHIP_VENDOR_=
ID' undeclared (first use in this function)
>      29 |                                          MICROCHIP_VENDOR_ID)
>         |                                          ^~~~~~~~~~~~~~~~~~~
>   arch/riscv/include/asm/sbi.h:436:56: note: in definition of macro 'sbi_=
ecall'
>     436 |                 __sbi_ecall(a0, a1, a2, a3, a4, a5, f, e)
>         |                                                        ^
>   drivers/mailbox/mailbox-mchp-ipc-sbi.c:134:25: note: in expansion of ma=
cro 'SBI_EXT_MICROCHIP_TECHNOLOGY'
>     134 |         ret =3D sbi_ecall(SBI_EXT_MICROCHIP_TECHNOLOGY, command=
, address,
>         |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   drivers/mailbox/mailbox-mchp-ipc-sbi.c: In function 'mchp_ipc_probe':
>   drivers/mailbox/mailbox-mchp-ipc-sbi.c:29:42: error: 'MICROCHIP_VENDOR_=
ID' undeclared (first use in this function)
>      29 |                                          MICROCHIP_VENDOR_ID)
>         |                                          ^~~~~~~~~~~~~~~~~~~
>   drivers/mailbox/mailbox-mchp-ipc-sbi.c:420:35: note: in expansion of ma=
cro 'SBI_EXT_MICROCHIP_TECHNOLOGY'
>     420 |         ret =3D sbi_probe_extension(SBI_EXT_MICROCHIP_TECHNOLOG=
Y);
>         |                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
>
> Can you please fix this? It is a little frustrating this is happening
> just as the merge window opens...
>
Usually the platform specific stuff goes via the platform tree, for
example there isn't anything 'mailbox' about MICROCHIP_VENDOR_ID and
__cpuid_to_hartid_map.
I pick only mailbox patches unless the maintainer acks and wants me to
pick platform ones. Though I should have noted that I am picking only
mailbox stuff, but ok I will queue them now.
Thnx

