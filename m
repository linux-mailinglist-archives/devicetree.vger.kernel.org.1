Return-Path: <devicetree+bounces-173981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB759AABC57
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 10:01:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FCBA506950
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 08:01:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D46E820127B;
	Tue,  6 May 2025 07:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DfKzxirR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFAB327713
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 07:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746518039; cv=none; b=MxO4nHclz93itc2kBij/K8PIL2UM1B88THFOAKQlcqb5Cp2jpN+fpKWWQl41JP+r0bluoDIAR1Kf8fH7X78HYo/vaQgC7+/A632g5/XfSBzy4bL7bvZ5ll0Co7T4FzeBpZWlUyQ8/yBO9Ia/9aAbJoOmMGuE8oiN6Bt1swbCs00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746518039; c=relaxed/simple;
	bh=JscL+bjhizxl/VXl2XNE12A5YSF/kEsWbbqNxdspqsc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MsoipO6JaXpl0jP0+zhwkj6GRwi2D0IvzVVsfJ57FWrj2QI7gqWxKc9HOgUlCNyS3PUuvUpRlI8z8R5VtdFAeQn/0PkcGwINeOAS2+Adx8O/UhVsiNVkKBi43HZfnRrOm7mObysoZG7Y6i4gdi2upTJRw8myhitLgvaI7u2sN44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DfKzxirR; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-30beedb99c9so45724081fa.3
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 00:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746518036; x=1747122836; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JscL+bjhizxl/VXl2XNE12A5YSF/kEsWbbqNxdspqsc=;
        b=DfKzxirRb8TABFC7uPN2lYJn/qCS6FrxVwcDr4SRP7WhXrAyB5N9EyExNWELll0Ad6
         FMW1UHYJHv3Uoijjip0bWhBCf7TwhYZFpAcCO6qqLGjrQF8EI9RJs+74R5a6hf6ZcN/U
         O8CPiEHqUdluzZAaXWu1IJ/zQzZdRimYhv5acT6iLToM918UOraskJE0zmMI7wgXr6jL
         qWDBYjwuIgrGyqCjDRDBT08hmEt3qou70bzNgaB7PqHO11lnXYLBnaDqLvpnsfGTtY7l
         dfkah8iKrDOTQoQx79sQPXtIsIiEHT0ke3NaV+jwiHtZO4aTrr+YadnRnBiBJ09DQ1Ne
         agRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746518036; x=1747122836;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JscL+bjhizxl/VXl2XNE12A5YSF/kEsWbbqNxdspqsc=;
        b=FvuI1/FZ8cVuLEG8N2pVPhCIQNDSQtbyGZlI3n0IgogJwtyOVr3IpExiu1nc1DpBcO
         1uUCmLZPl+5oMYtPE28e//aZrBj4NjLXcz8dLai7D+pO07Box49ECFmB13u8UFDCLZFe
         GDliZOEoJzklk8ZVyBLs4uQwG9pHHVyHVSLaMKCmmSBkW/kD+q57ardA2xbuXDEYumDk
         ihXOkDisEl+9qbyA4sPz/qgzkW9YOzFo30bGHqQUGxbDjGNY/Is0gP5OaPzJY11do02v
         FeKQ0YoZdUrwsCXqENYDFDzptf9g0/lUaKilsNrkoJOvMM1s9D9rtLQSaoE/dfPqi06A
         4JVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOoGn78ONlHOmAGCAJSwRNrmzOJKW+jY9yhVlD/HCq+Ux+yqkd8EiEk8UXhR/JgFXZ9xKNXuC0dgB7@vger.kernel.org
X-Gm-Message-State: AOJu0YxJnXbeBG5zUdbHvdEAJ9SvsSmnDZ6mJUEirU3UKnasJGSOVweo
	lIJJ0ESwmwl9Hz1l0suF95NSv5vJ24AekKLo+wYui6CVQdPw5GOgDZa3U+GKXNxeueYfzJZviQ1
	oe0y7cKHxnLeDLly2YYxA/uugMegdT8ikbm8K3w==
X-Gm-Gg: ASbGncuJ5AHmwe1SM4b6LeuaUw+L9jZKwYqEyphH+sleKzsSoN3ZeZdVPuP+eO/EuaZ
	ADX3rsFKT4FyZdB3gAFBXc4OBpw7B5MmSAIr5UCjuEW1xCElHB0Fvku4U5bxCGv0SfiBI1eTthe
	MQCQ6kM0NduMV+dzVcrFW8iw==
X-Google-Smtp-Source: AGHT+IF91l9MSJHufEzIXbuFx2951Qfg90hY8mnCf7auO/TilTLWdM48ESfSxXtPpkT6j485LMfJPJx1ASyKbnclt/8=
X-Received: by 2002:a2e:a986:0:b0:30d:b89d:aafd with SMTP id
 38308e7fff4ca-3266cb0a41amr5820561fa.31.1746518035967; Tue, 06 May 2025
 00:53:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250506022241.2587534-1-robh@kernel.org>
In-Reply-To: <20250506022241.2587534-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 6 May 2025 09:53:45 +0200
X-Gm-Features: ATxdqUF2xR_n1OAmI33TitnuvBI7EySPMcpq6MNTJ065NAvfrLt-E_rn3C-_-xc
Message-ID: <CACRpkdYvxV+5d84qJtE+mpDbKq0qagrDn3zjRxQQgfJVuGKGEw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: timer: Convert faraday,fttmr010 to DT schema
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 6, 2025 at 4:22=E2=80=AFAM Rob Herring (Arm) <robh@kernel.org> =
wrote:

> Convert the Faraday fttmr010 Timer binding to DT schema format. Adjust
> the compatible string values to match what's in use. The number of
> interrupts can also be anywhere from 1 to 8. The clock-names order was
> reversed compared to what's used.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

