Return-Path: <devicetree+bounces-44107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF9385CC5F
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 00:59:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A0F4D1C21897
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 23:59:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C8981552F3;
	Tue, 20 Feb 2024 23:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I3YN/4fr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629231552E5
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 23:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708473534; cv=none; b=fgj6fXc97gaxm2wQVyCey2M54912VLo7iOJ12V7qZmle7Xb8O+1W3qh899fYWj+0dGRVDzjfNKonXJYikTMqEqmg2OonqP6kOs1HAdxkOFQ49+A3xXjFL5rlO3LAGAHvfBLhvU13xYGXwbpH1GOLXIrDPgDebJEFR+fPvRSQ3RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708473534; c=relaxed/simple;
	bh=/2E1dI20mlC8/4NkWi0ja8n1GkgznfvZg8EI+WshC0I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S29iNRzT2dBvDznyr/XCnuiQc6GSiOyyw18Dqob12HuENtSwXtfFGrozwtyro3ZDY+DKKS6OI6CKR4ltnJ9RDYWQlx7uNBrm4ZgtzI8hireyd37EnKUvuWEv4pqxQ9F19jfDlSD12E4/j7pD8itWOiboEUXN4kWzVDx0AOwmSZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I3YN/4fr; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dcbc00f6c04so4651706276.3
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 15:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708473531; x=1709078331; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qWLcN9a9ompSRERy0rerQL4YJLev9LmdSeoyCodY8x8=;
        b=I3YN/4frvIvjgfHL8GW1C/X4El4VCnK1c4x5FYyCgF46hUcG0LxHYbTyiC6nuUjwzg
         vtWQct7flqQwDctPwWTit0s0jEg00T4zTFEJUUiSngt6j6kqNfMITC9Dfu4u+QYBQ/k5
         0yC3SgY5Bd8+WV2KrPM/5nRycuwFkuj7KlYJ/xhDNplJsrqHM7IzuOCABZx8eT1X08Pz
         u7eUrQ2gxlyPCtiipelQLJkuibEPS6aOCdkmIIXz2iATMjATNJ4KXHd0+AtDw82mM7nR
         3OX3WD10f9gDrzdBoVXIHYRGuSP0ANeotMuA8J3F5fRXVa5MZV55HDNmOO1GbEIn6KT9
         XcHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708473531; x=1709078331;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qWLcN9a9ompSRERy0rerQL4YJLev9LmdSeoyCodY8x8=;
        b=actWBbvOPTdzF1pllrGkm07remiDl3mYgJKes5ZHDHYIcAXhFwqr40IQP55N1fGnae
         Zu0dxrXk1cNn2FSbX+mJ0mFOhqnnzdRxX3KD7CAqx8igeWXh/ZN9BEmuVSYGTulkZKij
         f/RSM9ueSFhv28WHnbxicx9iW1HScMQfIixxqED096WNj5NvYdRI5TWfczCzqGG0I6/k
         s9o4YA6ZQM1t7IFeAMKfxlJTFJZzHM7HBQiAkE2Xd/p56R3ijoCL9We35xIfC42Neenm
         kGzzHjKlnSh99fOTe6TwQxlIRx1tto6r7BFgrNkZAnpywh3ni8n7K1hE1iREm4nVMoBA
         II0g==
X-Forwarded-Encrypted: i=1; AJvYcCWCHze2HBDqABI9dxkPY11vDdEqVIaYqg/Z9y5Ho7Q01ldhM1j5F39V1Z91BDQBok8x99llDpp6KC/HJzFaMfHc3IvahN1iZgS4+w==
X-Gm-Message-State: AOJu0Yyfl1xhUfRYi/P8flie+tkWQHynFjah5a/ZQW455dhlaSn49O+5
	h2e3KLiQUoAQbA1l6o0qzhjCcd24SiEBmum19EMp/IkciJ/h/MkTnXWz6QwpcPe4YTpoAjwwLcN
	el0GK5jnFxxjvP+tXQG6DHfahNqUmGIFMk+2Sfw==
X-Google-Smtp-Source: AGHT+IEYX5XxZmmo9sef97202jg0pEahQhP3i37ehPC6dExoWuBQvnOlPK2ahAYAetTNc+dq+us40BDsa5OA7E9lxso=
X-Received: by 2002:a25:aa84:0:b0:dc7:4b0a:589 with SMTP id
 t4-20020a25aa84000000b00dc74b0a0589mr15828426ybi.55.1708473531428; Tue, 20
 Feb 2024 15:58:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240202-pm4125-typec-v2-0-12771d85700d@linaro.org>
 <CAA8EJpoUHi8FDAKa+LO+2t7fXxXaFYhXAJzkUUPs_uJH9pvZWw@mail.gmail.com> <b72042b7-a500-460f-803a-c6f178bd9cb1@sirena.org.uk>
In-Reply-To: <b72042b7-a500-460f-803a-c6f178bd9cb1@sirena.org.uk>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 21 Feb 2024 01:58:40 +0200
Message-ID: <CAA8EJprU-oC7ki1k98dpLn6xcsOa63EtOa678AcG0WiH=qy5xg@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] arm64: dts: qcom: qrb2210-rb1: enable Type-C support
To: Mark Brown <broonie@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, 21 Feb 2024 at 01:45, Mark Brown <broonie@kernel.org> wrote:
>
> On Wed, Feb 21, 2024 at 12:40:32AM +0200, Dmitry Baryshkov wrote:
> > > Dmitry Baryshkov (4):
> > >       dt-bindings: regulator: qcom,usb-vbus-regulator: add support for PM4125
> > >       dt-bindings: usb: qcom,pmic-typec: add support for the PM4125 block
> > >       arm64: dts: qcom: pm4125: define USB-C related blocks
> > >       arm64: dts: qcom: qrb2210-rb1: enable USB-C port handling
>
> > Mark, Greg, granted that the dependency has landed, could you please
> > pick up patches 1 and 2 correspondingly.
>
> Please submit patches using subject lines reflecting the style for the
> subsystem, this makes it easier for people to identify relevant patches.
> Look at what existing commits in the area you're changing are doing and
> make sure your subject lines visually resemble what they're doing.

Ack, excuse me.

-- 
With best wishes
Dmitry

