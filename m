Return-Path: <devicetree+bounces-223389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 889EBBB3E15
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 14:23:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6763A7A1589
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 12:22:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B92F30FF24;
	Thu,  2 Oct 2025 12:23:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F9E4280317
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 12:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759407831; cv=none; b=E0E6Ov6s9A9kwbMeQaXGBmIsJ44H2vur68vfk9/NSNCQsSIzNJKsKFs2C4DGlGcMHeg9dEbH3O0y48bvydamtbmLjt27DXeGBiKstIzza/r5jH2B4ImQ2T41vewBt2BxLpRpJRIQCXHlVd7Gpo5It5XC6XrprZI9o3Y5W+zzv/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759407831; c=relaxed/simple;
	bh=AC0onUH/KWR12euPrEMMEF6CxzSfY+hS18p7k/rNiSI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SnhsHkcxhMIJEmrR/4GPArjgrLFsYD7RRToJctDkxKjn1zpS9kTYb4q2e+ztKUAHbVk9lDGfbNWJMQOTS6RalpfGe1TxCgAUHpU3VbTUXB96qMWvilLGTTnVMvXG2UQa/x5ytSkEJUjCyqgQ2fOPpAqIx4KosRXwwugCyMnmgIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b3e9d633b78so206411766b.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 05:23:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759407826; x=1760012626;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JHq3klzPYB8yjcAVOmszOfkdhflrtsWL0PRMLhhvkhU=;
        b=MKLjL9HX9ZHOAy0PleALrreMUFUUUPBUa1Uh/ifClZdVtIwODvPYaZslnJ33/nBdh4
         pvQlBFsgjGS23FrKUAoESDR9hn48l5cbMJW1DQUQmgTH0WPbU1TLfOxcDulN7LVKsJkq
         J1upX67H0NNDmJ6lzwL7GxEp/l00Cql2VRQdfxoBiAwpFa+hiPK9JHnedQQwnkSFQcsZ
         BTCVxEGgRgngeYGZm4PwFFgutLSHj4W1dI7fX5EkINBu08DKB70pDBaBa2ZtxoImJx9d
         TzrzMJcolL13zWRvBVqw/G0tlteNWYVH+iNNxiuNMIHVLMIeOMT/vqOZCsadPlI0oRXJ
         Bprg==
X-Forwarded-Encrypted: i=1; AJvYcCWHNZMTnFmys5dhGAQH5Alywnx256yAh1SfraLNF81TD99sBKFsexaiKyRUUNa0pJ2SwBIqvCJJzJpV@vger.kernel.org
X-Gm-Message-State: AOJu0YwgMA4YlkFLZpf0Rm1DT55tkF/AgAcljpVBZ0a8GN/LB1AFJXu/
	nUOhqZE9A162jtM2lDPr92uKoWmetqZ3vlgJCwW6JyLUcIyp7HBufHCKZOnK/L2SDIw=
X-Gm-Gg: ASbGncsIochQ8I1w/t5IzmqN7OmfByzdWXmccEY1cBGSBbZqRNhfnWob/f0nHrEQpdV
	dnJacv8Olbc8+Cv0570MNg3QkW/kFOV32MfxcofCoBeiKyfewYoTZeJrlFyhIK1+ikH8JWHp1Wp
	yMxvKQa3nEnZnBJeu7TUixrKeUpnFIm++GiS2nQJRjl4khNweitxoy/gpHTWeAUQr5mcICZ82DK
	pbQqizOq58uZ74gRJgJSVjckyTRQj2B9zwixgNDO1dNQBpsVVAMpSSlWc0SRv310c+wIQEJ51uI
	plIOjtuhOleB50bBy/yhAbAxiYd4XydYTfRAVJbrbDzCxJJ8sJplkFvqDQ1VhG3B65En47/x4Ig
	DkwWNGBXJiUdEEhsdbgtrmp6F9wg/jShk81rlbsqApxX4CgQbXTNCemQRkat5RrnCLomzvInN9M
	ClgGL6PxsSQhxkSr/BgJs=
X-Google-Smtp-Source: AGHT+IF1A6m+lMpq4ZchDOIrznV5unECqOFH3Xcte40MzCr8/Idsx2XUgppu+KfnF95ZJ6SudhfA/Q==
X-Received: by 2002:a17:907:a893:b0:b3b:478:515f with SMTP id a640c23a62f3a-b485b8ae07cmr375460366b.22.1759407826430;
        Thu, 02 Oct 2025 05:23:46 -0700 (PDT)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com. [209.85.208.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865a7c660sm192381566b.22.2025.10.02.05.23.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 05:23:45 -0700 (PDT)
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-631df7b2dffso2034752a12.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 05:23:45 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUF5KQhPQ5yILFNkXFiOsze5JY+6w7VdwgF4BHL7y7h1aITTCrX6EXMo7piiR89xMAU7iRuLyBFQbV8@vger.kernel.org
X-Received: by 2002:a50:99db:0:b0:631:6acd:fa3a with SMTP id
 4fb4d7f45d1cf-6376a8cbaebmr2386247a12.4.1759407825048; Thu, 02 Oct 2025
 05:23:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251001122326.4024391-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251001122326.4024391-8-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251001122326.4024391-8-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 2 Oct 2025 14:23:31 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWQZzgv-St7a05Z0nr6ijDG=a5UT6dkz0apx4Ympxowgw@mail.gmail.com>
X-Gm-Features: AS18NWAPPSWmlScZEb54OFRRxiDbKu9VBgdxP80maayV33NLkOLsg7T87DMtor8
Message-ID: <CAMuHMdWQZzgv-St7a05Z0nr6ijDG=a5UT6dkz0apx4Ympxowgw@mail.gmail.com>
Subject: Re: [PATCH v3 7/7] arm64: defconfig: enable RZ/T2H / RZ/N2H ADC driver
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-iio@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 1 Oct 2025 at 14:24, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs include three
> 12-Bit successive approximation A/D converters.
>
> RZ/T2H has two ADCs with 4 channels and one with 6.
> RZ/N2H has two ADCs with 4 channels and one with 15.
>
> Enable the driver for them.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

