Return-Path: <devicetree+bounces-235995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6017FC3F05E
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 09:48:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BB2613AA6F1
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 08:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1269D27FB3A;
	Fri,  7 Nov 2025 08:48:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E2BB270ED2
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 08:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762505302; cv=none; b=dGd2aaqTMbA1wbsj3RwA1XiOSeqyXGMagSxPUEmhrEtqGf8EyIec4XHkgEF+aMCF8ybIjZwUMhFgZ5agsQVOgnC4/kvcGMr/sSYZf4reoFWQcnav+JTVc/U/ZILBfccn9yLJVdZflT1A9mRuQrC2TOAYJr4WWuvmVmQvU6OAIoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762505302; c=relaxed/simple;
	bh=/j6PN2I8EA2YAewaRE8oTrWR+5nixfJQRCdWXFVQdU0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VqmAIrScjjcQsIEJWIkC7waCj6bN3pF20eG41Z3mEZbZ+sp5aUKOke1LVrK2HEl+MqS8mKLtE2fwyAGCC5HZT1LrygX5j1dRMTpdrj1ox6YAjB20dyPLT1XAHK4HR8jsQK7GhiOm10ivqhOjji/5lqPlT1qCNevRvWSjaR5rUQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-934e487a957so296158241.2
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 00:48:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762505299; x=1763110099;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UZwIVFjGTkbkhy7kyec25PERQm26PyO71+gNhhmUlYE=;
        b=IGaimfADGYwQ5xQ2h+Tnh/kFq96W1KzpLNNcxsPSO/z6WGibgq2MuJsMoifHbSd87n
         Uo7viVRCWL5qtPRU7dqyRHahd0xcCPMNWP33/pm/IYRbm+IGnaLf6il64iNqMSTbkID5
         lQDAT0tu0luH1YDMkY6kgELKhX207sQVQpsYPr+JrhI/c3QVnYEzS6eIfb4s9oJnS0le
         vwXD3WUl49yTdAgjPgQJ8p46zik/oQHNdE+XSJ4NtsqNq3BOtP7VKqGuW9IJyOd+U7p+
         gUr6Ao6UVnP05x3mKL6nmHguHewCIroJQca2TfeRX0H5lkysFmC70MEeVgz1HuYwPwWA
         1c6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUprVWRJgIT2VvUOpD1onXzn4WD5qpP0cGoXVfuQeAdIdUIOLYbsMeKNnAqHjIajb2SAa6X8R5BwFFk@vger.kernel.org
X-Gm-Message-State: AOJu0Ywh5szia4rRikKxysSY4GgrmqVz/EVWp2lqKrPHWdoWvbCHazNZ
	lZS59wAUKEKyeIYg47QaO3XQ7zPQUibFZ67DLew31oxQq2KCtMgHtU/Ej2TJrwLEIYM=
X-Gm-Gg: ASbGncvAo712aaUnG+F8xGpYphdVm0kO0jcdlU4pnrzJu804w2oLZ9EhSQaNNHluIt0
	icZImiHiazJ13YpE0a6Qp4PREQx/KWRK47BoNU5LclGJG7SyeleP28icJGRnNEZcM7kxYq5Lr9u
	6HduNpqETTuniqJbWbTOQLZS5YnVYuW9XPiYmSe/aY6lPIu6+V7i43Q06eqQ20Kw/9oYQMLcetV
	k9BZTwXpuy1nsnylPcP4gWHNBUdx/d7bmmopXIKupfrqvQ+XP8jbneMSP2EznRZxxz2NpHNomKp
	ZKr1vl628lg9fQjmGGzB9IurYWLX7UFR+XveSKFVBKp/HqUDpoPXCHndarQfrzIOckc854NkKjx
	VzvZ2RTOQ5VnnxLqcQdFpzmNodEy0CeGmDeHzOe71mjDcc0fnorx84ONNnYwomb1M9UxXT05U8Y
	ZhB7tgMhRqi18FeG1gWPAVcXKfNGEMQrGUYC6SRA==
X-Google-Smtp-Source: AGHT+IFLHICwdhwcY8BUcicoTBS6nJS5QBZFoBH1/wLU4MYoAwwGSTejxYEExTG7q0pAMeLeLPgDgw==
X-Received: by 2002:a05:6102:3581:b0:5db:dd95:b803 with SMTP id ada2fe7eead31-5ddb230a3dbmr782293137.45.1762505299097;
        Fri, 07 Nov 2025 00:48:19 -0800 (PST)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com. [209.85.222.42])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5dda1d2a96esm2098057137.6.2025.11.07.00.48.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 00:48:17 -0800 (PST)
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-93515cb8c2bso298255241.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 00:48:17 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUZobiLLvbPPzmPgDho0c5tC3Q2PWy1LhLe1HI/G4rCt3io2Fo5YmfPetLdSjTNIwBAeBMFbb4UddbV@vger.kernel.org
X-Received: by 2002:a05:6102:f11:b0:5db:28ef:3dfb with SMTP id
 ada2fe7eead31-5ddb229b50dmr897200137.34.1762505297024; Fri, 07 Nov 2025
 00:48:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251106212342.2771579-1-niklas.soderlund+renesas@ragnatech.se> <20251106212342.2771579-3-niklas.soderlund+renesas@ragnatech.se>
In-Reply-To: <20251106212342.2771579-3-niklas.soderlund+renesas@ragnatech.se>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 7 Nov 2025 09:48:06 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVGGw9VN3=zJ4FYzAeYSOrOGoSOzDUMTkNF5GF8C=XVAQ@mail.gmail.com>
X-Gm-Features: AWmQ_bnj_wKfSmmHTUuO5_DYWTiuoJbMwmZEgTT9nGkrPatgnEe5zw26ykSXS40
Message-ID: <CAMuHMdVGGw9VN3=zJ4FYzAeYSOrOGoSOzDUMTkNF5GF8C=XVAQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: renesas: r8a779a0: Add GE7800 GPU node
To: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Marek Vasut <marek.vasut+renesas@mailbox.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Frank Binns <frank.binns@imgtec.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Magnus Damm <magnus.damm@gmail.com>, Matt Coster <matt.coster@imgtec.com>, 
	Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 6 Nov 2025 at 22:24, Niklas S=C3=B6derlund
<niklas.soderlund+renesas@ragnatech.se> wrote:
> Describe Imagination Technologies PowerVR Rogue GE7800 BNVC 15.5.1.64
> present in Renesas R-Car R8A779A0 V3U SoC.
>
> Signed-off-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.=
se>
> Reviewed-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> * Changes since v1
> - Rename node gpu from gsx.
> - Fix sort order (by unit address) in DTS file.

Thanks, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

