Return-Path: <devicetree+bounces-232219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A90C15871
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:40:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 392C81A22667
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:38:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87446343D77;
	Tue, 28 Oct 2025 15:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gPvSISls"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27E335B130
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761665858; cv=none; b=Hag26mImVU6wDF2BRhHGrD51Jl7uuhj/goZ1ypd5vp0mbMQPdxcobIJvv9HRSr5U8D9VCNDaOuUeYh92JAxr+Lq9EzAy4+pnGs3nbc6ypzvTrDD7eJPMs9jb81SQALTCarnntdUxuHN8n2YBppEcgpW4cqMkJ+BKSBGH/gvcVqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761665858; c=relaxed/simple;
	bh=Tq1rindzPoSv1LaOddPS8k5NKUTrYDUpuyisQ7twQKY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UYfM6ptGoMbf6VZ+/cWwNGV7yAy2oti9SlcOKB+JTGrxyRFuC4bwhKdzklQ0i0Ia6zSDq4hKejKMmvvcQ/IKH4ukNAVa1uiLEyo01kQidXvMAKKJuvV2nSr8kpB7dx1YU0aRMdpaxYihJ8aLD2CBrF21oCkZu9LKqXZSNKdJ3FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gPvSISls; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47118259fd8so47661345e9.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761665854; x=1762270654; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tq1rindzPoSv1LaOddPS8k5NKUTrYDUpuyisQ7twQKY=;
        b=gPvSISlsA1aHBrRGmqewdjqlNum5+MKCl/FahsjJUwQ/q01Zn9fcvht4RW6Hl4wD8U
         YcXVy9Mss8S1sz1XT3shm6EO806lJ9QNaLHOCaoGOWyiabEeeZNb39TW2J503e7mGm4k
         7ODOw927nJyTllBu+/098Ww5rKUIQSsa1LUZbkXBqRbIaLGHfjll0OIEICQfz1bru1lU
         HgJPqRDgko77/Gl8u52ekJuxs4310YAc+eeVXx6XjetO+h2oG4gcaFi9x3wDy6daPEfk
         36vWh6idubY2szg4MEMbZ2gRicqRCLXtMq6n56L8B2hpDA7YE8AhVOzxGK+KegACCCA/
         LjIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761665854; x=1762270654;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tq1rindzPoSv1LaOddPS8k5NKUTrYDUpuyisQ7twQKY=;
        b=R2FNgJpvFrX4dLe+THcdIBPPfaAo/b+qFHfaA9qtsB49wOrM1uif84resmG/xrqxv/
         nnTU1u77BYq605XUuIAC0UMgsPL1HXa+ShYbcba2h7hkn0vbGnqBHgHxJou9XbrFOytZ
         yg3c+kTGFROWCuCldARBNYKp2/unkzIxpdUGGF0oJMefp+xi3sMLa/+Meb2bKJ3eoaqR
         FLm9YvnyNCPj7r3Kc2wZYfzGBDm2eoZfTbItIOUrSiKLEk0VFv+y9cY5Kh1daKOCUf4w
         PAnPD9MdR16gjpeL96HMXk+gKoidkIHUz1SN5u27kqkk4khz2LTfUi6/bk51Jb7YL0XY
         cE9g==
X-Forwarded-Encrypted: i=1; AJvYcCXQ31LKyrixBceT+SaTnEHHXst0i7/zMmwHjkf4T3cMlov6Ypir4lcL+oEndB0+zSQ1IpfmopIZm1fR@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/l+Jrj3Y4bDJVnRuqbD6F+eaYopzxKpsbBH3mWDlYbzbQI6Lu
	fJshoNKqnsXBSwcbRpxmakSh2Ncx1X+F+YejMgwbST31NB7LVpzQDGws
X-Gm-Gg: ASbGncvffqdkdCYJBpZwGwdfvimTCDzwBBfMUhOqNeFQc2TZpQeMISKzHtVZZNsvO0Z
	PqDV7knrhN1wql4H0Zhfijy6ZXy8OcyJi8hfTHtin8S2NdfsVXh2XGzOB3rDzbxxweLCerBgWWw
	E8LUmcwJxBWNt8+5v6aZJs/QRpXbaPCOT4kH8YUMwtF/vrf8lQVGBBr2U22LLfp7h1vlwjp5tlM
	AtAtJmd/2HyGZMVrnX8d14d6fQtHrnn6PfeK6wBV/cXc60Vm7W+/TQf7W0tpL/9BrDzRJaINQGt
	eHahaQfgckFtm2Ng/evsjY5VvE7eRiBXeF2jmP3GKwWG22/S4b9/IhncBmKWjout3uy9rES3wjT
	R9cyHCcAVtK7otuWV61smViAP9JJJ2o7cV6rahI9QNyB8wIU2L+zIWAfOmw5XOKlbkUAla8W1aM
	qWxfX2rHKJ1lPaYi+Vt3y/l+ZQHtMkPhLvyXbDIw/eP+nAsDwaGk5tnXseWQ==
X-Google-Smtp-Source: AGHT+IHXOTFO2WAIn1ZujBJa9U0PAXYA4glOCwdtcmQllsrumq7MYqoGH/iY7FhfpKKBj/R4vTdKSg==
X-Received: by 2002:a05:600c:848e:b0:476:84e9:b55d with SMTP id 5b1f17b1804b1-47717deef5dmr32584225e9.3.1761665853339;
        Tue, 28 Oct 2025 08:37:33 -0700 (PDT)
Received: from jernej-laptop.localnet (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952db9d1sm20581519f8f.35.2025.10.28.08.37.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 08:37:33 -0700 (PDT)
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
 Re: [PATCH v4 06/16] mtd: rawnand: sunxi: introduce reg_user_data in
 sunxi_nfc_caps
Date: Tue, 28 Oct 2025 16:37:31 +0100
Message-ID: <3656445.iIbC2pHGDl@jernej-laptop>
In-Reply-To: <20251028073534.526992-7-richard.genoud@bootlin.com>
References:
 <20251028073534.526992-1-richard.genoud@bootlin.com>
 <20251028073534.526992-7-richard.genoud@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne torek, 28. oktober 2025 ob 08:34:59 Srednjeevropski standardni =C4=8Das=
 je Richard Genoud napisal(a):
> The H6/H616 USER_DATA register is not at the same offset as the
> A10/A23 one, so move its offset into sunxi_nfc_caps
>=20
> No functional change.
>=20
> Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



