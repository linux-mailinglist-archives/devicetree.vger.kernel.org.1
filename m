Return-Path: <devicetree+bounces-254720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 033FBD1B3AA
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 21:35:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7DE3130131D2
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 20:35:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05B5430596F;
	Tue, 13 Jan 2026 20:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lv2QmBsF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C9D72BD586
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 20:35:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768336553; cv=none; b=XmozxCCR3WRAqksVYSRagaof2LlCEMxtyKgHnNrHjOgeVTYkVcURgDzdlwkQxmx4kScLp7DnH9GE6Qs4h4fS8uqDG0KraxzMzRL8MAO2GBGqji5Ujo1cDZGOcV6VCG0iKtnseFuM4r1ZOoZSRd6kQQb0WZ199iUwOpNU/OZWqjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768336553; c=relaxed/simple;
	bh=6WxGsgh2CAg7ruexq6+FLP8qTdSDXPFg9Ux3XBnOTuc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ix1xeKSy+FEw9FuoEUwQs8xRY/syvMRkSj+MS8rtArb7GumuxHXX8zd1JCtt02gWuZbWTN0flaqGNx07BQ/SohAb6pgoS5FOo4oIh8ob7HHuGMnd4B7x5BL5mrhNKOw62H5PAC+6U5Cu7DciHTqSF3AGHt1TV2QoVGqRseCvro0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lv2QmBsF; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-657509d761dso4442416eaf.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 12:35:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768336551; x=1768941351; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6WxGsgh2CAg7ruexq6+FLP8qTdSDXPFg9Ux3XBnOTuc=;
        b=lv2QmBsFCl57wnayboXxj+9pwncyyvUTL3ZtUZehYeAHsTkb+Sd6Elji6gdSCBEr61
         ZPbUlL+SLm17RBXYeeZ+3Q2DJQ+Hv4nUsrhsJMmK/uV/V5mIxKhOvhLSehFy/BMO2ACr
         k2QDpNi08bGQQKt3liAUF2evQbFB/Dl+GWfVlB/OIFzciZ6gJGLM/7SSXEnhrwYWE4GF
         iZVgLMkZv4Z46PL9pGJkPfub9KoRt1EITX4RrhukGz1+W0jUnTOaPYnc/+kCoHAsE+m6
         1K0a6HRYUrGwWkcXMTijgl5H1kwu6VxrmXKt+lweLTTVclkbGP9PAAiFQY0d+6PesH0V
         nIoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768336551; x=1768941351;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6WxGsgh2CAg7ruexq6+FLP8qTdSDXPFg9Ux3XBnOTuc=;
        b=N0zIKbtZETNIwFxzVjMxEKUjX59t8ds5eYjlHBrv1WiT68R0Z3Azut7b+fTPlEj2BQ
         HtYdZlQqJaUq49Sendp7JyYXUv7eF2bG37Cw9UcudrPSJYRETheIcpdC6UZHEuoObipT
         4U4NHoSJKZLNRCLVAgw377OJ370QyoHJfBX2+vcPjfKSMyG43IAEBEwawDWPX9KL5tJr
         GObarI1wrmZMyjGl6DgAWdz06fZQrSy3sVShdoqaEl6xG9jynsxMFALCgK3/XWfsISif
         ox8ppZCCHwPpzXB/B4W6INKStn0f1OqBel1oOWLGkvh4i5o1id73QuF1A/Cdr7jyXsCl
         4ELQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8RDahKOpcRQxXEz7QqkRZsjicZCm5FYDyXUvNJH5Gv8+tAujvQ+Mp5h+cHDrZ296E+4ZY0t1oorI1@vger.kernel.org
X-Gm-Message-State: AOJu0Yybj/gqNX7YpmwxThEghxOXUp2P56mqCBVTyqziQ4tL66z9WBR9
	IydrVMbm3mSy0Auf3leU8ZdCcBZPjfcHzQscrzkUsw3KXjTbvhga0lqVI1iI4PkSwuNqA6JweMY
	dHgeTVX2AaCiH0EcCkUxeGDBzQBo4P/E=
X-Gm-Gg: AY/fxX5nGrM3MaWew2V+mSzanpV/n4H/50vw/cWmOWY8c++KMDnizik6deq4Nnm0QVP
	AP4+WZrgYAEBzFFULOJF5ZcX+4Y4vDbKGd64tkt0/Co3lT+vtFpppxBC4lc+irgg1q9DODrg1sg
	WGA06+aV1TcYaoqD04NBaPo339m5zgW1m3f64w+SktlqIBmdw8O+gIQoge95bOAthuLDVMlR0ZJ
	5fCRgCfmCVekArHmXLp2ZrYvlyv551EH3x58LQFeCkhpLqvtnAzRoLXBhT+tiRJoj2aUwpAMU1a
	Xa+UHj1mruxZW7fu8XZ9KI47Lfk=
X-Received: by 2002:a05:6820:430e:b0:65d:5e1:ed1f with SMTP id
 006d021491bc7-661006aa2e3mr181003eaf.29.1768336551453; Tue, 13 Jan 2026
 12:35:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1768267105-127385-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1768267105-127385-1-git-send-email-shawn.lin@rock-chips.com>
From: Marco Schirrmeister <mschirrmeister@gmail.com>
Date: Tue, 13 Jan 2026 21:35:40 +0100
X-Gm-Features: AZwV_QgnTmo_KhsM_u7wvf8FEfx06bkPqZST7JgYwnI7K3SwWLXpl2ZhIKD6Bls
Message-ID: <CAGJh8eAXC+CAMfjxOP8LUwR-xcQGgbwyxFkNLgAujFiP6c2hOg@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] Fix sd card support for RK3576
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, 
	John Clark <inindev@gmail.com>, Tianling Shen <cnsztl@gmail.com>, 
	Detlev Casanova <detlev.casanova@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Shawn,

On Tue, Jan 13, 2026 at 2:19=E2=80=AFAM Shawn Lin <shawn.lin@rock-chips.com=
> wrote:
>
> This series fixes this mess but only adds slot-gpio support for RK3576-EV=
B1.
> Other boards are also missing slot-gpio support, but folks are all cced f=
or
> checking the boards they are using.
>
> Please review and test

I tested this series on the FriendlyElec NanoPi R76S.
With the addition of 'cd-gpios =3D <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;'
in the board DTS, the =C2=B5SD hot-plug now works correctly.

However, even with this fix, the NanoPi R76S still suffers from the
constant 400kHz retuning loop when runtime PM is enabled. I will send
a v2 of my driver quirk to address this board-specific instability.

Link to v1: https://lore.kernel.org/all/20260110010715.1610159-1-mschirrmei=
ster@gmail.com/T/#t

Tested-by: Marco Schirrmeister <mschirrmeister@gmail.com>

