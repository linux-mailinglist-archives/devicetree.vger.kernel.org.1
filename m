Return-Path: <devicetree+bounces-151086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D95A445E3
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 17:23:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DFE3116D061
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53A9F18DB16;
	Tue, 25 Feb 2025 16:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k7MP4qPq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5EC18FC80
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 16:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740500381; cv=none; b=ZoJdKBlKUs7XxKSnT1v1fafItbh+CpyIwUMeeey2VhrUQwRLHVmT0ACZ3qhF5mSEcYxXF9JJ2glMmSEcoo6Skxst4jpuaKGXKCBkxwACKpUPbvqYnav5jFvK3OBIa1v7ZmXZSYtjpf4HI+/iPG6xdBfVXO/bCzNNdi8vepmrusc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740500381; c=relaxed/simple;
	bh=Tyh+RhXcKnxQU4MXzN9oE4S19Yl573Q7D+3G4DQFujQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TD9PgEYSbZJX9j1TN4+Xmfy9B/g8JIq0bgEkirCNjnJA2+80sPcKdOi849B0cfwIZflL9auCUwWSA6DRIs2bM5t+yOnmlcM2uXQxnjV++XeuISR9JxIt0uEZ3TdvO9Zz347BjQoyhRsEJc2hDKR1ZOVJSUX1kffcxrQ9EAw2P5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=k7MP4qPq; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-54529e15643so6212716e87.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 08:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740500377; x=1741105177; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tyh+RhXcKnxQU4MXzN9oE4S19Yl573Q7D+3G4DQFujQ=;
        b=k7MP4qPqpYeHRONUsUaB3AQiPzI+tT17PAiYqwe2IlNhl31Dvapsrxra/EJ0H9j72L
         B+dt+i9rDsNtc8ts/OlZ7DAQ7m4MHo3AccVCLDYM//BX6La1heOfZbhuvV92Xyzw2hjt
         gExQYfX7ghdb2zt3rw5D2GRSN66mG98ky/dnzNfUX+MEOtR5NdFXoRz+IP7o4CoxydCf
         uLOCBMeHeUE45a+B22Ag5IaWbTrotJLkx5IS5XNoLTZM3i6xcfLik7HBKw2QyNZVFsR5
         BzUhG0VxQPnHg00vjvHJKWvekPRTyGai9J07q0K/tsm7kqvgJUUqZhqa5kayoFh5FJre
         VM2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740500377; x=1741105177;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tyh+RhXcKnxQU4MXzN9oE4S19Yl573Q7D+3G4DQFujQ=;
        b=OOdytyZn73gXr+m7Nw2yyLMYaZLIFxiE1n87rVYYqC6m+k7JODBmPhvY3jO0iekWcW
         HIOkpN1ROBFpy5hszOSgKtcZgwLw13q2qH1Af9t83rar0G0kQcu+Nk/6rQzYLu9KbzPT
         nkt3Tq//NjLNxSSsgke1gFmoX9AmSywWi9wY34nrsYwQFX2XOhEDhptJVF9hoCQobi6S
         sXE1EfL1tMMgWJMd2haYSTNoQy5W3HRtegR+8jmvKGkvpheu0jfS/22J6wmWnVya31xs
         cEbJATldFrQPjwxe0nK9ThN8B5vv8xoo8LzNb+5K3YEN5rQYOpTHOacL2YZUmWW+2bz/
         xMdA==
X-Forwarded-Encrypted: i=1; AJvYcCWP89Rez0p+mddZTqfGuxdJurDNef4MqkpX3KxioflrZxxMqD/306HJuCSC0Tj91NpCidTTPMPGT8AW@vger.kernel.org
X-Gm-Message-State: AOJu0YwkEfLIFzuvk8D1V3uQAjCN60V4ivTYRk2SevBjNgzohky3b4AS
	o9BwyhSFVhieNDTEmdAE+13KHR0xge5xyoSOzmnMPXaUuYGDVgZsuuEhB/+SLRhLu5GTIk0u1uN
	00z2AxwWMiXzbLTLxZguDbP6YIy4oa6GgZDwFTQ==
X-Gm-Gg: ASbGnct/C+6ZohGWSS9gVKL3uV9ST3LA6+n2B/ItjLALtHf/wmDf5HgTeq4t4s/OPlM
	NevI+oraJylqWQeadbclQano9G6us6K9EPy2jcsAm8mTfSIKmAHjr0PL/p3CZkUrDhnz7GRHXkL
	SfBmpJyYE=
X-Google-Smtp-Source: AGHT+IFPKsmkV/8GrQlu1UecaEKHzDdnmY+GOqvsye/6W95YDRH8BC1ZvlN9fdjoiYBCyRDAZX7jrfC7MDoNbdARl/s=
X-Received: by 2002:a05:6512:2353:b0:545:240:55ba with SMTP id
 2adb3069b0e04-54838cd2edcmr5801739e87.26.1740500377437; Tue, 25 Feb 2025
 08:19:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250223-03-k1-gpio-v6-0-db2e4adeef1c@gentoo.org> <20250223-03-k1-gpio-v6-2-db2e4adeef1c@gentoo.org>
In-Reply-To: <20250223-03-k1-gpio-v6-2-db2e4adeef1c@gentoo.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Feb 2025 17:19:26 +0100
X-Gm-Features: AWEUYZlYJub0FzdxL7Mpr1knr2_W3_lmRrr6Vhou8bb5JqpMdWieVnvejFVMY8M
Message-ID: <CACRpkda5=nSnYZ5XJsC_A5MhfdPHwcTndjNr4vGfSb4YJ4Bi6w@mail.gmail.com>
Subject: Re: [PATCH v6 2/4] gpio: spacemit: add support for K1 SoC
To: Yixun Lan <dlan@gentoo.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Conor Dooley <conor@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Yangyu Chen <cyy@cyyself.name>, 
	Jisheng Zhang <jszhang@kernel.org>, Jesse Taube <mr.bossman075@gmail.com>, 
	Inochi Amaoto <inochiama@outlook.com>, Icenowy Zheng <uwu@icenowy.me>, 
	Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 23, 2025 at 12:50=E2=80=AFPM Yixun Lan <dlan@gentoo.org> wrote:

> Implement GPIO functionality which capable of setting pin as
> input, output. Also, each pin can be used as interrupt which
> support rising, falling, or both edge type trigger.
>
> Signed-off-by: Yixun Lan <dlan@gentoo.org>

I really like how this turned out! :)
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

