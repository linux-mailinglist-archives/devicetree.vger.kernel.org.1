Return-Path: <devicetree+bounces-180734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F15A7AC4BDC
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 12:00:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8781418973B4
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 10:00:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19229253F12;
	Tue, 27 May 2025 09:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="VnQLdZeL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D5E61F37C5
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 09:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748339998; cv=none; b=M7dpXUFUahOp5fNUMTOFdJZIVgnDg+juyrWHHSQU1mVJ3LVsKSAbtqnR9fSVY9MJVv6ojVNn200S1YXsfU2jGIPJK+1Ds6YwJcY7GSi7watxbyD56RH2eVXapownqKXS2EIZuoxUY6NVXdQKbiNggmTA25nD9wRlDQgTRvjebdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748339998; c=relaxed/simple;
	bh=MzOvGX8O+4utQ4eU3Iajmah5bipRwCmAxAIkr/YrneE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=U6dAwX2yCqENPVuC2RRj7HqMK8E8KzeObF7w/XTif1KzAqqvNOtsSd2F9x3T+Q+ydrqG6qzlzzCtX0aFWqXeKOTQWglsd/gHCsHbjiNbci3GKMGra/3VeFn/WDgKAjZu+H4/OTBYzNF0lDxhPc0Jf7SXKf2Tgw9rQgsG0b3Vzes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=VnQLdZeL; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3a361b8a664so3267288f8f.3
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 02:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1748339994; x=1748944794; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o4DLlx+hKQhw+ENgyFAqY2PL5hW4DHMG/cxZu2R2Xik=;
        b=VnQLdZeL7eOji61GOi7HPGKca7NmU8WKZcqkehppqcA4IRKmDSOKCJrlYt4HlmKPpa
         eU6KKNINEfg8PZk3Pwek9poAcCqF/Tv5Y4by5Yc6Apt0pdGRpVlB/T+CcDEV60/pGIHu
         MD5er/23EVDP2Bsyzxdj7696KH8cZjSXkY23qXG7Q7/ekSiI8NR5tZb85VCPQC04iWMS
         PrsdakJ7e0TJbq451Nple24CBk5DGAZpZW0pV0BWfN2SZi6wBNb8MfOlIXHXaaSjM+Ky
         Dd4wTBqQQ79dVBtPHsIj2JaAzYTbC94IWzgcAp1PZDmkyI4cbQEUh9+2m8p6VnXPfS2C
         bb3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748339994; x=1748944794;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o4DLlx+hKQhw+ENgyFAqY2PL5hW4DHMG/cxZu2R2Xik=;
        b=p1IR7IF5H4sI90AW23x1Yatu9eN26FzpToCObWoepH2XJ6K8e7yc11tGhOiVMpNE8G
         y6hk9mk5eiIfDTIoGEo5WAavU9zg16XHC8P6TWmydoTWpivayV/wNxiEycQn77jn2+eD
         GL4N7hFuPz36GqFlTQjnQMjo3n8Pn/wud/GH/X4XqvsPKObzlUam7CS+P41WggnTcBUt
         qo8ccD1DRyJYPBTS1nEyrDC+lzEiWOWengJOJw2xZ3cxExIj3aU4Nm1yHLZA3MNpmOH4
         ywn5457kiq/g2jTQTFPOofXzHHL7W8ksHEvjACOGOSY3zbmGkB9btp5IOzrtQhYrq6jo
         lNXg==
X-Forwarded-Encrypted: i=1; AJvYcCUAG3i7xH1Dg0gHarprlgk7hpCZchY66jxWNwWRVPkLJkqlPlnGCFVB8XWXJuBSCWsHcM/zOcDgGF2c@vger.kernel.org
X-Gm-Message-State: AOJu0YyqhGfb7ZYvir7i8WPY3TimDM56h7zO1sd6W+qlq1+Pga1MYD5e
	7UB+e1qUHyAg9WpD9ypixVI7LTn+HnA1ZycManlgNfkl5yDQecFjUFiPpFxOAjlAC5dQ29nh2tS
	38N/h7ItyTKdggefFf3VAWz9CKQRKEitqXvyI/Do7xA==
X-Gm-Gg: ASbGncstbuo7dkvkjoUeeA7qvVsawMcK8mge104EDIN8axsh1X8yYGR4BcUUi+rT/xD
	pArvT4T7nSE0gtTCXCGUbRlfl65veyfItYUF7w66T+bTDdKGIE1TYa2j+Lhxw8VnuNv6xiyB4Rk
	VMQeMR6rZWGmuDZ9w1woguan7bYr7mPDs=
X-Google-Smtp-Source: AGHT+IEW4jiGzBYUUJeQ+hZ9q3VAC3c3XCEXdCJkYQj3sC6I500v3SraZXfwDAQYqmh+I1E3eL9qo1sRnEJZg8HQc9I=
X-Received: by 2002:a05:6000:240d:b0:3a4:d6ed:8e07 with SMTP id
 ffacd0b85a97d-3a4d6eda68cmr5556606f8f.32.1748339993821; Tue, 27 May 2025
 02:59:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250523-b4-ctr_upstream_v3-v3-0-ad355304ba1c@rivosinc.com> <20250523-b4-ctr_upstream_v3-v3-1-ad355304ba1c@rivosinc.com>
In-Reply-To: <20250523-b4-ctr_upstream_v3-v3-1-ad355304ba1c@rivosinc.com>
From: Rajnesh Kanwal <rkanwal@rivosinc.com>
Date: Tue, 27 May 2025 10:59:41 +0100
X-Gm-Features: AX0GCFvLUhtMwBzFmk1b4gn3Tur4pK0okxD3qyqun7XWisCr-irbPglToM7Uhec
Message-ID: <CAECbVCvPCsHVvm5QKQrw+DDLsZGaHMgCHyJ=cp_gFcAyiFA4ow@mail.gmail.com>
Subject: Re: [PATCH v3 1/7] perf: Increase the maximum number of branches
 remove_loops() can process.
To: ak@linux.intel.com, Peter Zijlstra <peterz@infradead.org>, 
	Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@kernel.org>, 
	Ian Rogers <irogers@google.com>, Adrian Hunter <adrian.hunter@intel.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Atish Kumar Patra <atishp@rivosinc.com>, Anup Patel <anup@brainfault.org>, Will Deacon <will@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Beeman Strong <beeman@rivosinc.com>
Cc: linux-perf-users@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Adding Andi Kleen as this was originally written by him.

-Rajnesh

On Fri, May 23, 2025 at 12:26=E2=80=AFAM Rajnesh Kanwal <rkanwal@rivosinc.c=
om> wrote:
>
> RISCV CTR extension supports a maximum depth of 256 last branch records.
> Currently remove_loops() can only process 127 entries at max. This leads
> to samples with more than 127 entries being skipped. This change simply
> updates the remove_loops() logic to be able to process 256 entries.
>
> Signed-off-by: Rajnesh Kanwal <rkanwal@rivosinc.com>
> ---
>  tools/perf/util/machine.c | 21 ++++++++++++++-------
>  1 file changed, 14 insertions(+), 7 deletions(-)
>
> diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
> index 2d51badfbf2e2d1588fa4fdd42ef6c8fea35bf0e..5414528b9d336790decfb42a4=
f6a4da6c6b68b07 100644
> --- a/tools/perf/util/machine.c
> +++ b/tools/perf/util/machine.c
> @@ -2176,25 +2176,32 @@ static void save_iterations(struct iterations *it=
er,
>                 iter->cycles +=3D be[i].flags.cycles;
>  }
>
> -#define CHASHSZ 127
> -#define CHASHBITS 7
> -#define NO_ENTRY 0xff
> +#define CHASHBITS 8
> +#define NO_ENTRY 0xffU
>
> -#define PERF_MAX_BRANCH_DEPTH 127
> +#define PERF_MAX_BRANCH_DEPTH 256
>
>  /* Remove loops. */
> +/* Note: Last entry (i=3D=3Dff) will never be checked against NO_ENTRY
> + * so it's safe to have an unsigned char array to process 256 entries
> + * without causing clash between last entry and NO_ENTRY value.
> + */
>  static int remove_loops(struct branch_entry *l, int nr,
>                         struct iterations *iter)
>  {
>         int i, j, off;
> -       unsigned char chash[CHASHSZ];
> +       unsigned char chash[PERF_MAX_BRANCH_DEPTH];
>
>         memset(chash, NO_ENTRY, sizeof(chash));
>
> -       BUG_ON(PERF_MAX_BRANCH_DEPTH > 255);
> +       BUG_ON(PERF_MAX_BRANCH_DEPTH > 256);
>
>         for (i =3D 0; i < nr; i++) {
> -               int h =3D hash_64(l[i].from, CHASHBITS) % CHASHSZ;
> +               /* Remainder division by PERF_MAX_BRANCH_DEPTH is not
> +                * needed as hash_64 will anyway limit the hash
> +                * to CHASHBITS
> +                */
> +               int h =3D hash_64(l[i].from, CHASHBITS);
>
>                 /* no collision handling for now */
>                 if (chash[h] =3D=3D NO_ENTRY) {
>
> --
> 2.43.0
>

