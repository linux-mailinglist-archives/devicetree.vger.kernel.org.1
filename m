Return-Path: <devicetree+bounces-228989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 76775BF2D78
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 20:00:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BFAC18C14EF
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 18:00:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B04ED2C0F7A;
	Mon, 20 Oct 2025 18:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YRlIXWdp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BD5332ED0
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 18:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760983214; cv=none; b=httSepluzfHtYL6tSsOtbA77F3Ki7/6FyTtQF6431YyFslGpNAPcv48jlDxGqgqqCCCJxJjKFZ1zG6SBEFF8+kWIvnH3y0BlFdURx4RKTVGzKHTZAngHhoEOxvQIss5Hw96Rk2ZMJvHnF8/XO83+xQ/OQcqHGTASVNeUo6IsMhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760983214; c=relaxed/simple;
	bh=l0zP/IswWls5tUEjRW4gHHMAJEe54gk5KhQpTRSbZKo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=i3zT6KujqLC+xGCJnB8lhYIeReHgLkN/+VtSd3p2xB1GWeae4y5t0nkwerit1jSQkVUB21fUxJ41G2PwoW584GkIbNtUdPKjYAyEXMDgJcmPB9HsESOj1f0aW2yEkg5xFr2/yNKeW0ywUEqJVivtOe1vZUVbsGRQWUC7jF52AFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YRlIXWdp; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4710022571cso39574585e9.3
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760983211; x=1761588011; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l0zP/IswWls5tUEjRW4gHHMAJEe54gk5KhQpTRSbZKo=;
        b=YRlIXWdpXZZky1S+VQYFWxgAgiquk2WWTh/sda9oeCfMLuXyqlS+0yqkVULqXq1cPV
         HXdf5ySp//CweUuNbjJpvU/jD5Tick/tuagMhLeLRIEh7Gy+x3EKRK6fnHmc2VcHxlbk
         /axAyceLgkAZRBrVLX0FSSH73ctUd6tNZvBEP6UiA9ULz6ipykI5qNINmnLS2slp243G
         BwvmlA8qv1C8Ow5JumRFcs8RuMr9exUZZnVrWZdd6IEBtiOXvAqUJ/iO+DAXFQ0g05Od
         NCwHy9Y1aR8STwfPfi/u9PNn91Wujmm2u2mWfCsdXRhf/fJuZIZamXkYtsE1TDTS2Kw/
         8v6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760983211; x=1761588011;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l0zP/IswWls5tUEjRW4gHHMAJEe54gk5KhQpTRSbZKo=;
        b=UJ14J6+JwIJ9YZmLd1TfzLQeIhHQaKSM54PPVhr4TA4EYttb31hR6njU+i3rdzLSzQ
         5hZAIqvSwZF/RHnUJXBY+0iQfGd63SafahSiIrweIvnpKY1kwb7ALxQUzcWfdOXfedGn
         SZAxMhpq0tj5cqoRZAgujcHzLTXyycPQ/VW5rPl6O2etgLRUDw6BRGXs/R6qYl2KasnT
         UNNK9dtwmr2/4IS1gf297ayHaSm3NXHZ4LuarcZFccPebrq2e04oKrROj9orYMdKW8aZ
         OBi0PpSy0EjPkY19yn51k5zfMZyjXDFIFiemMnu/vcIkPjQ53Qrs98LOzzSGBDi/Jj8C
         MHRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXXc/e3Tu65jtimfrJEr2FZAI0xSjNxajoj2gYzcaaA/i+jNuMcGexY0fwwrfdIj3IYPh1vsqZhzfw@vger.kernel.org
X-Gm-Message-State: AOJu0YxbUTr8lFRza2G8zW3ruFn9MCuv2At73JedQYiOYBjlHlPhri4R
	N1TPmP0fn9SOjVfrCF37WeRk4wV83gVnLDYZCq+V2RpJhKVILcaV7Xzu
X-Gm-Gg: ASbGncsnrDWIbs6JSCy/LjhfKPQSD/PwFq3CDCvzRkyABkQ04RnYreYjbCWZL35yoV9
	vlH13NSR+3Tq7DWG8GjFKdyz3pHnsioCsAV7XDzov3Kuct+JLeVY9h8156BSOTICum9meJy9XgM
	4OEmlYFCloPpZbeiz7kPFEBUoosVMU7nP9135WDEbhns1CZK6JCUzlOD8HqNcSDzAhpwZFhzBp7
	QA66rKxusDCJqiYSUwdiTptRv4kTLfUmkxmcxWTyuVi7scCXw337xLLOYIPH5H+2ue8QSC3a1m7
	agsidq78AfcxGOlrUFn1qlETJV/RuUWJ1HZ1yhL9k7vjfq8ATRN8YzDuaRtqfmzy2ws0H0qmDdI
	qtN6Nz1VcICJMezOjj2LvDh0OMjF7LIcgCUtQK0ioun4+WYGp6pzhYXVrvMQGjimmaw6hPwXY0j
	OBp/ESCRLiMLLwtIy1e0Kjg9ri+Z9ttNDGxPRadRZzoKbUTDIpkcCFWKhuIfutxvbV8VA=
X-Google-Smtp-Source: AGHT+IGVeYcgA+CwUr1r7hUy/8iCaT15cDHaEmoGMtDm9YvbEjOd+dz5rkW55YdwDONL4X5PTcG3yg==
X-Received: by 2002:a05:600c:3b8d:b0:46d:27b7:e7e5 with SMTP id 5b1f17b1804b1-47117917572mr126637915e9.32.1760983210516;
        Mon, 20 Oct 2025 11:00:10 -0700 (PDT)
Received: from jernej-laptop.localnet (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-471144238easm248496085e9.4.2025.10.20.11.00.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 11:00:10 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Mark Brown <broonie@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Chen-Yu Tsai <wens@kernel.org>
Cc: linux-sunxi@lists.linux.dev, linux-sound@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 10/11] arm64: dts: allwinner: a523: Add I2S2 pins on PI pin group
Date: Mon, 20 Oct 2025 20:00:08 +0200
Message-ID: <9520278.CDJkKcVGEf@jernej-laptop>
In-Reply-To: <20251020171059.2786070-11-wens@kernel.org>
References:
 <20251020171059.2786070-1-wens@kernel.org>
 <20251020171059.2786070-11-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne ponedeljek, 20. oktober 2025 ob 19:10:56 Srednjeevropski poletni =C4=8D=
as je Chen-Yu Tsai napisal(a):
> The Radxa Cubie A5E exposes I2S2 through the PI pin group on the 40-pin
> GPIO header.
>=20
> Add a pinmux setting for it so potential users can directly reference
> it.
>=20
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



