Return-Path: <devicetree+bounces-158182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5175CA65063
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 14:11:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A49F9168F2F
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 13:11:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E610523C8C8;
	Mon, 17 Mar 2025 13:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBKgJWvn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F9C8F5E
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 13:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742217111; cv=none; b=VoAYhCd/OdYX7jYTnFiZX7PlgICu5coDLiuynRbscbBeZs26Ryi/Tzi1pk61O9mC8JMcO26mLI9OVyOxcNuKLl6h0QVU+D4ES+Vs0DrW/YwdTaxgzXzzSph2gBHUTH50i04vqk6Ndzs29J/W+1//Rp3x7CHdgCjVhHMB8+Wy7Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742217111; c=relaxed/simple;
	bh=hyj1U0IA1UnBGhxo+Zdks7jBTdBtPh5uosKTfXLhShc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YfB2CMC11TonrYKFBB3OceYMHzFmyB+Fu9IWOq9bAtl0oACOulWBKp5IjPOVidb2lt5okVbIK1jdj73uJVhXfB1UYMPK0XQ1qLGHGNLJnKMBS9d0NVVas7CC0pqq18RLXBEaQPSqXgDLSbtlds849N8nT57Z9MNibtcF8SsgSeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBKgJWvn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4068EC4CEED
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 13:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742217111;
	bh=hyj1U0IA1UnBGhxo+Zdks7jBTdBtPh5uosKTfXLhShc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=RBKgJWvn+/kcOQ6mSlrTmlaZnKLW1gXoHf2fb+JI7F7iVcnePdpOIe9Up5oa6E3W2
	 DxynWIjXNpmvz/fLF4N4CiOWaLwSCzjW0sUu9roG+yywrFR4Q+rfCXyuA66Nuhktzd
	 S4yMr/k6uaPTaZxS5aUObLHkgRqk/+uFeKExZQkco9ZibsA5u2uICTcVCEIcCdxZoE
	 V6kFEkMvE4+Glhmnm4Xnhbdbjtd91VaZ3Bp3/klm0zO74lrqU49v8jwVlULW74nebm
	 RGlVEULiFZnx0r1DgxRUA5BhhiwRxZ52Nyg2hbjCmRA1SrKe66CyikVy9R4JrsV84e
	 FFUYcmRLwK7gA==
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e8be1c6ff8so4335518a12.1
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 06:11:51 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXV1T6QT9/MZaNtCn0TYun0fPEh4+3k1lcQc4U4bbFKMV5ENKdrXlm2EEMS5QtiFirNO7cNi2cxw5/W@vger.kernel.org
X-Gm-Message-State: AOJu0YyrOuTHqOt/cIXbmZYB7THd1wngFp1nw3079I5CD/MQuxQWNrLd
	xFew6AoGwMlSLjUmBFBwSe6yT69As9i1aQS2jtsozTCEhEHlpy7SlmphPKRt0bR8ursjdhgd3Tv
	iVJxl56tV9rsfs55KMwj7ldpw2Q==
X-Google-Smtp-Source: AGHT+IEHFasr+ToMgg/jHBFqWvqf+Lsk3ytfjA8T3AA/oOFgJq5HcuF2WkPGDJGa2gHZYuWjzf/PmZFswK1K/q65Pmg=
X-Received: by 2002:a05:6402:3550:b0:5dc:cfc5:9305 with SMTP id
 4fb4d7f45d1cf-5e8a04269acmr11727329a12.25.1742217109842; Mon, 17 Mar 2025
 06:11:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250317-atmel-dataflash-v1-1-b5f13083f67c@microchip.com>
 <df80f224-5363-4639-a675-3a5918ee8be0@microchip.com> <843a18ab-ef30-4725-b760-3f97f0237073@microchip.com>
In-Reply-To: <843a18ab-ef30-4725-b760-3f97f0237073@microchip.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 17 Mar 2025 08:11:37 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJXhCCiHmm3Ww=R=nKZA69d5-10gB3q4MeXhHBvKJG4-A@mail.gmail.com>
X-Gm-Features: AQ5f1JrKZfL4p0A--RHbEBYgiMkln8nNKGYCAgKt6G0yasfNr1WWy3wxHLCEaDw
Message-ID: <CAL_JsqJXhCCiHmm3Ww=R=nKZA69d5-10gB3q4MeXhHBvKJG4-A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: atmel,dataflash: convert txt to yaml
To: Nayabbasha.Sayed@microchip.com
Cc: Conor.Dooley@microchip.com, miquel.raynal@bootlin.com, richard@nod.at, 
	vigneshr@ti.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com, 
	claudiu.beznea@tuxon.dev, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 17, 2025 at 7:46=E2=80=AFAM <Nayabbasha.Sayed@microchip.com> wr=
ote:
>
> Adding dt mailing list in Cc.

You have to resend the patch to the list. Otherwise it will not be in
Patchwork nor will any tests run. Use get_maintainers.pl.

Rob

