Return-Path: <devicetree+bounces-82182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F94E91EB34
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 00:56:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C04A42825FD
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 22:56:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE285172BA2;
	Mon,  1 Jul 2024 22:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="yPDujowY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CE5F17109D
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 22:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719874579; cv=none; b=Rzt0NBYv5FDXxfxV4PZIzJaT/Hb0H0LbHStRFLYbY2AxqE/9l5okK2peXdAPGPoZfv17YPxMevSJWaNOXhpNSIoLEGpL7VTjCOMH4+TvCKpRig884Uc8Wtwcglg8SS+ZmTe2UEZ75zuagX9jR9dYVeL9QUE4deyvyuudrFAAx2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719874579; c=relaxed/simple;
	bh=pmC2M6bLDxQckUOcGYR00FGeVuFNRh7VyeuhTFShZ6M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=c4DUn6zJ0fZpns0W0HjM9J/mOV8SKkDG21dZ2g/DeJ0oall29U5hJVOQ0KTFe+V/cUjJpF68KWpjTgZoLMhrEPM5fm/8kjQNJSwh2zKhB/8N2PSMDMEJxTHknK3p2BwppkgGzAbDJ639gqJswkU8QD76xdrgGtY9E/zMhfnRoFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=yPDujowY; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52cdf2c7454so7456811e87.1
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 15:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1719874575; x=1720479375; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hdJUfDYOyf/WJJ9zrH24ztlqBOCblPzsJzyTcSzB/DA=;
        b=yPDujowYXx2jKCXoE/x6JBUFkBZvLFlC/E68E46hKg2EPlmj2p9wnXknsgx1+QleK/
         JA/w4iTG5POVOULqImOouZVktDFIjIeoNPPNHj8ZIzA7dd5cguGpnxeH8z+Au04jkr0a
         KtzVD0N8+BLm1OusCbTzX5q02z1rbCyUa3/ajoUK6xemIWMb/0k9T0n6KFT9vZx0GJ5S
         Ek4JZzwV3sz3lonQVbEJ4j4VP+ACzhD+aAGpt+kGF1zcxhjNv6lBwdFCRkhDJ4TdGGDr
         BbYCC9G0Kv0LFI4mGP0s8Ntgnl1no2FpxkBZznkbQw5acxgaH/wp1GzKz/MHldOY9UDG
         Nt/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719874575; x=1720479375;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hdJUfDYOyf/WJJ9zrH24ztlqBOCblPzsJzyTcSzB/DA=;
        b=eFzgBht4UqKoxgUtHmh7HOOFepF7F47EMg733d3b6ipzGJJceW+NQmJvMSzbZdR+OS
         OyBwMWi+kod1jHaXs80Glm19XIH2ySYpHMg2Ika9lCbGOx7ViPVIHQsV0wpQZOmvQWUL
         Iq4RoxXBwHPsHqpVo9X4FUL5Q5LBmK1eeUgDziZLPEPFtHZ0f+FGTpily/j7spy+jV/F
         OxG5xfY586KFvBTnWJgvNxuBEN+OQhlj38TsmqhCNfq8vMb4Wn8n2BRpm0BYJVQMdpn+
         D5Ou5L07oI+mQOWTx1dSeKaw5F3/3f10HB0p2OucLVhfVV4oJ35N2TM/x80a7TqQqG6C
         b2Yw==
X-Forwarded-Encrypted: i=1; AJvYcCUgpv0yuAf7QQwnrDW6j9tekOI/X/uzJhlE577qWpm9bX7q6gXKDelpt91AnNX0Mqis4oSqV6PLi2nNj96Pbs2WxQ54Il6Cp59RjQ==
X-Gm-Message-State: AOJu0YxpdAOHggCHYGwhnvcDUUkF82NewPNxO2nIlIh4/nN/kVtRdIQN
	4jO95FQaLCoPjZbaSmydW5mk9pjDRzAbCgSoxD03yUEdIw5J4WLVwquq49XPeCd157loZFAKjEY
	DfXeCBp/zVEPJB0MB37BVDatfdw8ivb/v+Qjg7w==
X-Google-Smtp-Source: AGHT+IHFoX0TblQJwZ+l7iqTozuVaBmypZrrJQg9ZDiu8wwUJWTW/D2dHfLDkj0hkIeaAJGWSulK7BcCs24nFJxPIgo=
X-Received: by 2002:a05:6512:6ce:b0:52c:d2ab:693a with SMTP id
 2adb3069b0e04-52e82705af2mr6381035e87.54.1719874574664; Mon, 01 Jul 2024
 15:56:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240625005001.37901-1-jesse@rivosinc.com> <20240625005001.37901-9-jesse@rivosinc.com>
In-Reply-To: <20240625005001.37901-9-jesse@rivosinc.com>
From: Evan Green <evan@rivosinc.com>
Date: Mon, 1 Jul 2024 15:55:37 -0700
Message-ID: <CALs-HsueQrj5_VX0jZP4RrxL18PoGB4Q_mbAbf9c9phX9wNaxQ@mail.gmail.com>
Subject: Re: [PATCH v3 8/8] RISC-V: hwprobe: Document unaligned vector perf key
To: Jesse Taube <jesse@rivosinc.com>
Cc: linux-riscv@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>, 
	Andrew Jones <ajones@ventanamicro.com>, Charlie Jenkins <charlie@rivosinc.com>, 
	Xiao Wang <xiao.w.wang@intel.com>, Andy Chiu <andy.chiu@sifive.com>, 
	Eric Biggers <ebiggers@google.com>, Greentime Hu <greentime.hu@sifive.com>, 
	=?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@rivosinc.com>, 
	Heiko Stuebner <heiko@sntech.de>, Costa Shulyupin <costa.shul@redhat.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Baoquan He <bhe@redhat.com>, 
	Anup Patel <apatel@ventanamicro.com>, Zong Li <zong.li@sifive.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Ben Dooks <ben.dooks@codethink.co.uk>, 
	Alexandre Ghiti <alexghiti@rivosinc.com>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	Erick Archer <erick.archer@gmx.com>, Joel Granados <j.granados@samsung.com>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 24, 2024 at 5:52=E2=80=AFPM Jesse Taube <jesse@rivosinc.com> wr=
ote:
>
> Document key for reporting the speed of unaligned vector accesses.
> The descriptions are the same as the scalar equivalent values.
>
> Signed-off-by: Jesse Taube <jesse@rivosinc.com>
> ---
> V1 -> V2:
>   - New patch
> V2 -> V3:
>  - Specify access width
> ---
>  Documentation/arch/riscv/hwprobe.rst | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/ri=
scv/hwprobe.rst
> index 7085a694b801..d102b4a16d55 100644
> --- a/Documentation/arch/riscv/hwprobe.rst
> +++ b/Documentation/arch/riscv/hwprobe.rst
> @@ -236,3 +236,19 @@ The following keys are defined:
>
>  * :c:macro:`RISCV_HWPROBE_KEY_ZICBOZ_BLOCK_SIZE`: An unsigned int which
>    represents the size of the Zicboz block in bytes.
> +
> +* :c:macro:`RISCV_HWPROBE_KEY_VEC_MISALIGNED_PERF`: An enum value descri=
bing the
> +  performance of misaligned vector accesses on the selected set of proce=
ssors.
> +
> +  * :c:macro:`RISCV_HWPROBE_VEC_MISALIGNED_UNKNOWN`: The performance of =
misaligned
> +    accesses is unknown.
> +
> +  * :c:macro:`RISCV_HWPROBE_VEC_MISALIGNED_SLOW`: 32bit misaligned acces=
ses are slower
> +    than equivalent byte accesses.  Misaligned accesses may be supported

Do you think it's worth specifying that we're talking about byte
accesses using vector registers? In other words, clarifying that we're
not comparing misaligned vector loads to loads/stores into the scalar
registers. Maybe something like:

32-bit misaligned accesses using vector registers are slower than the
equivalent quantity of byte accesses via vector registers. Misaligned
accesses may ...

-Evan

> +    directly in hardware, or trapped and emulated by software.
> +
> +  * :c:macro:`RISCV_HWPROBE_VEC_MISALIGNED_FAST`: 32bit misaligned acces=
ses are faster
> +    than equivalent byte accesses.
> +
> +  * :c:macro:`RISCV_HWPROBE_VEC_MISALIGNED_UNSUPPORTED`: Misaligned acce=
sses are
> +    not supported at all and will generate a misaligned address fault.
> --
> 2.45.2
>

