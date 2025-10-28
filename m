Return-Path: <devicetree+bounces-232225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 08636C159CD
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:54:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E56ED1B255BD
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:49:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 426D5345722;
	Tue, 28 Oct 2025 15:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gKwlX6pa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B3E3446C8
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761666371; cv=none; b=sVTlfbwL+89dKnxVpqEQCCQY6WYYk2D7JvW3ZYqxDcZqbV+Dw//8izO/yKfKS9YFNHT/irW0SboJLRp52ZWX1Cu1fj6hEQJnhMuiEbYD86YqcH6OkwX7WiWCKlYe8XXaeThuUsJ2XsGQTc0rcqvSRy+mkchs4kRxbih0mLeeZ44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761666371; c=relaxed/simple;
	bh=C67F/J05mAe+rfgJ6AOhDZKKwYuaYMQaqkEjs240jaM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=u9cwWwXzm7wBKgRYq0v7bGFSNYmosmQ9PGkkUGy2F/MrrME6iwluNmVX4zLrB6F3SYmBIkE1oCbek/LQWx/rrKuY4P7VvA7ysOWPOjaTMTW7JJ6or0BPwi9v+rsSzf1jAAwL5hkL8AnJHONkDvvG1bKWt5OrwrgKcUYkN79sYkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gKwlX6pa; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-421851bca51so5700472f8f.1
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761666368; x=1762271168; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C67F/J05mAe+rfgJ6AOhDZKKwYuaYMQaqkEjs240jaM=;
        b=gKwlX6paIrejUwquKVqJULuaxmm4ssPvQ0sJflrgUgpYmNt7mPxWDEvgWVPmY/0fOt
         mFVL5DkwAG6ItRrSbYTYv7+ml7Q+IRUtnxdq7noC/RPOujogJo42GsVvjjNknA+AAJfP
         pRMkcKF0t43lK3aqbG7qtyU0JX0ztakla2e6RGUncWhRG4gITskbx+WtTOIjCoevtQHA
         wBLvkq3VqmGagJu6hptTzS5CypcWl98SR1O65STBTYnjNI2tzg4J8Qwxny+EA/f2bnci
         C9mwiCUcPFYrItuN8LKMRM1fw+6BlEC7uRRuqIs28MXoOW3vryK1Yn7jwQ89VZ6+rdLy
         YRDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761666368; x=1762271168;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C67F/J05mAe+rfgJ6AOhDZKKwYuaYMQaqkEjs240jaM=;
        b=YLzYihXoHCPsREIcrd0fnEBjMq0OOXsuPYA1VuKss7fi3GW8Nrtxnk6b+GEMJXohHC
         sw7/TCWguAFm5KU3bCjqW33zRGXU6mJsGkv00teCU74EvFzZJr8lcIYXK0xcCQ46vEed
         cLMu6crcmpGtLlm11M2In5zhd1ncqtVSIrf45lcnYZqBhIqdNUdu682dXdy5jLMokIJ2
         WNlAczAymNw8y5NCn9aUmarZLm/qxI9fiaVtGHYK5Z1sniW/QMuYYTBIg91HOv7t4y5E
         jirGeTHB9ya7WThJIocHK6rKuHjdDxbeS+t00xka5e+PGj2/YimucTlSnMS78533yUea
         y36g==
X-Forwarded-Encrypted: i=1; AJvYcCUjj3ozksVdgJBZkbjCYTTtP5ofuS4fJmvTQiBM9R5BMU2Q2AZQ7dT0kMsKKSjsGPtmklm6yiIdviPr@vger.kernel.org
X-Gm-Message-State: AOJu0YymbmSzYw0zg3rRAbtJBACC4j+qMjNEArL1+JljNBrFpfDCCoIe
	vdvIlbDCBbk9870B5oca43cCYHFSoA+/vKp1117XHpt32sfbe5Cj6CwV
X-Gm-Gg: ASbGncu52GJTxanRFUI7S6a4Z3VG0IIybkkunYv24dlHSx9ymQneXFWwX59bHgkTAUC
	Y65bKX6sjxd8xw1cnfmX9o9KGdVu2Nu4Xob9OyCy70bb+iEzEwL4GpbojzvS6YW3wkM+Ps2H+Vv
	RM5rXDygp6fNbivVJy6I+bc9blF03Dwz8ohr5bJXSdrtif6r6cwruitgSAHt9zco+kTI55h7p5m
	1e9SYPP60hAQP7Q0NNR3HTMMyijEt1lN7YHfghsqs+EY3HkfxbqI5i8Hc+BUhPeQMYMWG/f7ihc
	dCa/FFwJ9hKSV3M+8Ta+ANXt3zkqHD38I2quu869u05qloXbaZdU3HrYDEDJ976hzJH03A7jg5f
	Kc+hdO3Km97sq2THS3zz8FBp0Lreg316CWMdhAh1BlvW/KyoyE0LbBunk7zliNM/gieMbZj9RAF
	TpG6MTIY5OVSxU8tPux67MKczskAx7D36wjx/+x13grZlefnJ9v/G6wiS/yp6laWikUH/S
X-Google-Smtp-Source: AGHT+IHosnjBq+7lnXCkpH/VCvR/dfjIj3WsAxDBH3sVvdzDiErsKruO/jAMqh6ugeSBky6z5EKP1g==
X-Received: by 2002:a05:6000:144e:b0:429:7693:884f with SMTP id ffacd0b85a97d-429a7e35c26mr4283497f8f.5.1761666367549;
        Tue, 28 Oct 2025 08:46:07 -0700 (PDT)
Received: from jernej-laptop.localnet (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952cbb20sm20964431f8f.18.2025.10.28.08.46.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 08:46:07 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>,
 Richard Genoud <richard.genoud@bootlin.com>
Cc: Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@baylibre.com>,
 Wentao Liang <vulab@iscas.ac.cn>, Johan Hovold <johan@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Richard Genoud <richard.genoud@bootlin.com>
Subject:
 Re: [PATCH v4 14/16] mtd: rawnand: sunxi: introduce sram_size in
 sunxi_nfc_caps
Date: Tue, 28 Oct 2025 16:46:05 +0100
Message-ID: <4461451.ejJDZkT8p0@jernej-laptop>
In-Reply-To: <20251028073534.526992-15-richard.genoud@bootlin.com>
References:
 <20251028073534.526992-1-richard.genoud@bootlin.com>
 <20251028073534.526992-15-richard.genoud@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne torek, 28. oktober 2025 ob 08:35:07 Srednjeevropski standardni =C4=8Das=
 je Richard Genoud napisal(a):
> The H6/H616 the SRAM is bigger than the A10/A23 one, so move its size
> into sunxi_nfc_caps.
>=20
> No functional change
>=20
> Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



