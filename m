Return-Path: <devicetree+bounces-256874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 06217D3A94E
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 13:47:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 04AF0310298B
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 12:43:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7254F35E53A;
	Mon, 19 Jan 2026 12:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OkPCdfZ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f51.google.com (mail-dl1-f51.google.com [74.125.82.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B3335CBDB
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 12:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768826615; cv=none; b=C374rmBbvP7YEL+wHqXOM5OAJx5zdFDg+LJPmmbdjVb55mBAH0tbyhYYCr3ijyLRCgKsgUm8LFaaWD4/PZb2R+1TvEKFA3sQLU8ixBXgZCO8Z5JFDOhC5rlaWrPqDAiiSqCqm7djSlc44GjcXw9p5CupFtU8vmqjLkp6xLMhIGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768826615; c=relaxed/simple;
	bh=Djc2DXwbCV0lJ4fSssFOWRnwLtrLyDYVkvyL/nbyTuA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dlMAVjirizyilyxj/uLORQ02wKuZGIi5i1wEv237FcKY8DPdTRH1KEqkLxF76BrjrCdWQWaeRctDZFGDDDQ0rfbOateIThzfDv6q64JUYcVcJ0K9nnuGvSIh+mQgYxBCjHREqKdzcK9H0yXgUCw9lArgmqvZR9HITdgu1fClu1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OkPCdfZ0; arc=none smtp.client-ip=74.125.82.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f51.google.com with SMTP id a92af1059eb24-12332910300so5540790c88.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 04:43:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768826613; x=1769431413; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OHtPJU0DUMKO1F2sqGZCMsKmvXgpAwApi+pqfSny0WY=;
        b=OkPCdfZ0D/UVw6dACxSDKPRtYT97wXbwDJ5P0aeeEzY+lJAH1Pt9yfA4Kk/peTGjIY
         n82YTMPupFhDiIcFcsqaxOQR94UShybeZu75tZw9AtRSOMLM23TdF4KjGr7rQqWkRIng
         mbbcUQZMYpgDndHHvAQdfvNsEoFxGrFGTUZxy3uQH59Qmcuz8bkSV1k53dL8f7Sja54r
         k3E0qAk7vRJ3f8j6ZRB78hRFfwdOEk9sZ3eLFcU11HYXalnnLZLCbdfHDLS6DWZ5a27F
         grOKzsE+HN6MDdZNRrIpPHcov/WyrxtO1yeQmRcioLRAcVkXF22Sv7LGcBjr5SvFZweM
         J8rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768826613; x=1769431413;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OHtPJU0DUMKO1F2sqGZCMsKmvXgpAwApi+pqfSny0WY=;
        b=rIi1+Y2jSJIcJgyq3WkmRymg1owIzWTC5hH2ngtKl3o+QoaizwcDsFHYpxrSKgK+ed
         F9NZdQRusJrNjBFU8IkFiOKJz7GGAIEpby2ryPd1EiaFjKRxJ5Tch6aOMf22NMMo5q82
         N7lydHTflPUBgfltlfnZayGM1UR+QMpnwnBIYu7VUldpekfs+Io9ixNIUgTvtg0BuUDx
         zfrS3JzxhiO2GCpe7yTzZdFjlQDYSQICoDIS1wV65V9ZrG7EORKgmb/kfIFV64lObf1P
         MCZWHjAeUBI03YOGTFF599TjSbMHc76A2COSO66EQ1PKg6DHnD1wO2JECGEXqa3/EeZi
         +VFQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5DVD+1Oc5dbskyaovbN/SLI4auTDm3gH5qE8LDj+aFfjjRz/Dc0+1LuG7SE4+EuPagU8/T6JNAiVf@vger.kernel.org
X-Gm-Message-State: AOJu0YzFoHfeLFdyXBW6YuXR6zO+oHqmbNPTfeV4t+LT1BRHo/fCvh3s
	qG6NczJoqJpnjChy/7UYVCWPk9aKy59QSTa5dmSa/1cXQUosiLnL4BDQCatnXye1ePsT0R9id6J
	8O8Hpd/SE97hEolzcxT6xhpW1X5P71Wo=
X-Gm-Gg: AY/fxX6ryRiOdkIFSJTqYBOCKki61s8/qlqewGe9QAbqw3zFWiocZ9e3fSD6R7kvY/B
	XK9AaY1DIL1Kg5OQsy+3xczxlDyMAVVmaYEl1uGQe/uQ4Q5ODKYkXWCNMm4ive32Zefm8/TqPnu
	xHZ6TQ7RSzigFs6kg0SwYMr4eKl4SxfnkJsH9V358pqOWSE4L4ntSLZRiatPiLJweCPHjU4r3R9
	uZZqyactBj2d8TNuBEHtbPHSnUhGwXI5C+BD9oQ5RLiWhowMrCZ+m/VcTz8pgZNrTWv9/INRsS1
	ARm3YJ4OH43Kom/1LH78QqUHdFe0D1TMdw1Wcwd4vwyw2B/VGmWzmQ56/GjEItErJfCBMrpQHmj
	UWMqze1BpsA==
X-Received: by 2002:a05:7022:222:b0:11b:ade6:45bd with SMTP id
 a92af1059eb24-1244a6fa90amr8867693c88.8.1768826613054; Mon, 19 Jan 2026
 04:43:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260119103411.50397-1-francesco@dolcini.it>
In-Reply-To: <20260119103411.50397-1-francesco@dolcini.it>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 19 Jan 2026 14:46:13 +0200
X-Gm-Features: AZwV_QjtNyiBHeLdUkjbl18_ROfadpDkB4z74sf-P-WeirXN-mnvQRL6Snmf3Zw
Message-ID: <CAEnQRZA9yHGs4xodNZrYP2oto2QhOJXtiX4BFkgNM7RydkJ4YQ@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: imx8-apalis: Fix LEDs name collision
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Francesco Dolcini <francesco.dolcini@toradex.com>, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 19, 2026 at 12:35=E2=80=AFPM Francesco Dolcini <francesco@dolci=
ni.it> wrote:
>
> From: Francesco Dolcini <francesco.dolcini@toradex.com>
>
> Ixora boards have multiple instances of status leds, to avoid a name
> collision add the function-enumerator property.
>
> This fixes the following Linux kernel warnings:
>
>   leds-gpio leds: Led green:status renamed to green:status_1 due to name =
collision
>   leds-gpio leds: Led red:status renamed to red:status_1 due to name coll=
ision
>
> Fixes: c083131c9021 ("arm64: dts: freescale: add apalis imx8 aka quadmax =
carrier board support")
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

