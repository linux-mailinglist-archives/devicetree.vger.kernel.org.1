Return-Path: <devicetree+bounces-151057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C60A44475
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:32:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A3CD6171C1A
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 15:31:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0870025771;
	Tue, 25 Feb 2025 15:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iZm9//JQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AB4290F
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 15:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740497497; cv=none; b=SceZ2xuZfn8CcIVqypklS/XsF3l5k/eT7++9+SzyOm5nAGrkQHixLGIHgz5/kfOPWFmzOZRgaV4lfZ0KK0rJvLhBeVImTKw5quybSo5jcU6XILAGGvjiPii+Q9VIQgnPzADbZw142W6eCEAA51YQlf4I3aiPtqMk3PfxM3m6Z7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740497497; c=relaxed/simple;
	bh=roYBOgtGzUsHXQBIXuQZWu8SiQnbw21Lb6vf9yQV4wQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VnftosX2iapj0NOZ3PiknxSF0HPE41++oim9Dl9F4NHJ0AtWDCW1Y8/Dvbzrksau4PaURM38LVSy25YIQM0JsE/v+34cohb0IRZiFjzcBPizye7cue6La8OYJt/rWNvaA3MzI+yiV92wxS1VvHO2J4lqquaX8d5EjmJ1XO3UU5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iZm9//JQ; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5461cb12e39so5543973e87.2
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 07:31:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740497494; x=1741102294; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=roYBOgtGzUsHXQBIXuQZWu8SiQnbw21Lb6vf9yQV4wQ=;
        b=iZm9//JQfWw7/jrj02IvkwUqJnMEEHNE/PwqYYiQlDrjL5t43xGOZIu1SlC47T42dp
         UPlUHMuC3dOeNVm9RevcrxKBlESh+fpBxEpmo4KSx1/hNtd6pWcdEp8WubA0ULkBOXfT
         pddqkgFVZBseb9Ihb79eJrRJAxjnUquuIJ5QDh2EW4yqck/en33jkDl0WLyUJ6qC4mHX
         JMuFIjpF4zwH0bnaOSuD2quRZqlQ6yTyEtDWSxwxrW6a+89nwflOZa9s+e7VYlIZKF8o
         cS6liMUz4Nj0TTtinhWwSnOtmQPgH8tFlgAYJy82McL+OtGhXVVeWwNiYfAyY6mLsR6N
         vvvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740497494; x=1741102294;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=roYBOgtGzUsHXQBIXuQZWu8SiQnbw21Lb6vf9yQV4wQ=;
        b=WhWG2J+ckbwOFo0oZcviCQ5xyGwwYkM+eX8dLHW0WSZ1jGoS8a2ClgsGXT0KIQTINR
         hx3Vb4jNTCepg0n6RpDNDbu191uqxThUUZ+vgvBKWy4cvPdewOfkuXjp29NPDqH6tMED
         9iIcT/pUptb59rI0BF7s0g4PwJj9ODQvcHSpF/8n90Ujk9RQ7tKpyRUYXEXNZccc70/Y
         R+97h3PQr796kE0qIG7mENKg3LPu2K/tNK9XGwG7VXDHmF/7OTGtT+OytKuC05tdQiWK
         5Qvi0iuETXfcSRFTpXu7+XFK5CCJ+UfIjorJNfjAE4b4MCvVz6NsS4SU/hDNctI9Ugvp
         KiTw==
X-Gm-Message-State: AOJu0YxNTvtFu27Eo+Ebj2MdC7V+g5m7mihM1Uz9WC4DqS0r5YZJQRO0
	3Hp5pdcyUFRiTc4y0wqg8QBocr0GIX8yF3B4E1GfoCgnry4F+6KGqCtvHwBpFej0CQF2qe+P7UQ
	VUN76zFbs9GC9lsQ1vyo+fc9hb5BpdWTmZ68WAg==
X-Gm-Gg: ASbGnctnvdVsVHF4dyqFvTiUiMWe53JsAo2mbvOIwZWp6JdX+U0CSfpW0uPtCZ171ou
	9jE30CS1n45fZUc2S21q4bwHsMvgLudpaJwvkfvcupnge8eMtjnattcoQRTLwG3Li/rYR05DW82
	PlBN4hUXg=
X-Google-Smtp-Source: AGHT+IEv8sW5Rf4zOcIAVA9dNYgFhkXoWsDkuqwaPaAQjPElrDg/4tWrxkT/p9rUgTIhAQZij4qx9JhUQwq8UCvtKdQ=
X-Received: by 2002:a05:6512:280b:b0:545:bb6:8e41 with SMTP id
 2adb3069b0e04-54838f5b913mr7041479e87.52.1740497494049; Tue, 25 Feb 2025
 07:31:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250220180427.3382482-1-vincenzo.frascino@arm.com> <20250220180427.3382482-10-vincenzo.frascino@arm.com>
In-Reply-To: <20250220180427.3382482-10-vincenzo.frascino@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Feb 2025 16:31:22 +0100
X-Gm-Features: AWEUYZkE0B0UpjmJyEFbrAVTIFpOAVWVgLL9JuguQEW4Mtoe1czJXzaBv81bD3s
Message-ID: <CACRpkdbZmQxtVqtc=Fw6kiOe3NdEE2mBHr2rKXLP76U7Dguhgg@mail.gmail.com>
Subject: Re: [PATCH v6 09/10] arm64: dts: morello: Add support for fvp dts
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Jessica Clarke <jrtc27@jrtc27.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 20, 2025 at 7:05=E2=80=AFPM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:

> The Morello architecture is an experimental extension to Armv8.2-A,
> which extends the AArch64 state with the principles proposed in
> version 7 of the Capability Hardware Enhanced RISC Instructions
> (CHERI) ISA.
>
> Introduce Morello fvp dts.
>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

This one has the PL110 graphics as well, right? (To be added
later, just asking.)

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

