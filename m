Return-Path: <devicetree+bounces-226454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC30BD8C51
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:29:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BF5EC351CEC
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:29:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A06F52F6572;
	Tue, 14 Oct 2025 10:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DdfYgz7Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47142F60CB
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760437768; cv=none; b=DVBzZkwSPcsYJ/PhNPeFWF326RWhUn/z9AZf/9Hczag5bCNCpRRTyc7p5NCklLTIWPCQ2i74QVUOo+81ucncgkYbZery+gltcKbQPKNzMncqMwu+5u8hx5RqQ9nsku2lHeqiG6bMEB64KWdrIa5fd20fe0wPDlYXPez+ACw+fJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760437768; c=relaxed/simple;
	bh=hYbEH8aG5/g2lPpfG/EurG4fthUUtSOeRcTH4W6yxtc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UOGDtBSPufa5bOmyB+XC9QfqXAIQBUpdHxEhNNnRO8ECwwQOr+VYYVLLnvfymSKNzliN4QvgQJFaTz0k/GFY9ERZuxAoBgUpdR97l21QVQuu90GygHPjlVDZ/D0JSWKE6ApJNo5x+xINAwko4gQ0RjTmeJg1PsK6v4xzLvol0j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DdfYgz7Y; arc=none smtp.client-ip=74.125.224.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-63bbf5f77daso5083276d50.3
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 03:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760437766; x=1761042566; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VNwslOTb5JOWqs8U+YdiNL7KIGdnAR5sXRre+K3C3ks=;
        b=DdfYgz7Y5rKyJFlUITSxKyldlwkvFkFQZTgk6UA/p2LEY5CQpKFBwncD4udabSboBD
         rrm7E9bZUvkucLxDDq/dee2j3ql/kyuWvNF76DVstATfP4FCeHsXikyQTr70j8gEegzH
         6KBn9Q62DDmtvc6VOh/nVPMqXKRqIMZliBdzMUV3/nvoWOleqspYJuCmx7ThPZhyNaPu
         PpNDgzBbY0qGjQohu1bTNSwB90F1Bg/jp0WGIuOPXch/joPJYuGRP/IgXNu6GZoB3NgZ
         IFXuHOl2RqiBiFiPM7Wc7tPFXEMkBmvdiCn+FmB8KXnMe5/9jHXnh19NqyYjGuwKuthi
         EhLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760437766; x=1761042566;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VNwslOTb5JOWqs8U+YdiNL7KIGdnAR5sXRre+K3C3ks=;
        b=PTt1NwKsl2Dk8wFnbs1YQdXfkVrX6BjoGtWk2088HL2pbVuWLpgqaJJxlK6+S1A6iy
         m7W/j0HCZys0WljTCtESxKK0ybuXwLrGDuXr3qiCb9ywxnqwIHnzrEhv6J6IoSeTJWkv
         M8+3Py/7kzcssmEhSdS2k6l0CIy4vzIu/8pXNXnwEzu8sxZr88havi2J3t+NHeoPxxUp
         KFHM8MSAMT4/oPFIoeQVX1yGfBUPagXhkEW5B5srAGIYaZDvUeDpzsqUAGo+vec3pITA
         WuKECjZwZaacGMBtgnFG11cNKxNKM1GdI+p4iBKOMFZoMZCzSMNvHCyjs1Nm5BSUd8tp
         XgZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVuJdjKO9q8xV1Uf9kG2uVhW6VQB7WKW1M/Gy2lZaRKJkhWctZRLhAwLjIeQUvhjuNjQS20uVT07qs+@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0KzRRmPfsdR1YOuygLAx8BOef52C/sb8dU2QnAt2S3TJls6vn
	ZKsSF5JTND927YAhGLnWHTolsEjTIVt9SykEtdIpwIzD9XUCuVWVoYnotSJLfxgewmISN/M+X9G
	6z9bTI6LYeSc2fd+lUB5RUYVy/Z2KRMppozfhuKTwFg==
X-Gm-Gg: ASbGncvWhYW16MOugC5wpg1ZgvU6AfJ1R5gIy60ap8a2+tY3alkdWyjWiQr6c6GAZMf
	2Rmu1yIITH8SglQ3AcKnNu7971jR3YlJqNu1zGuC3ctIrAQjzBHXygkW8/S9lnb/H6G/gl6Vdot
	wUOPuwiUAkQSRcMTuBN2NYZTluztPst2PCdybUDyDvi7dciPoSBOCGAM0iUlf3BxS/TOpwlG8v5
	3En3G+HfNBgVLYktmHyFv6mYhsErDq74g7NRLAz
X-Google-Smtp-Source: AGHT+IFDFh6iWuOmPmvWilDaFBE5YfW3xBkJ2+8+m1/8Q1QTZSI3MhsChmCnpdF1r4INYGcDiNPz/lr8Vbf/DOouGeY=
X-Received: by 2002:a53:ce8c:0:b0:636:19c8:278e with SMTP id
 956f58d0204a3-63ccb84414bmr14226319d50.14.1760437765773; Tue, 14 Oct 2025
 03:29:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1759824376.git.mazziesaccount@gmail.com>
 <19d537f9920cae5fa849b649e5bc42ba0b8e52f8.1759824376.git.mazziesaccount@gmail.com>
 <CACRpkdbHBQQnnTUrUzOrYxzQKCzDyy8aNK7w8OEFz-ic8ic1FQ@mail.gmail.com> <f2e6f0eb-b412-4cf6-8615-d669b8066393@gmail.com>
In-Reply-To: <f2e6f0eb-b412-4cf6-8615-d669b8066393@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 Oct 2025 12:29:10 +0200
X-Gm-Features: AS18NWDIhtpPAtiexOECYnDlN0ABGxByFw8_QgkDjMMcng7GLnSDiPGnwdY3LaY
Message-ID: <CACRpkdb-Oz4RXWjLEH2ffKhe3jRxVTSN1u5g=tTTfQHpXW1=8w@mail.gmail.com>
Subject: Re: [RFC PATCH 03/13] dt-bindings: power: supply: BD72720 managed battery
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sebastian Reichel <sre@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Andreas Kemnade <andreas@kemnade.info>, linux-leds@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 13, 2025 at 3:00=E2=80=AFPM Matti Vaittinen
<mazziesaccount@gmail.com> wrote:

> >> +  rohm,volt-drop-very-low-temp-microvolt:
> >> +    description: VDR table for very low temperature
> >
> > Doesn't the four last properties require to be defined as uint32-array?
>
> I have been under impression that the "-microvolt" ending suffices, but
> I may be wrong. At last the 'make dt_binding_check' didn't give me a shou=
t.

Ah you're right, I tend to forget about all the magic Rob has put into
dtsschema.

> >> +        rohm,voltage-vdr-thresh-microvolt =3D <4150000>;
> >
> > This property seems to be missing from the bindings?
>
> I think it is the first binding in the file :)

Ugh I missed it.

Yours,
Linus Walleij

