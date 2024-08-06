Return-Path: <devicetree+bounces-91224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EC88D9488C8
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 07:06:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A2BD71F23B37
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 05:06:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8723C1BBBD8;
	Tue,  6 Aug 2024 05:06:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="TTtv82xt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C110A1B9B57
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 05:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722920790; cv=none; b=NIzV7svNFs/Oh3sDsPflQUXNZvNG3pN+bWHfmljhxqSjXfvKLEHGaf7JHGNIrsd+6ihLmmdW9yXSxjPW+1Pbf3nLeNMAU82mw38VTya4s/ZEYSI9avo/o+WUBFrokQxfW0r318Hr0rgEI+P/pL6x6YVXzSg7ugF4ZhDJusZiRcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722920790; c=relaxed/simple;
	bh=2pkjSfd95zUvLrMKWE6ujE4TtorLVUowbInEA7tvNHQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AIF5bDikrzUmwt3vmyX64ftIWKUHEkWmJ4uXFIPLdEnW3ebZZrLiC3ToZnmRU8rnC7uD7T4LrsGYmq6KJ33Y4JBXPnLHcDfUqBz13UfIZmOz7aBN0b95uffytXFPz3g6qljc1eQtMKr0loxAGdlr7pSO3Jc01gxJt7KRRKqCThY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=TTtv82xt; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a7d89bb07e7so11997366b.3
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 22:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1722920787; x=1723525587; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XCDSMY7BT7wntpsqPsFrSxhoevgzeOq2oCwZ5SgFJUo=;
        b=TTtv82xtSJQ68fCg+sb5sXJxRQh0deH6ZWpiMusYXQH1RGedepADTgkNo8hPSwQ1fD
         Z6UXLJ0N3lFpng035adY/A+hoC1iqVeNvqe+R+rRsE6vHqZ26246v1I3/KVYy5P/dpQY
         r3maXmMuOU1TSH9R9eg7mL6Nw3qOIVN44YUs4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722920787; x=1723525587;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XCDSMY7BT7wntpsqPsFrSxhoevgzeOq2oCwZ5SgFJUo=;
        b=FP1Ij1ROYGqYo5RT2Rf/x5knaAH52/JuKJDD7YF+OjwQtM3QCEHAUnZyOWx3EVIeSA
         dQWPYhPXOvEneyegpUtZc1IKbWCfrjv1xJbOt5PV02K6UbLrqttD+qOV0UEvxcbTMTdU
         lFkpLA96rlPwCOKHqKriDRlUOVYdU2BIAcS++TE3LPHC/2GQhWzCrI1/AkYc2pEAjz+x
         X7FIMCP/coGKamDkzaEwgG+IOvjiGu9XZHmFbFn+upD84EzN7UVyMPEGvnbJUy/HvoUg
         Kc4mWhXWpwgPRdoNbvhVOlB9XoG0eoN2cIiXpBxLRH6ZOtZHIgIqnTVtZ+paf9BTT6un
         VJEg==
X-Forwarded-Encrypted: i=1; AJvYcCUzRkMNlfX2ltUhgi7yU+vq7+6YXuVMU4nMlau2x/YDIJmnmOi3+pKA5c12A1OwlKoeB+F9M/OZyXKPoe1cww51oqHxlAwMfdzJAg==
X-Gm-Message-State: AOJu0Yyw6q7HcRbVZPcfQi9cPL5At/w4n3pC77lGvYkR6LP+mJ2PwLSX
	HlY9aeKmprb0lzo5c5YCF6t7e+EHZJC6Q6Pr75HOx2yHveVzFSHrdis28yozr03RbF7axRZBwJc
	=
X-Google-Smtp-Source: AGHT+IGDtE+bUa6PE9fwjB+4qo+izHzuwZqUkP9bbjz7274sWU2unnY8kcTOg3FhjZSI5p4zPal3Kg==
X-Received: by 2002:a17:907:3d88:b0:a7a:a557:4548 with SMTP id a640c23a62f3a-a7dc4e28d73mr1093858966b.21.1722920786959;
        Mon, 05 Aug 2024 22:06:26 -0700 (PDT)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com. [209.85.218.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7dc9c0c0d5sm514627166b.48.2024.08.05.22.06.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Aug 2024 22:06:26 -0700 (PDT)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a7aa4ca9d72so12864266b.0
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 22:06:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV5evbRlikvdVyVkDo72A03UiFhv1jixxcebCP1dAnGQhy5N4ngj8IL780LLPNXgrmU6w1G35opGnWKKrGrwz0Ion7yewXaN60T+w==
X-Received: by 2002:a17:907:d29:b0:a7a:c812:36bb with SMTP id
 a640c23a62f3a-a7dc4da6efdmr1175852766b.8.1722920786049; Mon, 05 Aug 2024
 22:06:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240731-jacuzzi_dt-v3-0-1c4314e8962f@chromium.org> <172243932855.488108.1466847928167694223.b4-ty@collabora.com>
In-Reply-To: <172243932855.488108.1466847928167694223.b4-ty@collabora.com>
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Tue, 6 Aug 2024 13:05:49 +0800
X-Gmail-Original-Message-ID: <CAHc4DNLwUAzrE-1-7oH2DHR6fvz4x9ZVaKbjUo6rOy3-kjUadQ@mail.gmail.com>
Message-ID: <CAHc4DNLwUAzrE-1-7oH2DHR6fvz4x9ZVaKbjUo6rOy3-kjUadQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Add kukui-jacuzzi-cerise and kukui-jacuzzi-stern
 DT and dt-binding
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Sean Wang <sean.wang@mediatek.com>, Hsin-Te Yuan <yuanhsinte@chromium.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 31, 2024 at 11:22=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> On Wed, 31 Jul 2024 10:47:24 +0000, Hsin-Te Yuan wrote:
> > Cerise is known as ASUS Chromebook CZ1.
> > Stern is known as ASUS Chromebook Flip CZ1.
> >
> > They are almost identical. The only difference is that Cerise is a
> > clamshell device without touchscreen and Stern is a convertible device.
> >
> >
> > [...]
>
> Applied to v6.11-next/dts64, thanks!
>
> [1/2] arm64: dts: mt8183: Add kukui-jacuzzi-cerise series boards
>       commit: 4ba6d1539fdd709ea8e8478c37b014e663cd6894
> [2/2] dt-bindings: arm64: mediatek: Add kukui-jacuzzi-cerise board
>       commit: ac90896833b52ff58c81727f57ed3cf9ffb9db86
>
> Cheers,
> Angelo
>
>
I'm sorry that I just found out these two devices will not be
launched. I sincerely apologize for any inconvenience this may cause
and for taking up your valuable time. I kindly request that you
consider dropping this patch series.

Sincerely,
Hsin-Te

