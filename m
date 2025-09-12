Return-Path: <devicetree+bounces-216614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 57137B555D4
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 20:07:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B4A391CC3C58
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 18:07:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DFFA329F31;
	Fri, 12 Sep 2025 18:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nVeSEIT2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91F9D326D4A
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 18:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757700447; cv=none; b=uKF5YAGqzhhAxgddsN9UDTtCUIjKvLOjjim5G95IarH6JQgBjpbeik3Tn2nBhcHOAfgjGpIBVit1+QdCF8i8C8uFcNSu3EJXgcFuNJ7gCoO1xxPjkXuV2vT0voGHEsxLyC2/44IKiPKq7RDGmKreSNjliiAUkS/XU2j/kxnrFVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757700447; c=relaxed/simple;
	bh=91UL/ulcV/GEAp0C9VF8AE7Y05XM25NDQ/r3vu0cb3k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iGNqh7Is5D5/UzYNoPcGBD7AWqwjj7mtgMmhgfIshSz/xN4CsgudLISP7FnvfCXVly2v2nvahTBdN4wt0jWeoGPkTXZ/Xo2u2WPMdaZkFyOigoAbeJwnDziOSP6UlYKu8duA2mhlUyMUoy25tXeEQ+KAsX268gWuMTLpNy7YzVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nVeSEIT2; arc=none smtp.client-ip=209.85.217.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-51d14932f27so958522137.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757700444; x=1758305244; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/cBY+4I9kDYtnwV9v/6I6ZDitcQUFaZn0asAaZVvZ68=;
        b=nVeSEIT2KoQ0Y0YA266Ke+/OUN74tNGk6x1QMOPi7vyhVFu7l3E5L18M9McO/VW7oV
         Qv4uJbzrx225Z2+dXCWAvCnI7xSodWAxU4q+ExCbsKSy6tW2sloRWKWzDeOX+vesm0u1
         D83C9sVybj3SrkSSKrD8Mz3uZbZuWeBfv4siFDYiDCQzGZjbpLc8dB0agNUwExLv8L5p
         b9aRQgbA9o7XYi3J/arO6NsOS0ZanMiA/MYEG83tZfdxnz20mTlAbGPpDUL63dpObt3o
         1tp78rCZsXi+jW5tygCqukL07uvbntYnVANpfW34UJiUQVu/qM0sbeT2f9McjKOWzSvp
         61JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757700444; x=1758305244;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/cBY+4I9kDYtnwV9v/6I6ZDitcQUFaZn0asAaZVvZ68=;
        b=PMIG7UgU8IpKoR7lfgRN1Mg9gN/oHKkopIOBvD7tIpB/QMCWSg9pzU8ee0z0PdRmgw
         lQRT+/0td+5VeFursmBYaVYFLtHLi/78ecd9wcq95fMNiZHnEw2rUiBxtvUB4odYTpec
         +MoPZvk1CRNb5iLm9HFIRneoKKTI9hw/Dt+L27O0mkYxtIjokxm8EQAqiYTQe4t9qbkK
         7bxV16EPW7g7tPCxV3THy2FiQquTqaUKD4+b9ZUA4tx377HI7Omx27KTEG9FLu0B3cRj
         XfOoxOPRexd5g6B9vTlr1WNLg/WJqbttzh6hdu3hH8NIOLuQR5Y90VBF8yeDu7CbDQE1
         E1RQ==
X-Forwarded-Encrypted: i=1; AJvYcCWagBK8fvgrczImC3gnHB7yC0yeLQG5e3rz08JyYMDbL2if/xgrEj1gYVVj/It+4SEXw1Y4UNGFqH96@vger.kernel.org
X-Gm-Message-State: AOJu0Ywf/BcVU4gLV4/rK9Kfbtpe/M1QZm8OK8ARwYzvp30YqZ7flT/7
	QU5E0hGQAGFoqhREvaOMhmC6jpsa1DIqdSwbdBuTB/o+eg31dvYvLvHusky4ZvttuJiQ/aEqv5I
	GfnQueE70oO69/jFEZOGRbTXxlA8jIU8=
X-Gm-Gg: ASbGnctXLJ7n3RVpLfKi2uH2/gokIBz6rdRXNazTYbrM5GEJMoW/mcvAe527v+ORp4W
	llUm15esC8n0k/DCWmNx5xZiKFec+xuMxohGRLeQxXuz0iO8FqUkOWQflemlxFEP59mneKVZw6q
	dVI5TjrG7s30mBTtK8PDLHY+xvFPY+h/KBY1E1p8uGI4bJGuXIE/AGEk5YZHLcCGcVEkHkkRU8T
	ql0bquBnSY82XmJ
X-Google-Smtp-Source: AGHT+IHA+4YE8uxdOY8mjzHAWOze6g0jysCAnLhY2/U0gcZe9QhNxJxuu1yw+kCWxTzyKi9VvCfDucHKBNGgGt12ZKw=
X-Received: by 2002:a05:6102:808f:b0:525:9f17:9e6e with SMTP id
 ada2fe7eead31-55611a64c15mr1928096137.23.1757700444451; Fri, 12 Sep 2025
 11:07:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250911-starqltechn_slpi-v1-0-93ebf951a932@gmail.com>
 <20250911-starqltechn_slpi-v1-1-93ebf951a932@gmail.com> <d95fc175-359f-4559-b680-36de87d75a40@oss.qualcomm.com>
In-Reply-To: <d95fc175-359f-4559-b680-36de87d75a40@oss.qualcomm.com>
From: Dzmitry Sankouski <dsankouski@gmail.com>
Date: Fri, 12 Sep 2025 21:07:13 +0300
X-Gm-Features: AS18NWCeZSM2Dpl4Jrn5JvaZJYtLfchyR4mokH5Ss7_O4FfKDP8nLezjBHbSzhQ
Message-ID: <CABTCjFCaOOJUOp-Cr+OifNTGFe7KUgoftLAhPzCQxuGACrsLmg@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sdm845-starqltechn: fix slpi
 reserved mem
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D0=BF=D1=82, 12 =D1=81=D0=B5=D0=BD=D1=82. 2025=E2=80=AF=D0=B3. =D0=B2 1-3:=
58, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>:
>
> >
> > However, kernel refuses to boot firmware with 15MiB reserved region.
>
> Why so?
>

It fails with load firmware with:
```
[   22.452709] qcom_q6v5_pas 5c00000.remoteproc: segment outside memory ran=
ge
[   22.453163] remoteproc remoteproc1: can't start rproc slpi: -22
```

I tried to debug print addresses, but those numbers didn't make sense for m=
e.
I updated the commit message to be more clear.

> > Increase slpi reserved region to 16MiB.
>
> It would make sense, given the PIL reserved range is now almost
> contiguous (bar the hole between spss_mem and adsp_mem.. you might
> want to check that one out as well)
>

Actually there's no gap between spss_mem and adsp_mem, adsp starts from
0x97800000, while spss starts from 0x97700000 and occupies 0x100000, so
0x97700000 + 0x100000 =3D 0x97800000.

Also, I noticed, spss_mem is not referenced anywhere.

--=20
Best regards and thanks for review,
Dzmitry

