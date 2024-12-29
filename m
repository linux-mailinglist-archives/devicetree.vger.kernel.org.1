Return-Path: <devicetree+bounces-134605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE689FE049
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 20:13:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C99B18819AD
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 19:13:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06C15197A8F;
	Sun, 29 Dec 2024 19:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VN+WvzQj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554DF1C6BE
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 19:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735499593; cv=none; b=YL6kxNPNLAzqVNEP6Q4ZG8mWxW7ZJm6HM3k1+S/NkO+Car1yJG8BjMT/5jCWVxaHqhskt3PM8uEzCYkZlsfguRhfuxABap7UJzhzDzqDqiYgQnUyxi52W19st8iYb4XpseoqInYakJjjIWTQVnio2BLWvVZ4OD1LYMLihephSqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735499593; c=relaxed/simple;
	bh=XSYlkdXTDhUZMNeGWRwLKX8uqdyB3KZMifVtg9ZbK18=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FEC9H7/I/IJPuVuSDbPdyjnDl2bBdUb5CP2mJMpHqzf2zj5QObMxsD1QXxw48b/G7pSiKFtye9Z5cPby4g0oBne/O2gVnvShSLbvd67F+pxVVphEbFXIQrtAlqXOkBvngQyAlkj/ertiI8UzymJeq9Yiv5Xlz/KYgp8v/VBMNSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VN+WvzQj; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-436341f575fso90738685e9.1
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 11:13:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735499591; x=1736104391; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JB6RWy27UAdhtIGPVvajCMjk6utO9+OJ6w7pMgBIS2Q=;
        b=VN+WvzQjXhP1YaZFz5hsRficrQm8R2EHyufjbNN1Ed0XwCNRj/zX7bJY65bx45bl3l
         DUhbAFQlLR0UcaZyKvlrufrjPa/xlaKRC9U2OqF7+p0WdSCZVgmjIersiKjfmSDl/9w9
         MYBQJFN5mBaUkBVuG7DfjgsiJlCBBflNcsSrwYuzGNq+txmDuopt75MMkosZS5SjD4BV
         0x/oSRaBK30jaI1K/J9TZzblRb5cloxPh6/mn2Xnc3xhsJAFIwWB6Ul6RbHEwQlg9vVW
         na5aN2EPsnU5s5SwxkuFTUFcGYgclNVakbmiPGbtY78/ZlEXsDuLeKPLzH+qShawxPq4
         FBvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735499591; x=1736104391;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JB6RWy27UAdhtIGPVvajCMjk6utO9+OJ6w7pMgBIS2Q=;
        b=mddRjQmt9M2ywmAqqnm31SBvzRJZxgZnqXN0F6kvOHF8cw7jj6ej0aGfMaAty03gHo
         O8FumQJHy0J50uZFgB5iHYHUHIIOLVtVXiPAaorqhUpanIyQ0dcZ+MIS39pqgYrYVm2F
         gWl3pmP7OrN7NgDeAkfubFXeJiVGCfqt6/Jiad+e0DKwm9krUdwYsPjMsWvKcv4NTgMI
         ooHQiT5e/8XomMp8qKDNEyud78oSKYy0OccuQLGCJ40y82QAmMkoWFmhIsnvjOFOR1hu
         wceGwCguavBnHk2QaqefhrpIu6//bUkYn+Ur1lXnrXayambrbejpK5wldfJRGPHHkz7Y
         li7A==
X-Forwarded-Encrypted: i=1; AJvYcCXgInaWSZmculrloO1vk+gFVxxXrUoeCOP9k7AxTEfP4yo/KtOSiDiLHMF6DIS6FdZnT3SFJ+u0jQrM@vger.kernel.org
X-Gm-Message-State: AOJu0YxRqv0jmwqBECCmKuysUIt5fsidpLXKr4ayLXD3lCDRIshPQ86R
	V61XsPUwo8SqRd6YwOss4saKwCMXu2G3nZrA0QX8YZChOS8BMzJ10P7Pk9dE5w+ez0LNcW+UyJ8
	ntC+SLarAcw/RYtdry+15ImZvaC8PCzE8rc4=
X-Gm-Gg: ASbGnctOOdxVO3R0sQdhFY8J5LrjETw/i5wKh6eIwZ7aYjIplsJOO/QF+PhkVsrK8B/
	IAd0OXlhZh+4+9I/HV2SKZhLeIEHP0oiYFAfWA2j3/+OJzoYJPY1Tbv7Vg7fAsRVDF+oYNQ==
X-Google-Smtp-Source: AGHT+IFyd5Msx632w46tfWX0hlTHeVsnNhwuiCp4vm2FWrZmduOH4ED55+NPC4x26rTlShL/wyyhKorVA+5b15950H4=
X-Received: by 2002:a05:6000:1846:b0:385:e88a:7037 with SMTP id
 ffacd0b85a97d-38a221e27afmr28707300f8f.6.1735499590563; Sun, 29 Dec 2024
 11:13:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241229184256.1870-2-honyuenkwun@gmail.com> <20241229184256.1870-11-honyuenkwun@gmail.com>
In-Reply-To: <20241229184256.1870-11-honyuenkwun@gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Sun, 29 Dec 2024 13:12:59 -0600
Message-ID: <CALWfF7JEzMd0YgOKD85z4YiuKHUoNT4OzyRVXTDO2o7HTPWF3g@mail.gmail.com>
Subject: Re: [PATCH 6/7] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Max
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 29, 2024 at 12:45=E2=80=AFPM Jimmy Hon <honyuenkwun@gmail.com> =
wrote:
>
> Enable the second HDMI output port on the Orange Pi 5 Max
>
> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
> ---
>  .../dts/rockchip/rk3588-orangepi-5-max.dts    | 41 +++++++++++++++++++
>  1 file changed, 41 insertions(+)

This is based on the HDMI1 enablement [1]. I tested using Cristian's branch=
 [2].

[1] https://lore.kernel.org/linux-rockchip/20241211-rk3588-hdmi1-v2-0-02cdc=
a22ff68@collabora.com/
[2] https://gitlab.collabora.com/cristicc/linux-next/-/commits/rk3588-hdmi1

