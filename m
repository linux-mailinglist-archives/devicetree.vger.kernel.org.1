Return-Path: <devicetree+bounces-232664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CD31FC19F0B
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 12:14:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E2563BC2B1
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 11:14:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F24332C92A;
	Wed, 29 Oct 2025 11:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HMkOPDNj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52584329C5A
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761736445; cv=none; b=SHHY6rhTsh0IkZ0G2Cp4ikPcJ43k6cXB2DzxARNRiP7kfSOVLuGHfE0u+Kz9QRqyNvnN6W4u67/ySO/H9eZguSI4WdVToMSmDgWM8JAQxec7aTjh/bduKzg7bN49SbaCsJlyWx0SBF9XTXbettjPbZOiOOBeQ2xFGfpPEWxrKSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761736445; c=relaxed/simple;
	bh=D/lapmvTOwB4w+eO4w4TOz+x/hybYzymaElHesTMXeg=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=QBePonAf9Bzydu8+VJ23AysEHPgVtK+ZEi0SZiCA9OzQDG79RFAa+8v3fONwgYQL0orEPYChZv0rlBVBktKJt9DiRvWBH0bWFiJ+CV+C43yyJndMDGS1Ru6pZjtj+7f3dzXylgS0JNDOCH3O+icFTYKxSaFu8NtrKBhJLRdsXSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HMkOPDNj; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47117f92e32so65688735e9.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 04:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761736442; x=1762341242; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=D/lapmvTOwB4w+eO4w4TOz+x/hybYzymaElHesTMXeg=;
        b=HMkOPDNjTBtwNSGyUdsh90hVcMTgwt29vCrohawwxgBIRvGVcsrdQl4T7uJck6O+R3
         8GCqfr4X3NJWetrtdmX6vbozpxVLnOhbeQ+yNTjDOImQe2+vW6vGUt8hKmPhCySmYhX3
         X+eHLlbaPkZomu0wIyN3RN8EpkqrIqtWdaC3l0eOLj8rgeqW3VIosa5A603xlWzlLH4U
         mfkyajlp/tzIApDVErxeRPyn6FNSeDAUffVockuf4LJMnYIKpMaPXZo0vHb6ogroup+Y
         Oza6KTz2GE7d+a85ZfUV/jihKxsr0J5/5sogAo9vNBIEAtZh+tHcJWAK6D0rUm0Xuc2k
         WfiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761736442; x=1762341242;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D/lapmvTOwB4w+eO4w4TOz+x/hybYzymaElHesTMXeg=;
        b=eku7Qu27zQK+v6wyo+CvxxgKSXDtnrngi/O1DwDN4z+GsZxMk8keknFeQHhacw06om
         9csoGrrK1vZRDq3mjgdWg+AgSeX8JFdLlKVHiQHpNKP8KVSHCzZ4Pmd4uE9dPpz7chmh
         9U7DQkZa5YJExSHJ9qV3HfHTI5aJCzVRnRJAFtzhUSgEf4vFfMzulW1dpyP+wV+bV+Vy
         B5wROCoerUf5z9V/R7+T/RjODCrSVyUl4OwyZUjMwZ4W3vq2TQuAY4bulz4mOcRhsPYb
         HhzBWMQd0yUbWCf9IhhUx2/mwF7YQO5cpm9zSo1KrS+fFiVp32guO/wPSsm5UcTqnqBq
         HzIg==
X-Forwarded-Encrypted: i=1; AJvYcCWSJQfLxEV+9r4E51GMNBGicXrotOJeN0nxBkldgp8R/hjCl/GMdsAKE0Yz7eY2LL4YWznfoplaq22N@vger.kernel.org
X-Gm-Message-State: AOJu0YxItzncolvHpOpiAlFt14P2W+/wVLjlL/w5tzJQNG4PlSqxjyms
	2pjdPeePywHbe9KTDK8t94LrL8yDWsImRVoVDwPctjpsDnG00nwLKHCj
X-Gm-Gg: ASbGnctfxGrDi7pc4kr5RDtCnl8O0RpFdaaWlSgMCbjELqaNsczE6DkwIalb+4JJkV9
	QE9wG2NY6rQgO9pWKOY0ip26GssyY6REoXd7tSmBkkvy3OLSSxCVjWkSriMij3Fk91fwFLjLBPI
	jvUeShw1rO+IvR54oy9PwiTyIVzRjP6KU1pTUU6woCbMQyPqkY3GyHXnJPtr/HTi50JGi/0QgIF
	ng5N899NOdxYQiLidIGVXi+UTSxH3q+6yvxzbwSNK37v5vaa0Dm2qd88EpMpfPSwnn4vmwP+g5a
	lSYziwgYXiwNsq3439NliM9cVRHTjrcgSdfjPvGB0AwvL+E0rooOtxN4AZBHBgBBEYuiIXWqbcL
	ZVAi1A/FtrgOpX5sOIaMXUabf2HD8dPMxvLmRG/2SYOaFodlJeZEvqiJfsCJo1h1VJ4wnLmlUVz
	QQlMx3Oul+n1xkFvarQQ==
X-Google-Smtp-Source: AGHT+IG7oVJwZfUJXNbRBLD+lo+88EHLuFLdA49goSZs2zZITHJszlARkVGhqDOeg4E/63DSjHyGIw==
X-Received: by 2002:a05:600c:34c4:b0:471:d2d:ac42 with SMTP id 5b1f17b1804b1-4771e333a08mr22980435e9.14.1761736441418;
        Wed, 29 Oct 2025 04:14:01 -0700 (PDT)
Received: from giga-mm.home ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e18caebsm44190725e9.4.2025.10.29.04.14.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 04:14:01 -0700 (PDT)
Message-ID: <ab9c1f88026058fde8cc37057864f25889ce47d1.camel@gmail.com>
Subject: Re: [PATCH v2 2/4] ASoC: cs4271: Disable regulators in
 component_probe() error path
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Herve Codina <herve.codina@bootlin.com>
Cc: linux-sound@vger.kernel.org, patches@opensource.cirrus.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Thomas Petazzoni	
 <thomas.petazzoni@bootlin.com>, stable@vger.kernel.org, David Rhodes	
 <david.rhodes@cirrus.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob
 Herring <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela	 <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Nikita Shubin	 <nikita.shubin@maquefel.me>,
 Axel Lin <axel.lin@ingics.com>, Brian Austin	 <brian.austin@cirrus.com>
Date: Wed, 29 Oct 2025 12:14:00 +0100
In-Reply-To: <20251029093921.624088-3-herve.codina@bootlin.com>
References: <20251029093921.624088-1-herve.codina@bootlin.com>
	 <20251029093921.624088-3-herve.codina@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.0 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi!

On Wed, 2025-10-29 at 10:39 +0100, Herve Codina wrote:
> The commit 9a397f473657 ("ASoC: cs4271: add regulator consumer support")
> has introduced regulators in the driver.
>=20
> Regulators are enabled at the beginning of component_probe() but they
> are not disabled on errors. This can lead to unbalanced enable/disable.
>=20
> Fix the error path to disable regulators on errors.
>=20
> Fixes: 9a397f473657 ("ASoC: cs4271: add regulator consumer support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>

Reviewed-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>

--=20
Alexander Sverdlin.

