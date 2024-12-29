Return-Path: <devicetree+bounces-134606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 516C69FE04B
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 20:21:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E8AD81614D9
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 19:21:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E718197A7A;
	Sun, 29 Dec 2024 19:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IJ1I21U6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBB1E2594BC
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 19:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735500075; cv=none; b=TNMxhQOopC/Kv6kwO4sfJ5704vIaEX+jPyuQSm3LbLx+zHQYneGJ4h6ddYYYYvfXWETeR8I1RIjaDV9KWyLw6OMbVGq9hcry1JMwp46Ac9yk+vuAQ15deUEw8aWyLKPLdsLhckNZodf7BZvi0XYRRguRpvutkE4NANyVsdR1Tik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735500075; c=relaxed/simple;
	bh=OVplWNni4FTunaflB5bbi3gO1+nJ0cW+48lamYqCGq8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q8/W7V7GW2W3ZaHk4p3u9pg3pBCSYWnpeCD34yxBAB6D25HMSeA1YgTaCBtRMJZaNfIuxZMdKCq+X321vV1HWGEFm7WyyTUNJJIv42z/Vu2jBzRkuQ21AQd93TC4px76oabQi85geLnJwZo4ylznhZPun4bKIupPkegg9Dnxc7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IJ1I21U6; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-436a03197b2so11095115e9.2
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 11:21:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735500072; x=1736104872; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F/m6mQE93XRbEC7aZffF1JFPjsU9ESCMe5TCbG/hYT0=;
        b=IJ1I21U6hrhPdk00Vf2K7yb2NXXnGLbSrbUZWF8yG+AKy9J1GWpkdNarwpXH6wOA7+
         3VKK9fipXwt5gMAhl/IsQkNhgF/LSzcQsir6XUu9bNrApR+TKqb3kLXKQ7hOW46Of14E
         gDKu+L8LMF0faSxRChxnKLgUx19WsGd84b5FNQhZJbpgvoQVk7YO3FjWnElW3L67BbNO
         4SC9NDkUXIF2VeOAmxU86dag8bVK8UgCMe9oFguXts/MZRYYOde01u9TUVTLkhiB6t7x
         Hxz4o4XJkV68KaPB4NNMdK9AJgNyc4AHd5sZJD4mPoM0lazdNE5fRir8BEgQm/0yVhuZ
         OdEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735500072; x=1736104872;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F/m6mQE93XRbEC7aZffF1JFPjsU9ESCMe5TCbG/hYT0=;
        b=XPS8CvsECQRbzcnKV/uG/EH9sei1wvcFAGnOhXRMvZyrWYdvuYlHEenpWRBKKuT2kG
         ave0o4nZRVT4ARa/7y5UbxyK2bs0BLaeL1O1JfEFx9k/WycYJMZU6TDPkJ0Yn6g/O40Y
         LsPzlw6w/YazU09Yd/xZBdWy4P+Zo/8C4KbMA6/rXioZWFRxH3e+Ic9W6OKGjZs3zCMG
         nWhA5l1HHPj5D1lFzcTFKdFcW/aZyaN1BLE+8pt3PaMyP9DrP8db/4pdDrLzf3hsOlR2
         qk2D0rmQYtOI0Z6BMY0mEdy1PkJzcytxskfsD+oM0zHd97D7FRS18sA4+HwDymH9YHeW
         g0yg==
X-Forwarded-Encrypted: i=1; AJvYcCUU1I6rFvxjIMRbOE7k56n4UzO6wzhgpc8BmEWxyLcR76qWgOrZG6EF45xboFe1nT7aS9+0ItDDkLoD@vger.kernel.org
X-Gm-Message-State: AOJu0YxyKHj21tve/TgFoJK4kg94q/Hp+QRD5FcMB9gtEn2Vv7cMocP0
	e/HtAgPBdGCP44HwjO1V3/U+DfLRQfAo1PF73KuQhLGOVaeHizmYab6AljTZtSCLhd2INXweLcy
	hQh/lCbNiURSTa7sa2yrdsR6I+SI7KmauZ/k=
X-Gm-Gg: ASbGnctwcCZSIFAQo5fnmbLHa3BqWJ7Xrxkz21HHvcRkrD5z4VeP2a9jjU1TraAIiqv
	MAYzRxVJq6C3fI1KaiyCd+QzdnoRUkf3qye8kEXX7hMb3l8QXfrUg4X5iefPbTP4h15ta5Q==
X-Google-Smtp-Source: AGHT+IERbyKDJY64pbsXCfiLuatq/oqkmWljGpRnNR4+iBZE0z2MspqeiGU222OSzsWUzmZRuvrFwmm5Of+SKsxCHM0=
X-Received: by 2002:a05:6000:1f84:b0:385:f349:ffef with SMTP id
 ffacd0b85a97d-38a223ffa57mr22988717f8f.41.1735500070610; Sun, 29 Dec 2024
 11:21:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241229184256.1870-2-honyuenkwun@gmail.com> <20241229184256.1870-3-honyuenkwun@gmail.com>
In-Reply-To: <20241229184256.1870-3-honyuenkwun@gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Sun, 29 Dec 2024 13:20:59 -0600
Message-ID: <CALWfF7Kg9HQoqyEYaj9FGPYu3+vAzZNLMVhSr_90SFDg5Syc9w@mail.gmail.com>
Subject: Re: [PATCH 1/7] arm64: dts: rockchip: refactor common rk3588-orangepi-5.dtsi
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 29, 2024 at 12:44=E2=80=AFPM Jimmy Hon <honyuenkwun@gmail.com> =
wrote:
>
> for Orange Pi 5 Plus/Max/Ultra and AI Max
> ---
>  .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 833 ++----------------
>  ...gepi-5-plus.dts =3D> rk3588-orangepi-5.dtsi} | 195 +---
>  2 files changed, 77 insertions(+), 951 deletions(-)
>  copy arch/arm64/boot/dts/rockchip/{rk3588-orangepi-5-plus.dts =3D> rk358=
8-orangepi-5.dtsi} (80%)

Heiko,

Should I go ahead and make a v5 including the following in my baseline
before the refactor?
- GPU power doman dependency [1]
- USB 3.0 on 5 Plus [2]
Do those series look like they'll go in as is?

[1] https://lore.kernel.org/linux-rockchip/20241211143044.9550-8-sebastian.=
reichel@collabora.com/
[2] https://lore.kernel.org/linux-rockchip/20241220161240.109253-1-wens@ker=
nel.org/

Jimmy

