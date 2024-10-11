Return-Path: <devicetree+bounces-110257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C96999D5D
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 09:03:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E914E1F22ED9
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 07:03:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C0C419F121;
	Fri, 11 Oct 2024 07:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FQFqUwA3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A74A3BA2D
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 07:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728630211; cv=none; b=hgnvn/189W2rpWVLloqoz5tHo0SyM+rhsh+aZEudvjVg374lyg+oPHduqk1cWOzOoSNpnmNqKU6ldEcv6tddqMSLgfKPfDKUg5BuLGmq/KuJE6TJrj796vNCsGW8MlFhAoKvumkcRNJbTmtSRyUW5gUUYpyPle5ZR463V4v3h10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728630211; c=relaxed/simple;
	bh=cUYKvKXx3YacZEKlsfNYw4eUSZHyuCNL6LqQD01H25g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AkPXzkIy8ZnMBiZaJ+nfiQjx5F005J6Du/D5zUMSJPmODw9bwHG/3bEGgcUdEndsKhkmlB635OaIpF5m6l8l+9BBMV+wrQ4sZUzzCKvME62d4Dn/cdLV9pF3UWGdAKPpDVjsLEN9SaBSlDWkF+/0EnZypiC5Pq2FPbpQrxBwzOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FQFqUwA3; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2fac3f1287bso17465201fa.1
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 00:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728630208; x=1729235008; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cUYKvKXx3YacZEKlsfNYw4eUSZHyuCNL6LqQD01H25g=;
        b=FQFqUwA34iNrCv9+khaqvOZzGT+ODv2idH2ymcqqq4bwDEIVIdVVY4O0bXOuYtc87t
         wtxoG42/arOMDupfqoxw6kRbNIvfqaPI3sjWfzpdFo0gycRx825DsoN2jwWeDtPZaalO
         YuZamQ/t+Fu3iS3UbLuX/EQhahtdYU08JCdvnixthqXM/ouEYsRndqrmP8JvDQExrwcU
         EL1bh6jLiybHAW3Br69yT6ILJL3PTbmmwWQGqXfXiM0Ze+g3nbroqd6nYZqtGhV4u1F/
         7DsFgM4wrjjZ2CGEZgzoQAMiHPvRypID2ApO3t/nb2Ca3BACMG6M+ilD8QwGNNX340d5
         FFtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728630208; x=1729235008;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cUYKvKXx3YacZEKlsfNYw4eUSZHyuCNL6LqQD01H25g=;
        b=H14Bc26CjtkSgjTD4chLpnJRTR+P1wahaSE+p7natQ08KVS7QNlFimnoMFzyqqKh2y
         SWXcnMqRt+LzCtAcc467SmQpTLsnGZZM+zoFYJZq7dURzMxtOeTzXBZJwljcBVx9moc6
         fVmifrPPqY2n06j58j5f6ZQSB6Ruij2GqOaEFe1D3GRVDgLoW+3NcWsrhJgUKd54TxNA
         5NQQneo0mdP7ZdW1136Rwdyi08z56YytCJksjMBtJr+DF4wn0ISZmlnNxMjAsj4dq4Ze
         E/s6q4AQDsbj4evDqSy3Z4Edbhl+Uen+43Yhl0EtcS31TYzKDM2C2DEvi/Ghg7cym6VT
         ZsjQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8vJkeZeXXHkkYcPdYP/yQODNlHJNm7eZ0Y/zpGLWU7052sfTUlU2GwJPzWcCTE+1LivLhx/8OFIPZ@vger.kernel.org
X-Gm-Message-State: AOJu0YztD9/DFT2XgTGCSYZOqh7+Ze4pklaKtKufmVOUyhtWJ4/YU4Ls
	YijN58cqgo1P8ieFhPi4N4+/If3jjDeLHzDraaUCPZPoZvA7mgqid9R0nnVzddWj3OL32d76K8s
	Jf4GggPoYYkt8q99UeQaMC71Om6cBuZKUg4VGlQ==
X-Google-Smtp-Source: AGHT+IEMLmWgU40XaEz7cg2fJjnrrvSFsX+Ixe67yUNnaZpe60YgcllCtweYxA726xWakmCHrvQLlc71P3K6O6pyHVY=
X-Received: by 2002:a2e:4e11:0:b0:2fa:d4c1:3b71 with SMTP id
 38308e7fff4ca-2fb3272a9a1mr5139231fa.19.1728630207670; Fri, 11 Oct 2024
 00:03:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241011020819.1254157-1-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20241011020819.1254157-1-yangcong5@huaqin.corp-partner.google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Oct 2024 09:03:16 +0200
Message-ID: <CACRpkdZR0UxF69rcuSpcfYR69FC-rGOakeOiUUbzJH6BWGVh=Q@mail.gmail.com>
Subject: Re: [PATCH] drm/panel: himax-hx83102: Adjust power and gamma to
 optimize brightness
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, dianders@chromium.org, 
	airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 11, 2024 at 4:08=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:

> The current panel brightness is only 360 nit. Adjust the power and gamma =
to
> optimize the panel brightness. The brightness after adjustment is 390 nit=
.
>
> Fixes: 3179338750d8 ("drm/panel: Support for IVO t109nw41 MIPI-DSI panel"=
)
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

If you look in panel-samsung-s6e63m0.c you can see how that driver actually
uses a set of gamma+power (ACL) settings to regulate the "backlight",
i.e. the brightness of the OLED display. You might want to implement
something similar in your driver to actually provide the user with a
brightness setting.

It's a bit unfortunate that this is for historical reasons called "backligh=
t"
but the usecase is definitely the same.

Yours,
Linus Walleij

