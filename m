Return-Path: <devicetree+bounces-193568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C413BAFAEF3
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 10:52:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 717923B03B4
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 08:51:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7DB328B7E9;
	Mon,  7 Jul 2025 08:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fvqE07jI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1394B1C5D7D
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 08:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751878334; cv=none; b=Nk+IbJeBrtQvWOagmPyUFtDe5SijAtTlQRuhsXsNSiGXZIHxK3Tc9JHBgCeGU2sVBun1wUirCf1hGvqtJGNa957Lc4ajm8knYqBp/0JjTZGdlr7CmM4fms1P511w3ZhXXeQuDGig7je24Tv1GxMdzw7A5KgZ5885K2RXvCj5q3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751878334; c=relaxed/simple;
	bh=NDVPiT3y/IEBQaw7UV/tz0okFb5sjvyKj7Prqist9Bk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VWGsi60cmTzz9TmbXFkOOhfBJCkJ0uYVoaiIF6ynzxHFJ7x9yhExvBpSsZu9QBj9fCaKXIS1QMCGFmznbJ/2mGL0N8FY1ATBA0dllx5ME4Nru3Gnag0hVDXA23RiTi5+03+14Wc5cdRV3UmnmqN60uFq3443JN7o7flmS41Z9fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fvqE07jI; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-2f75f1c7206so731882fac.0
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 01:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751878332; x=1752483132; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NDVPiT3y/IEBQaw7UV/tz0okFb5sjvyKj7Prqist9Bk=;
        b=fvqE07jIpvy4ifNW0ENVM5dM8uK9HHJEA7cAtS3tvy/2syphxGzcHiDj0jB/UKb476
         cmUfcqrq+/gWOmz9amXLx0K8j/MCGQcmq3uj8FAizeNPpeimQ0BwqaITr2pMY/Ry3+VA
         xPkZMqx1C4pocgEJPguG0d8TlgVHk0c5l2atN4NZxjgbDjlrVpSUSsWgviiRlNaIf/Rk
         dzxrDoyjcxg8vu+l9HuuLnEPJ7vfs8VfDQUBmkpunc0nQsDMRAsUIucA2NEIiYsxK6xU
         ycf1skxi0hFJGUi3whQVT6UMDajY8qRGQxRMa9bjfDbak23ZXhlI+YfWqTU0xXpvvrOM
         y4yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751878332; x=1752483132;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NDVPiT3y/IEBQaw7UV/tz0okFb5sjvyKj7Prqist9Bk=;
        b=J4Tez4TBJ2CLBVqzj24BGerWVBiVwyVE+XbZOqykgsr5WjrphwJOb/U/GEeECNLJHQ
         wWbuRq4DCQw2PDH9LALr8rtio1EmsRdnF6JsT34ymtYIZdX4QeopHiN9bF0WEYARz6UV
         I1Dr+PijcSbSfs+rpWlJmVYamzfaa6aaK27ZBJxZuRhka8E0txIwr0gjAApAayrnrufz
         Yn+w8FseXVamLGqUgO2SCSV+oRLYgRFOFvCa4uykLKp42V07G8FsgfXoKAzWU5y4Sgp3
         whZ/Si2Rqcmxm/voJ/l2DQzL+A5hpFwbIeMr11G8LvwOFqX706ey4nTzME5/pzlE/AIA
         VObg==
X-Forwarded-Encrypted: i=1; AJvYcCWy65F8x94OV5q+J+F+CyN8jK1vNqZ8ZR6TxIlLb8pBJT+fuLNpHJ0S4/m1JL6mI8uyaxlWIA86vEnG@vger.kernel.org
X-Gm-Message-State: AOJu0YyGfJ/yxCA2lhi2+hYZH/6QvCf/pmQUJK26Be0dTfT/QAb1pt93
	d0NTg+7+E/IHO8O1AB7pA3rruhEbrGmlmlhbSJ0iYI3fI7dHcO5TlijHDtq0t3vg7V8nc8DNRe5
	89u7PDSOuXPbWPb/Xn9cMnpbIEAVF7HnZNXtW0jItsA==
X-Gm-Gg: ASbGncslDnta58kvSLsBm6bJGfite69zjMBlKIy4AfO4zQrmompjb4fHuZl9K9uyUfi
	ezcJaF54A9Ae/B3yC9QCV7y57KWPjbsnMr3TL4uOLF0VeG7HpnMF0+yG/ZQUtRlQ9hZyW16UKPo
	92l7LoBL4I74jfKWvcLnCMaCCrm7uR3diLnLyopMjTkIFw
X-Google-Smtp-Source: AGHT+IEj3geuDFpX++SDMrn/ji9XGPECs4W5y0PIqWxFAyffhSBGzwoeTrtt+GXfjptm1UQik2oIQixEFyIbodoYkeE=
X-Received: by 2002:a05:6870:9687:b0:2d9:45b7:8ffc with SMTP id
 586e51a60fabf-2f7afde4ee8mr5416161fac.3.1751878332040; Mon, 07 Jul 2025
 01:52:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250523-b4-gs101_max77759_fg-v4-0-b49904e35a34@uclouvain.be>
 <20250523-b4-gs101_max77759_fg-v4-2-b49904e35a34@uclouvain.be>
 <CADrjBPqOMOyHP=aQ1+fg2X58NWRp-=MJBRZfpbEhQsTzaZ9LHw@mail.gmail.com>
 <bc40326f-db40-4657-84a7-152def2ca9e3@uclouvain.be> <CADrjBPo2=FajKA0t7TTMdH6iK_qbWCSJK-hEqh+UWEuzC7wyGQ@mail.gmail.com>
 <2e26f8f534284b280e9d5e8d4ae556a452e93ff5.camel@linaro.org>
In-Reply-To: <2e26f8f534284b280e9d5e8d4ae556a452e93ff5.camel@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 7 Jul 2025 09:52:00 +0100
X-Gm-Features: Ac12FXypfLDLEdnbrTBCEZv832mBaFKGNgc3VgFrnkzOkozoICaCDgwT3JcKDwQ
Message-ID: <CADrjBPr_UY6LDxTqHAszC1nhq+qdV7OC5M2y+z2C2iwOKzqWYw@mail.gmail.com>
Subject: Re: [PATCH v4 2/5] power: supply: add support for max77759 fuel gauge
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Thomas Antoine <t.antoine@uclouvain.be>, Sebastian Reichel <sre@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dimitri Fedrau <dima.fedrau@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, linux-pm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9

On Mon, 7 Jul 2025 at 09:04, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> Hi,
>
> On Mon, 2025-07-07 at 08:16 +0100, Peter Griffin wrote:
> > Hi Thomas,
> >
> > On Tue, 24 Jun 2025 at 16:45, Thomas Antoine <t.antoine@uclouvain.be> w=
rote:
> >
> > > I am unsure about what to do about this initalization, especially for=
 values
> > > which slightly differ from the devicetree. I think for next version, =
I
> > > will have the same parameters be passed in the devicetree like androi=
d.
> >
> > We don't really pass register values like the downstream driver is
> > doing in the device tree. I think you will likely need to add a
> > max77759-gs101-oriole compatible to the driver and then have the
> > application specific values, and m5 gauge model algorithm as static
> > info in the driver applied from the dedicated compatible. It would
> > also be worth checking whether any more of those register values can
> > be represented by the standard power-supply binding properties that
> > already exist.
>
> I believe these are likely battery specific values, and were obtained dur=
ing
> battery characterization by the vendor (or Maxim). They can change (with =
a
> different battery supplier etc, hence I don't think basing this on a
> max77759-gs101-oriole would be correct here.
>
> As we learned from the Pixel 6a battery updates, the same phone may use
> batteries (e.g. from different suppliers).
>
> Either it needs to know about the specific battery model, or the values
> should be passed from DT in some way.

Some of the fg-params values are characterization values like
QResidual, Rcomp0 and others. I hadn't really considered different
batteries for the same phone model. Given that information I think one
would need to investigate in more detail how downstream chooses what
battery it has and what set of values to use.

Thanks,

Peter

