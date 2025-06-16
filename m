Return-Path: <devicetree+bounces-186407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D555ADBB1E
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 22:27:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 13EBB1752E0
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 20:27:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52C7C1FBE9B;
	Mon, 16 Jun 2025 20:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z6BsHUo9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 797001F099C
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 20:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750105645; cv=none; b=NX+EX9QMkvp07ZiZurKJyN4E3kOajWA+bsDX8vmJ4RYr9RiXv7BF+rJXJkglLIBlIX5+ELZR0/u6bJHwsN8XkfKpQUJvXl+sKdfyl7dXpqkAEKxPsFLJnIbqjeA7dXvu7p7pzUvkA5ZCgKwE6npuGP43dCQKlVkX/vmpPEQ9vdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750105645; c=relaxed/simple;
	bh=Pl8uAL9imnIlMlVX+Jwp4Ai8ciJxgauG7/WL7PCtbTA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bji0Rhvz70SGgSXJR6090kFXHHBBStjla2E79aG6wgj7cwNPLSTdfe2ss6Tu6vPZqmGB/2FFfdIXgoH81P2eHt6tp2QKJ8d+vsq+3+0UVwina5y/YigYw8fbSLEP7j0EZ/+QGMt2rrxu7IJcaLpNjUL+HcoTjuT6rmrKYNLbfkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z6BsHUo9; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-60727e46168so8492066a12.0
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 13:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750105642; x=1750710442; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6SEpQ9/rGAradDo0hFnq//uVXTz1nKpEiDqt68IMLuE=;
        b=Z6BsHUo9pMTxFC5aMYv6H6djVcZZi3MAxpc/djTj+9gBBGJZtTiiBfYR3U5RrAuoje
         kDvlmKev/BE6vGQev3VVs3QqGQgSmueStqW5wTr1zUE9LkmJkObU1PIuexgtwFKoEcMP
         GkTxocPt70PhnOjx0xhtyfz6rRoQwUDY0D3Lh0LfSSkn3v15A4oZ4gDdYMrDpp2Sbsye
         RxBMLUTanGF1WF5HxaizbTgUw7NrlXB+X+fO8ifx++UrMe3GCQ6p1v+rEcm0A8GMZPjL
         9VQXmXLm6F9dALnHBffQicFkA2YBF3LBzfR5ZbXhsnSwQJoWP1Y5CI6Fk0HYhHNOokxn
         1OaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750105642; x=1750710442;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6SEpQ9/rGAradDo0hFnq//uVXTz1nKpEiDqt68IMLuE=;
        b=bmzPvYvYGHHAEUbaHTrZGguoMlCIh8aCRtx2wKzSBiHQZ1oUhfrutafOFq4YbOGHlN
         ve6d/5+6nsSDgNAPIUAbNzSKzJZ/wlXWuWvVKlJ9LQxkSGG4qcTxK/ame9jCzgTy1gTS
         zDVbtEX0+xJwutTUZU8wW09hTo5Hw/9Jti6ZVs+uC4LnejZ3sUIyBDqXR+YK9yqNV0jz
         Ao4DhauOaQrI5eeFyFzGtT3pFXYa22D5XKciML2KcAP3FoOCtremNVHm2ljgXQBPqeD1
         Fsqwoiey1EAqz+RebKNS48UvQDzuwkqH2Sio7Gdi1UdVOKllMhAYHtotrFwhzx6V2CP1
         ++tQ==
X-Gm-Message-State: AOJu0Ywni3EagV5iWRQUZdG6mByc5u99uAoOlqnmbdljYn+s/SswKZzK
	khpQUqWt1JVF+1DdzGtr30ItZ2QAceo2mfp49sKERzzY8rhQ8K2nk8BUu+HcZZPYxU2f/K5ENnl
	gtE6QlB8KVXIsHA0FBsim0uhyllk6zGv2TXDX
X-Gm-Gg: ASbGncuPAGP6RpCbLwFbZKgTntVOKnxbuO5T0bAuU+SZxrlG6NVZpr3m10sZ/rz2rjx
	G0k7hUPRT699Seb/QGHGBjXWQpkDZcDKGS6a9TZTVxwIWo6utDEUHrVOVVLPz/YoF0NhSyVj4Rk
	CcUjYIZlIhtB53bPFhJmHToVtaxy4iJETOjh8HkE68LPyAvw==
X-Google-Smtp-Source: AGHT+IE/Ko78foFCrT3WOmNDdzsm0byfRXBmu6cytt7HJus0AtpukXN18jbCVcl9cqS5opYlD5ZNN1XiGAnC4bVbIVg=
X-Received: by 2002:a17:907:1c10:b0:adb:469d:2221 with SMTP id
 a640c23a62f3a-adfad4f5325mr1097369566b.45.1750105641528; Mon, 16 Jun 2025
 13:27:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CADsqogAs1DCSJfkAkj_mwMwS--WMFPzvmWLonuiCe3XaNABVxA@mail.gmail.com>
In-Reply-To: <CADsqogAs1DCSJfkAkj_mwMwS--WMFPzvmWLonuiCe3XaNABVxA@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 16 Jun 2025 23:26:43 +0300
X-Gm-Features: AX0GCFsXIllp11iym0Tgik5EfuY1oIl71wj2D31WHFxw2eSFsPKtDTiITHzoxOE
Message-ID: <CAHp75Veq5Tms2X2j=hNuBt84mYrfKgYcbZpOVn49+7PhmeN+zw@mail.gmail.com>
Subject: Re: [RFC][DT] Guidance on device tree property prefix for
 TM16XX-class LED display controllers
To: Jean-Francois Lessard <jefflessard3@gmail.com>
Cc: devicetree@vger.kernel.org, andy@kernel.org, geert@linux-m68k.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 16, 2025 at 11:06=E2=80=AFPM Jean-Francois Lessard
<jefflessard3@gmail.com> wrote:
>
> Hi all,
>
> I=E2=80=99m working on preparing a new driver and device tree binding for
> auxiliary LED display controllers of the TM16XX class, and I=E2=80=99d li=
ke to
> request guidance on property naming conventions before submitting a
> formal patch series.
>
> The driver (tentatively named tm16xx) supports LED controller chips
> that share a common hardware design and programming model, produced by
> multiple vendors, including:
> - Titan Micro Electronics: TM1618, TM1620, TM1628, TM1650
> - FUDA HISI Microelectronics: FD620, FD628, FD650, FD655, FD6551
> - Princeton Technology Corp: PT6964
> - HBS: HBS658
>
> These devices are functionally compatible and appear in various
> consumer and embedded hardware (e.g., Android TV boxes) to control
> both 7-segment displays and custom icons that may look like this:
>
>           ---    ---       ---    ---
>  [WIFI]  |   |  |   |  -  |   |  |   |  [USB]  [PLAY]
>           ---    ---       ---    ---
>  [LAN]   |   |  |   |  -  |   |  |   |  [BT]   [PAUSE]
>           ---    ---       ---    ---

So, have you looked at auxdisplay subsystem? It's mostly for 7-segment
displays and has some common libraries (and interfaces) for that.

> My current binding defines properties describing hardware layout, for exa=
mple:
>
>     tm16xx,digits =3D /bits/ 8 <0 1 2 3>;
>     tm16xx,segment-mapping =3D /bits/ 8 <0 1 2 3 4 5 6>;
>     tm16xx,transposed;
>
> These describe hardware characteristics (grid/digit arrangement,
> segment mapping, transposed display output) that apply to this class
> of compatible hardware, regardless of vendor.
>
> My question: Given that these properties describe a common hardware
> class (rather than a specific vendor design or generic LED display
> behavior), what is the preferred naming convention?

Naming for the vendor or for the properties? With applying it to
auxdisplay, some of the properties will be available without vendor
prefix.

> 1. Should I retain a prefix like tm16xx, to represent this hardware
> class (as it is the most recognized functional family name)?
>
> 2. Should I instead pick an original vendor=E2=80=99s prefix (e.g., titan=
mec,)
> even though other vendors produce compatible chips?
>
> 3. Is there another convention recommended for hardware classes
> produced by multiple vendors with compatible designs?
>
> I want to ensure that the binding follows the preferred conventions
> for upstream acceptance and clean DT design.
>
> Any guidance or suggestions would be greatly appreciated!

The rest we can discuss when we see patches, I think.

--=20
With Best Regards,
Andy Shevchenko

