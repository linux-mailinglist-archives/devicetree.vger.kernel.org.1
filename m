Return-Path: <devicetree+bounces-239011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAB3C60781
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 15:48:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 061623A4AE8
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 14:47:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FB4E29B8E5;
	Sat, 15 Nov 2025 14:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T5QP5GGa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3694B2139C9
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 14:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763218067; cv=none; b=TCVUzpJMJ4qsu8qsqu69XJDQbiTrAF2MCG1L7ZtcIFOiYJ9kgkJwZDKkxuV+FM+jObJHJ4t7rLOkfh47BsUP4wQPuPUiUD2gCD9zAGFbHR1bmq7O32adnN6X4LjBDHaxkh80gJrdL9KKmQ9ynMuXDnHjmeNo4aCP1DqDrZwbKhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763218067; c=relaxed/simple;
	bh=6zCF2VwvteQ2rlCgNAvg5npcthhroXaHgp98itk06Lc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oGHIpDOGGW0CCo2clYW0gotThfwFG26VZKT8fIhewFBaVHSsbtL6hj7G6IflGcqUfaKsELW9v/RbdwbaXvE6V0mUBM3HESxnvTYCRr0Bvg5Ms4FjrChfFpHVAspRc7xFqDmGtWgl/eCjqb3DZw2ofK6iyZ33C2XkvRCfFjfWnQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T5QP5GGa; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-640b0639dabso5097193a12.3
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 06:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763218063; x=1763822863; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6zCF2VwvteQ2rlCgNAvg5npcthhroXaHgp98itk06Lc=;
        b=T5QP5GGaAXLFMo/qeWHn4rnEHUhz5DI46GAhlWaoe3aAw/k9krLs6gr1XFfc5LxILg
         Vl27MXIziSmY0hzdBqn+dMfuSDAOqk7PEN1T4GxoiekSaFpfICPYrGn9UNUc+zAF2CS3
         vspkyFxDBtDm4fFMRLEf6RjAa7youAbamvdpWhb5ubW1ZP/eGq7Zhsvb8gXnkiKhhtKC
         Kp/3OhBNVtOaUHx5SvUVTdCkbrJU546RMuO01/M8QGlXLTtOr9c2C2FfF+w6A6w/e3F4
         8H+v3R0QBmUPzeQgwa6HDR0TsyW1WTvYshRbA37kolkgdRLdmTgtGrgtnAL+D6GPlGqg
         sAzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763218063; x=1763822863;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6zCF2VwvteQ2rlCgNAvg5npcthhroXaHgp98itk06Lc=;
        b=KPwF0i7RocpOgc5Jla6r68g3HrZAwevo0dH+FxTW5DSet7PzXdx3vvxLauWDfIzDPR
         kVrggN3hwfYgCctZP0P+MAyPhb6tcO7HBvHpJkrgZpAHx+Zgvs3Vj4DzdNOE0WAsPxqz
         +lm0MimRm0UN5nEI7bLs/5Vth16Tkd4BjRDPAUiGHY4l3X1hM2JT9u9TjHGiMF8uT6Jz
         P/eGa1lRsaEoc0wJE6Z4gPW/1M1li1hQqhKWziAlcC1eexMGP7swgiI3u97qp+HZnTgu
         Np5OXujzd1jSbAI86p0S0tucb5sSACeAQYGpFAkVeo11NA6YrQwwYDAkocZGTAxnQ0GO
         rarw==
X-Forwarded-Encrypted: i=1; AJvYcCVvVWtXizkU5wyoqMI1c15+/T/8oQH4tFOOdx4dIXdDGYKLUhqBNDFhm7wh7F6rBcRhEZF5w+iZvxsq@vger.kernel.org
X-Gm-Message-State: AOJu0YyWBQS3hOXpBQ6aii6JWqJoy2rxWji3gXuy9sAUILllyIP0Ifxk
	DnIgquUpSLIKX0jtO5z1YxIFIIryHC3kJuIGEQ8zCclsln6Hu+PZ8Ogv
X-Gm-Gg: ASbGnctHhAQZywrdGUQhq8jyQWb7qFOerU7xiGY0VDGel0xqS27H50tCUB9xZ+BRLH6
	lagt3ISyOw4Pjabtsze2N/Pj66Fga/Y5wEaTkSM126uHgdphZxtuPwurEV2uuTyz5kSjAIxxpRk
	Hd5146JRAUYx8Zm8ZRif7r/bgsfnV2NkYaliUAgrPArUJdCVcaKTauZnguf+zOLydhduP5lG/c7
	D9CsuGejJSMGHR5+ZlKcGR1JwFHl6J2vWgZloy0WArxIzKskwBRrDQlOoe7DK0T1EjNrM4qFXPk
	X/hzkiMbODsM57lpnDfP6ZFbUGXGoaLP7xTZu0YtV2CldQ2AwiPg+zQW6gt42WzV8GCnwD5Ps8F
	h7Wjg25B7R64tRkOyKP4xw7+CksNVtzCjlJEjOqR3tTCN+UIWEFZOlRpjjMJjMt9oCOIX4F6f2I
	PQRPUzKaJ0St/9LYgAzu5VxoNQ3BcrqLRXRijQNERgB/i5uf6nAtogseEGYg2+Cs40spXKSJ77M
	UaR3A==
X-Google-Smtp-Source: AGHT+IGrjk6XSc2vCyw9UdPnvD0sBuH/IPACkYBi6rv/j+NdjGAC/UWtwwJ0hdXjpnf0qvoLJ3aa0A==
X-Received: by 2002:a05:6402:42c8:b0:63b:ee26:546d with SMTP id 4fb4d7f45d1cf-64350e20abamr5640955a12.12.1763218063485;
        Sat, 15 Nov 2025 06:47:43 -0800 (PST)
Received: from jernej-laptop.localnet (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a3d7335sm5917548a12.4.2025.11.15.06.47.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 06:47:43 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: wens@kernel.org
Cc: samuel@sholland.org, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, airlied@gmail.com,
 simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: Re: [PATCH 2/7] drm/sun4i: vi_layer: Limit formats for DE33
Date: Sat, 15 Nov 2025 15:47:41 +0100
Message-ID: <2804739.mvXUDI8C0e@jernej-laptop>
In-Reply-To:
 <CAGb2v654AOqwOs26SjYji5K00oM_3U54sSFU-RMGqRPwRMnqCQ@mail.gmail.com>
References:
 <20251115141347.13087-1-jernej.skrabec@gmail.com>
 <20251115141347.13087-3-jernej.skrabec@gmail.com>
 <CAGb2v654AOqwOs26SjYji5K00oM_3U54sSFU-RMGqRPwRMnqCQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne sobota, 15. november 2025 ob 15:40:27 Srednjeevropski standardni =C4=8D=
as je Chen-Yu Tsai napisal(a):
> On Sat, Nov 15, 2025 at 10:14=E2=80=AFPM Jernej Skrabec
> <jernej.skrabec@gmail.com> wrote:
> >
> > YUV formats need scaler support due to chroma upscaling, but that's not
> > yet supported in the driver. Remove them from supported list until
> > DE33 scaler is properly supported.
> >
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
>=20
> Reviewed-by: Chen-Yu Tsai <wens@kernel.org>
>=20
> I assume a fixes tag isn't needed because technically DE33 support isn't
> there yet?
>=20

There is no user of DE33 bindings yet, so yes.

Best regards
Jernej




