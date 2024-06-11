Return-Path: <devicetree+bounces-74680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E55BC9040A4
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 17:59:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0295C1C232F8
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 15:59:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1168439FF4;
	Tue, 11 Jun 2024 15:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="s/ry5662"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E261EB31
	for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 15:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718121557; cv=none; b=FoD7d6QXEv8wTSNLyaGPgB2kjkRTMCrPoJ6ec/adCDPYwUM8dw6jFyDelkUmUMNjR4rXCF5NrLVmSjCo9IYeYj4RcXwinOVXJ440jULBqMaB7NvTprN4Rvqbex/Y3Afn4J7fZLrOAqffU+R7YpC0CocLu+/b7zU7UhINpVWEY9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718121557; c=relaxed/simple;
	bh=HsSfwE4c9FKwzt2D18mve0ctqok3simx/c6Sk4d9mD8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jyAhTqivANgWULg/+ihxQe+98tW7x1DBQ+XTxS4G6b3HEQQc3tets2G20ZTGjbbdxjmXmNBE3C7yknhX3SaJ9sALzfQgUBPzV4QQ27vOJtOsnfSu6eIur0LgStRhQXCayu6k1HFZYAtF2CEe9OuGhhVucnIRuY4p0vVD8cRvEa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=s/ry5662; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-57c75464e77so1663165a12.0
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 08:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718121554; x=1718726354; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7KeeLnew4Dr2lt2iWiQJB+NWU2kaX728eR1Y/pdt+oA=;
        b=s/ry5662Ge+hWbpEAGorm7hqKMZpZcv4wxPprCcclHLcbNXybxPYxyzYt6SpTbK8lk
         xzj/neGZvGQCCVqomCcHuBX2n2t5Sw/wma4lwmXtiUrCxkHh9ijuHpJwxy/nnyM08uvu
         nhKM77yPVFu9B91OourqJO+UmrDMiajArZkBNTRan+yrSGUAAc4P2UoYeXT+3cn7uLzM
         KrmG64DemnXC017Qhj749vZw5+c3BcaQlR9Lfxct3b1kgWEig7quSDiYXDVBcBPqxK6J
         u94g/GyF0iKyegEROSXhGtbmOi72nRF2tfisVYDw9nFdq7FhW5gS/5i8SlGd0zf3euvD
         WiHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718121554; x=1718726354;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7KeeLnew4Dr2lt2iWiQJB+NWU2kaX728eR1Y/pdt+oA=;
        b=TLVcYO8OPvAXnYjzbWURLuo1iZgWHR/LWeti2er6vxwyCcEBGx4vovknwojgzmJgBF
         MMuSOWnCMkeGAvQLwisk0nPwJO+wm0O9d7OgNogyVhjIB85DJcKHwyYUDlCUjvtY4f1h
         /k/CYP063QKnzRV1G4eSbJufvcFlUfjcROeUf4SXIB2uZwFS9yK7fmF53SiBlIi3/vRI
         aLW5qSxpEK/avpxp3sLE+Z/M6XEmJKm7digU6XmPk1pOC5lmUO9GO3v0D29qO51Jrrgw
         zVTQN/rCgm3dukVQYHuALhJFcUPHLTWZfdSu3uNyzafi94FEFvR2hL5rMNum1WtceDfi
         REsA==
X-Forwarded-Encrypted: i=1; AJvYcCUGc3U7XqSufUvt8Kqjz/PPu95g0zjhgYsRX4n7ev2eBL2Qffy3UtXUcopUZMG+hoZwDE3cjPK6Z/rNfLuB6usdF2uDRorgZYwtlg==
X-Gm-Message-State: AOJu0YzR2NHYfnm0Nsaby9ZVhf5sC5O8AB4QNrJoFIRBNVTv6xytf/Y3
	5T/TCRUtYplKEYS/R4jBuvGIlnCb+Tb8wXd1JoCashhbzY6v/OhtMUnSFCW0qGnTfqzkDAwuUpi
	2mEGkGKjcED1U3JlA8lLRQmzVVm5ScmKxbvB4vQ==
X-Google-Smtp-Source: AGHT+IFtN4cYhXjGsiGLi9dtTvtTxex9wzVTtZ32q9gZra1QREy0esNjyQa0xfTpDsvoF9kv8aqdxu0J/DY1HdrDZBE=
X-Received: by 2002:a17:906:2811:b0:a6e:f7bc:dcab with SMTP id
 a640c23a62f3a-a6ef7bcdd76mr607353666b.65.1718121553604; Tue, 11 Jun 2024
 08:59:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240610-xtheadvector-v2-0-97a48613ad64@rivosinc.com> <20240610-xtheadvector-v2-11-97a48613ad64@rivosinc.com>
In-Reply-To: <20240610-xtheadvector-v2-11-97a48613ad64@rivosinc.com>
From: Evan Green <evan@rivosinc.com>
Date: Tue, 11 Jun 2024 08:58:37 -0700
Message-ID: <CALs-Hsu2jFAfr7H9UfLd9VHEZvpfF7Q6Chxko3XbBZBCU94eSw@mail.gmail.com>
Subject: Re: [PATCH v2 11/13] riscv: hwprobe: Document thead vendor extensions
 and xtheadvector extension
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, Guo Ren <guoren@kernel.org>, 
	Andy Chiu <andy.chiu@sifive.com>, Jessica Clarke <jrtc27@jrtc27.com>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
	Andrew Jones <ajones@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 10, 2024 at 3:57=E2=80=AFPM Charlie Jenkins <charlie@rivosinc.c=
om> wrote:
>
> Document support for thead vendor extensions using the key
> RISCV_HWPROBE_KEY_VENDOR_EXT_THEAD_0 and xtheadvector extension using
> the key RISCV_HWPROBE_VENDOR_EXT_XTHEADVECTOR.
>
> Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> Reviewed-by: Evan Green <evan@rivosinc.com>
> ---
>  Documentation/arch/riscv/hwprobe.rst | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/ri=
scv/hwprobe.rst
> index 204cd4433af5..9c0ef8c57228 100644
> --- a/Documentation/arch/riscv/hwprobe.rst
> +++ b/Documentation/arch/riscv/hwprobe.rst
> @@ -214,3 +214,13 @@ The following keys are defined:
>
>  * :c:macro:`RISCV_HWPROBE_KEY_ZICBOZ_BLOCK_SIZE`: An unsigned int which
>    represents the size of the Zicboz block in bytes.
> +
> +* :c:macro:`RISCV_HWPROBE_KEY_VENDOR_EXT_THEAD_0`: A bitmask containing =
the

Our recent snafoo with CPUPERF_0 popped into my memory
when reading this. Does this work properly with the WHICH_CPUS flag?
Specifically, we need hwprobe_key_is_bitmask() to return true for this
key since it's a bitmask.

