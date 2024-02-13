Return-Path: <devicetree+bounces-41200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB1B852B9E
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 09:48:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5203F1C22AD7
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 08:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8642C1BDC2;
	Tue, 13 Feb 2024 08:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HMiImORu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E145C1C6AD
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 08:48:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707814087; cv=none; b=JMyLfJfst2qDaBLZKtIfz6Bf5AZIOwkJLU2rKKzvU2xC8iJRPFsvxr0J1v4RDXN1Vb2kP5qWy33SMLFy1c2eZloG7EIK9BJ9jZYwH23BZS+vaiP+8o31lL0HM5+h0Of/0TP9BtxeXt6yN0A/8AiSg7CvXThYyQTE/DUKY85wzzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707814087; c=relaxed/simple;
	bh=UmKMhMjwgubZRTDFjXUtlGss/VVLnfAGIvJRLtEAGAk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qhFJmaLiY8xmwk8Hmoiaost00ESZaM8T7FvD8Iv0rsixO85KoRq2WaAgQTOP84fOE0wfefdLaCGnszzPLINDVJPeeXv/s7Op8yDlsoaOj67bYo55+xwFHTPwqpG8bTQIJbnu/uRLJUhDrtnUQOyCeXCQIgvJweVAVJ0QuBGp7Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HMiImORu; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-dcbc6a6808fso1260549276.2
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 00:48:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707814085; x=1708418885; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UmKMhMjwgubZRTDFjXUtlGss/VVLnfAGIvJRLtEAGAk=;
        b=HMiImORuxUty3jECuwMmqvPkhI3Jmxs1SXsQuNWiazCvM1oGIi1tknz06LKVZoZ5RN
         CIztjQjlYdN4g3bdPhLLeQwjTybxJXiKDQLfU6W9sGcMMyfCQuZDDZQjchXEEaXA93CJ
         COabWTsv6A9es2iS8o/Oa9J9rxkDi8iiwvtjHbBhMAjRfx3wPlCQ5Z+LG+U6WqpYTknl
         E7PXoEupf2ZdhfOtYWSTyDmimZnygbc8PnILkNc/e/VUghcENY9I9BG1gUkdT1BO8OQy
         kvmr19JvGTESH0fWGYOQMFH9BgzQcWAHJMMjBxOEENrZl4/XGpkwWnW80xxNW14ABOKs
         5L4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707814085; x=1708418885;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UmKMhMjwgubZRTDFjXUtlGss/VVLnfAGIvJRLtEAGAk=;
        b=fHC1bCmr6SVDgJR78zg9Ev8BzerxKoALNWc54R/odsy33LbiszVDnfJq9nPNEyOe5U
         GedU0P02YSoPlrR9DwhqJrP0F6RSmlRGhIFZxoq74D57rER2SwTsDV0Of7oXIRG7AheW
         95KrdfbCfX+xw7B0BwlO5KxzW/kyyzOWfd1+hUqkdiorDJhGamQk9JkmXs1sVyfYdab4
         y53ttwJWadFZa3k1ip+DENQBbA2zePtLNlKjeY1qdP+7BIm7AkRPCOEylgN/vWnlkAS2
         3k6Kn6I+tjtccLghH/VMcu2ECt70iS1Otn3+K0EGX6Vi4t66FF8VJfnZFcV7t9DWfh0J
         emBA==
X-Forwarded-Encrypted: i=1; AJvYcCUulOqHeTKkVX387CJnc7LAUfSO2DjnmqmFf5agrNakIMD5QlzAp6t01BtWm4jtcDlASEthRqrgOxAu55t2yd7F3d0dJMr86F/5aA==
X-Gm-Message-State: AOJu0YzNk0DMOIAWaYlwCZzQq3pG4hM2kwC4GsfyoGYxRZeQ9PjLNM66
	6CeVg0GpOfghUXZyZ60E95f64fFXv5T4K9Q+0ekkdoyMxl1UX50jQreli5VJJpih+JxYz0cFJj6
	j49XA7sXfLMcworAV6WmrMa9oz+SmUu1tpagkJg==
X-Google-Smtp-Source: AGHT+IExCdzrpd7++ek/q7qzwdeeM9WLXTrpFYVurkWI4Pg86K7HisMcu72lsW4reyouOzIX+im9ts0aFWyNApvxetE=
X-Received: by 2002:a25:c70e:0:b0:dc6:db64:67a8 with SMTP id
 w14-20020a25c70e000000b00dc6db6467a8mr7128883ybe.43.1707814084929; Tue, 13
 Feb 2024 00:48:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240213010347.1075251-1-sre@kernel.org> <20240213010347.1075251-10-sre@kernel.org>
In-Reply-To: <20240213010347.1075251-10-sre@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 13 Feb 2024 09:47:54 +0100
Message-ID: <CACRpkdZqmfiY5B6y0kSSanF6cw1_jU-BZ5dC8YEp0Oz+78yqQw@mail.gmail.com>
Subject: Re: [PATCH v2 09/17] ARM: dts: imx6ull: fix pinctrl node name
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

On Tue, Feb 13, 2024 at 2:03=E2=80=AFAM Sebastian Reichel <sre@kernel.org> =
wrote:

> pinctrl node name must be either pinctrl or pinmux.
>
> Signed-off-by: Sebastian Reichel <sre@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

