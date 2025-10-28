Return-Path: <devicetree+bounces-232224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AC9C159C1
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:53:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DC7EC50357D
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 637A0340DBD;
	Tue, 28 Oct 2025 15:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DAmMYy75"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E77B5348888
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761666333; cv=none; b=SDfHXPbmiNpQBKwEhMnMc2cdd0bM1md3yNPvC81kJR6DW3N/KoBgkSDPun22EO7verSWUblYrYTX8LoJW4Om9/Eh1ra2JZec2z0FbArQKfujei1Nxjs1ajRqb1zKkAKfEL3jbAwT5+cRwl6jqi1mBc3I79eypxd7HTz4sZQn3Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761666333; c=relaxed/simple;
	bh=mnXURezN7n9VOpNAkHt+wC6tLgWa0+LJGSJ0uA+xyu0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RrggAsSvezWtYHBSu9zhrI+M+9UaBq0VxtWIzqGIelVtRkXWeOAM/dVRHoKcX9h0jdyj77Bg/RzTnJZ7Zf7mlJ3om7t4AfqAINIJ6e785LFJBFZCGEVYSUdgbJth0gxClI2hNmRnqzMFnuF9m7Cg8IqcmjMbG8752Lo7Zz5ocb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DAmMYy75; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4710022571cso63858105e9.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761666326; x=1762271126; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mnXURezN7n9VOpNAkHt+wC6tLgWa0+LJGSJ0uA+xyu0=;
        b=DAmMYy75myEeMJrSRNr3/wd+r0EbmenHmIR4NtugQRM38pEf6IZn/m+iP08FHV7yvj
         bY2xfF4+heYVrCh+gp2T23ABmkvp3PTrXEAcQML+yQB0bUQowNFdsaFlbWqTu5q2fDki
         CDNXJnfcRktwlh5dTNSVPLsF0sAarecxeRv9Nb3lmrrpQBP3wMHjekHMXUKnK/GntIr0
         uuhyHhu4hDyf6HXbCPy+CT83mjJhE9MSuiqZ7bZtLM3z6GnWcCSf/ccEjD8W2G2wNtCV
         V3E5gg96VBKF/0VMOjE/a3HdbzQb+tQmPJLG/DmtE7/V09pZAPpl3TMkdp/Ik6r7vJ5u
         eb7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761666326; x=1762271126;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mnXURezN7n9VOpNAkHt+wC6tLgWa0+LJGSJ0uA+xyu0=;
        b=si93w4X54NwBni9fvWxQjvIF7Dp+p+YRI2fXqkjaOa2v2u8Q0DlJUMmuHwAcgGm0NJ
         5bJvIlVXyFIQuQqfohFfeSHlMU5EIik3h/Tg8MBJ9GLgdjtlg0+55/KrL/rP9UElz8qt
         X/ZMpywkDdcqaMOfJUyZi6cCNDt0VeOdRoXRhC16gAN7WXClelFbPfPuL7wNhN3/txw/
         z+CZPYXBnOfdPLv6hVZ8OWVEKgIwLTn7fSMAI+2O6asceX8zkgcuncR746j7w+pophl9
         EqdhQdFZ5W7G29XN/nzct5olr7F89zEVwVz+nj9jkrj0hHYF1OA1p2U8iz3LbYMTz4Aq
         l4jA==
X-Forwarded-Encrypted: i=1; AJvYcCXqxODWiYKtf/YqGyklMMVqQQjBc/OGWVOKCzFHsoMICm5fHnfjtE1b3D4lSJdukYY9UnnmLW4OaGmk@vger.kernel.org
X-Gm-Message-State: AOJu0YznQKstZQhOJ789jyea82HwZrwf4RQVW9KdYM9pVW2yd0H+dVUQ
	fK4PI/UfSXWV2r88kaIpjF7Xt2ca2YSds2Oo7jNX3RvbRJd/JEZcaTLA
X-Gm-Gg: ASbGncurMdxenhy4sRTPSKk+1F8fthQZizQZq+aNe4HjpHGabgz3kJwldr5NQedKVJT
	DYOdm8i7HvemzPwQbyOtcZUnjWURrj1ttigUSs9sSlDXmsLhhUpddoeEev9kAV/9SvbbmFWDddT
	ZuURn2abQyxS98ZxDc9kUFvpMIdPlYRtKQfz44qne3Z+bVma0vBZkbOHdMzWKL3bpx8do7P25Co
	4fk8FYq4kqMRs+YxDqvcqeCfz2ktKLWr1C0E6BufQlVYYMCqb94MIYGLhqA+8VC681+QToHhXIH
	ntjKyAzSFzLGux0bntU++95fsZ9kK2ndkJjMjodRKSMyfvtG+U/CZj3P1KW7lPxOkl/ln3lQI5t
	UqEblQEpR66yhn6T6r46JJRrP9uZGY4IEF6OKarbebjMuG1gz7L5PzB5DG2m5W34gNkx2/ftdvE
	wn05NrWoYUPNypznaTI14nWFcGYqHXZkTpyU9I0FqqrZwagJ8EibmxRq9T0g==
X-Google-Smtp-Source: AGHT+IET/efRhuIuFB2PFKn8DXpNlkISko3LPS6KKpyQ63Wdmub6V/UZ/rCEDYkQXXUtyr4tnbPxTA==
X-Received: by 2002:a05:600d:8386:b0:46d:cfc9:1d0f with SMTP id 5b1f17b1804b1-477182e1357mr23793205e9.19.1761666326096;
        Tue, 28 Oct 2025 08:45:26 -0700 (PDT)
Received: from jernej-laptop.localnet (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952df62dsm22927131f8f.45.2025.10.28.08.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 08:45:25 -0700 (PDT)
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
 Re: [PATCH v4 12/16] mtd: rawnand: sunxi: introduce reg_spare_area in
 sunxi_nfc_caps
Date: Tue, 28 Oct 2025 16:45:24 +0100
Message-ID: <24133952.6Emhk5qWAg@jernej-laptop>
In-Reply-To: <20251028073534.526992-13-richard.genoud@bootlin.com>
References:
 <20251028073534.526992-1-richard.genoud@bootlin.com>
 <20251028073534.526992-13-richard.genoud@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne torek, 28. oktober 2025 ob 08:35:05 Srednjeevropski standardni =C4=8Das=
 je Richard Genoud napisal(a):
> The H6/H616 spare area register is not at the same offset as the
> A10/A23 one, so move its offset into sunxi_nfc_caps.
>=20
> No functional change.
>=20
> Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



