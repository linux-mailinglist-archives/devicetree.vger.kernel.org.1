Return-Path: <devicetree+bounces-256045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F401D30885
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 12:40:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A24BA30173BB
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17020481B1;
	Fri, 16 Jan 2026 11:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kOZlBDs2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f47.google.com (mail-dl1-f47.google.com [74.125.82.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD17378D96
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 11:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768563454; cv=none; b=Q35iyR4api62rGXEXADqa4aa1mHYiv9MIQVJO/4ByZpnpN0bRgjVx0pIIbSR0BrvTMSl9PQdxP5vcmoWqzcrvKQSvmow/qGNM+qQjygsPPy8zzT26jW31v8v54Lz8u/tAiWkSsgeGq5N3t1CmGn8YwdW9ElaXWgZ7C4b8cmrsUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768563454; c=relaxed/simple;
	bh=3EDZ6Hz1nATX+2jEFsTu5XSVR9O8yVNT5ZlhpnpofOQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pHO/3u3MBaachUpZHYVL5BAlWUhNiSa0lWh7XtCzXOp1q3jX9+sVZ7Sg0ntCP+0BboCQ+5Fn9mmRT/geEMXMB6/AxVVvHBI25NfUm0CaGsbTxDhf0OdSDoWz824ipHzI3H6TBEnZQ7QatxztDJyZlnBM00HJ9vQj5zAomlKesnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kOZlBDs2; arc=none smtp.client-ip=74.125.82.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f47.google.com with SMTP id a92af1059eb24-11f36012fb2so2864657c88.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 03:37:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768563450; x=1769168250; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tunLRA8cGG7n1tWyYGBPKMFj1K25wk5tyo1xF/Iy8M0=;
        b=kOZlBDs2f6qs4l/S/FC9yyb8QNf30PRlcXbtuNO4hf2ozzzYuVzH7LIOjOU13HXXcl
         5rohp9PgJd+u32AlLcVVHQr0/1qjcS6dozBO/zgjJR8BqYRgvpB2FnOzIXyThZBRh4Mq
         mtwiH1BWIEIljQneUROUuDKYpIETrclMB9tD1TXnKiVFVJIp4nsnFGgrvjfUlUxqFJ3/
         0ePPBkI4s2APjA7kl7pSHhBKSHClhpgvVGl9FeR/h1Bua5mMcVbJjzRx8NfDlOj/4O5p
         N9sjpIMYf/vykRo0UtnSGrjjrBYC2oDJyNXKr0sxCQToG5INGhn9g+gG/xcgkgl7bb4Q
         z/YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768563450; x=1769168250;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tunLRA8cGG7n1tWyYGBPKMFj1K25wk5tyo1xF/Iy8M0=;
        b=pLUaDCzoRRt22TmT5BEUUk1v73uOPuRRN5tt3uwKhRRy3TZnGnIBa8dTIrXC6ND5s3
         5bVZOFK0Ry/Hcb29W5gxjdo5R4jbX8U74BGVR2vx+X5VP3U5rpASe7WSUs9sUerqM3wv
         N0gOJGZJafDEe2tORawiLQzuEnz6ve2JYZvtBioqUUTwDHfVwoSO6HUrSHg/2BnIx4lL
         dnFdWTfRgeRBz5mG9UZgBvKQbqTT1gxFlgSm/g1U8JWr7CMMXj9gDF29OzfbvyLkmeiU
         MCQ8XNxzvERi88vrkIJRkFVfDYT5KxrF3VYos3rQHtRZ25E3hkW4ZZUPIZ4CeJtcet2j
         YF0g==
X-Forwarded-Encrypted: i=1; AJvYcCW484C1R9esEUptytoU5jqBsylU1Sm9KSOFE6PG1cpP8ZddUYDBsS6atzj1O9EPP010ZaUO/bB3nIz9@vger.kernel.org
X-Gm-Message-State: AOJu0YxQZoV/IjKqggmxvJFvlHAXKbzbmaK0+I0kKr5wFevLBjbq5sFW
	3F1+Unek95QIvbtmgz62P7EolTbVClG3zUHVQchPIlhl81a7354m2fdtMn0cadeSyZjVTD3Q76e
	kIHiLRRqFfDm4uXd8n57NiLg6F3JRHQo=
X-Gm-Gg: AY/fxX6Kbwg+KhNjjxqVM245kkgPLzeeWyw4Vw2f05/KG2IPAlIw6xP68YcnS6ApGi2
	ZafFj4fhr3du8DK15x6Ukyi8HVR/4J0gKD1kSAVFAQQmaXmECSVQvLIbaMsbFQZd8AExaeh/eX2
	Wl8ZPymkzv9rs+uVu2nZ6ero9gjS73C5vBJnweVo4PkJSu6cqNKXt92Nfy9hsURyVrDsbwNOeHk
	+SGkXcP53AZkRo+klcj8p57Yti5aKSIQKiogNMQONyUAFeZlPxsWEtPkVbhFmf86j6Lo/hvn9GI
	fxdW9tScCu/mAaMOKVNBRnoe42JSkwywJ8klyr2Qf9DygpfD4GgCYQm5LQ/LZKkxTBf0JUOQniS
	CAfDXBerecQ==
X-Received: by 2002:a05:7022:1289:b0:11a:51a8:eca with SMTP id
 a92af1059eb24-1244b32e446mr1719538c88.18.1768563449581; Fri, 16 Jan 2026
 03:37:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115-imx91_fix-v1-1-9351c3fac76a@valla.it>
In-Reply-To: <20260115-imx91_fix-v1-1-9351c3fac76a@valla.it>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 16 Jan 2026 13:40:11 +0200
X-Gm-Features: AZwV_QgCFWkT1XPJWiN6BK-of6XJ3t5eGCfI_kP4aEIqHxCE_WCNGhfFIuQiRno
Message-ID: <CAEnQRZD2CvQLO2hBDbX2H8PeeNkzQmLoK6jzeF6HKw8HHa8ukg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx91-11x11-frdm: fix CAN transceiver gpio
To: Francesco Valla <francesco@valla.it>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 15, 2026 at 8:25=E2=80=AFPM Francesco Valla <francesco@valla.it=
> wrote:
>
> According to the HW schematic, the CAN transceiver does not have an
> enable pin but a silent one. Fix the GPIO property name and polarity.
>
> Fixes: b4bf5e55899e ("arm64: dts: freescale: Add FRDM-IMX91 basic support=
")

Just for clarification GPIO 23 is connected to a pin named CAN_STBY.
So I wonder if it isn't
better to use standby-gpios instead of silent-gpios?

I am looking at FRDM-IMX91 schematic file SPF-94610_A1.pdf.

But on the other hand we have

static const struct can_transceiver_data tja1051_drvdata =3D {
=C2=BB       .flags =3D CAN_TRANSCEIVER_SILENT_PRESENT | CAN_TRANSCEIVER_EN=
_PRESENT,
};

So TJA1051 is not advertised as having a stdby flag.

