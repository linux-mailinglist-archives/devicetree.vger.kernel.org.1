Return-Path: <devicetree+bounces-85795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6D29316D4
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 16:32:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3BB011C21388
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 14:32:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D86FB18EA83;
	Mon, 15 Jul 2024 14:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="jf4XEXHR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B57D8186292
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 14:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721053958; cv=none; b=kTaRdCz1tMN+LDaGSZOmo7VEqFRWrXTvNDCxtswVvVQHYusECiFFAb19CACQnZjhw0hiAiDfWITAfo5FWE65/sQ+45a8kb1q1GlcrucKPtsdHUbvURR9aOwqnihtMqjxePMtNdhPCWfUg+yFyh5l8/b3Gb9hDf6x8YG8BWsUpuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721053958; c=relaxed/simple;
	bh=Fc1Fj81x1LnOz6qLHDXAd34zTeKOj68tGBAgaJsMlyE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bx/jvb1Mo0yMLgVk3sR7oVBUugeya7jzXamicglS71riPmUPN3DjdkO3jpbvI/sv+j1/WzX4jEMU4GJX1+ooFGApMTYEa5IqJgQv2sEpJLQGsfHyhAD+Gs5nldb4/0I/TuJVkMj/cH2jrms4S+C0XqFOu217eLwaocdwR5y2FPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=jf4XEXHR; arc=none smtp.client-ip=209.85.160.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-447f8aa87bfso603411cf.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 07:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721053956; x=1721658756; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fc1Fj81x1LnOz6qLHDXAd34zTeKOj68tGBAgaJsMlyE=;
        b=jf4XEXHRPU2bJGciHZqTxv5st3dWzommrRdrqtFzWPTZ5cHOd0vjot4YsnseQL4gwj
         Zay2hziIweYML9+Xcp324LHdB0y+uxlw8C5QsIGlYPbcaG1vDhU82RyZTAGKk8rblOju
         vVmr4EYPKGSbDTqmtGKEQ/kp9kxMbFjnixu3LxpjKfmgHK/xDdvwbgyVnQqzmV7BI7tQ
         vNIDaiRmO1TXFMCE1wHPCrPKUN4f7PUxvK3EV3T42QUUoetHNShZMqMndfHKeu0D6Fi3
         gyKYukOd3WVPH6OXNYKDwa7G6hsZDXAvtFr48z32iMtPrlgKbAMznooiK4TsV7vEoGjK
         ykeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721053956; x=1721658756;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fc1Fj81x1LnOz6qLHDXAd34zTeKOj68tGBAgaJsMlyE=;
        b=fq4fTuGIdgHCkseCVRhSc1UXoyVOEZ9eKOUw7dHz8bCV/IncKYwmJn5vi7PI4HAPqS
         SnAry7JladSkX6HDCSotq6WiwCG/feOklXmpxdoIHzBrsirt7+BswYhPjUibco8IqgJD
         z5tQvRKEAUroZyqaY2JdXMQkkQS/K2w7/FxJesZ7nzsmfgw7+RO7Uw54n3bQpu0EyQk7
         I1cEeKaB+7Orw9k69e5nVGt3Gooi5oZAYcGOdBywGSsElBIUZJN7LISkaKmP1HKMByVr
         /hGHhap+4p83JkHqG3VVwF08ScHoqFplQhD2p1MvBjwljxo46ocDKZfdK/aME04zI0VJ
         uMLA==
X-Forwarded-Encrypted: i=1; AJvYcCXlgN8ugxheAeAys5Zy5ciEcIz7vefxiMY5y7m5cA15T3IIxWnXVawjbILphfXwmyyzuOvjMggW/Nm6NmM8lwd6dsuVDUmb6d12zw==
X-Gm-Message-State: AOJu0YzNz/qlcYtgrzLz7LC8XOISSNZLC/ohXurw8LdEaoHu+RLpJg3A
	ZuJ898sPA7AS/58Enb7dVmRypVYW8ser7waezp38vKq8oCZEOXslnJt3heZcKgVmy15OImXYUe2
	g3lNmPp5C4yLq0Bw9DA7gIJtBeTTV1wnSZVqp
X-Google-Smtp-Source: AGHT+IEdAV3zlBSromK7kgwqxRwwFx8kbs+vC0rwqlISqNmCiF0y0Gbsp63IltCUJUrV6HyA2qxarg6CDSl8HaBAXE8=
X-Received: by 2002:a05:622a:298e:b0:444:fd8a:f1a0 with SMTP id
 d75a77b69052e-44f5acc840amr5659871cf.25.1721053955348; Mon, 15 Jul 2024
 07:32:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240715073159.25064-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240715073159.25064-2-lvzhaoxiong@huaqin.corp-partner.google.com> <CAD=FV=VHDksKiZXrauiipa3HjtK4sE5+dbmXmVfhFoM-RKQP6A@mail.gmail.com>
In-Reply-To: <CAD=FV=VHDksKiZXrauiipa3HjtK4sE5+dbmXmVfhFoM-RKQP6A@mail.gmail.com>
From: Doug Anderson <dianders@google.com>
Date: Mon, 15 Jul 2024 07:32:24 -0700
Message-ID: <CAD=FV=X3rQC0URNWGxPrvCF=RNsTFiFPfotBrC7v76Cam4kbxg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: HID: i2c-hid: elan: Introduce Elan ekth6a12nay
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	linus.walleij@linaro.org, hsinyi@google.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Benjamin Tissoires <bentiss@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 15, 2024 at 7:22=E2=80=AFAM Doug Anderson <dianders@google.com>=
 wrote:
>
> Hi,
>
> On Mon, Jul 15, 2024 at 12:32=E2=80=AFAM Zhaoxiong Lv
> <lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
> >
> > The Elan ekth6a12nay touch screen chip same as Elan eKTH6915 controller
> > has a reset gpio. The difference is that they have different
> > post_power_delay_ms.
> >
> > Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com=
>
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
>
> FWIW things have changed enough between V1 and V2 that you probably
> should have removed Conor's "Acked-by" tag here and waited for him to
> re-add it.
>
> I'd also note that when posting a patch your Signed-off-by should
> always be at the bottom of any collected tags. For reference [1].
>
> [1] https://lore.kernel.org/tools/20221031165842.vxr4kp6h7qnkc53l@meerkat=
.local/
>
> That being said, the new binding seems OK to me.
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

...also, all of your patches seem to have the wrong address for
Benjamin Tissoires. Can you fix that? I keep getting:

Message not delivered
Your message couldn't be delivered to benjamin.tissoires@redhat.co
because the remote server is misconfigured. See technical details
below for more information.

...because you have ".co" instead of ".com".

Having the wrong email address for the maintainer is a good way for
your patch not to get picked up. :-P

I would further note that Benjamin seems to have moved from using his
"redhat.com" address to his "kernel.org" address. See commit
139b4c37e9cb ("MAINTAINERS: update Benjamin's email address").

One last note is that get_maintainers should have suggested you email
my @chromium.org address rather than my @google.com address. It's not
a huge deal since they both come to the same place, but some
maintainer tools will refuse to accept the "Reviewed-by" that I post
with my @chromium.org address because my mail program will notice you
sent to my @google.com address and send my reply from there.

Probably you should be using a tool like "b4" or "patman" to help you
send your patches out [1].

[1] https://youtu.be/7B3nKmBoFoQ

-Doug

