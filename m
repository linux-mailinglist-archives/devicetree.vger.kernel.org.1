Return-Path: <devicetree+bounces-94170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 964C295439F
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 10:03:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9A47CB27844
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 08:03:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D83412F398;
	Fri, 16 Aug 2024 08:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bP8I5jpJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5968977101
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 08:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723795409; cv=none; b=av6afas5cBDMGBPFbw4Squ61MI1HiK0Y0GS4NjHjNiTavh6PaQxhnXNFofr55FIbSuAMbpSmkj47BxeksIgPGpnqUjqot38m3JhjwLVLR2hhkf8qRQ70tcNktJRgAc+IGPjxlO6Yer7flun0RS76mwiLo+FLZGVoVE+P7kPXSOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723795409; c=relaxed/simple;
	bh=lI5qZml5n8D8uMwE0Gj7rF8DkdSGFNzLx4uvrXbdiXI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NJnkZuh+MqXJ2OI+VZ3Iy8vMcW/v4/oaBol6iWPKzjbRVJ492B/OCeG4OlL5k3VvbN0A2gEbcp9QJlN7vPuVOoWGsjun2J/R4UcKvohoeOl1o/feu2dZ12Wv/WYf/wABfk3H5JQDDPDkq1K8Db4AfbCm2EQSeiui3sk3Y4lFP8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bP8I5jpJ; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-661d7e68e89so12843747b3.0
        for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 01:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723795405; x=1724400205; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VR26oQJGUDskARtTbfBCHHqlsRCVMlxxfj+UcLee/2U=;
        b=bP8I5jpJwTljTyhANzKDsbOWZsQP9Zv9UwSRLL3QUkWHASY06wOrx+rehc9WxYlTY1
         jV4ok6R04I+e1HA6fgHrLzj97ZbRlcgXMQ3E8/Bcraoj3ucA9weKsA22uqh8UHJqejb0
         PKUMEnWFqPoBX5PTvtkTxDU38iAMzdpnCK3dD42p2nQAT2RVpQGJN7fMB8Jb0CJeHYby
         WgcXGkz2Czgw5sla0DkrtciX/jkl1QPMld/PUwlkmmgqiEtwCf+ws3TSvnbFgOIF+SA/
         DOgYcMY74+wHGHcMJrVZOBiSMFxht0Atu0dmx6wobj7KPrHfLcj9yyAKbJ2oKejAeOQu
         phGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723795405; x=1724400205;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VR26oQJGUDskARtTbfBCHHqlsRCVMlxxfj+UcLee/2U=;
        b=oHnSwPe45pipFWvdupPBwAK+0wl/vqXRwC3uVR0STT3tVnfbMiiM6RtjIgxwIkHZT1
         86v1GKxTjhfDX4C1I3cANF6KYIyUtaoe6QSIzakhPrUDJvbGq2ybyp9J/LUkC3fHt+6x
         yzr8nllNwYp6Sfx8Su1VbzOa/CApuNCrQIvQrT5wJtegjj5vDzWdHTheNviQ49Ew/UWW
         TbRwR8ksxQvN8mugAxwMvm50srelvLzCHZMos1VU+njYE4EahFQnAXhSRYYOJKazphCZ
         IDvVP2+irTCLTDjrqKeW7xSuHmo8SWqzAUqJmzZro19cdo+oUKcPYGXOz0GydgOEin1x
         r6Yg==
X-Forwarded-Encrypted: i=1; AJvYcCWidwIxCND5+/dJrHKlIWVz+DSFEIKIy7SfmlgFtgx4Wecb9ADoW3+2urRHsaSyjWCjRt4y7N4eLxwu0A/bPDIhffqrcM7VufW48w==
X-Gm-Message-State: AOJu0YxiVqXdApIeQPmlp2cpgpzqZkbuQE0EbT86ZhJ1RbFxYL3P7u03
	pxmd2/BDo/Si3RGlulJMrX4QGphWD29ytSu+DK2o7ESDkboeTXo56TUPaG9EbMUHFZTKKrinTiq
	40TudtftWEylcdeW3+IGehT3xBUQd6cIiI4W1kQ==
X-Google-Smtp-Source: AGHT+IFPXaGhgnB1O38F+OQxY8qufXLZWG9hoZgdNA43kJdPxtWrN+zVXWCoEb1vrisLWBNqibFhFqz0HaYdqSO/ADM=
X-Received: by 2002:a05:690c:397:b0:6af:a6aa:2b59 with SMTP id
 00721157ae682-6b1ee4e050emr14403077b3.5.1723795405222; Fri, 16 Aug 2024
 01:03:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240810211438.286441-1-heiko@sntech.de> <20240810211438.286441-2-heiko@sntech.de>
 <172340442666.7060.12608274118090495917.b4-ty@linaro.org> <12584345.NizCu2HIMA@diego>
In-Reply-To: <12584345.NizCu2HIMA@diego>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Fri, 16 Aug 2024 10:03:14 +0200
Message-ID: <CACMJSesFVdJDkJXyC4o5NZxeDB8kkg6Ks0_x6G1Bywr+_ONZVw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: eeprom: at24: Add compatible for Giantec GT24C04A
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	ukleinek@debian.org, linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 15 Aug 2024 at 18:48, Heiko St=C3=BCbner <heiko@sntech.de> wrote:
>
> Hi,
>
> Am Sonntag, 11. August 2024, 21:27:13 CEST schrieb Bartosz Golaszewski:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> >
> > On Sat, 10 Aug 2024 23:14:37 +0200, Heiko Stuebner wrote:
> > > The gt24c04a is just yet another 2404 compatible eeprom, and does not
> > > follow the generic naming matching, so add a separate compatible for =
it.
> > >
> > >
> >
> > Applied, thanks!
> >
> > [1/2] dt-bindings: eeprom: at24: Add compatible for Giantec GT24C04A
> >       commit: a825dea2cd27a30e49816f18b7bc16545d5f0f89
>
> just for my understanding, where is this commit living now?
>
> Because linux next seems to know it [0], but also says that
> "Notice: this object is not reachable from any branch."
>
>
> Thanks
> Heiko
>
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/c=
ommit/?id=3Da825dea2cd27a30e49816f18b7bc16545d5f0f89
>
>

It lives in my kernel.org tree[1]. You can get that information from
the MAINTAINERS file.

Bart

[1] https://git.kernel.org/pub/scm/linux/kernel/git/brgl/linux.git/log/?h=
=3Dat24/for-next

