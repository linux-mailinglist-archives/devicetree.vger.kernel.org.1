Return-Path: <devicetree+bounces-247028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF00CC2FD1
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:58:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8BFEE303105D
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 12:58:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A47B733A9EB;
	Tue, 16 Dec 2025 12:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmTjVFXa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F4F733A9E7
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765889882; cv=none; b=jqsh0yJx0e6TODbLFrswYWirs+WJXh7fKiTnQOyrEN4WEATTrTrWE/WzOlz98zjHnITEIm1NOj99h+EVmD+Tul5DoKaNi4H2TH6oYAoCnMXOJJjGTMTKuAjDfVFc5DXxSHC/qc57sXM/sXZQSZDR50AYJ+WvkqFBIRSt+wNKJy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765889882; c=relaxed/simple;
	bh=6TlMkKsvarWcfZo9HjcVaY5XUk+ge4lC6tDttTZI1cU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S3e7kDCImq2FpCJ3yvfbuXgvC0JgCup//S7v6K1GbPXTxOOMn6J9n8tnk99bGB1+5Tlfsjd7adCvOnp8hR00eBLMfU0v6j634teJIovpx7tCfb9+5eobXXAk32CfYAgM6DnRH42ZdBep3RzP6qnITvQMyPPEoZt6vpE3SM/Dv/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmTjVFXa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36A96C19422
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765889882;
	bh=6TlMkKsvarWcfZo9HjcVaY5XUk+ge4lC6tDttTZI1cU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=UmTjVFXaIY6Y8Xwl6VbOHGomj8H1NfedXBFZUjnGxrSQ48ngiQTWzP/sdFKsSzsQi
	 SPyQjyhYMQQafuRcJTlSSSmCgJET9mVfvGR0WUkhki5KEXqCQx/YBspJ2ZMGDojhoR
	 KkffQIm17WPT/wTp87X+SJAOvup/8fRf5oF0uVESkC3Zy54TNIRWbf0DDacBvaljCe
	 G8PgOjSH/p6h+SifKK2Hk/Hk2NcOmiolrhXAEZ5n0J2KTpEik9StpTYXehdOmghNqR
	 ShNLeLm1yFM0QL6UK1R3baELcQ424lMTq2BkTZ7kRpCj7StkzQmos+y19k52cTBDeU
	 Zfstws838SL2g==
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-6492e78ce07so6038305a12.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 04:58:02 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW91HbVZlTxOGs1jslP+LyHRIfAzKOt61kQ8fYO685Rruvv9kI2K210P39kk9izhJ21zB1NHsKk4hI0@vger.kernel.org
X-Gm-Message-State: AOJu0YxUthBmS9/AIOLqR6LuigkDA0tlLskeNpUBrRurl8BidfG0Zq9Z
	023VJL7iDzEBIzGQD6sW0p5xi4nVPqferqBNOAcIJyzvWLlpvtvXqE/6KxtGz7EqjGHJKComkC4
	wG7Ta9pIP8MP1D8e5vIXWgrT8mLfyyg==
X-Google-Smtp-Source: AGHT+IEk+mOv6/xFKX/n4xOGOMuFrFuEOOKmiiyVKsTzdmvaTtN1RW78VOmcF7Ke+lw4NI00QBIIfxhNR26rbVns0P4=
X-Received: by 2002:a17:906:c148:b0:b76:d548:f85b with SMTP id
 a640c23a62f3a-b7d236f79edmr1327163766b.11.1765889880827; Tue, 16 Dec 2025
 04:58:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215154809.70041-1-bartosz.golaszewski@oss.qualcomm.com>
 <20251215192854.GA3162398-robh@kernel.org> <CAMRc=Mcc90MGUOty98iCOXD94U=T79bq3u9R2oGTD_fZED=NVg@mail.gmail.com>
In-Reply-To: <CAMRc=Mcc90MGUOty98iCOXD94U=T79bq3u9R2oGTD_fZED=NVg@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 16 Dec 2025 06:57:48 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLK84jg4O0QdZ8zDTniqL5ehmTy9YEm0D3qHyHf00tkug@mail.gmail.com>
X-Gm-Features: AQt7F2qsGuZnrMmPXmMibWc7DVUDa0VpHcUhKm2Yfbgx226Tfi7kMgwcu9rDuYM
Message-ID: <CAL_JsqLK84jg4O0QdZ8zDTniqL5ehmTy9YEm0D3qHyHf00tkug@mail.gmail.com>
Subject: Re: [PATCH] of: replace strcmp_suffix() with strends()
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 16, 2025 at 1:45=E2=80=AFAM Bartosz Golaszewski <brgl@bgdev.pl>=
 wrote:
>
> On Mon, Dec 15, 2025 at 8:44=E2=80=AFPM Rob Herring <robh@kernel.org> wro=
te:
> >
> > On Mon, Dec 15, 2025 at 04:48:09PM +0100, Bartosz Golaszewski wrote:
> > > string.h now provides strends() which fulfills the same role as the
> > > locally implemented strcmp_suffix(). Use it in of/property.c.
> > >
> > > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.=
com>
> > > ---
> > > @@ -1416,7 +1405,7 @@ DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells"=
)
> > >  static struct device_node *parse_gpios(struct device_node *np,
> > >                                      const char *prop_name, int index=
)
> > >  {
> > > -     if (!strcmp_suffix(prop_name, ",nr-gpios"))
> > > +     if (!strends(prop_name, ",nr-gpios"))
> >
> > Don't you need to negate these?
> >
>
> I'm not following, am I not negating this?

strcmp() returns 0 on match. strends() returns True on match.

Rob

