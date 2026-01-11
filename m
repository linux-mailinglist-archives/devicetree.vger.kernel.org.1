Return-Path: <devicetree+bounces-253653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 839FCD0FF39
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 22:27:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 85CCE302C872
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 21:27:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7FB32877DA;
	Sun, 11 Jan 2026 21:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OGP34vvU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f45.google.com (mail-dl1-f45.google.com [74.125.82.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82434285CA3
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 21:27:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768166826; cv=none; b=uoH+kkvccMjOZPiLRrrXEa5DePTbNHkNNRqB/t65cjZTw2mfYpIHCR5Dn3bLdXWNk4hcqVmoa+5d29mnxV8mztrZImMsqobhzYAjYpK6MoYkuAE0OJhtaunA1QBJrLr0c9I/qBDHizIGiGhof4B0clDB6hjEu7Lr0dghLL43uak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768166826; c=relaxed/simple;
	bh=EnXqUjTJkdNJLSXs4uzNboxvwCMLETZ1on8J/fmA1kk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jYeqyYFUPpISrO97NV/GLvWZ3bAVYvfWcbvYkr0vWSW//tt9m129KJ7mRpc8mlWZnvCPyQHW5PTFKJJrNKEzMy035xjzDSzLvhyqdkkurddiR2Op3WjnaSUrhnLj8BfTnlb+Qh8QcTgpUbi/0YalAoNgQAUNc7HOg10xo8J9oxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OGP34vvU; arc=none smtp.client-ip=74.125.82.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f45.google.com with SMTP id a92af1059eb24-12056277571so6683805c88.1
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 13:27:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768166825; x=1768771625; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O+La3CIGRSshVXzJJV6Ws5h0oOhl5eEMo2EIxi5DDGY=;
        b=OGP34vvUlqpEQumLvdZiRb3eC+bEapfjw0mooBQZqOsHo0EmWx174QKkiM9sysuJ2s
         vKSqRwDZXlwSyohWcA9C5RSK3cQI6OqwFKDrceYEAR1BOUaOR3HXK3UEVNm2dTXrrK7d
         yM6cAsT+XKw/LgKJHnhsubZKJt5I/Savhap+Viz5F2V+SynAWywPxG5kbbvGkEEWhRGY
         Um0ALlwSq/JT/7+c6HtpVhsNjQb3h9H+muyjZPyKaMlIUDdk+/PaKXlvrWgVF3ycuE5+
         yakLhpzSyhZvtQxq2GUp62zA6ASgCIixOjhxVufCgH8/CqT8yrDPMlSNaQuBd58FyoFg
         Oerg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768166825; x=1768771625;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=O+La3CIGRSshVXzJJV6Ws5h0oOhl5eEMo2EIxi5DDGY=;
        b=gDICJlTxePI2dMqMwKpCZREz2mjwvsjiBj7g83m1JXFVh3krCVIj1uUMmHTyn2S+7q
         zo/Ld2052SsFZVUJiCahTMIJhDuik0ajEQJdO9tLZsnqq1aTE0scUDBsWlFx/fQYivup
         VJH/2qWef0WL0Yh5bFX6AYkcfUmO+c/3xprUNgdscem7+IznyLOrE3JdbLW53LanYJU6
         euYdAlGm3zP6iiysEdPuQWtasIh53Mi0SnL1eUPFYhvGWp8QRh5sDfy266VE/zyluljI
         sR7Ux5uLLfOCNbihd5aYiL5eL7Vff87f1IkNVzx0xVsUqLgO3S6Mesi6ThbRbtV1bE0w
         rD5A==
X-Forwarded-Encrypted: i=1; AJvYcCW13iv1kb2UrJVHMkkwlnGgi4NlEZ5e7tB8qtC4bavjWOZHN+uU+sqtLFzRtNYBeQUfO1GaiZO4LoL3@vger.kernel.org
X-Gm-Message-State: AOJu0YwPh0EzU+Sufp0b38jIy3JuhZzvOhDIN2ueEGGZjLY2g7trM5Lr
	ZdMCyGYcPv3iOLoBqrMEnuYzsD8sBcKrcI5ppW1jnoUAo9ErQ8sNsyEE41OhFVhODLFlIT9/JCB
	BwKyYuOrE0pnc3USl1ZzxKlG9f70L8mMuPrhB
X-Gm-Gg: AY/fxX7Sv6eHAUdKr0NaOt6mMJnLLWCrUefDDtRxdMhHmhD3rJIPDaDTobeksSanxFz
	ZMmrDeWRFgmrclF6P1Q1UFvJL2qv4xsUmERmjIjMr6Cq86VaLjNkfDFT2ieg4Y9h9iQkNAPgkgc
	yl8Teepxff9Pib3e1QP8zp4IQpx6mlapbO5U+VyLLOL+ikqZe91lKCHoqnNXZ7DRBI2byiw24Ex
	xNtDKRlwmKVEp1pF4so0vqHC8YAorR57gtZ3jANXWpxXrHhb//FKZsW+6I4+/NzextA9CN8y8tv
	Gk4cKE408Nf0Vle1ey0=
X-Google-Smtp-Source: AGHT+IEAIkTtTenYTps//RIeNMSHypd9h5mkG9ym0bXQcjZBxIqbQi188jjy2QtOlW65luwAbZQyPc1Ub9a0FeUef3E=
X-Received: by 2002:a05:7022:b9d:b0:119:e56b:98c1 with SMTP id
 a92af1059eb24-121f8b8c1dcmr15280403c88.40.1768166824499; Sun, 11 Jan 2026
 13:27:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260111201040.162880-1-anirudhsriniv@gmail.com>
 <20260111201040.162880-3-anirudhsriniv@gmail.com> <fdfb7212-5133-4cf4-9448-15cbbaa34eff@lunn.ch>
In-Reply-To: <fdfb7212-5133-4cf4-9448-15cbbaa34eff@lunn.ch>
From: Anirudh Srinivasan <anirudhsriniv@gmail.com>
Date: Sun, 11 Jan 2026 15:26:52 -0600
X-Gm-Features: AZwV_QhD59iuYK8Lvi1649SQz_mf1A12Z53MMB7xc4wTeA0B9lLvh3wsy_Tx2eA
Message-ID: <CAJ13v3QVVC44XD1W-4t_m7Mfv8L214s2T62CyDdJTggX6paZpg@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: Add Asus IPMI card
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 11, 2026 at 3:09=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > +&mac2 {
> > +     status =3D "okay";
> > +
> > +     /* Bootloader sets up the MAC to insert delay */
> > +     phy-mode =3D "rgmii";
>
> There has been many discussions about this. This is broken, 'rgmii'
> means the PCB adds the delays, not the MAC/PHY pair.
>
> Please drop Ethernet support until aspeed fix the broken MAC driver.
>
>        Andrew

Understood, I will remove it for now.

