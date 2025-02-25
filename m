Return-Path: <devicetree+bounces-151052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 363B0A44461
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:29:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 063F519C36B2
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 15:28:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A23A26BDAE;
	Tue, 25 Feb 2025 15:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n6ldRKld"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72CF026BD8A
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 15:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740497287; cv=none; b=rKiqXYHM+e8QxElmbOXLRW9dn0Dh2dHznxf24pCW5ycyNCauLVKqhqLZqsz4hWEVscqzpSaDzopRGzud8TWTaOz0fEpG4sFNR219xQpg9/cS6Bpsud0valClczzaYKRjoOk3Sql2g1BfofFnWRjy9oqcK0RGjbdKMS8ZNsM4kqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740497287; c=relaxed/simple;
	bh=hGCiGjD3rT8WeMapv2F6JsVOidAV9/I18pkLa1aTeys=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZimcSUYU4bi2ORsaFeHzCo23L7kBDp3xR6M6c9A4DlDviWjGpICZhbfMjBPRlSZMMXs66dr5VN07i2cn5e0L2qeKCzSjoiAhRQkLw+1YA+Nr308MK6oiW8Oa9ftuixr5vpGRnFNdshdlJVK5hmP2r/PUx/H+6hsx4Cl2sBxWjJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n6ldRKld; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-30a2594435dso66185131fa.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 07:28:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740497283; x=1741102083; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hGCiGjD3rT8WeMapv2F6JsVOidAV9/I18pkLa1aTeys=;
        b=n6ldRKldJeb4JM6Jhqi+EorQ8Cov5fjfKXfnxoPy+3DjaBoCw2DkCSohapBCnwG9PS
         fbvZodAEenviHsb0vR5i4xBPqBsIR76pbEBDdUV6ZglfHORvPv0Ubwbetg0Izf7q99Pe
         C0U6DD4Wu2A39S06e4ZUX0babUuLz5G+vXV/QdJX4FmwBE30A7Ot/D724VbFXx2HMs2B
         kxEYbL76pvXkfifeoPcEg+zOK981sdB4oyufjRUTutp9reN4YolAKYJUU0qX/Zo28VEI
         I9vNYUn3lbV3CMCBi0l3ErbUlSmE7ZF1l7Q96CYoK8a3raOt2uvkHiSumGAFbWG6PksF
         G3kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740497283; x=1741102083;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hGCiGjD3rT8WeMapv2F6JsVOidAV9/I18pkLa1aTeys=;
        b=tCuYGKwOzhLeS6OgWwLus8R6kIDoj8aqD4455mjxRQQoTG6BNmehDE+2XIsii3jCvN
         VTmRjU4LI7GwsBlmMgBc3QZZSmYv53e+IV1qA8mCExU6j9FBhv/J+UwQ3ltcpu4vy+WY
         8132ZCio0xIREPR30DorOUoL6z3TbS8C5wPaKNk/3C4ICxGq9pVIezuRRAZG3zqY47d7
         jkArtB6/duvTbN0gdC74LTKEWEl9Gx5IXK/dR0NtMJUL0EquOPQzbT0CDmF8b/EgD7dB
         zdke6ZWzTnC8xALEV7tGgg0Os2ndPh3P/6InYVRVvZniH++w+qjXgE7I7HZQvOol+sPF
         Fytw==
X-Gm-Message-State: AOJu0YyvSGBS9XS5OgcpfyJmfJXF8/MDNcSHWMiv2vZGtHXxqfMuOH8k
	LdwtipxRdeGiQtPe+LyHIIR85agkkTSpl42owB6/Ow14zbDF6vc9duX9MH47j0hm+IEaNXnB0w4
	eqtSaR8qtqK9jOkWEbvsw3VY5k6JzcHipuX7q/A==
X-Gm-Gg: ASbGncv5/eR0NfPWtc3oOjWDOqL8hqe+kzw7rNR16biOg6pOcHbG6U8pXc7iOYHLail
	0LHIPWBMaC7JrcY/GUa/E05zwrhiJrYvBk6QotcUUGHLa+aSWmy0f05qRAuVIc/dZM3/hLtsMtg
	3d3qhR3Zo=
X-Google-Smtp-Source: AGHT+IFIC691aWiQ6fX2Kh346loDQMF7svt4x3kP5BbJgZi/TCTQ5bjaKhl56TTJAVegI/rJyBI4FUJAROWzfxVZ1R0=
X-Received: by 2002:a2e:98ce:0:b0:30a:2b40:af0a with SMTP id
 38308e7fff4ca-30a505bbbb3mr72437221fa.2.1740497283523; Tue, 25 Feb 2025
 07:28:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250220180427.3382482-1-vincenzo.frascino@arm.com> <20250220180427.3382482-5-vincenzo.frascino@arm.com>
In-Reply-To: <20250220180427.3382482-5-vincenzo.frascino@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Feb 2025 16:27:52 +0100
X-Gm-Features: AWEUYZmXC8d0HT56SyUltkg7iyFAN4LOhovsbEmG_24mIAewVxMQQtWLIB3aLtU
Message-ID: <CACRpkdbCZr9ZWirwfrL4MFDXzYmHLWQYzw9bTtGFu31QTKo5DQ@mail.gmail.com>
Subject: Re: [PATCH v6 04/10] dt-bindings: arm: Add Rainier compatibility
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Jessica Clarke <jrtc27@jrtc27.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 20, 2025 at 7:04=E2=80=AFPM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:

> The Arm Morello System Development Platform uses Rainier CPUs.
>
> Add compatibility to Rainier.
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

