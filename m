Return-Path: <devicetree+bounces-253418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AF923D0C3C9
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 22:04:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69A893025175
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 21:03:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B89E318ECF;
	Fri,  9 Jan 2026 21:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="ND9JI30Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C892318B90
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 21:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767992624; cv=none; b=jTFdFlv2HHsKax83KBgCDJ+wGgfml5CX0ffAZ5zfV5XjtPJfDx3QJBRxKbhLxT5SbddD14OEBPxgfoC4finBHa63U5mCX5jF6kqK9YcNIPzLHqbmzy2ANTk/hk+iBGTWpdBvfVkOYBRsOrkc3KwhCPllP9HAbol45yjeBDSTy9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767992624; c=relaxed/simple;
	bh=xHsh6MGOwaIqqm+hN1oX7sSQ0wIT7SPKXS2wr/sjS7A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=C26LT+VGJZkbatKWxhIEH8xF8jwFQ+4VdoVPLArD5jrFL/z4HA2aj+qau0A2M6HB9cQpwmtBRB6MiJo4n2N4aWoM2hpatfgCkL+14Q+s7lEiK64GCyGyAqFIRxD8rePcpW4zBFH3O6l0V8v1T7kjUeG9NmXnmd0DbVFvungKYpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=ND9JI30Q; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-bc09b3d3afeso1904296a12.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 13:03:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1767992620; x=1768597420; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xHsh6MGOwaIqqm+hN1oX7sSQ0wIT7SPKXS2wr/sjS7A=;
        b=ND9JI30QIQhCw2lrAflyh89H0iMn2i6UuLjzm+VcdSXAW5HLnxs7KA3Z11Oj38lwGE
         RCrgwuN4QKP6I+DamqnLs3TctMLPlbMF8EfcoyZ5p5YFIZwHn6k0om8bC+MGyfdRT6g8
         10NtiFnCkzJusaYnX0vAtVdodpNja/dpjYS/OJJgRThkf018d8/pu945bzAll2fm67xY
         nWLzefXgyz1QHZFUVakLBaPlOPAoW6yoLX/jPN0TgfFmYKYONPRIT3nKIF0OnRE6cy+7
         +HL3br4lgvHuLYA1ZAkYgGiox5eSL7ANurpkkpfPHpX1jCHIxNO1wV61IPCR757HrYvF
         zOsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767992620; x=1768597420;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xHsh6MGOwaIqqm+hN1oX7sSQ0wIT7SPKXS2wr/sjS7A=;
        b=OpIgSQZbiw0DAW7k/IVaaMLJO7DKAEa3MGDNQ0+w1N0vByEd8c1nOxkOKxjx4Z6H05
         h0YoXqG+HiDsOn8260ICsfbCzf3reqV69MLyjVzUTDHot9ae60TL8mILFFnHghkBy5//
         6UZwRlnwDKQVKwpCZiFnWZDtvH/zx7fknsXbq7g2uNLsaztr0fl+d2gcC9AU9A4E/VH4
         2x5gWvB6ufd2rahpm33OmG4d+oTHwuTiDcCFHkDOBZd22OSa66/BPOVOD6S9y+ilUydE
         jBN1aWDb+ecobM6DapMS2oZZEl7IIUQr31d4WU+UIprEsBddShXx+rjxadp4Kk3XYlXf
         YA5w==
X-Forwarded-Encrypted: i=1; AJvYcCUCiv9OmzQ5uHy/dHc2VmjNL/UqN3lERkK19VaSJilaLKQCv1pw+M0mU9xfnyQ9ILg34Li8RKntfyZ1@vger.kernel.org
X-Gm-Message-State: AOJu0YzGNqr5hzpio/v+9VZsyd6H+ahT/c8STi1KGOO9ReAZgVhdaZyv
	flwvJeURLvlV5Q1JPi5zQMq0veFMeUUYDFZqS3RNkVLJ5gSM7Efc//eM9HkO9oeKTsty0nqMpUH
	wgq1tjKXXjXbM+ccehyoL62jMfJ7ZRf0=
X-Gm-Gg: AY/fxX55t4fTgxDGTvQmDOGimft6zTJWabBLX+MgCYhwlz5OIY3zscetKNrP1qTlnD9
	2Hs4XZGaMoWdNElmn18FjJf7YBQ7HRQiAyiSFAyCBiXhO96CnrV51K0YZRttKI85DXYoYMVn5MQ
	Imu23RRhHSDG0CNoiAZbXM+pjAGF6pn4RhI8PVHuqVGSxEIWaPRYTVgV3ehsanpFqJ360WbKHW+
	JuuKKWHnHGn0eSlNx/gz8x+hQ32gxp2h4Xsa0HwuCNpxNFpV1mUJI3qa1IXkSf1D2zZXvMBg1zC
	c9UHCOo1rC57++e6PV2Pf+UpCfyd
X-Google-Smtp-Source: AGHT+IE6xBMNDdxDFDu45mzdnkNgP8Xo2RHjKHEEi7OxCq3tsQhTwUbilionwt/MAUeqVtxj/vFWwNYWT27IOouoivA=
X-Received: by 2002:a17:903:46cc:b0:295:96bc:868c with SMTP id
 d9443c01a7336-2a3ee41d111mr119743015ad.5.1767992620326; Fri, 09 Jan 2026
 13:03:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260106090624.518117-1-martin.blumenstingl@googlemail.com> <890f1ce6-60d2-47d4-8552-940f3abd7c1e@linaro.org>
In-Reply-To: <890f1ce6-60d2-47d4-8552-940f3abd7c1e@linaro.org>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 9 Jan 2026 22:03:28 +0100
X-Gm-Features: AZwV_QhnbrdFb8OdNAcoIBBeUA74zu08xfJnlk97QmF8Ut52hYzn5fWJkesO7g0
Message-ID: <CAFBinCAdDVjvu-ZYMZo4cMzmDZVK7kf84txw1v_hh3b4NLdrpw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: amlogic: move CPU OPP table and clock
 assignment to SoC.dtsi
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Neil,
On Wed, Jan 7, 2026 at 6:54=E2=80=AFPM <neil.armstrong@linaro.org> wrote:
[...]
> Tried to apply it on v6.19-rc1 but it fails to apply:
>
> error: patch failed: arch/arm64/boot/dts/amlogic/meson-g12b.dtsi:57
> error: arch/arm64/boot/dts/amlogic/meson-g12b.dtsi: patch does not apply
Sorry, that's my fault. I had a temporary change as a parent to this one.
I just sent out v2: [0]


[0] https://lore.kernel.org/linux-amlogic/20260109210217.828961-1-martin.bl=
umenstingl@googlemail.com/T/#u

