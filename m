Return-Path: <devicetree+bounces-201148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEA7B17916
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 00:25:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F02A85A03D1
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 22:25:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7E46277011;
	Thu, 31 Jul 2025 22:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="edRIb1SB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F957260D
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 22:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754000742; cv=none; b=G1gp3uJXzMG4hXQdNnFnzI1ya9b6J0srxDn8HYr62DNV494TlosPhGOkAxEFC+I4QrL5tb9jcISSA+zImWj4KnyWGPPLlbJq1vf2+V5xTD/ljjBPbwrdQSX+dEVPZ4yQ82ceO8F9v/w0LolaWYF2LyrnKQlZRLQaYMzcsaQUQNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754000742; c=relaxed/simple;
	bh=SpDUXTIpkublM0DdrEY3Y1E5epN5S4LuOsQnARsLSuE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r5a4iVlOzRl0lM6KGQwPvwhfEtziWoJY9UVZ2TV3vA9X7AQOHgxcGCAqsYotYWxrnBo6roEciu8ltdBdHk7Zr/Bp5T3Li9LUQ8GI0K+OJbB4EfkkSoipzHK1UHY+xBhTKNS3ttQKT1xD/etzMHff8hf48pY1L6tvgZwdQHniilY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=edRIb1SB; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-74b56b1d301so160962b3a.1
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 15:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1754000739; x=1754605539; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yDly6jsUjLYLpTk911qABJ1dSyDnXYYIjODUvF3M+Yc=;
        b=edRIb1SBtQCeC5Z55C3DKhZwEzVM5mH76+oiQlZbmANflre/sXmqMPI5GJJQXJVTGl
         Zb+uL0+vWnZoPxOAdUZp7s9g4vlTzTCUSecNi8fE4oks4+Yn6bHqKtE4q1rOaCJvI9Me
         FdwbeLKmu0K6mONyZxDOF4k6xpjwKolJZYjSk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754000739; x=1754605539;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yDly6jsUjLYLpTk911qABJ1dSyDnXYYIjODUvF3M+Yc=;
        b=WnKOE20rr77UxhWvXsU7PRCmVdtTGPZUO2J33WWI3dYPH2ACEwb8+p0QsHUZSWo90W
         iEMrmQMA6wE/LFC65prdLc5C5ywNmCxnycgqUYrZHvt8yOCe7kJ2ECvRdn2AwryV5GVr
         /MOTe4LaUvKCghenjBhuDQ5l8KJL+iKhHuO0eRGAGy/9fD1ft37Wv5Yz4jyGwWiR2lDG
         kBpVZUJIS0h+1RV7SfFuxSuD5A5ZJXsLZT3j5bDsn+1WZPQRH8mtJUDHqi6y3ARQxwdH
         emCHG0BUuO06/37PFGZDWByIoA4JLI8FCIxIhWYcYyCZ+Bnl+Xdky+ERG61BZjz7kVE/
         27Hw==
X-Forwarded-Encrypted: i=1; AJvYcCVYaR3POyvKpnjNqMU2YnRn1SHX+dH3frqJKDtAtMXS+8ZWn04yM7y/+LjxXJwgILm1KLdbzzswWCHk@vger.kernel.org
X-Gm-Message-State: AOJu0YyksSWE2GkQ37An2Z7EW69VUSwxYAK5+ABJ/g1mBohK7V7AXA6e
	hxIFn93sMKg3wrpTBL9UNDrtKvWg/WG8z6pRiDTDERqoFmE/aJYx5oGDqxD9DywkOzHcU2dm34b
	o+d4=
X-Gm-Gg: ASbGnct8ernEGV+ncr3OZlcwf9u43SaOvIGm0wq1DCTnI1yXlU320RbSz6zerbIvrPQ
	QTki9ryLScuCOqiHYiQZFeAUJb0FMxM4T7rnaxaL7RVtcwJYKdaMb+aZiHjIl26JfNLti5rgAex
	HnsBodUKDFwtKprCXX8L3ZfuBBvvPJaxE+wc9wziqmKya/GrmKgaoY3PZzdXtlgmjfxAkN0BfhD
	/f4PjZLR0OraBEgzhpKzUt0813xOsEPwgWWHgZU2v0gtQhuG8XpNOmHyMKvoMFi/T9bsF6T5bSg
	+/GUak4ntPX8rKmNtjy/hTymOUmNVsNjA3r+Di1B6XqJeMNQ8nJl73i0wmStSq/vYcp3PPd/dsd
	KO+QAKy4RX4xgM/u8tqnc6QcMUCN65F0YH5hRHHmB91Md+2GI1a788J7H9NaZe0TfPw==
X-Google-Smtp-Source: AGHT+IHy7gzLNOqFWjDuMOwGyWs3hMKGoC+eQgDUEKgD63EGY5Puiiqe5Hdmv+N35AHf44TiIRfrqw==
X-Received: by 2002:a05:6a21:3285:b0:233:c703:d4bf with SMTP id adf61e73a8af0-23dc0d73343mr13134894637.19.1754000739251;
        Thu, 31 Jul 2025 15:25:39 -0700 (PDT)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com. [209.85.215.175])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bdc8c7661sm294623b3a.76.2025.07.31.15.25.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Jul 2025 15:25:38 -0700 (PDT)
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-b3bcb168fd5so184590a12.3
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 15:25:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWXxtbVh2oo7P8KjV3m71U20eINdIV8ftsgbCaKAC0MoOAXrb2CgSoxRFvYfQ2pyVm105acT9Ra+EE0@vger.kernel.org
X-Received: by 2002:a17:90b:288b:b0:31e:fac5:5d3f with SMTP id
 98e67ed59e1d1-31f5de54b78mr12214752a91.16.1754000737144; Thu, 31 Jul 2025
 15:25:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250731215635.206702-1-alex.vinarskis@gmail.com> <20250731215635.206702-2-alex.vinarskis@gmail.com>
In-Reply-To: <20250731215635.206702-2-alex.vinarskis@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 31 Jul 2025 15:25:23 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VbLW36hJZwQ2uS86wmvsqiAzp2RMjds=-+qXOafg-YDg@mail.gmail.com>
X-Gm-Features: Ac12FXxFZufQJD5lK1zYZRbpN7hzBp2lfR58ugoDPco-BA4iqzwE9ZcJ34mjneA
Message-ID: <CAD=FV=VbLW36hJZwQ2uS86wmvsqiAzp2RMjds=-+qXOafg-YDg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: display: panel: samsung,atna40cu11:
 document ATNA40CU11
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 31, 2025 at 2:56=E2=80=AFPM Aleksandrs Vinarskis
<alex.vinarskis@gmail.com> wrote:
>
> The Samsung ATNA40CU11 panel is a 14" AMOLED eDP panel. It is
> similar to the ATNA33XC20 except that it is larger and has a
> different resolution. It is found in some arm64 laptops, eg.
> Asus Zenbook A14 UX3407RA.
>
> Raw panel edid:
>
> 00 ff ff ff ff ff ff 00 4c 83 9d 41 00 00 00 00
> 00 20 01 04 b5 1e 13 78 03 cf d1 ae 51 3e b6 23
> 0b 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
> 01 01 01 01 01 01 cb fe 40 64 b0 08 38 77 20 08
> 88 00 2e bd 10 00 00 1b 00 00 00 fd 00 30 78 da
> da 42 01 00 00 00 00 00 00 00 00 00 00 00 00 00
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 fe
> 00 41 54 4e 41 34 30 43 55 31 31 2d 30 20 01 2a
>
> 70 20 79 02 00 20 00 0c 4c 83 00 9d 41 00 00 00
> 00 00 20 00 21 00 1d b8 0b 6c 07 40 0b 08 07 00
> ee ea 50 ec d3 b6 3d 42 0b 01 45 54 40 5e d0 60
> 18 10 23 78 26 00 09 07 06 03 00 00 00 50 00 00
> 22 00 14 e7 f3 09 85 3f 0b 63 00 1f 00 07 00 07
> 07 17 00 07 00 07 00 81 00 1f 73 1a 00 00 03 03
> 30 78 00 a0 74 02 60 02 78 00 00 00 00 8d e3 05
> 80 00 e6 06 05 01 74 60 02 00 00 00 00 00 91 90
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> ---
>  .../devicetree/bindings/display/panel/samsung,atna33xc20.yaml   | 2 ++
>  1 file changed, 2 insertions(+)

Pushed this to drm-misc-next:

[1/3] dt-bindings: display: panel: samsung,atna40cu11: document ATNA40CU11
      commit: d680a7959b9d7cce9526b1b391cc7b13e313a096

