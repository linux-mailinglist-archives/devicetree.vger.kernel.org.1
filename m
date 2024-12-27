Return-Path: <devicetree+bounces-134458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A889FD7FB
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 23:34:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8AEF77A21F5
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 22:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCC831DC1AB;
	Fri, 27 Dec 2024 22:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZYXZSA3a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34716156C70;
	Fri, 27 Dec 2024 22:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735338878; cv=none; b=fPQx1BPGzjikyd7XhztxOsnVwC6ecVfBMlqDuCpn5uBTBSzP6yZl8a7C2YMT3wfdRbBEa3pPT51LUunk5jEtKJ/b5+HgIF5jedTgcg09Z+k3YFvSDVQC9o61u55eK+WIqCXfpRBEgi6rrcHvu5pYEPv9y8EYCLQNR8iDh0ynik0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735338878; c=relaxed/simple;
	bh=hBUmPxTFvEugmhonLC7AHGxs+gMigWic/1AXVEtSdoc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VlRCAELdSF+WtWBY1Fa9ZuaozjxZa9LBY1Lc9bDGzPtaWLh2XQUMhLAhrUmwzf8ZJAtlPrsNoKADmPP2yhxk5z+kSvQDeSqT0D+rzx0we/e9w3KvQWiGM5mcsNYQMDLI60LsVsz+hatrAQ5x7MMFJThQjE4hkiuLKukq0yLXFgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZYXZSA3a; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-29ff8053384so3387232fac.3;
        Fri, 27 Dec 2024 14:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735338876; x=1735943676; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hBUmPxTFvEugmhonLC7AHGxs+gMigWic/1AXVEtSdoc=;
        b=ZYXZSA3aJGWo3JBwKhvOLIS0gBdeAkZyOTbAni+EOY0hVmTVrs8tKGUWblqEYcldOF
         Yagf8ieAdhb9jXc/JLLqgQ5prptpWquesBGGy5iJAvmcxnMdJjfwOsOt0ayvsNiA9nwF
         WqD3527dmvKZMLEVisWnP2nI0AmBnY7MlhH0MNRPZR32syG5R6Uxglrcel5FGhH3kk0x
         8qtJs4KNE3eeTgewVulFlJ4udLbTpCkTm57BWteV9nDFXWyiF+vRzbSAa+wevZ+WBqt7
         MOvVa9X4ZHgTDJ4MGXrDNCp3BUqDoANywEziaWyo+gmlUyy/S66hnYlEAljnEts5r4lz
         EwgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735338876; x=1735943676;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hBUmPxTFvEugmhonLC7AHGxs+gMigWic/1AXVEtSdoc=;
        b=FVsUMAd2yJdnNapfBiMjqCNJalMR9bJ0LOFLiu52S7dUf9KFhKkNe7eQjoXtHujHkB
         LMQTh5Dhm9OStF4hmWbGOSZ0Trl41HlGe6yk5xorQfAC8ovG+ImLurpiJ07/6DD7oDWh
         dD3sGdT1zGXy6sd/tQ4LH+i7MUkMUFL6+tIhmA2oU84looArAM4IETUCPN0kPJfILxQ1
         knHpNbWeIMp7an9aUQDM6ZNCgyyUTKfCmg1NnQTr4XhGVzvvAcJWIJzokqhHw1nWj7Ka
         NhOSNjZl116JxObbqgzD5jcy0lgqhokCcHHfxXciUa/8KAAOViCSbBwYCz51uM7F/DuS
         Qk9A==
X-Forwarded-Encrypted: i=1; AJvYcCWMwLLLgxlCj8smzg9SVDI4rxBqaIn447i3xvx/oGos2KPJ30OyPoecFlHv9ZizTuO6Q1RfwmwejMhO@vger.kernel.org, AJvYcCWQYOTe/0aRVdQ7NI2q/jSt2rrzuiyW1MHxfKXh/kKRozsZai8z3jEOoXQeHR0aYXhiyHjlgTy5y7vrGUjw@vger.kernel.org
X-Gm-Message-State: AOJu0YwPZUJ8IxUuri8VTN3NAhi/9vWF+3vCKW7Tk4WB/ARNojo9cb0o
	pdih/p63uN1N/4MLmW/BlbR3deFDUfjvmnB9BsTibVA0yI6oO2kUpB9U9xX2NA5UWMuZWFCkTeu
	s01QGcKOEO84VRo+1hQr4QKvq58E=
X-Gm-Gg: ASbGncsS0VxMXKTaA7LgKi0xO7VNpIcIiMWTrjnIJWioV9+dK5CoG6oEHlsUvcuFQin
	h+KDBnxmO/vkQ18mgF5A2iQ3c7aX1iBAQoneiFTguEWlFlJdobXWl
X-Google-Smtp-Source: AGHT+IGPwfw6kuUjAFDA6kF5F4HgRlWZuZwnMK/ENL1OPJ/20iwoJASam3MfJb+yHQ9p3ejmQn1fvhV9hJcadZlYtgI=
X-Received: by 2002:a05:6870:2f05:b0:296:e88f:8f56 with SMTP id
 586e51a60fabf-2a7fb4b7968mr17783303fac.26.1735338876144; Fri, 27 Dec 2024
 14:34:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241007001408.27249-1-andre.przywara@arm.com>
 <20241007001408.27249-4-andre.przywara@arm.com> <675489c1.050a0220.8d73f.6e90@mx.google.com>
In-Reply-To: <675489c1.050a0220.8d73f.6e90@mx.google.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Fri, 27 Dec 2024 14:34:10 -0800
Message-ID: <CA+E=qVf8_9gn0y=mcdKXvj2PFoHT2eF+JN=CmtTNdRGaSnpgKg@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] mfd: axp20x: Allow multiple regulators
To: Chris Morgan <macroalpha82@gmail.com>
Cc: Andre Przywara <andre.przywara@arm.com>, Lee Jones <lee@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@csie.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, Martin Botka <martin.botka@somainline.org>, 
	Chris Morgan <macromorgan@hotmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 7, 2024 at 9:45=E2=80=AFAM Chris Morgan <macroalpha82@gmail.com=
> wrote:

> Using git bisect, I found that this patch breaks the CONFIG_AXP20X_ADC
> option which is used by some of the battery and charger drivers for the
> axp20x PMIC series. My current assumption is that the
> devm_iio_channel_get() call made by these drivers worked correctly
> previously when the PLATFORM_DEVID_NONE, but now it's not working
> anymore. I'm still testing possible solutions for that problem.

I confirm that this patch breaks the battery driver on Pinebook (and
likely Pinephone). Reverting it fixes the issue for me.

> Thank you,
> Chris
>

