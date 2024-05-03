Return-Path: <devicetree+bounces-64887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 927DD8BB52D
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 23:04:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EF95FB229ED
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 21:04:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C08613B784;
	Fri,  3 May 2024 21:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="2haSRi/V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1EF1EA87
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 21:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714770248; cv=none; b=b7O8G+KHCBzG/p3krny3ufA/xTuiwa39NwC1i1Fm/sBruBTTTSNsBPxLDqvIWuBvlE/VGdwuwMH5O+oSQNg3r81N2fvxxQz5MaTG8qXKW+y+jm76lwyYlb1w8EAmEiR8bVSHEzaAUwOZIgINwlR63vW8hL3aPQVD7rm6QQVpUKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714770248; c=relaxed/simple;
	bh=kr8q0vJdMraPMNcp9YTW0aQV6wa6XsOli4AJVOGN+FU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=paPbfVHmfpsQ5vkkWvkC4ydBDWErZycScX5QnwbdUEFFIg/OQux8fydWE9AHhqraq1vow/MDVOKzfxoERC9H2W7XvtD9HkAg/gT1BhBBzhbHpQ7HAiH2x5sTbhQMvOC2Al5d7vIWSbyRJbPQvwBzjVidLJHSgMK9LqwYqcNPSvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=2haSRi/V; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2dd6a7ae2dcso1939711fa.1
        for <devicetree@vger.kernel.org>; Fri, 03 May 2024 14:04:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1714770245; x=1715375045; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kr8q0vJdMraPMNcp9YTW0aQV6wa6XsOli4AJVOGN+FU=;
        b=2haSRi/Vc0mO0U+b+R2quBqnu0V9gEADZeoMz8Oc3ITSqlsfb+jAnKWHabUQVSpg6K
         Sw2974nPzroLc2EAVx5emml2OYTX5Xsi+IhoFpbNkqUwISfbylL3iSCHWqIbTFnCSycX
         LGeKLGpOuv95H0UnJAjun0bnWgtVAlqzvJ30LCZMC2JD2DbrUmlPVTa/A4UPUWJUHrML
         iLD71xu5krDhqOperqZsjobSktkWIjjzLMipzTe4BzklEKz/rTOHjeFcj1mHTDl4yxB0
         XyA+Ru9eJOVNyFhkgaZUli1S3QbiWP0enFnnPqgLxZlsK2OOFJU52zwy2Xd2VfGjCHKn
         B4Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714770245; x=1715375045;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kr8q0vJdMraPMNcp9YTW0aQV6wa6XsOli4AJVOGN+FU=;
        b=k0qncT1o4dVy610dzIZTpIQUHy2E7YFT9c6ET0lXFYZW/GwHv8UrRf/e8TzmGgyO2x
         Ca2UUQoUfWJ2GX8wxLPxyYYu2fm5sSkME3n2gsLwfKggJt7DkPfGpq2vRE/Pj+RKcitp
         rLYZ6a2X2tAv4uQp6vgZataCmMHn810Vvz0Ha1YhxGkOvWr5O05RjYlO/m2HN/KZXWxX
         pzoeuk39IRVpwRp81yDt33MdO6okW5qQ/08Ty9qhK53loybvHOTTwGoZD2ZLz5oZ+DLF
         oDP/xayTtC7SoUi+ylpVB+EtyyxnHqPxckM57/BsjTPRX3s5uhOHgW0qdSSNdp6QNGXJ
         6reA==
X-Forwarded-Encrypted: i=1; AJvYcCVUoDAuJ3FK+QICCo4YRMhz2rqe1L8YtgnnK++mSTfVwJL+q6ITeljwxqb0fd/Z5lY5+bNdVI/9AlJoH7nWmjqaVayjAfKjOUwSKw==
X-Gm-Message-State: AOJu0YwABmH92V4EXiGKBOXM7dQhCAoz005uIKJ7AvD4kfa55Ho8H+OC
	5QTJNKSLBFjDPixtZ0JHcKsQyshbuOorpbROwxw8m7W9tVtGP+TEYy9m1byhz4k2cKJII3b+sCq
	X1PJ3YVLFFVDgCfuDwusWvWQ6dwACMzAbhLSFiQ==
X-Google-Smtp-Source: AGHT+IFVGeh8LKuvAXn0wbATQFthajoGa9wA2FpRSy48ryw0IkU/MmVyuccePKcDYu88/CEm2wRejt72X+QG3nu2ZVk=
X-Received: by 2002:a2e:a71f:0:b0:2e1:f255:6673 with SMTP id
 s31-20020a2ea71f000000b002e1f2556673mr3009473lje.13.1714770245520; Fri, 03
 May 2024 14:04:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240503-dev-charlie-support_thead_vector_6_9-v6-0-cb7624e65d82@rivosinc.com>
 <20240503-dev-charlie-support_thead_vector_6_9-v6-6-cb7624e65d82@rivosinc.com>
In-Reply-To: <20240503-dev-charlie-support_thead_vector_6_9-v6-6-cb7624e65d82@rivosinc.com>
From: Evan Green <evan@rivosinc.com>
Date: Fri, 3 May 2024 14:03:29 -0700
Message-ID: <CALs-HsuH5KM4OEH3Uo58cq=3Zgr-gd43hhtOuP2tQFDyDUjq2w@mail.gmail.com>
Subject: Re: [PATCH v6 06/17] riscv: Add vendor extensions to /proc/cpuinfo
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Guo Ren <guoren@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Conor Dooley <conor.dooley@microchip.com>, =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>, 
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Palmer Dabbelt <palmer@rivosinc.com>, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-doc@vger.kernel.org, 
	linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 3, 2024 at 11:18=E2=80=AFAM Charlie Jenkins <charlie@rivosinc.c=
om> wrote:
>
> All of the supported vendor extensions that have been listed in
> riscv_isa_vendor_ext_list can be exported through /proc/cpuinfo.
>
> Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>

Reviewed-by: Evan Green <evan@rivosinc.com>

