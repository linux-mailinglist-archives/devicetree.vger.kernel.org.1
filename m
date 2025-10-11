Return-Path: <devicetree+bounces-225583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5CCBCF389
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 12:27:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E131219A0C48
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 10:28:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDE5E258EC8;
	Sat, 11 Oct 2025 10:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I5Tjplfe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502631DE3DB
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 10:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760178467; cv=none; b=ioSDVw4GEamEtb4n9ihq/aZfzPx1Jz6tbu1scVnHi9GkEoEZLR9OGajsVo9Prkl6kXmcSF7Hpslac7bhMaJj458vFWXLknFfUtLTmvFBvEl6jqGY8IBEoLBq0SkrwKhGBw9Evsz43XpQKFdioWBy8Uv8vQzhK7acVTXp1CZHuso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760178467; c=relaxed/simple;
	bh=LO/zKHiwH9pV77xNhnL2eijeftuXrDQ6YZ4Vabk0NRo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SSSS7x0LyCHEAZkramjM8hwDCQd/FCY+syzZeTQ2iOkT2HneDQUPI0jvatIanIhy++XyAKz3mZ5aPbLzV3TwW9PEhbxFWpAGXTKrIDLaok/9w1VrZVyqsW4nUMkGZIr2+Kf+211kEBZfANoxt0TvlgE9Ypk9xjoYVzNzGDKjsLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I5Tjplfe; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-62f24b7be4fso5231494a12.0
        for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 03:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760178461; x=1760783261; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iZCFVzYHZ2h0JIUQU0arhlSFw5b6cu6XyQY71uLY2mU=;
        b=I5TjplfecKrlBKN/bMuFxM4QY9bhtP/zPcpw4iv3pOqnUGXdlo/VXeZReKEV1MB4wq
         mkUGoQkHzlMgMGRsHzSG+j4LKP/+w1HbE2N7HU92ZuLvMavtHYjh5Smol89fbghOexTT
         mEdeXjPeVP6fn0GabzW6CQQAVytgBl8Q3RBm1bwx1Zo66qPXLOyix7QDHezVfIAk8pFl
         HNiUJjlv9cwiNlaFWiURCTcaldRPosImk4elhe4mEezOR7bcqpOBzIfNya4omWYEfrYG
         vbYbWTAqEMmLKYRPXk0Vg82y4iT/DW1DPsoyV6v8ELuL3Acz0dZXe61ru9Lv3igp07FG
         6hWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760178461; x=1760783261;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iZCFVzYHZ2h0JIUQU0arhlSFw5b6cu6XyQY71uLY2mU=;
        b=YytBdjPt+wxO8YWSS88mnGNLSRsqx8417UmiXU+BZy7mFfkql5s6bT9OWSfh9ifLht
         bFg+3dXVDfIXk30gfYbG141EaalVAsl8JCD/+v4TMPmDoyB/1tWhNCnrEjH8KHMVBUUg
         RW0epWdNsDe88ehU2hnm9ajG8ZAiCgqcG6QD8zTaHGVdlWSGS3C5/79RcUC0Ek0DJqec
         gTJ2viIWZMsom9bt5C5Om5qzmrv4iFViXyb8ch2NWkTb+rWFLxgqfIBeQ9LntuX0VSAN
         gihZVYPBUlfRpvulT0mpJfV70E0L4GHaZIM5SyFfJ9oOlop5EfyNmb1kVdcD46f6sTRW
         OdLQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcF/6JloXF8F1EFgUPqKDTTuZivK14YPbPIB0+cC0X6iBPxWzqVpcB307Txv/RsYAo4zSIf5JVhUmm@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+NH+6KNUnhW/P2tMEQ4l9W7EIbkvbNiEzrBjcOXulmKdTGz+g
	ygFDNeTjxD/M5YlxViLvMciONW/Ekf5+6Ybrv0KVyvOikrbctDhQqRnx
X-Gm-Gg: ASbGncviB4fLhX+Mjrq1QFzx+XZkvHzGIh8wXWQXWyYkewujZS67wFBRR7pIcHNDnvj
	4m3Eokjfm7gtswuUgBQEGRuhQ7YRdqIRTPEVrcuYMHl7Lf7ifrDAXy2qdRd7dEGMGRakSgq0Jqe
	Qo1+HuWr9wMiH7wQ1oSi4lWw4troyvgnP4e3/k/Y516TGVGm7cvza8tJYaXcDTQTtZhdUxgKvfv
	3pIFQiEkcxYt6l04/1Xft2E8UGYQPYX2zf6WPau72FENzb7tHefSe5cpYAIdWXBXWeH+cRNB7c/
	LxDSDpkeuUXwLT+bK+55tRl2B15yU0FKy4zeft+gB+KXdURnhW4re1y5eebpmxsFX0cuHN0DsC4
	XDVbIzcB4Y4+ymC+UQkjbSQrP6KkBcoLst5A95b7gq4JOkhRvz2q8hDGF9DA5zm+8CBhUnBjrzg
	==
X-Google-Smtp-Source: AGHT+IGDpGQ1keH41V5u7okn0umUzJaDZ4pIXQPpFP/RgbssUfZTewtEXcOU16HUhZmJhf/y3/QSQg==
X-Received: by 2002:a05:6402:40c8:b0:62b:63f8:cdbb with SMTP id 4fb4d7f45d1cf-639d5c4c1e1mr12894658a12.25.1760178460551;
        Sat, 11 Oct 2025 03:27:40 -0700 (PDT)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63a5c132567sm4471906a12.33.2025.10.11.03.27.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 03:27:40 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Richard GENOUD <richard.genoud@bootlin.com>
Cc: Wentao Liang <vulab@iscas.ac.cn>,
 Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/15] dt-bindings: mtd: sunxi: Add new compatible
Date: Sat, 11 Oct 2025 12:27:38 +0200
Message-ID: <12756400.O9o76ZdvQC@jernej-laptop>
In-Reply-To: <195f3b01-93d9-41da-aa9e-826e82889d83@bootlin.com>
References:
 <20251010084042.341224-1-richard.genoud@bootlin.com>
 <02864e41-cbf7-42e1-87ba-95bdac6d9e6d@kernel.org>
 <195f3b01-93d9-41da-aa9e-826e82889d83@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi,

Dne petek, 10. oktober 2025 ob 12:18:56 Srednjeevropski poletni =C4=8Das je=
 Richard GENOUD napisal(a):
> Le 10/10/2025 =C3=A0 10:49, Krzysztof Kozlowski a =C3=A9crit :
> > On 10/10/2025 10:40, Richard Genoud wrote:
> >> +
> >>   properties:
> >>     compatible:
> >>       enum:
> >>         - allwinner,sun4i-a10-nand
> >>         - allwinner,sun8i-a23-nand-controller
> >> +      - allwinner,sun50i-h616-nand-controller
> >=20
> >=20
> > Also:
> > 1. missing new line - why did you remove it?
> > 2. Keep existing sunxi preferred order of entries. In other platforms it
> > is alphanumerical, not natural. In case sunxi uses something else, just
> > be sure you use sunxi order.

Sunxi order is from oldest generation to newest and then alphabetically
by soc name.

This is already correctly ordered.

Best regards,
Jernej

> ok, make sens
>=20
> Thanks!
>=20
> >=20
> > Best regards,
> > Krzysztof
>=20
>=20
>=20





