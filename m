Return-Path: <devicetree+bounces-224307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA001BC2A0F
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 22:21:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E63A91884CAF
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 20:22:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25E5B22D4D3;
	Tue,  7 Oct 2025 20:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hHQtwXtJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78A621BC9E2
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 20:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759868496; cv=none; b=Q0e5YSzV7ssb3KxVl7AyMFiDxajhMiAvNhXP5dajiA76/LCgf8y6aVPBm3L5m9MYn2C/GTYMClStXxu87vH1qUEFDF9OkU7ZScL0fh75iUqHJxSk09Y3iRPho7ESSjhWHhDzlxvGFk8fesKjQby4MWhM+QvVLeRQzvkoo6UALEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759868496; c=relaxed/simple;
	bh=t4kdCtbMpSolLUWzyca+TrSgBjxKOUaqCLIHEI3NSpw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DUZ/OsNTY2WopVoXBdzrtVmHHjzqO+0erGsOBl432xr6nbAYMeWjJm0BEntiI9/OfTsgCLDhXm52FmKgyZHqxok8Hy/tqOtCvKq/zCSKcn/k/SNVnMu+HDKsRIGitWDiTU6+UD3Sz63+lYDntZVPqMFss3bWv6LVq7lx7zTHZnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hHQtwXtJ; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-43f47280160so3056106b6e.0
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 13:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759868493; x=1760473293; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t4kdCtbMpSolLUWzyca+TrSgBjxKOUaqCLIHEI3NSpw=;
        b=hHQtwXtJEEpxiy2cS8AfLKG6xMyZxsA6Brt/B7Pz4bW3nn1/UByh/OWZUexJZUnXl5
         sVOrV0aU0jFZyzdZ/QmpdsU3X235GeiZhQ1PXVUBOiwACIDN2S3dzM/gT20qJMyWx+BM
         FNPrOuNYx1x2hUHqJ9Hqz4+ne7g5v/RD8uJJfEftNUbmP/S3jy081s7580w8iYI5KPtI
         FK/lzh2dp4FKJFkf2/eP9CrlWD8k6TzKcNG9Evz5/i9qEsR8ws461flW4ZuGPmnAdtSY
         DxPI2dK/hH4mzJM8pp592lfSbrvolnUZW0PITfFjLfdOVxnaEI5tAC5Qqjjvc0F8jze1
         mVtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759868493; x=1760473293;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t4kdCtbMpSolLUWzyca+TrSgBjxKOUaqCLIHEI3NSpw=;
        b=nLmKUL3Mt4L/HFxOfwyy6qde6s3ZoHBCqUU0Z+1Sv5BWVfLrDdZjO5Cvdkk4ECl8AK
         3D/ePTE91oSuZivcrlwsC1AwAhV1J4Xq8Gky7g7wKDmLE34bb1oYjjmkMnD9fHWd7vbh
         9hxXWBTqMh6mIwGI17dLrrnOy8TSUIfOGJGb+sJP0E3MlVsO5M6mF8EOkf8dhy3xT9Wi
         JKhFWrd1igyFlImvfe5tlx0ZbB9HKv7oZBQlN1xU2DJy6fVOspbJkn/PvrJKcuvLTIfL
         dF2uC+XtoLptVSJfDN+zcbCmsT71rBekbHN7GIMX/bupTysOf5cmh2vl3pg0McpPxWBv
         Y90A==
X-Forwarded-Encrypted: i=1; AJvYcCWXKEpymNvKdpWopP1yOS+tlr9O8mQzJ4GJhmKOoJeppv3oO2OkF5U9XnFd4I+LHZCJdRhqrDjLTfpX@vger.kernel.org
X-Gm-Message-State: AOJu0YyUMZrpVE4GReqlj+9IfDz1gNJc4ElZWrAOFmEXmxXJFBsV1fZC
	dPkc1FTz3xilR6b8cMB0ODfBPwQcnqKQXWx40AGTioXnIzUSyD6Dpmkkbde+4gF8YOGpcJusV1Z
	BKe19/QOVisM9qF4miB7QU0jXAT5cl+ZcpFbnhCPbJQ==
X-Gm-Gg: ASbGncvO3nysGiLDcTUTs1kJPhMzu85oytat12WeQ0AaZcBR1J/ucVbPTn6Nw1VNC5u
	wkqhIuQmBmZFwmgT/4zaY9Yehxrvg1rWdff25WB3m40Cvk4OWJ672iyGYPkoPn3IIZUWwrkv3k0
	MZq2KGkvM1qHDWMsg+ydRwSXw3i+oiQHubGfX/yIAmAigodueboeXU/TUEPp9JTmntpSlqSN7Rs
	Lw7HB9ja/fUFSS1KmQY1XiaYYWk7kyiC2HZZg==
X-Google-Smtp-Source: AGHT+IFpXtTl/XW7xSv6EAre9JtZi5PYEJL3Nxxq8Z5J/VjHzSG4hRXvlO0e3SJ/ojRDNDKk3AnJrSSYwAUNIg/KUXU=
X-Received: by 2002:a05:6808:e8d:b0:437:f364:8361 with SMTP id
 5614622812f47-4417b36da9emr428435b6e.11.1759868493573; Tue, 07 Oct 2025
 13:21:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007-power-domains-clock-google-gs101-clock-v1-1-1ee73c453ba8@linaro.org>
In-Reply-To: <20251007-power-domains-clock-google-gs101-clock-v1-1-1ee73c453ba8@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 7 Oct 2025 21:21:21 +0100
X-Gm-Features: AS18NWCC9b83T6F2zFo4-esWHDAnbT_8yqAmmeWUhP__nUnwGaXjsaGNRCUZonU
Message-ID: <CADrjBPqAXYBsjPaG0w2tdA7EAW93x=DU_OxrEeyuGKByhyG5vw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: clock: google,gs101-clock: add power-domains
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 7 Oct 2025 at 17:03, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> The CMU can be part of a power domain, so we need to allow the relevant
> property 'power-domains'.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

