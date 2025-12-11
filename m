Return-Path: <devicetree+bounces-245844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAFECB5E0F
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 13:34:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 93183304EB4F
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 12:31:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF3E330FC01;
	Thu, 11 Dec 2025 12:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HGnESZl8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C160530F819
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 12:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765456305; cv=none; b=Sgy/g3nCfqnCht/a2FgcwQHL4xf0n7vWdmA81Ja095dCLKfdVqVF4awBOySl7OSgo8m8woaD8XOoycGxetI4CnWYgnX27HbInT0+H6l9yMViNtLLxcpFXB0qktBTsuQVKchYi+/Z9ixdS5JhJ9Dj6nIn0PaqQf5XTd3e+/2TakA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765456305; c=relaxed/simple;
	bh=GzOUkXuuoBWn+/0sImYm2b1vQ4lGKBCGEV5jyRpMqTg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IzuCP1m9YQWq8ztkPL4X+vCVyUwT3oZLmQp1m0NNhqRFBhyJCgkA3qqq1ovnmuEwdCenDrqaJ3UGGDt/8iIq6FV5zTY/xqEE7k2K/Xpw9++p7+u1y8Ce7G8uS8aE+mDu49wdC/AJpJdCCLTd69/+1YIWoB40INyCcQpzKCFSLH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HGnESZl8; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-59584301f0cso44522e87.0
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 04:31:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765456298; x=1766061098; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GzOUkXuuoBWn+/0sImYm2b1vQ4lGKBCGEV5jyRpMqTg=;
        b=HGnESZl86AqLwQwOsoRch/WBqWQv80ICafR+22ttD3N9FGnXcCEeG62Ccty4L9tTtd
         SZ8HuCBcjCkxACnuqXPSvaBe2EraIlk3jPswGJoyQQePgeoQ/FpQX4i25PMb8pTsIj8n
         JnGKRAkovlXqvbf0guXHhv8ZFt2HW95QjCkaDngETtFXlV5oOVck1BP1n5uME+5JYGMR
         q4goHb4heuP0/2Sd74XLTkoGb/lkYGG6Te2C/YYb6hVTHgj7fBkwiq89RgW3el5DJisJ
         j8zDk2KsZjyakc9VQeB3AJ2gvKRRL4o+B3Qd0XBQ2E9Q5oVD5B99L2/kcamNTW+Ghnm1
         I85Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765456298; x=1766061098;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GzOUkXuuoBWn+/0sImYm2b1vQ4lGKBCGEV5jyRpMqTg=;
        b=WbixPLCnv8rJKq55oafQZHC8Nb8pckX58k9b4eFqimmxKVLHKxOW1dQsdGtcq358wp
         6Me1D887NMFtDVEH6axxap0gRcQCeQHIH0H+9AfIEgEurHDM3je1pn+GEGWwsqZdXVBB
         a01wd7+Vg7lupbavu7fmX2tRlFs6tzM8+jEyjM6mIwwVynl8MEXodk0dpWV9HigTmrJX
         sK5cpRT5nMDGelwtJLVmqGpeHdoXz3Bi9KVq+cW3aNDV0BYTNf8A5/pu7ZnI8C4KLfJX
         K6Em+6OPfbrOw6QpKc7IsPfqzg2mHtloaiWC45Y1BPJYq6tpuJPf/oZjECOcjLzeGNOe
         4WMQ==
X-Gm-Message-State: AOJu0Yz0Uzcow84kSetaKK3hE8Xm2xL+qy0ivEbaqb15TqWL4mwSJkVp
	paBy9gV1J48xGuFM5/QlWMlGOEZHOTXiHngXEP+o33G/5R4fV10dmFOJdIzSamp0o+6v1B/fCzl
	ww9q5InBHY1Su4lbr/io8vw/215fP/P0=
X-Gm-Gg: AY/fxX7wZqbZr0nXKSGAy8EkZjCxzAq14sb4a9NNA9o9/Uen+T0b14MYHRfuQ6EMmi9
	8Xd7iywrPAm9w4uJOoWJJIyBWDD/Dp29yWWOuhh0DFxQB8A+cYylCP+KDW6Je95EXyeskrWwl6G
	QqmXWfpdwri07/vXvQdNgM9LT/0xDorMiMBLwC36ILnG1GoZla+Hm2rFFhD7aR2eOG3VAy8D2Mi
	8e2OcyHeI8qSEp8dOMjC62a6iUJIhrxmgQ1Q138faZ78YHy5fshRczV7T/DPyd9SOlRKhmDn0H/
	T1LWccrg1kpt782Q/CCNHeToG38=
X-Google-Smtp-Source: AGHT+IFx8jB4DP/C6ch3hkvwp/hBlfDTrjHCBEs1ezVD9RnwEVMofSDStV8tSr28ue048X+oTa16zOvCrjQLAgrohPA=
X-Received: by 2002:a05:6512:3e02:b0:595:7fa2:acd with SMTP id
 2adb3069b0e04-598ee4f3f6cmr2412583e87.21.1765456297571; Thu, 11 Dec 2025
 04:31:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251210152000.42265-1-stefano.r@variscite.com>
 <20251210152000.42265-4-stefano.r@variscite.com> <CAOMZO5B2__4qgJRni=DPxd1QoPQLwO+r9ZbdbsOWXZemVU86aw@mail.gmail.com>
 <DB4PR08MB103414303516B7FAFF29DB571E9A1A@DB4PR08MB10341.eurprd08.prod.outlook.com>
In-Reply-To: <DB4PR08MB103414303516B7FAFF29DB571E9A1A@DB4PR08MB10341.eurprd08.prod.outlook.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 11 Dec 2025 09:31:25 -0300
X-Gm-Features: AQt7F2ogc3apjlXRADhBz8DDOhM7cjdSocB2OVTGdMTU2QG1NnJjeFWnNeR_tbs
Message-ID: <CAOMZO5Aq8iO2w7MsQz+BCNBsCUEewApoU=keGjSpFMZzSwhgyA@mail.gmail.com>
Subject: Re: [PATCH v1 3/6] arm64: dts: imx8mp-var-som: Remove UART2 console
To: Stefano Radaelli <stefano.r@variscite.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, "imx@lists.linux.dev" <imx@lists.linux.dev>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 11, 2025 at 5:08=E2=80=AFAM Stefano Radaelli
<stefano.r@variscite.com> wrote:

> you are absolutely right, the Symphony DTS needs to provide UART2 (and th=
e
> other interfaces moved out of the SOM) so that users relying on
> imx8mp-var-som-symphony.dts do not lose functionality.
> For this series, my intention was strictly to clean up the SOM and ensure
> it only describes what is physically present on the module.
> As soon as our new V2 symphony carrier is ready, I will submit the corres=
ponding
> patches for the Symphony DTS as well.

This means the series cannot be applied as-is; otherwise, it will
cause regressions.

The move of UART from SoM dtsi to Symphony dts should be part of the same p=
atch.

