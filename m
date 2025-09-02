Return-Path: <devicetree+bounces-211863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC55B40FFE
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 00:23:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A19577003A8
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 22:23:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDFA4277CB3;
	Tue,  2 Sep 2025 22:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ew59oYmv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0710E2765FF
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756851775; cv=none; b=gtETN+H0uvJVb1RU2i7aBz1FTka9le252A1WOYMnhkRf95vij9RYRItpPtKR/kSSknDjEgC3NDSuQcWghYWuZ0upwnjGbLTq+1kFoQG2EwIm1GT0X3d1ZdclKIOYi/qkKtlLuOIKK8xOP4SiT1imIhJSlqumKYPwVOmlFwuR42s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756851775; c=relaxed/simple;
	bh=c5ZAWb2I5q99uD6aQ+b8A4cpEjo1rdI5DVDKG4LuqrA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aw5NjUN+KoRcygF5yYj1aNLEqY+6ehxnZIaMvy42wYKsmO7qpE264Fmb5BE3dxfDLvhRDws81ZtCsRSSkXKZl28/kSLo1BJkUT6prLEENo78x52CR68vBfS7Q8L80Vmqd7E8Bi55kQ6SaLYs6bEPvmYPcMwRSJrKc0HyqA3ud5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ew59oYmv; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-55f720ffe34so501865e87.1
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 15:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756851772; x=1757456572; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c5ZAWb2I5q99uD6aQ+b8A4cpEjo1rdI5DVDKG4LuqrA=;
        b=Ew59oYmvI2PWBHlr9KQZ36tIKwxIqKzy8soRQdUFxNFmWYcLMEInLJmm3Q3N6kq7Xo
         FhIcj5X2fk7fMxTmnVq1Y0UOmIscUpGcTlwiBrrJSHqrIccOufcvQp/R2DkVzE9WmdvY
         AcpROhifRJvpu9arXJ0kZFoUx5q2DhtYin0vm/mzGl1qcZg4+LDq9rQyA27O1/wus2V2
         ogkm/OEkSLcIscBSwvsT0c9UcqrYXX7tT+X1u9Gk6Iq2xKSz3PBYziZMtTjuxRyPUDKl
         rkrMo2xce83HsQB4HHAglHQop1ssKhlj8pxTz9jJm3DMTbwh9oZJaS9xmzt9mXp6gAbt
         1Ojw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756851772; x=1757456572;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c5ZAWb2I5q99uD6aQ+b8A4cpEjo1rdI5DVDKG4LuqrA=;
        b=llFvSMCF4T5DS5nRmP3dhoPgtbQWD8KdmW+takHaxEn3E1Cmz9qVfk3pnZuV1hgvn6
         LmRYoUrZQHmbDYmnlxXYHIYplnHnm+Cl1KyOR8QQu1wm3/NmBfYIjgCcQjVEdBKuKR3I
         chpdPEHZP9J132TUMa6LIPQMkTCPwIEejN0w3F2Mx2/M7tcpyx4wgEcR26liikmd7R+O
         BPCaGYvKNfsZRWTr8I5ajuI942KcApKp1qJdpDz1kSOa8+6y/IXP6NLrBYdJizzQOyGh
         c6uvJNJHPeEERKJvIcXU1n1bwZnFFdXErerJ50tU2vcv6Q2xpC+AOiPlcPyQocH70a3h
         /E9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXdd1BkJ9Yz/0R0qRJkS9F4rqDXVQ78EnLMCQLsFfx5A0Tv8Y1YGAH0KPDS65FQKPJrRCpyzd4kPvpK@vger.kernel.org
X-Gm-Message-State: AOJu0YzThz7wu/PnHcMULvWZ3VYCE8mmiKIy2rfHMaY5TDZDSvHw9MNq
	VtFAWhFuY+zpw5Ck+jlG5C1/MCw/8BrDpRDC6VF6WrQVqfmBHZchZagW+WO6ORFeKXA4pX5x/Hb
	EwJMqoRcFnUxOJ50KdgiTzqdRAMtf/Tl5n8Qnm2eRfA==
X-Gm-Gg: ASbGnct62LZsMnOSzMYi/6NZ9u/nNHUy13KNVLr+0IoPQf381gmFMOzRCUnWf9e2a5j
	0gyw9tjwDxhmNhjVY/VcFNZXq66D7c+QWqo0BURCZP4QDMiN5wV4wLTcmfoaRu60DKwWVu/6iTr
	L8gtEzcXs0Cl99SduxJRZYhIzZ0iW4xyqWE0iILWu6yvVjsdi4/JTv/vV30NwrCWrnD3HrNcXku
	irhXTA=
X-Google-Smtp-Source: AGHT+IFQRGeGkqSRHlpbbwEEe+BktSC7N09qc9dXiOntfH/vXYvWup1CnGQRGCfnRYYYVhfmTuJ9U+CboIOl/bTErjA=
X-Received: by 2002:a05:6512:2443:b0:55f:5621:3db4 with SMTP id
 2adb3069b0e04-55f70567e41mr3922521e87.0.1756851771955; Tue, 02 Sep 2025
 15:22:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250902-leds-v1-0-4a31e125276b@vinarskis.com> <010201990a1f6559-9e836a40-f534-4535-bd59-5e967d80559a-000000@eu-west-1.amazonses.com>
In-Reply-To: <010201990a1f6559-9e836a40-f534-4535-bd59-5e967d80559a-000000@eu-west-1.amazonses.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Sep 2025 00:22:40 +0200
X-Gm-Features: Ac12FXyRf_pKEWPlPHi9SeHKYYB-Zq6KNU81FKSVa0b4KkGrn0kE1luoxtWISEo
Message-ID: <CACRpkdanKRPHOzpUV5muwCkNraRDZgoGJnEJ+_=udrtBrqVxwA@mail.gmail.com>
Subject: Re: [PATCH 2/2] leds: led-class: Add devicetree support to led_get()
To: Aleksandrs Vinarskis <alex@vinarskis.com>
Cc: Hans de Goede <hansg@kernel.org>, Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, linux-leds@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Andy Shevchenko <andy.shevchenko@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 2, 2025 at 1:10=E2=80=AFPM Aleksandrs Vinarskis <alex@vinarskis=
.com> wrote:

> From: Hans de Goede <hansg@kernel.org>
>
> Turn of_led_get() into a more generic __of_led_get() helper function,
> which can lookup LEDs in devicetree by either name or index.

I don't really like __inner_function() as naming since it
is easily confused with __COMPILER_FLAGS__ and also
with __non_atomic_bitset().

I would name it of_led_get_inner() simply.

Admitted it's nitpicky, feel free to ignore this remark, my
reviewed-by holds.

Yours,
Linus Walleij

