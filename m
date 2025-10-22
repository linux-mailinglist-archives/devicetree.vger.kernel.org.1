Return-Path: <devicetree+bounces-229931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5C7BFDB40
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 19:50:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 695064FDB17
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 17:49:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3523C2E7BDD;
	Wed, 22 Oct 2025 17:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YZkRdKPT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473872E7BC3
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:46:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761155192; cv=none; b=mLTwCCr/RDnU5bIu6kg96OtqRzpsbWb79gQ5z2koonH6wbkWR45tVL+dkRvD9OTVRUZLFfFy2OVZqrYEaj5EbfH3avHzQs6B3O6t02NA5GKGnrAT4sg3DqTHDk+bUcxXc6ipRHjY7kcY/8QdKucAmccf7FTNkyCOS/a2MzDG43Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761155192; c=relaxed/simple;
	bh=ZO9k478u1ngiqeGGIY3WNX6oKY50clVVErq42QbTs/Y=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=fG5uazpyYxvUt7g66OB4UPwxFLFFuvGds7qKF4gCRXsr2qiDC7WCvOHOonPcG+Pd5VO19W4xZacavHDmkTUWjAgD/JkPBZTQnczpX60iPVUNy2/nosxEE03bD44nU1S/MkWRgOpdEztAiQEQwJvLq1D7e8nAKjzPAOL/YdxndWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YZkRdKPT; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b3d196b7eeeso1282114066b.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 10:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761155188; x=1761759988; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZO9k478u1ngiqeGGIY3WNX6oKY50clVVErq42QbTs/Y=;
        b=YZkRdKPT8pBjRz95XUgoi033TzSjMyLT+va7nkpxPFJcIM6sAHgxpPXeBqDzxRhrDL
         1ibGckJb7OBlfnv6DwAvxnXnOLhC2dSjsi8GVstRUUwJMYX3LEbSm84KegKmsCn0GDbq
         dXQm+uQ/sfDwT5umd2I6/8U2uBToOmFg3oaUBpGA9cGjmfYPWfHnZom6J5c1B9DqnWx6
         OJ5bT89BtiIro7S4Ukk09fa0Jr8Y/vkcsxbjG4QblzyfxQ/ikkDwWwakcWGLQkHNI1Ht
         /mbcpcEqQPzmGTsfnKnI26vO/6VMxcCi6MNOLMMl77yY1NENlS/OfMGYqUevJpF32T0W
         yAPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761155188; x=1761759988;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZO9k478u1ngiqeGGIY3WNX6oKY50clVVErq42QbTs/Y=;
        b=X1QbUJenn1Ay4vrRjcOIHMmm6mSeGhhde/adk+f3Ujix7+6Dd8zHsu7FfLUd1j1WHm
         rhSQjGEtQWN0LAA0dEENYWcCDG6UJKvlIeMbQ3+BDcMxpgBXG36iChIwiL1KqdA3F9gr
         Zo2mLOcXRRzMGBRgArKQO59QmL/rVVkeqp2cE4GYaEbcgEXjyXtbNxZOyhAuAstw5Qfg
         wT1cl1Ez+t7jSwzh29xoBhyMhixpAeUHiXAIDLxhHVW8GiTc9QwNkIcYhcf4zzLZ3P1d
         TX0jVfxx9mg5yNRa1nz7it2XxjF8LgtoO5ID0uZ9OvcHVBDLQwzAImORzjcOCPV6Ou0W
         8I9w==
X-Forwarded-Encrypted: i=1; AJvYcCW/Eeh5hccwuLAAVRgyAohP/udOfmhfE0QTXiK3xJT4/kSoXdXU/BG8H+S3PiXqa7OD0A00RBrE0JAy@vger.kernel.org
X-Gm-Message-State: AOJu0YyQwfY2xOK2sf8nDPLwcrKnMcaN9CEe6z6yMywSuNgvfjF8AnRS
	DAhr6KyTKGq3MV/5Bj//v6002lnQJeQLDSwuocib/KOkYTnP83LsGvqb
X-Gm-Gg: ASbGnctApViwjKbqOo7MSUZJCjAwYjh5ZCMVTjVPk0gUcvc4rdmLINvVUdR6wTmSXC0
	uBuvRuOB7ZbpqaRLz4d1/wG0s/jpfnxlV+xjAyVCIg3sX3k57bH4H2xh18Kj+Ra6EOz+nxoa12N
	GLlN4KPwBdM1JQoShz5/37VjK9otoSl92lDdAQEDieCnK+xFONxnuPIPxE8l9m4/uYjx5xx1CAq
	w8+1ib4or4lkR7Pp5KqkZQ70HFUaf1RZ61mwkXqoKDnboStVI4ke4Ol3OPYQIzekRYWKslY5nGo
	pqJD+Ib+UMD/TqgXGqfcN8j1hwuUWviJDE4UINe+7KlbKFC6Ql58kpq7Dra3IwqQrWQiAnzjBlu
	7LC31IDHSHXc03XJTFRHXq3LHp95wAh8c0DtT0sGchDvfw8IWX3BITnE90zZR1uRE2Bq62bdu9D
	CvK0G8ZA2X3RH38jK09EwslOsf+tIThouZroTmBqrQirnj+nqVtV9JeoCbOMlVeeTSnHg=
X-Google-Smtp-Source: AGHT+IHCalBjEk5A4VepIJrx2VZmsQyalUaHdRlIahxdnPTXIoiiuFZ8zgGAwcDIXssdST0QDBYUzA==
X-Received: by 2002:a17:907:3f88:b0:b3d:5088:214e with SMTP id a640c23a62f3a-b647501277bmr2370373466b.64.1761155188114;
        Wed, 22 Oct 2025 10:46:28 -0700 (PDT)
Received: from 0.1.2.1.2.0.a.2.dynamic.cust.swisscom.net ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e83960e6sm1393779166b.33.2025.10.22.10.46.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 10:46:27 -0700 (PDT)
Message-ID: <d42ab1a0665f55731aabd1e9fcb31b8401b7913f.camel@gmail.com>
Subject: Re: [PATCH 1/3] ASoC: cs4271: Fix cs4271 I2C and SPI drivers
 automatic module loading
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: Javier Martinez Canillas <javierm@redhat.com>, Wolfram Sang	
 <wsa@the-dreams.de>, Herve Codina <herve.codina@bootlin.com>, David Rhodes	
 <david.rhodes@cirrus.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai
 <tiwai@suse.com>,  Nikita Shubin <nikita.shubin@maquefel.me>, Axel Lin
 <axel.lin@ingics.com>, Brian Austin	 <brian.austin@cirrus.com>,
 linux-sound@vger.kernel.org, 	patches@opensource.cirrus.com,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>
Date: Wed, 22 Oct 2025 19:46:26 +0200
In-Reply-To: <d38779a7-a1af-49e4-b429-5ebd791e2168@sirena.org.uk>
References: <e7873e6ce07cd92f4b5ce8880aa81b12c2a08ed3.camel@gmail.com>
	 <d38779a7-a1af-49e4-b429-5ebd791e2168@sirena.org.uk>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.0 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Mark,

On Wed, 2025-10-22 at 15:56 +0100, Mark Brown wrote:
> > > I'm very reluctant to touch this stuff for SPI without some very care=
ful
> > > analysis that it's not going to cause things to explode on people, ri=
ght
> > > now things seem to be working well enough so I'm not clear we'd be
> > > solving an actual problem.
>=20
> > The actual problem is that i2c-core is producing "of:" prefixed uevents
> > instead of "i2c:" prefixed uevents starting from v4.18.
>=20
> > Most of the dual-bus ASoC CODECs are affected.
>=20
> That's a description of what change but not of a concrete problem that
> users are experiencing.

the concrete problem Herve has experienced is that cs4271-i2c will not be
loaded automatically starting with Linux v4.18 (commit af503716ac14
"i2c: core: report OF style module alias for devices registered via OF").

> > Now declaring "of:" to be the new I2C bus prefix for uevents starting f=
rom
> > Linux v4.18 sounds strange.
>=20
> I think a robust solution would involve having the OF aliases namespaced
> by bus, or just not using the OF aliases but potentially having
> collisions if two vendors pick the same device name.

But this sounds like the situation before the above mentioned commit
af503716ac14, when both i2c and spi were symmetrically namespaced with
i2c: and spi: respectively and contained the "compatible" stripped of the
vendor prefix.

And I must admit that I had more understanding for the prior state of thing=
s.

--=20
Alexander Sverdlin.

