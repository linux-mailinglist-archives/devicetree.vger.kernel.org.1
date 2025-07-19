Return-Path: <devicetree+bounces-197872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D982FB0B0C0
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 17:52:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A9115626D7
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 15:52:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10D8C2882CF;
	Sat, 19 Jul 2025 15:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="T+uD/Gxq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F6D2AE97
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 15:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752940354; cv=none; b=sXCqJc4HYLeOsXrJC8cf1mZQpaOMYeum/MuWx0DxkQHAh8LIPlx8Fe3JrXrOUuwOvrHnZzNZ5Xbo3xLFaGCoA5knBX64WMjE7JrhcD4D31IwlGRGHJiSu3Edg/vfhZperdZWyUrDNpd08kugLOCfyYTyZOEuPcL1YSRB1POBsIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752940354; c=relaxed/simple;
	bh=u5bc8PEesDrnBIXOtuFP7+ZA4bNJkI3uyCmzQ6D87WI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AsiqoMqSECoDkt/GoTRPbchBfvGhWtXQjhawP4tGhmO1W1gPJXt5sIywyLCcXe++cH/Lkl40caA8V5jj4PgL7p8qK/Xve0kJKVUN6nCeVEF8kPbhNYOThT5v9G1oAhMXk/y//z5B4Rg1niHqseA9uSNcFus6Wd3mURf4Cwj9vq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=T+uD/Gxq; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-32b8134ef6aso31531461fa.0
        for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 08:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1752940350; x=1753545150; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u5bc8PEesDrnBIXOtuFP7+ZA4bNJkI3uyCmzQ6D87WI=;
        b=T+uD/GxqVcLAZ3jyJDJvvB2C5ehK2HaS9u/DQIWCvzOHH7OZFU+MvGD7k1LJFmqnsO
         WxuQdXNLSxEgeeKWX8KEuMK7l7F6UblJqt4Kv8ZaS2z7VTpqiNftyu7a+dYRA6+zyDc/
         f7xvKiLWQSyD0v8ob7m294L9LFuiGSWv4bLieGrC4lYZcdR3GeqyD+YBjEeXe82eYMoi
         T6WHKa8zXAn5SQhwsrznXWIuJcozgIeYGTG73xXmmsH3ZpFpze/0qIaBnWhMkLQeJTvV
         oTMFlZ+fNNsgTfr24/pehvnFULpMxlqvAMJgcfRjpmaQOn8zll/9YMZX7ALMBUqsS1aQ
         XLJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752940350; x=1753545150;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u5bc8PEesDrnBIXOtuFP7+ZA4bNJkI3uyCmzQ6D87WI=;
        b=LXH3ySkxcC7+Th5fgdSLiNI5Y+vc1ZZUJw1opjxv6GmNrUiMXcachanyff1wXjQnPx
         ZH7+770URsgZuy4vWHblnSVjHw0iESjIYfBOdbTejyrqqFWfrh5wJrSXhBxjFzPDHZ9Y
         ydgC/6dyZ+jW/2QyZrbhl8EtLd66IZBrES3GhepQ6ZZ6+l3Z3L1SWdTv0jqw+v3oJlTa
         FMdqGOaMZXDTg1m7oCkbNWJoQwuQgDdLoNqRbslsmuSXhH8Jo4AonoVt7YTloZdDTf0N
         uco1IGZYjt6zQ5kvzvolXFOZzJMlf2J5o2eByHgNqHOzp4eOzGQ7snlw3zkU5llk2Uco
         tOxA==
X-Forwarded-Encrypted: i=1; AJvYcCXyC5+NRu8GFGU+N0COOUcgKVZrqZObD4inuVAsiIzGMrihk6AP/XqUSLCnmybKZ5dQwf252jaUS4Ho@vger.kernel.org
X-Gm-Message-State: AOJu0YwtRoEONcNqVBg5nqcfCoInIgjgxNvzrbXCPiDRMEiW3J+zKxWL
	KUxa0gwNd/F0Jgc8vuo0mmln5YivPFF01Xoaj5Va8GhuCvsZGjrcEq5B+qS6WQf7kj0pGel4YpV
	VSDTYp6oqySERaw+B9GAcso+ZOBWWl75ACJbjzfgl2Q==
X-Gm-Gg: ASbGnctWMsgz2IB5bp/SdLXov15I0VRh3kH/Hce0b5TvxpqAlSn5B51YTiXfmeS8QVv
	yH3b76MB2PS5WFxSnYHo07bAOslvyDraC1gVG7fA8239pxqNyt/LT7b2WivudCEXGr31jzMD8m1
	ech3P2v5nN/gkEvPCcEzA3gXM48nASqVqdVB98ZMfQE5OxWcrokCdY8W8dCftCilBEr1f8qWQAy
	0GDhF3zohQZ1ot2F4t5Rs8HbZQOgpxwqIyrqdA=
X-Google-Smtp-Source: AGHT+IFmiA61E4Gg0hTSxNIaahpYBE3l0iLJ8kM3KyoRS/pDDJR+mBK07r+7Ph2Rktom9ZxkS+DLG3ISTwAgRVBfuh8=
X-Received: by 2002:a2e:a550:0:b0:32a:85ad:2162 with SMTP id
 38308e7fff4ca-3309a46638amr29026981fa.7.1752940350231; Sat, 19 Jul 2025
 08:52:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250610-smc-6-15-v7-0-556cafd771d3@kernel.org>
 <20250610-smc-6-15-v7-6-556cafd771d3@kernel.org> <8f9fdb3e-9655-44ce-8a2f-c1628c88c929@kernel.org>
 <CACRpkdZdz7eHVjgX-X_UwjJ_qSu5hSPeocuQ9DWSiyjNLU5AmA@mail.gmail.com>
In-Reply-To: <CACRpkdZdz7eHVjgX-X_UwjJ_qSu5hSPeocuQ9DWSiyjNLU5AmA@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Sat, 19 Jul 2025 17:52:19 +0200
X-Gm-Features: Ac12FXzcG7EoJK0F7AkshhLftC2Qw2ygudqOy-1un15EMy9NVqfotyOTu45yZjU
Message-ID: <CAMRc=McNK3fmbP2UON0EGkjM6gH_1zSHFr_PzZ9JhR7a5swLQw@mail.gmail.com>
Subject: Re: [PATCH v7 06/10] gpio: Add new gpio-macsmc driver for Apple Macs
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Sven Peter <sven@kernel.org>, Lee Jones <lee@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, asahi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, Hector Martin <marcan@marcan.st>, 
	Neal Gompa <neal@gompa.dev>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, Sebastian Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org, 
	Marc Zyngier <maz@kernel.org>, linux-pm@vger.kernel.org, 
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>, Conor Dooley <conor+dt@kernel.org>, 
	Janne Grunau <j@jannau.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jul 19, 2025 at 5:42=E2=80=AFPM Linus Walleij <linus.walleij@linaro=
.org> wrote:
>
> On Sat, Jul 19, 2025 at 2:59=E2=80=AFPM Sven Peter <sven@kernel.org> wrot=
e:
>
> > top posting on purpose: are you fine if Lee takes this commit with the
> > rest through his mfd tree?
>
> Bartosz should answer this since he's dealing with the merge
> window for GPIO, but generally it's fine, and it's even using
> .set_rv.

Yes, for sure. Lee typically provides all interested parties with
immutable branches after picking up complex drivers like this. I
already reviewed it but for the sake of completeness:

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

