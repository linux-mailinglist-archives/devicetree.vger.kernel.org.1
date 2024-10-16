Return-Path: <devicetree+bounces-111856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2DE9A027D
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 09:26:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C06721C263CE
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 07:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA2A41B6D00;
	Wed, 16 Oct 2024 07:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ye6U6Q02"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89BDB1B395B
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 07:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729063568; cv=none; b=kCGKfra3EUYknMn5fMNoKeTJqNeDjz//S1CMHxfDLAsxip1KqfYbO8/KcylLWfScehPvkIryWKnCBQvQlUNTasAit3pWO5ycgvf0ICcExMIAwq0lHZ4C9B+yOG9WA6UDLkVGgXUBWWGqlqckp+Uqsww3BRjIzq3sedW5j5/YWcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729063568; c=relaxed/simple;
	bh=EkUGl4udaRvqskMWNNCBeol4kDoR1IFd16zVZQo0SO4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SFMZJ6bUzUy+5VMdOm1VkIJXCxjpmmveSdA8tBwD8DQZGcCkjyImXO51mkLtisOnUQ4bXCnrMU03VwLkcG2RIzixlJpsjv8jD3tx71u3oyehD+rg8QBUz47VsNGkJo8Jw59joZNGfvIzRBXhptp++H4NkNklY//aNMXkcFBImy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ye6U6Q02; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-539e1543ab8so7638245e87.2
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 00:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729063564; x=1729668364; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RhK9aEfPG1w4C02v66++bUX1W5vp3z5jqPVGAhJIjSA=;
        b=ye6U6Q02TGaXRbjaxpQce1Z8iCLpNC25xvxpejBnHoKgyI3hIYMfptIZ02ry3KL3nK
         YCjpsHM78gB0B7PIGGPIdIt+kW5sgKWhANXgwujdyONwsQ/lfTTi1TPfkjsDEHQCciHk
         +hP0kU7StnpQ6WhIvtLxNeGaowSRFk/JziarOFKrpqAdXLqo5So1jozsN3JII7EGWxfE
         E5iuEyup0gHabwwhQMhGc1kJrywQQhyBzDPEFJDF8luLJGqx7Dw6DQMKOKWt5Mkljx19
         dkIVkcZyBai+ZW8t43zXgqlWZXrz3KjaZ10yL3q/MjOXMZ3YpAo+7ce1VRJRhbXailIl
         ZB2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729063564; x=1729668364;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RhK9aEfPG1w4C02v66++bUX1W5vp3z5jqPVGAhJIjSA=;
        b=G22M+DjkHZh3lfRqVo+j+pyB20cL+LK3CR55JRzFBx/N/mmQfmDJPJoVhZnGVGAtw+
         jGlMoRu/nOnYyj3EWlyHsg5jnGpyFaPyUw+8jIxBKNBb/d6MFz2JsGwMXqsOsmkh3IS1
         /0U/UaqG5yxBzx7iZCsW9QumWktmZdP82UQnXnfVqU52wjily741AKWDHGwgLoFEIFv3
         6s79lZ23t7b85q73yDl+J19IAfJQtkzLxUpagOFp/VW97btYfBp15+HRoKQXh+Uiavzi
         ofPqoCkLu/o6JbHPWKQ2G31nxYirTV0oEWA+BGG2/E4BgOoQ6KH1CSoNWx+Hh+GrE24N
         9jbg==
X-Forwarded-Encrypted: i=1; AJvYcCWQGgXzEMJPKWSlMmrs2dYggxALtGMkKhjUQBsHpICvZO5yqQ8wpGqZFL0dFNUfKAWZ5KO2ikAJG6l+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5lmIsdN87MSI+Zy6POMZYhFA0TkiBl3/8LOz/d8Dh+ajLUTPD
	K5uVKVi29cOhLJ9oJj9SxAq+BVKtLiCsPyeFUP1oZW7Q1zSDSA17wMDfkBW5AZC+nWkzHgDIngu
	ScGmXd9wNeURHlqccVXMmyXM5XMdjfwI6lPYy4w==
X-Google-Smtp-Source: AGHT+IGeB3nfnjYOLwENvDZsj3kps6wkLWnU7XfsrF9QM9GfJpD8KbnECT8aOYo1TBp4gpcs9DRuudnglEn75xmeocU=
X-Received: by 2002:a05:6512:350e:b0:53a:423:6ec9 with SMTP id
 2adb3069b0e04-53a042370c9mr1782511e87.54.1729063564225; Wed, 16 Oct 2024
 00:26:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241015-ad7380-add-adaq4380-4-support-v1-0-d2e1a95fb248@baylibre.com>
 <20241015-scoreless-carwash-9ac6047092fe@spud>
In-Reply-To: <20241015-scoreless-carwash-9ac6047092fe@spud>
From: Julien Stephan <jstephan@baylibre.com>
Date: Wed, 16 Oct 2024 09:25:53 +0200
Message-ID: <CAEHHSvZ+j2DyikVQ1XYzk-Zg14FVKP1YHOm-rOimjHydxaGPaA@mail.gmail.com>
Subject: Re: [PATCH RFC 0/4] ad7380: add adaq4370-4 and adaq4380-4 support
To: Conor Dooley <conor@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	David Lechner <dlechner@baylibre.com>, Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mar. 15 oct. 2024 =C3=A0 18:43, Conor Dooley <conor@kernel.org> a =C3=A9=
crit :
>
> On Tue, Oct 15, 2024 at 11:09:05AM +0200, Julien Stephan wrote:
> > Hello,
> >
> > This series add support for adaq4370-4 (2MSPS) and adaq4380-4 (4MSPS)
> > which are quad-channel precision data acquisition signal chain =CE=BCMo=
dule
> > solutions compatible with the ad738x family, with the following differe=
nces:
> >
> > - configurable gain in front of each 4 adc
> > - internal reference is 3V derived from refin-supply (5V)
> > - additional supplies
> >
> > This series depends on [1] which fix several supplies issues
> >
> > [1]: https://lore.kernel.org/all/20241007-ad7380-fix-supplies-v1-0-badc=
f813c9b9@baylibre.com/
>
> What exactly makes this series RFC rather than v1?

Hi Conor,
I am sorry I forgot to add some context here... There is an ongoing
discussion on the dependent series about power supplies and Jonathan
asked me to send this series to see how to properly handle the supply
fix...
See  https://lore.kernel.org/all/20241014193701.40e3785a@jic23-huawei/

Cheers,
Julien

