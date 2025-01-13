Return-Path: <devicetree+bounces-138066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EDFA0BA32
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:47:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C56D169D14
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 14:46:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2259322C9E3;
	Mon, 13 Jan 2025 14:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pPO8LK3Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2992297FF
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 14:42:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736779357; cv=none; b=YJWmcFGaKn0HH48MGOVdy0BIy+fDatLOe4i/5AJJHJcJZMawXv3fat/uPBABTOjap/A4HHfAvg84N+kTj1XqVvWjWYAA8r4v5oWYvt8FkQL9kb3S9bmXH1Zrm5gypBJC6ecURzxJwp0YxSNdTjxU3Egx6Rfp/lCDFUogoX8Xmtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736779357; c=relaxed/simple;
	bh=7W2mhWlK4BTLc7JxE1Pn3ZSLtHFOTiBo+aWyoKQ1jUU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j0IsfnYiqLJFdNVIhtZVWQMrfmroV734DfDgJuLJ9UxZfW4TIDPJeZqezvUfn8Zweonejozz0Kmnmw4M9iovPTvV+0mTIjsrcD4LNhZihPVStUpPKGfgDh3ROWQtdYQDJu03aBdnqD6rWPPsuIm0FJKONA6vIcDcdofFM/jd75A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pPO8LK3Z; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-304d9a1f198so36186701fa.0
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 06:42:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736779353; x=1737384153; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7W2mhWlK4BTLc7JxE1Pn3ZSLtHFOTiBo+aWyoKQ1jUU=;
        b=pPO8LK3ZHzhtuzWp7Qv6FslshKIVbUM9moWsnJxDXjErWmnt9WSQFmRanC8GmWavj2
         VWSa5I9ZVwtm4vnlKG4WwMGhGfKi3CzMScEtVkKmfOKeesesTBqZFAxtt1BeLKekdl4t
         sdJPeCGdFJG54YLJWLf5zKoCe9cKY0Zr3sjpenN5V6Df8/zklwLsDIi9euf3priKIIpe
         p5OmycaxzSZdxrf+N0k6b/ZuVxWIOaj+8tCAfx9tDzB/srwOxSuri2oPWS2Olu9b0oai
         2Aq7zlEGugacFCP/BEON1yX5ScuMAaPeduSXKL/J1140IHm2vRqiTPhN3x/zRCEQOdle
         fTfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736779353; x=1737384153;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7W2mhWlK4BTLc7JxE1Pn3ZSLtHFOTiBo+aWyoKQ1jUU=;
        b=m0uZ5B2zw+98AHFdiJVBte1HgbUy9vjx2VgQ0qu+wBbmlQuk/OM2IHnanz6apQWNWo
         SvKqf0UOhtwIlEdUc0IOvy1yq1lSMuZpuGMdaRs+Zzwkf+fJ3v4b1PA9yRqy1vsvg+FP
         WKJfzwE8vy5ARgtomG18IwwZ6ucnETRRc+edfK4++B4sqXtItA8ax/L6MdgqOqGWlhTC
         GN0FNh15kgyrh2YFTtxGAHJ6+qycXOsEYmE9B0xMTrxqt9AwiTh0tlRAW0Dbn5Svhkze
         nBf0CPRRkH+ZymZP5McqOVCHJ9+PrjyU9Fytg+zCWM5ZN2VPkcyTk4b0CyTrmpyow0HV
         OTfA==
X-Forwarded-Encrypted: i=1; AJvYcCUa7JI2+43zcNqNKs4Af4biW51RpXXlVtni9kf3zRDyDV2M73hhUU+YIBPMqH2GeX7655VR3GIrmv6T@vger.kernel.org
X-Gm-Message-State: AOJu0YxqJ2ko3wArW0vL2O3zwJle86yVoVHHwqoDHZY+V5GSOzxhD+Ec
	nFnhdomOinuOSEZrsMqpJcN/NKARrbKbdB+1Fw1/jFoRBUStGk5mrbtJqLiNycf7JrWBuP6q9yP
	o5lxHEgdc6a68iSeRr4xHOlm2gRYoqnT/BLZrCA==
X-Gm-Gg: ASbGncsq3oNOQSmjmP/dRMov+bFF3zVy6A/LZuVj7TS1F28xNyAtyFVMrmPweFszfro
	ss61gQ05VfT90TXmTnSI8RakMl9PTrZf5v1sC
X-Google-Smtp-Source: AGHT+IENOE2ll5qeBQdJ80yylesb06tRQDSUG+UU61Vm3q3uDxQQ0+DlCXsReKBTut8XEJ7ObVreQKDUPla+i1+OZQk=
X-Received: by 2002:a2e:bea4:0:b0:302:4135:7d99 with SMTP id
 38308e7fff4ca-305f455e7b4mr69133281fa.4.1736779353384; Mon, 13 Jan 2025
 06:42:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250108-fpc202-v5-0-a439ab999d5a@bootlin.com> <20250108-fpc202-v5-9-a439ab999d5a@bootlin.com>
In-Reply-To: <20250108-fpc202-v5-9-a439ab999d5a@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Jan 2025 15:42:22 +0100
X-Gm-Features: AbW1kvaddZgkHI_ZE8MDKIDy3uHycNLLq64wY8GBa-n8x8phy3UrJ9DEp0n2mjk
Message-ID: <CACRpkdYgJ_rbrTWh0HS-F8DJJ6u48uqr-zQ555o3Q4mYnFhjXg@mail.gmail.com>
Subject: Re: [PATCH v5 9/9] misc: add FPC202 dual port controller driver
To: Romain Gantois <romain.gantois@bootlin.com>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Derek Kiernan <derek.kiernan@amd.com>, Dragan Cvetic <dragan.cvetic@amd.com>, 
	Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Kory Maincent <kory.maincent@bootlin.com>, 
	linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 8, 2025 at 5:14=E2=80=AFPM Romain Gantois
<romain.gantois@bootlin.com> wrote:

> The TI FPC202 dual port controller serves as a low-speed signal aggregato=
r
> for common port types such as SFP, QSFP, Mini-SAS HD, and others.
>
> It aggregates GPIO and I2C signals across two downstream ports, acting as
> both a GPIO controller and an I2C address translator for up to two logica=
l
> devices per port.
>
> Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>

From a GPIO point of view this looks good to me!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

