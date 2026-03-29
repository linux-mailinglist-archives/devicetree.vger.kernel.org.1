Return-Path: <devicetree+bounces-282154-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id i87RMz92yWngyAUAu9opvQ
	(envelope-from <devicetree+bounces-282154-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 20:58:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 668F6353B1D
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 20:58:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BE47330039A5
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 18:58:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FF5D386543;
	Sun, 29 Mar 2026 18:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDFLSuWk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D17C37C936
	for <devicetree@vger.kernel.org>; Sun, 29 Mar 2026 18:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774810683; cv=none; b=d6mjy8VWQb5kaQgwhIjWdI5leZGBw1DRryPnmLzOkq9ue8KZ8QFxuTAc8/SSOUftyi+DWJo5VHHMGmMYrH037lHL+Czk0luZrr89dSPXF3moTUgJrfQsupiX8f6Av8O3DYeIOQsVpqH7Uk481iRSjNzS0gcq1gIT5SOhzHxSWpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774810683; c=relaxed/simple;
	bh=Ghe/jUUjVDW2L4xnqDOkzXXcs8fY2TKEnFZTUKI/5JI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m33uQLWXQ9pQTXGWEifHTaP+WHgfejwA9hLhOU0WmnkD6K1QiYD+RNKzertmGCxNncD2DxV5LF6Dfqj4p8SCZp6DKbpCSOV2XOeXpT+uUtTKbtmXFG3eOZqMJuhCMHiWTwySzhnBcr+pearEQmbcOi9c9nEhTtangSD72hZPiFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDFLSuWk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4D4FC116C6
	for <devicetree@vger.kernel.org>; Sun, 29 Mar 2026 18:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774810682;
	bh=Ghe/jUUjVDW2L4xnqDOkzXXcs8fY2TKEnFZTUKI/5JI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=BDFLSuWkJpfjn++ImUs539O9NjNKsEALgIoopk3NGDCleLws031FgcGlAnajunY23
	 2YSmXk+5xyyLe2AKhrSm50w5YuMkZuJugkFuSZngJwprMOTOGxZEs9d9D/kLOY04mA
	 BDfPcI8+bLc88/ua2PFrp0CR/ASbJ6LFD0toIkiVeYCZNO0RxrSFg9UpiQXAkT1TZz
	 +X/Aq1SxBeCVFBwT+Ehef39d9JY0FOreBPy8SeGpGDDmD9RKzDlmPfxaNwxQxPsa8P
	 JpJ2sHc0en3Dkl8DOse5j7llC4N4s1Ch+ZEGR7AM0UAwAtrgwzJ5Qbktq4fFbMdkD9
	 nR1lFOOt98rlA==
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-6501c4857b2so347810d50.3
        for <devicetree@vger.kernel.org>; Sun, 29 Mar 2026 11:58:02 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVuR84OwCTiNrU7GxKZwhJ/yLIzFAREtEnQKDl+NRpQdYR4q6gBZ+b0dZDpkzDv0hvPWUyztpDKge3g@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn/KpY6+8lUhG70hvtpLVidOi3uuUZOT0xzbgMprwDiycwcebt
	nVem38LDi3h7+jCmM5xezDXNl6k/esXhNkicdaxkItqz6ChCku/jXTwk+pmAyamAv51Hi5JQB0R
	LoxVNCaYM9LvYi6RPjqZD9YDSFLU1+4U=
X-Received: by 2002:a05:690c:6e87:b0:79a:bf27:fe65 with SMTP id
 00721157ae682-79bde0a01f5mr98501667b3.35.1774810682145; Sun, 29 Mar 2026
 11:58:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260328124707.141209-1-khushalchitturi@gmail.com>
 <177470797266.1536342.6967120656934552033.robh@kernel.org>
 <CAD++jL=_rCmW=eSV0kvck50sC2xaQnGQoEOy=DNcwkFvvWYUUw@mail.gmail.com>
 <3fa4fad0-d918-4de0-ad80-dad2141d2617@kernel.org> <CAD++jLnxoS-OGBSAXxgGPaME7eMTwCQ-C+uzub6m0o9ZgXL_aA@mail.gmail.com>
 <aciItMCdBbrVvMKB@venus>
In-Reply-To: <aciItMCdBbrVvMKB@venus>
From: Linus Walleij <linusw@kernel.org>
Date: Sun, 29 Mar 2026 20:57:51 +0200
X-Gmail-Original-Message-ID: <CAD++jLn5qQqx5nAOWNifJcNPb00B_CtM=xF16qjB4qXGENmL9Q@mail.gmail.com>
X-Gm-Features: AQROBzBuNEJozOlp-XpTGjISujTF0by1_WHh_XBOvopTnZtKwpdl_n91dqbbiDc
Message-ID: <CAD++jLn5qQqx5nAOWNifJcNPb00B_CtM=xF16qjB4qXGENmL9Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: power: reset: cortina,gemini-power-controller:
 convert to DT schema
To: Sebastian Reichel <sre@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, "Rob Herring (Arm)" <robh@kernel.org>, 
	Khushal Chitturi <khushalchitturi@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-282154-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid,4b000000:email]
X-Rspamd-Queue-Id: 668F6353B1D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Mar 29, 2026 at 4:09=E2=80=AFAM Sebastian Reichel <sre@kernel.org> =
wrote:

> The problem is the node name (power-controller@4b000000), which is
> reserved for power domains. You can keep the compatible.

Ah, sweet, Khushal can you change this?

I think you can use gemini-poweroff@4b000000 because
this is pretty much a poweroff thingie.

Yours,
Linus Walleij

