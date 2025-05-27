Return-Path: <devicetree+bounces-180840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F7DAC4F97
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 15:22:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9978B7AD2E9
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 13:21:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BD622749D5;
	Tue, 27 May 2025 13:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="0zUaUtqo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B379E2741A6
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748352123; cv=none; b=koMAkLeonWbxovDfxdhDDKqfV9bQpioDQk6J98pDkFW6sXTDTK/SGe7Y30sKGBPwRx0Tq+COhmmaobrNfYuuhyMwJ2LLJRdBo2rSkr9WTxylv36M7AJgF1MSJXp8n3mNd/ysX+W3szNi0c+zc6iexkW5ZsdX/jOUAJXNiwQV5ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748352123; c=relaxed/simple;
	bh=VyWGs92VxZHmYWq/MBjeYIKfJS3oITyIiMO5I+wjqS4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=XlR4opPnmYIvf2AHVnGegQHPCDx+cdjv+cp6U11/dsHKI0lIdzHLHzwWapxupRVQrywMvg27hkiezkazvWe0bUEyHUNTmPuY7k/jyyNy2nBeJsFfdR2YvA2TON4E4VpZRK86t7m9vWfFN7+pQQZtq7hsJglnB8hBzDhYl1mQBBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca; spf=none smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=0zUaUtqo; arc=none smtp.client-ip=209.85.222.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ndufresne.ca
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-7c922169051so173726785a.0
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 06:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1748352120; x=1748956920; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VyWGs92VxZHmYWq/MBjeYIKfJS3oITyIiMO5I+wjqS4=;
        b=0zUaUtqop5RzqVPB8/4UsJPZFJastdqhSXlSQMVoQLBR+RuECoVeTEn8t89DMSYbuC
         qRPd2APug4sGJbzeSosJXs/QNIdBDIdmP9sRRasfzgVd7+e0SXiGzXCL0v006MjoOLX9
         0Vro09AbATX26oJi+aW0SfJHiZPzCzzAa8WUCoHgIaCXm8r/RXYUYmpVGs1gxjQqMDly
         9PT2Tj8XuL11YIEeYX7DcA9HKdGNEXC9jsffJiSHi8bgKoTKpoeWDqHhwDLRpLFb4R+t
         0WRIzzscMTxAuUM2vIxZkalDR25rMgRkGx6A5ABGKDyuPP6udzlj9faZWlv3nphWUwbE
         CVRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748352120; x=1748956920;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VyWGs92VxZHmYWq/MBjeYIKfJS3oITyIiMO5I+wjqS4=;
        b=eSMAL452DRnGEApumvcPrdd/gzEG7mW0JqiL3gm4eoB2mCv9b1g24hRR2CpWNoNY05
         WMO7y3I3KnfM/aGVqrB/9NOidqbmC7IOA1qie82f43Y6CGoFzWvbSf0LpOHRMlb8VaMf
         zMr1vKt5rrKU6B7vH4uN3vuj7qiknC1PrNAbfdpA0RiyUhvFmWK0E52Wp7ZXDSI6I0th
         V5NiYAAitSG7i/jjt49c0zE7bswXsjSKeHL7DUsdmuPez/c124SLm9OijQos08EMvOf6
         /cEpl2p5lWmIXo/y0pqUmdXdXzuqM8eXz65Pqg3LTkXVXuWRboSmEmuy86sWQshKv8IR
         aMhw==
X-Forwarded-Encrypted: i=1; AJvYcCV5fcdYUPBPx6Ha5OU4jrvHtNRZNgjt5OFYxvmamRFE/Lw5GYGS6Sq5lb8mydRAjV0KOY4X6ypa/4sp@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb35/B5WjXw2M4JLe6/gJyRxI1b6idOr+GEH52e82+JH6iUxoY
	i5W3KmPqL5bScXXSa3ppLbfqkOhN2pdmYOD7iABB++EH6md4Vt9Cqb6Zte6kBdJt0Y4=
X-Gm-Gg: ASbGncu56jzSoAFlekYzHkZ+H2O4H3lwKzP+S5ymR04qS7aIJnKhxOmodFKLUOnlyCl
	N2FI2xpmzJLYC3rafu0P4ZNt3PtbFRmrqP5KBVB292uE4YCGCMg0FgwVdzEk8tWP7BmDqxE3yvf
	UzqXEotRn0QfuzelXTRoYOfqRwb+7Yem4+VFTECnuxcAGuexi1ZTzobMyrptejc4XS1O5/s8TG+
	DvXrd4zETkc+Ex7Guff9PLtU1q3OIDMwlrVbmF6j2NhEfPY3PuEu/cbo5te+DATFLn4VwB3Wpq2
	NRyYJxq1VJ6/KjvWVzHE2yHet7TZUAeZRqwKRy07hHnAoybMObc2xNXm
X-Google-Smtp-Source: AGHT+IGqjEuOc/rQc0o4CTVNkvRn1LeoDd94pgaJaN+RFhGpz7B5jdeGPrzKG2P1R07nsKaMUvmdnQ==
X-Received: by 2002:a05:620a:c4a:b0:7c5:e226:9da2 with SMTP id af79cd13be357-7ceecbf9338mr2045791485a.47.1748352120422;
        Tue, 27 May 2025 06:22:00 -0700 (PDT)
Received: from ?IPv6:2606:6d00:17:b2fc::5ac? ([2606:6d00:17:b2fc::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cd467dd34csm1725927585a.47.2025.05.27.06.21.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 06:21:59 -0700 (PDT)
Message-ID: <30acbaadc08869687c22e6a70052571c99556979.camel@ndufresne.ca>
Subject: Re: [PATCH 2/5] dt-bindings: media: allegro-dvt: add decoder
 dt-bindings for Gen3 IP
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Yassine Ouaissa <yassine.ouaissa@allegrodvt.com>, Krzysztof Kozlowski
	 <krzk@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Michael Tretter	 <m.tretter@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,  Michal Simek
 <michal.simek@amd.com>, Heiko Stuebner <heiko@sntech.de>, Neil Armstrong	
 <neil.armstrong@linaro.org>, Junhao Xie <bigfoot@classfun.cn>, Rafa??
 Mi??ecki	 <rafal@milecki.pl>, Kever Yang <kever.yang@rock-chips.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Hans Verkuil
 <hverkuil@xs4all.nl>, Christophe JAILLET	 <christophe.jaillet@wanadoo.fr>,
 Sebastian Fricke	 <sebastian.fricke@collabora.com>, Gaosheng Cui
 <cuigaosheng1@huawei.com>,  Uwe Kleine-K??nig
 <u.kleine-koenig@baylibre.com>, Joe Hattori <joe@pf.is.s.u-tokyo.ac.jp>,
 Wolfram Sang	 <wsa+renesas@sang-engineering.com>, Ricardo Ribalda
 <ribalda@chromium.org>, 	linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Date: Tue, 27 May 2025 09:21:58 -0400
In-Reply-To: <uys462vhrhzeapzkve7z5k3xg6bjvpdne4xw44voqn6uhjdkmc@owrdgvraiqyb>
References: <20250523134207.68481-1-yassine.ouaissa@allegrodvt.com>
	 <20250523134207.68481-3-yassine.ouaissa@allegrodvt.com>
	 <3e6be40a-2644-416a-bd32-f6256f1501ff@kernel.org>
	 <7863d15a-fa20-4db5-89b5-77a026d3f937@kernel.org>
	 <a72z6exgol5cbur2cy7wjwyroi4zddtki5ab3zdkfuwpskpavr@r26wahldhd3r>
	 <b5bb919e-6273-48ed-b5d8-29177dbbfb76@kernel.org>
	 <flwocneutp64bxxwfkfqvm6dq7klc2nu33ybr3ap6qeovopfq7@7qognvdf4zew>
	 <04e1f361-b3cf-4fdb-a008-42eb489f6c4d@kernel.org>
	 <uys462vhrhzeapzkve7z5k3xg6bjvpdne4xw44voqn6uhjdkmc@owrdgvraiqyb>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Yassine,

Le lundi 26 mai 2025 =C3=A0 12:58 +0000, Yassine Ouaissa a =C3=A9crit=C2=A0=
:
> On 26.05.2025 14:46, Krzysztof Kozlowski wrote:
> > On 26/05/2025 14:27, Yassine Ouaissa wrote:
> > > On 26.05.2025 12:57, Krzysztof Kozlowski wrote:
> > > > On 26/05/2025 09:25, Yassine Ouaissa wrote:
> > > > > On 23.05.2025 19:13, Krzysztof Kozlowski wrote:
> > > > > > On 23/05/2025 19:11, Krzysztof Kozlowski wrote:
> > > > > > > On 23/05/2025 15:41, Yassine Ouaissa wrote:
> > > > > > > > Add compatible for video decoder on allegrodvt Gen 3 IP.
> > > > > > > >=20
> > > > > > > > Signed-off-by: Yassine Ouaissa <yassine.ouaissa@allegrodvt.=
com>
> > > > > > > Please do not send the same patches over and over again. You =
got review
> > > > > > > which you need to address.
> > > > > > >=20
> > > > > > > Once address you send NEXT version with proper CHANGELOG for =
each patch
> > > > > > > or top of cover letter. See submitting patches... or just use=
 b4. This
> > > > > > > should be actually requirement for this work.
> > > > > > >=20
> > > > > > > Anyway, I see all of previous review ignored so let's be expl=
icit:
> > > > > > >=20
> > > > > > > NAK
> > > > > > >=20
> > > > > Hi Krzysztof,
> > > > >=20
> > > > > Make sure that i'm not ignoring anyone reviews, i sent a new set =
of
> > > > > patches to start cleanly, and i have sent you an email about this=
.
> > > >=20
> > > > It is still v1 - the same? - while you already sent three patchsets=
 before.
> > >=20
> > > As i mentioned, this patch is sent to start cleanly, so it still v1.
> > > And the previous patchsets should be ignored.
> > This is not how the process works and it is not making reviewers life
> > easier. It makes it impossible for us to compare (try yourself with `b4
> > diff`) and forces to re-review everything every time.
>=20
> I know that i made a mistake by not respecting the "submitting patches".
> this is why, i prefer to start from a good base ( clean patches ).
> =C2=A0From this patchsets, You & I can use the b4 or other tools to get t=
he diffs.

For future submissions, once there is a base, don't try and "fix" things, j=
ust do
add V2, V3 on future submissions, even if its completely rewritten. Just sa=
y so in
your cover letter change log. If everyone was to reset to V1 all the time o=
ur work
as reviewer and maintainers would be completely un-manageable. Please under=
stand
and take our explanations for the future. There is no need for you to argue=
 on this,
this is not just personal preference. Same driver, second submission mean v=
2. That is
even true if you take over someone else series.

regards,
Nicolas

>=20
> >=20
> > Best regards,
> > Krzysztof
>=20
> Best regards,
> Yassine OUAISSA

