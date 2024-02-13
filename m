Return-Path: <devicetree+bounces-41193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4C7852B84
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 09:44:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD8E01C21D63
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 08:44:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C790418E1C;
	Tue, 13 Feb 2024 08:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AmuTcXoT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D9919452
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 08:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707813876; cv=none; b=oae5HptpRb7gHFOsf6bmb9gAJunI+zGPrqsvSAWc8Uw1osK/DxxcmoEnAQvuZOrFLTUpX0d1Ye1yUZAuleiUVo1CyKuIIJ8pUPIYwL1SBHGtEsXpJh4y9PJsgj3EinZXkk7HEpO8v1cP+uWKl+xLMpAvIVn2mjPhEcsvyAd1bQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707813876; c=relaxed/simple;
	bh=xKKY8Kww8TY7esJRiEuoQgG1aXmLrCnjL8IMFjGJzgs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ltxtcMAIy12YVjLknDIg9IGOZAfnAwWsL/4QMqkd1TVJZ75UCyMb8dGzYWKLbVujJxnFAiEE38WGIQvq56/TGQpgAdd102QXgJMRh2o6bEzDFWCLDtFACpFMhiqcS+2vwUNH5fwS9NmoGgmiLt7wE/v148KayLnJvP1d4mo57T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AmuTcXoT; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-dc7472aa206so3443047276.2
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 00:44:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707813874; x=1708418674; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xKKY8Kww8TY7esJRiEuoQgG1aXmLrCnjL8IMFjGJzgs=;
        b=AmuTcXoTMIPUWOEa/QXbpCZObmMhI2ns3+v+SYQBO++FbPjQk6lq/Zq8j5Jrfplpdz
         kRPqmkNpzGRxOgvzb+AOEaUTd4iGM7tWMectRvLUdZMlTpCCjVv5qPAI2t2mTDebej5l
         ZJT6xoKA5+toFwtR6YqQW4PMejTCHMhwX81rTEpSZQ7150e0ev0sHIcWFkj5Ob4EWBjf
         C4X/VVKH8ICT5oYOPoK5wUsQ6BfkYOa/ukD8+wNaNAfs7NEkmv9Qk0tky/MmXzKC9VSG
         MTIpx6t5wxC2r8MgEDcgpqfmsIPMV6IUmNXbe+6GC+UF4eKRsolxaw/JjkYfznKhwuQq
         v/6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707813874; x=1708418674;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xKKY8Kww8TY7esJRiEuoQgG1aXmLrCnjL8IMFjGJzgs=;
        b=OfFac3IzqIRHM/qmNGbVvmqCV0FtPz0mKCnQJsEOXruABtFmmGfK/S1l7cYqI8bwL3
         DIR1Ux1GksaOUpF+lU1T4iTT2vgupY3baDrIc5IIHzbf3oChYgENHXojguk8SJJAVy6O
         a6d/VWFYTzEJzu7xX5AAYyoDizaz+zEsyZ6cHwWWOG8y0PmuAojmrUZ9r8tjsVJWGPgy
         rudutCxC7x7VvlOQN9S0nrEmAZBn72Ngpt9vfmH4Y+SbVjukM7/wrZC+qRFED2+nWyDQ
         gfY1ipSiNwK0NkWlsXssOxfeO4Xbi0X/oAwOsnTY1ITBnlVIjFeZ4lV8TjqZ+0ul2RBC
         9Cig==
X-Forwarded-Encrypted: i=1; AJvYcCXwRoy108VWnPIXEH0/sW5nadJoKDl0Q6MRvWV++3LSt1BOt1PqBxKbF96l0jBIfvu8ltpeuTMOKpIg/dEMmQu+z2yNvhfhGXJpAA==
X-Gm-Message-State: AOJu0YyuNfD1bCSoemwRzUUdZx8nWveqOhbZ1bZYaf3cj3smH8iueFBC
	73dbBr+ruwmYmnIo4EjRaAFV6+vq61S9wEqLXcp/aLxqoUdKRF4ZoGYYRg5nLguC2Gh15P5NrCK
	NZvyCU23e55m1cD2y2HJ7esigDPCrpK+KiWhf3g==
X-Google-Smtp-Source: AGHT+IG0Ty/6dzdmUlHzKLR43nOsBHm+K5eikoUcc6LziX6mkJ9EyUEEC/Qiyu0iiF2hlQmx7YFYW8P8DMDomXpE/9c=
X-Received: by 2002:a25:800c:0:b0:dc2:232d:7fde with SMTP id
 m12-20020a25800c000000b00dc2232d7fdemr7346492ybk.13.1707813874219; Tue, 13
 Feb 2024 00:44:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240210012114.489102-1-sre@kernel.org> <20240210012114.489102-10-sre@kernel.org>
In-Reply-To: <20240210012114.489102-10-sre@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 13 Feb 2024 09:44:23 +0100
Message-ID: <CACRpkdaem7xe9PRu9U5ivaQYegB67E0W-SLrHe6abY8+Uuztqw@mail.gmail.com>
Subject: Re: [PATCH v1 09/14] ARM: dts: imx6ull: fix pinctrl node name
To: Sebastian Reichel <sre@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	NXP Linux Team <linux-imx@nxp.com>, Dong Aisheng <aisheng.dong@nxp.com>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Mark Brown <broonie@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 10, 2024 at 2:21=E2=80=AFAM Sebastian Reichel <sre@kernel.org> =
wrote:

> pinctrl node name must be either pinctrl or pinmux.
>
> Signed-off-by: Sebastian Reichel <sre@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

