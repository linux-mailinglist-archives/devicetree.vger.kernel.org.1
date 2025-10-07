Return-Path: <devicetree+bounces-224269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 930E3BC2546
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 20:08:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 50C5419A2770
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 18:09:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8783A21CC56;
	Tue,  7 Oct 2025 18:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="oh+dhSLi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E5321CC71
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 18:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759860524; cv=none; b=KWn6K0ltAFefMR3dYcpVYnNJX1xak4t/kVmhcXT4p5qHfMG2ZXJRqPOnGMsbBwV67JegKCfAhHlDHEnnqny5igNU3ov9s1DdXk8WItj6IdAaLfbaqsFyW34sXD32NeR9FJuAHUg2PysBnkmBGgctlIiQ6QJ5oF4N0Pkcic91+RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759860524; c=relaxed/simple;
	bh=DdMubapTXMy8f09aBLB03n1BAuAnQzfNmEYSRJnl3Cc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QSc8bHGcK22Ll3TTMoxYCmMVCR31ndFJ+FEb+l/1KsQ4cjViMzllgO+5GF7qTQgdVgCDu98YZ/ODGP/syvw70StMhUZRbc67OhKUzB6R9cGO+CvIMwf4V8Gf7nMsegzQCJqu/QJpkYg+3eBTxQ5lK1dVb3WU0e/jzzMucDC+Z8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=oh+dhSLi; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-781251eec51so5031849b3a.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 11:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759860522; x=1760465322; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kL83avgkPvebmqUXatcd7knV9g++K69fYPgzIIAyVds=;
        b=oh+dhSLihmfWkm2eLdGtE6JChTUU2JpnZWia0V3vWDG2J9XEKP5HQlMEHNLV7CDGEH
         oY3mWLlBlDC4fYUzslih8yi+8LBjR99Y73Q7zwpizvNeaXaCQtvuT+62j/a3hmApx4kT
         jdq+sVamUVgbOg+HqLgQIcANNR/0cns9ireh/v0f/u3Cgst11nVwQdrwxtuUfLh2sOdX
         TNvNet1nLklS3nFkA3SJU9L6gTKmxME9cziPdVI8RndmLQ6HU/vfAkYx58KthzHuhmEZ
         itFAWEaPsa6VUE3J15/l+L6PuRGGXk69hL+Q88W05jZULPZqaxADxhwz9lSab7Zc3qDd
         plFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759860522; x=1760465322;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kL83avgkPvebmqUXatcd7knV9g++K69fYPgzIIAyVds=;
        b=aTNdFtP/x+Va+E3suXOeaMrGS0kVDaCQi9SYWkyYzkA+y0H6cjxhdjc6nWUyXnr8si
         RlDE4BDGPpeP90mpo8TDJtJP+j3SnuYlOEEJv6O92QiN43kvNaxayvcTsVLppDi+yPuO
         3nroyxHkRv8B3ZBlax6zPEmmOUYaqIeUFocK+dMRp8zQ+Dd5MtccUIWBZxx3U4S2zWXs
         X/byByLQI9uM+eE/kGvPxemiTH5BTfgeo8tPLcw0sRDggh+fS+EyCfNEJ/Hji68e7eOh
         yEEIwzmpo9ZAsz49XVbChqwdLFAUxlBfXv8Jd9yskwtZ7lURKZ3fwJ+s/bhi+uDu92lW
         SFsg==
X-Forwarded-Encrypted: i=1; AJvYcCW9oeoVJd80WaXeq0bIM2DHha9Z5tjqkM6Vxp8FN+aaqh6dkYyzjEzIdVof40oJ/RPinYDQ5LeKMcHC@vger.kernel.org
X-Gm-Message-State: AOJu0YytGX/27cWH+f7v1Hsb1RpbDPevJvkeqgIopW5DlbZbAie7979h
	ZRQwf93qakrBzM+/tHyRXkTY0NfHrfwegBzx+hG53tiFcgUVvXEvfCk5wm4nW7slzuWtdTQj+zI
	aPmntR7lRBG9bKKwMUtLeDOj9VZasGf53PYYVmzEt
X-Gm-Gg: ASbGncsxRXb7YQAa7IjnpScSEBt5IsXGZA2UYC8t2Aba+A2P+VFTVFQwjfoku7FgZs5
	H+w+5myq8Xa3IVoQefq6Nl2xxJCh+kqVQQqd57ZGm0kJM5WcBYhCX8SXFiWZJrmNW18WFwdbYSH
	7cgj+jFWV3Ko/pdqMCG8tefdl3q4CjOrhKz29rrKZICdULgoC3Aw3Jg9KcdBStBsnM7X4sJqyFN
	NAsQ3PhNrzzpvkReBmZ5pAo0Fk0vzaOYU4gABQ2Z113I5HEVnXFBGsqFUTa1dM0epbW
X-Google-Smtp-Source: AGHT+IGS0kErmJQEsnmkmk3f/fOEYFz/5xrVmbiZTV6hLQvnRLUwNPn7W+mzTIzummLCCaPUbPxoaoxxuABS/7SFA1s=
X-Received: by 2002:a17:903:46ce:b0:27d:6f49:feb8 with SMTP id
 d9443c01a7336-29027238ecemr7876345ad.16.1759860521582; Tue, 07 Oct 2025
 11:08:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006232125.1833979-1-royluo@google.com> <20251006232125.1833979-2-royluo@google.com>
 <5c2c298b-b0c3-4fa5-97aa-75b44084248b@kernel.org>
In-Reply-To: <5c2c298b-b0c3-4fa5-97aa-75b44084248b@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Tue, 7 Oct 2025 11:08:05 -0700
X-Gm-Features: AS18NWAJZttVCngV-whwmJ2b6zMeUXBnJ2src5pRyz7OavFl88Fb6cD_LbEK-Hw
Message-ID: <CA+zupgzMmgNA3uJiHSCY=5GqYf1RcSBdniJeo5VQnUnsyzY1_g@mail.gmail.com>
Subject: Re: [PATCH v1 1/4] usb: dwc3: Add Google SoC DWC3 glue driver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 6, 2025 at 5:46=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 07/10/2025 08:21, Roy Luo wrote:
> > This patch adds support for the DWC3 USB controller found on Google
>
> Please read submitting patches, how this should be written.

Will use imperative mood in the next patch.

>
> > Tensor SoCs. The controller features dual-role functionality and
> > hibernation.
>
>
>
> > +
> > +static const struct dev_pm_ops dwc3_google_dev_pm_ops =3D {
> > +     SET_SYSTEM_SLEEP_PM_OPS(dwc3_google_pm_suspend, dwc3_google_pm_re=
sume)
> > +     SET_RUNTIME_PM_OPS(dwc3_google_runtime_suspend, dwc3_google_runti=
me_resume,
> > +                        dwc3_google_runtime_idle)
> > +     .complete =3D dwc3_google_complete,
> > +     .prepare =3D dwc3_google_prepare,
> > +};
> > +
> > +static const struct of_device_id dwc3_google_of_match[] =3D {
> > +     { .compatible =3D "google,snps-dwc3" },
>
> You cannot use compatible before documenting it. Read submitting patches.
>
> Best regards,
> Krzysztof

Will change the ordering so that the dt binding patch goes first.

Thanks,
Roy Luo

