Return-Path: <devicetree+bounces-253345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 50472D0AF82
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 16:39:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D9AF230277FA
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 15:35:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9893B33987F;
	Fri,  9 Jan 2026 15:35:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0AB2C21E6
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 15:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767972937; cv=none; b=aT7kijiIh8Kao+vfNRdFcy5D/IKh6HKWTFUJgm6vUJviGqwK/pfh0SbL0/b9nIkOtawP2h72ZYxSiMHdvsNbVKeyD8AWKSE3KDJey2Y2HVezU5GBkgo5OaVVTomJqDqZA3D/klBAUtx2HEHPxMAoAVSiyOtKpai+VLTLl8Y32bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767972937; c=relaxed/simple;
	bh=IKLiyThDVylL/sA6NxTppXnRpnJSbncfjBx2QZbB8BQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BgthGDJzQkmiscsMa7OnqIDv0WM5ABNuHM73r3Jgi3w93OwGVwXyhoh1zex+lRmbugWvBCfquJBubp6grQHjSNYK1+/2uHTPwgVNXOE4kGvXDQ9N1GLTtI2eGYowC6baqYgO+tv8nLlvNkRxqK2Rz7a6jdaFDpg71Ydbsy6j/xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5ef3482907aso561693137.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 07:35:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767972935; x=1768577735;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+JpAkEBWTyz52MdMJvMUmBuHfFZ5rrOLCtTdutIe51A=;
        b=lsebQptMUrlrXADeP3fv/t2bqpWvLUEQQLprZQbFoBhtqYI3pV4gwB11vbElNmWrRv
         /rnkL4FzaC9/QHopIiqQI8Zy0DiS9CR5Xsw0J6gIctoBx0Qo1eRB0p658IJqE3oN1QXF
         UhKk3ApzexMjvKjdw77PLb45d2nMk9xgLP00ItewVoyLEdiGDutZmJV1ESarizKIE2IE
         SjIxOR84Zs/kFu/vXWPf7YGL0S5xyOvsW5hMcZnwt4i3LG2Jcm3lmegPkRZOB4M/eW53
         La9IjpgbOj4a4hIzlNFKMQcKOzzR37ZLd3nekyXNg4//gbRsEIQH1L/oc6dfmrAw6Gte
         7hkg==
X-Forwarded-Encrypted: i=1; AJvYcCUcVAOjJyI3270urgxtKl2R5mA212NTwdA2HYpDisp7fvLL1x68A/0RM9aKjqlEMkgpnOe2/CgLGPZC@vger.kernel.org
X-Gm-Message-State: AOJu0YxvaZPG4+nvwNPfAu1zLYh4tuBCXMUwfB4vrcZcMv8mZlgBH7+w
	1NFISUUwhhS+1LzefJ2gna+xhV1jLpkl0pQvdVo5dfAvKItmfK5vjJOwoB288750
X-Gm-Gg: AY/fxX7UOmyqz3aIHXIZD+y5rDTgMaM1KJPCFwIXSjn775bGqkgKtdQXMsPlmWlwbXI
	pv6BHkxd0GuJAZYsxLukYoc2rEAl8V0CKpM/HAv7rj5y3o91a0zJrlDHuQYIn+zXqb4asizIYDV
	XRFhVY3DD/viOc80IJ+JfPNxf+/LLbzNR3Yz4wEQdm0c16uBTXwcvoHIC27+UoZI/4a5no58scf
	qrd/YfIyRcbH3rxPs6b9R2C+Jz/geX8vH/4ar745MV6BJA3cD7khlxY6qRC8zCPK98svBPAA0/X
	2NHctSJmPtNLSwMpOnCierXT869Nk88AAxX0CO0H/bLf90hluHcpsyo+Z2UivaV/DotTnTXBJ9s
	KzAavRCvLjtJujKRgtMvJiHJ5F1uNel6ayxK6ZgTuSEUEhnUV56SgqTic+9x+3Z5UBtUubq7TcH
	ARlgT1qhGaBIwDVGx/ySTQXF9Ac9EJ54JPyKSIY2XphgmTrLqvds+EVi+TmqU=
X-Google-Smtp-Source: AGHT+IH8iXc63McEGoOGD2mBOc9HO8sZYqUeLHVJKrbzEa6QUvkVk+LiH24YL7exZl3/bexZl9duQg==
X-Received: by 2002:a05:6102:3e1b:b0:5df:c33d:6e3f with SMTP id ada2fe7eead31-5ecb1eae0c9mr4226027137.13.1767972935113;
        Fri, 09 Jan 2026 07:35:35 -0800 (PST)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ecdaf1bab4sm8972138137.2.2026.01.09.07.35.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 07:35:34 -0800 (PST)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-9413e5ee53eso2651759241.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 07:35:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWyHv3/6IJ72jSWOsogWK3cmpmiGYgGkLFmvCVOAp6zIpQHuYw7+ixfTvhvQrkmZW11reObtSUQ3ZPl@vger.kernel.org
X-Received: by 2002:a05:6102:26cb:b0:5e5:5ed7:60ae with SMTP id
 ada2fe7eead31-5ecb6900d02mr4160020137.31.1767972933433; Fri, 09 Jan 2026
 07:35:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251212203226.458694-1-robh@kernel.org>
In-Reply-To: <20251212203226.458694-1-robh@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 9 Jan 2026 16:35:22 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXUyGqR4S++7cBzGCTOChuTDGOzPvpsGFWHoxjfoJnQFA@mail.gmail.com>
X-Gm-Features: AZwV_QiW6idvXU9i4mLU08p6fWeZyRwR1gX4pjwq6g3KXSy5jIx18YOVbB4UJmk
Message-ID: <CAMuHMdXUyGqR4S++7cBzGCTOChuTDGOzPvpsGFWHoxjfoJnQFA@mail.gmail.com>
Subject: Re: [PATCH] arm/arm64: dts: renesas: Drop unused .dtsi
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Magnus Damm <magnus.damm@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 12 Dec 2025 at 21:32, Rob Herring (Arm) <robh@kernel.org> wrote:
> These .dtsi files are not included anywhere in the tree and can't be
> tested.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Let's just bite the bullet...
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

