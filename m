Return-Path: <devicetree+bounces-70355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE9B8D3264
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 10:57:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 811A8B23A37
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 08:56:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12A0B16D9AC;
	Wed, 29 May 2024 08:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oCAVZySJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9F6416B75A
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 08:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716972978; cv=none; b=JYBSdfbv0L/YeWesoyid0ZMQP2bqD5XHp2Wtuj5xpGhk0knsT+CesVpJAq9YYDlvZd6gq5XbH/g2rKXrOLBwzhyYjaJwQnH/QqIkfXj0u4L3KzqweN5HIixUzCXHqPWXHAXDkxOcWmri7e8axcGC1Sl8AgBBjifAcYqzJMnQ214=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716972978; c=relaxed/simple;
	bh=DtXP8XIgulfp/10cegI2AvN9bdkVmyBIDSaD2r0yo3o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NhGP8mDl0Bb3VJsmUO+pPnGLxuipz30k6wZONTgk4kkt3uKkGsf3k7EBlQY4Y6pnCqgjVyf39V2egkr/mzuVHvUhfz2qy4Jelaq9Y9uHQOG4njtVexDJUp/R2wKjYBsbdemt0UxXRfltUbcvOpPvYnEvyBodxm3Q3Sq/b3w8mBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oCAVZySJ; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-df4dda88ce9so1541581276.3
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 01:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716972974; x=1717577774; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DtXP8XIgulfp/10cegI2AvN9bdkVmyBIDSaD2r0yo3o=;
        b=oCAVZySJn0LabkbubZoOkFm9noihVvMTq+14qPkPJfvqDkAbEzcsQsuCZuUAA1rVwO
         jNLs3J7jt2GAMl7h/p22b7yHiThMCfcT3/Tnp2dbRVC+/6Kmlah1+GbJwvdpe/h2X0EZ
         wRJKl/2uQL6ypA1omSn8/L6s3s7Uz8ZJ78nlRkcRJDdV2hWKlFUEkVI5soMwKUahjcSa
         BbHah58uGKLyQFhUh2ZNz0BQewR6p3GPpJflqQ0fsQqBrRvtprQXlCjSAz6f1M7fGz12
         7qaq7e5c4v5ei76/q2AoZi7vACxg5JTmlZvYemImMTUrFlfaUyRqp9nBdQKj9jaLENnn
         9Blw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716972974; x=1717577774;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DtXP8XIgulfp/10cegI2AvN9bdkVmyBIDSaD2r0yo3o=;
        b=gZE6fEameLXQjjtngasKs0CERdQw+Kiu788yu9WReD1FRG1rQg1gLUgg0VEuw2OJcW
         yphBLarDXJlCO5Vst6f5BN5hmkESo3Ooa7DY14iK+FXMmAqxarSMAOoJjpIYl6RUYfDX
         KvxbIr3AkGKYFS5ZFUmWWto5sQG9h/lww366+HE5Gp04nMFH1gHVUfuhT9mMwCjQFKJd
         LrNriBI82WRrue85QYJXh0wcIc4HxeaJTigTmpQc+IQp0GKtbHxf/Ak95pxfi6IML1nd
         BIRoc75gYZqzdG3Y2lKkllVRLKPW6n6JEdpGykMCTxgcJ0o9c4WIAMiSeiAnVAu6bOsg
         SbGA==
X-Forwarded-Encrypted: i=1; AJvYcCW8/+kc4A2aenmz3ET3lg+cSNCHFn6mU96IxKawdBLSgZhBMENoLkFqd6QJqdU1atoaI3r/NEYlyct8eaDzxN1kFV/LI5FkIUNFmg==
X-Gm-Message-State: AOJu0Yw4msgyVWfUds5sUdV55kHex940nDIONF04gApuk0mo2Y5B7LO5
	7fsdrxMGDTKF6+UJcKRsQoNl60hUl7gThfz33Lnr2AyByFSHoHMs0uoFckk4o6Z7S4KfpaokOgG
	8/xeYroKTRJS6Q+iblyWi9hYVxD9Oni6BvFE7mA==
X-Google-Smtp-Source: AGHT+IH4NQ4depklJARq4QXOQPL6SbQbymroEMtHHxC8aWGwiK8gNUj59IY6hl8YJF+EVgh8d/hNerEfUYlfaT+IpDw=
X-Received: by 2002:a25:241:0:b0:dfa:528d:e8f4 with SMTP id
 3f1490d57ef6-dfa528df61bmr104636276.33.1716972974547; Wed, 29 May 2024
 01:56:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240515121634.23945-1-dmt.yashin@gmail.com> <20240515121634.23945-2-dmt.yashin@gmail.com>
In-Reply-To: <20240515121634.23945-2-dmt.yashin@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 29 May 2024 10:56:03 +0200
Message-ID: <CACRpkdYbYS4bdzF8oN3JGsfius+_WKJLvZ06m5T-Z+Xb5EEbbQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] pinctrl: rockchip: update rk3308 iomux routes
To: Dmitry Yashin <dmt.yashin@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Jianqun Xu <jay.xu@rock-chips.com>, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 15, 2024 at 2:17=E2=80=AFPM Dmitry Yashin <dmt.yashin@gmail.com=
> wrote:

> Some of the rk3308 iomux routes in rk3308_mux_route_data belong to
> the rk3308b SoC. Remove them and correct i2c3 routes.
>
> Fixes: 7825aeb7b208 ("pinctrl: rockchip: add rk3308 SoC support")
> Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>

This patch applied!

Yours,
Linus Walleij

