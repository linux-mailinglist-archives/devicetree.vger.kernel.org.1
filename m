Return-Path: <devicetree+bounces-117634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F619B7402
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 06:07:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 373651C23148
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 05:07:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17CF012C52E;
	Thu, 31 Oct 2024 05:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="rtbOz9FL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A92A7F460
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 05:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730351246; cv=none; b=qKyhMto4Mu5I6f7fyivLqfae1/77L5xi6jNmEt6SyQEWsLqhAvEqksy51ff9dnmS7z1ZhuvBUOt+iHsqn0to4zsZReWBZf6HVTrlk9LCmv5TnrYHjM2Mq7DMu7N8xBlV9qpba9M5DqheeC0JwDdZ9bcDiAH0IYD1kYCTTrJtpEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730351246; c=relaxed/simple;
	bh=BVGxidBrPIxC7Pw8/J9gabfFzysrA/7Cy/+pGzP21As=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=N03xYVqnP1ernue58R+OExNktRRRYIMbdDy1mcB1Bc4wLxMZYpB1esU/uaM11+XymL578rqEbWdCIyL5mY545WexPCbNjVUWZJ+5l/LT6dlXcDadO57ncHFUTYHA2gjlQVRjKPazXb6ncp3u/gGpRRYw161THzWo85+rP/riaIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=rtbOz9FL; arc=none smtp.client-ip=209.85.166.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-83ac4dacaf9so19003239f.2
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 22:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1730351243; x=1730956043; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BVGxidBrPIxC7Pw8/J9gabfFzysrA/7Cy/+pGzP21As=;
        b=rtbOz9FLwuhEsX2tgbw9cYXqMYWpwYqgU8NzlPD+ByQW83PIRhowqfaPYt4xULedaC
         YrivhDgY6jH0n0fru1thbF4L7ISre7yhRfvWKSpU/8NBXsPtZrScQ6OGvNQ64QBG6lZ/
         kMiQ6xiPSvQ1Iu/UueRjaeKzuG/4MMiMSI2moF3oDxcSqnbv3RT5FgdBxa8BW0r2WVFm
         9Iib0EXreeaEdEPUsEi7sMp13z7y5nEvlaj5lUoHJl61TZ9n8ncoUfAkWMGe+ATMq5/R
         dvxuQs8SHxqEgKRzf6lB7kTT2WJZ0PudOjBINJAdEmx/ALJA4fsyL/JZLALNBtWVstVF
         1LmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730351243; x=1730956043;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BVGxidBrPIxC7Pw8/J9gabfFzysrA/7Cy/+pGzP21As=;
        b=NWhLozUqRUWzoFo7/6fEKaVIjsAArfc6H234aD56CoFBrfRsKr8BPa4Xz10BIt4g4K
         GO9+luHgRFSVnAHakmv8vA25JGrK1C5i99Bod9Dx2Zmf6AK9eTz1VCtrQHzJN6B7uJKb
         y2uQ5BMKijKbKO/AjfLCiqULPz6GZjVMiYNhU0FyfEztxrhcribsymV0wTawIbdSLdRP
         JM4n1ArHwbjhnNjLb4//nk1zJ7dFaq4ukbMYGlB6dFoNckZpisGvwunf2jLcJeJm5Cb6
         z91XTEEy3U0ezxDlDEnXwU0qu3BRSrAyQi+F7gTA1kftmoRCi8eF2KPhwNbFhTDzE1Tw
         kpOA==
X-Forwarded-Encrypted: i=1; AJvYcCUEjQ7/w04gxYNAqool+HJKy231GatU9HfPUs5kfP5GlnkP0UKw7PSfpADEgC55KmqrDi7U1mdMzwOm@vger.kernel.org
X-Gm-Message-State: AOJu0YwMLUheQQtoTOqjKxbCYk0b8zo2aVLRap6aMT6lNAC9xZDKwppV
	L/Rr7YDKr7JWJCgQkasfjC3q3qMUfg1UcYfXogDjdEdolW5eDMTvO6QpN8K7jqihPEk3/B3US9w
	egsXjfDKBnP1eb6TDx4k+EMVUPTAXcYp0yDbvRQ==
X-Google-Smtp-Source: AGHT+IGKSS0oE6ZZZVTE5+2/YcSg10PO2QOjMDrhYFcNxF/PI3ziUnGYHfAwByoaNayiDU4uhIQ2KaN8z8HN2+g036w=
X-Received: by 2002:a05:6e02:1a45:b0:3a3:96c4:29bc with SMTP id
 e9e14a558f8ab-3a60f217586mr23325355ab.11.1730351243169; Wed, 30 Oct 2024
 22:07:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241022040218.450573-1-inochiama@gmail.com> <20241022040218.450573-3-inochiama@gmail.com>
 <87jzdr2vyg.ffs@tglx>
In-Reply-To: <87jzdr2vyg.ffs@tglx>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 31 Oct 2024 10:37:10 +0530
Message-ID: <CAAhSdy3Rmhhv5uzOzCT_B3EzQiXgV1FejZQbc5sLpwwFOXd5cg@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] irqchip: add T-HEAD C900 ACLINT SSWI driver
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Inochi Amaoto <inochiama@gmail.com>, Chen Wang <unicorn_wang@outlook.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Peter Zijlstra <peterz@infradead.org>, 
	Inochi Amaoto <inochiama@outlook.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Yangyu Chen <cyy@cyyself.name>, 
	Hal Feng <hal.feng@starfivetech.com>, Yixun Lan <dlan@gentoo.org>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Thomas,

On Tue, Oct 29, 2024 at 1:16=E2=80=AFPM Thomas Gleixner <tglx@linutronix.de=
> wrote:
>
> On Tue, Oct 22 2024 at 12:02, Inochi Amaoto wrote:
> > Add a driver for the T-HEAD C900 ACLINT SSWI device, which is an
> > enhanced implementation of the RISC-V ACLINT SSWI specification.
> > This device allows the system to send ipi via fast device interface.
> >
> > Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
>
> Can someone from the RISCV folks please confirm that thtis is good to
> go?

The T-HEAD C900 ACLINT SSWI is not compliant to any RISC-V specification
so at this point it is a T-HEAD specific device. The RISC-V ACLINT SSWI
specification cited by this driver was never ratified by RISC-V internation=
al
in-favor of the ratified RISC-V AIA specification which has a much cleaner
way of doing IPI (as software injected MSIs) implemented by the IMSIC
driver and this also supports IPI virtualization.

Since this is a T-HEAD specific implementation, the description in all
patches of this series should be updated to replace references of the
RISC-V ACLINT SSWI specification with publicly available T-HEAD
documentation. Once, this is done, I think this series can go ahead.

Regards,
Anup

