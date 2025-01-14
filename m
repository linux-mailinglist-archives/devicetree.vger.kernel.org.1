Return-Path: <devicetree+bounces-138380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20600A102BC
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 10:11:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D2CC93A6AEA
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 09:11:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 922CA28EC6B;
	Tue, 14 Jan 2025 09:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="nj3Ui0gO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD89F1CA84
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 09:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736845864; cv=none; b=jLW78L9r5lCCDzIDzMWqBSEbwhTCCVbGoIqLyDjIHM8nJECE1sToEpRUMx3h/3/+6zWpg9pNtoEGD4OVaGP8AcZomDS83VMrzNV6Fpb4kffYpnLSH/gLPxSN0tUNWGLLMO5CrIU91o0jj8g+7mFxpKXzm8dPeCOuOVPjEp3Ooio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736845864; c=relaxed/simple;
	bh=hRYADXuuMQL0WU6YweqbfVIpCJlQAKmMZXUM2sMi/uM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kzDojY9dnE61Rey108z41Nhj0Gxj+m7OGflsfRZ3UbmbeZrjY5Githojqa6MZiQnCH84DpEvrpYI4aOy4iLHoZCx64HoGdxgvLVxPByWMtyuNRBfR0HX2reBQU8vv8b0yMPNj34XGOkT73AlOTvNqWfPpRcuPMTvcpdfPvdohWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=nj3Ui0gO; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e53a91756e5so9332545276.1
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 01:11:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1736845861; x=1737450661; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=laOni/3pZswCtnZWqEbh9/nDgLWlbXlzzIl5mtJ7ij0=;
        b=nj3Ui0gOQ4eGDTtpnrBS67q9Afk/az0V1L/fRgrrDXm5Xh+SdtNW9tJTDd2FOj3YRi
         VjlWKrSh6tZi/3i4fbHM23uIyxzfPqzcvMae4h8wLkZXQqn0zmI7dAhU6RgGOiuafiK7
         X53gmR6jjZPoayWTiBFYdwQEbNLkHRQvKGm2k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736845861; x=1737450661;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=laOni/3pZswCtnZWqEbh9/nDgLWlbXlzzIl5mtJ7ij0=;
        b=S6UhuQIUcbDHkXUySOIRwj2BCNo85bhwCRLihkUuYo3Sohy6muEqsax8JKemiQtIgK
         jzT/SV0AV74GHOFjEVOfsSDcXaqAf8E4NJzOOYRhlNxoSutXwzmJvWWWqCCHv+ZhukD/
         t4dSYKTAyJ9FOVqE8k3C/16kvSEE1RgkLJKMlwdWnUUdR94If+4OEMDsUTiq7Ebs382E
         u71fs1TFO9OSeqQay0xIePCWoXMYkHCtvVGIjLgZbsJSqVa3PLNzcS4TVvq0mb+4OPW6
         XIZ4OyLA7rUthaLbv/4acTXAPNK2YoLsyq1tbVEoXJmSTjqKJJIFw/D8ERj8iozWVlCC
         kifg==
X-Forwarded-Encrypted: i=1; AJvYcCVBjjU9UefKXb6403UXNKYCdz03IKfvUG3uxviHaAGj/wuPi6uTqvNQqVDyvuY5/6X3nf6ppfbcG5Vv@vger.kernel.org
X-Gm-Message-State: AOJu0YwKRqr11Ve1ruZtwARRAhSx2Ec5USL1lQsrGwyYWQSvEcsPKMG+
	Gy/KH2ZY3tjQt7fxz3I+75X93JWaXfD+uMuPGEW9Zt1siLLxs2OCo8VxMbUeWPMHrAmv+qjgizt
	wUES7DUU9W4kODo20Qxzn0qqPl90m7DJey56Kgg==
X-Gm-Gg: ASbGncvfYi1DR8DU5PJU6NW/GWdeOPh+LdOfcNCZHjM5hRMmgHg9mu6eRvlz9Jfz3xI
	9kxPn1WnL/RJesxXPI72PliATLmtjNbGqaNwu
X-Google-Smtp-Source: AGHT+IE9CA2Xfhzw3GHaovQ1IHfqCWAXv4doOMw3356PJ8sdDTE1sLuY9FIcA5CUBN/UDJxnGUnMXzDsrursJPWiJDo=
X-Received: by 2002:a05:6902:72a:b0:e38:af38:de3c with SMTP id
 3f1490d57ef6-e54ee138757mr17712009276.17.1736845861696; Tue, 14 Jan 2025
 01:11:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250109211908.1553072-1-dario.binacchi@amarulasolutions.com>
 <20250109211908.1553072-2-dario.binacchi@amarulasolutions.com> <bfxyod5l2s6g3j47be7mjh6i7wgjapka2q5b6f2mleipiai6gm@hfvclvkzrtyd>
In-Reply-To: <bfxyod5l2s6g3j47be7mjh6i7wgjapka2q5b6f2mleipiai6gm@hfvclvkzrtyd>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Tue, 14 Jan 2025 10:10:51 +0100
X-Gm-Features: AbW1kvak2sUesICzzkmsj5TX2inw2Pxvk9l2RhEMwr_4GvlhnKKbrVqsFXF8zsk
Message-ID: <CABGWkvqu10dyW6y5S7qvY4G7uh0OaUgr6k-F7BA1AU0H9bA9GQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: clock: convert stm32 rcc bindings to json-schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Michael Turquette <mturquette@baylibre.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 11, 2025 at 10:25=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On Thu, Jan 09, 2025 at 10:18:28PM +0100, Dario Binacchi wrote:
> > +maintainers:
> > +  - Dario Binacchi <dario.binacchi@amarulasolutions.com>
> > +
> > +description: |
> > +  The RCC IP is both a reset and a clock controller.
> > +  The reset phandle argument is the bit number within the RCC register=
s bank,
> > +  starting from RCC base address.
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - items:
> > +          - const: st,stm32f42xx-rcc
> > +          - const: st,stm32-rcc
> > +      - items:
> > +          - enum:
> > +              - st,stm32f469-rcc
> > +          - const: st,stm32f42xx-rcc
> > +          - const: st,stm32-rcc
> > +      - items:
> > +          - const: st,stm32f746-rcc
>
> Why this isn't just part of enum with first group/list? Different
> groups/lists are for different fallbacks and I am pretty sure fallback
> is the same.

I tried running tests after applying the changes you suggested, but
the tests are failing.
Thanks and regards,
Dario

>
> > +          - const: st,stm32-rcc
> > +      - items:
> > +          - enum:
> > +              - st,stm32f769-rcc
> > +          - const: st,stm32f746-rcc
> > +          - const: st,stm32-rcc
> > +      - items:
> > +          - const: st,stm32h743-rcc
>
> Same here.
>
> Rest looks good, so with combining entries above:
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> Best regards,
> Krzysztof
>


--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com

