Return-Path: <devicetree+bounces-254092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C1404D13F09
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 17:19:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 78936304BE56
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 16:16:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3E7E3644BF;
	Mon, 12 Jan 2026 16:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWINgpfe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FA7F35F8A6
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 16:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768234599; cv=none; b=hkXBmdQPcM9YgWA4h6IDQjOQoTjKqE/5yif/vZ/U++o0v/VobuUjUNxDnFrjJLzHkQiXRVp3Z/6CPZlTfWaiHyYLoGVwP6GtbJmyv30rn9Tw5A5gZcL0+tq2p2kHLj7XtqXQDCBfrVwvEwSFacdG/g+uivmkwcAc30OyGiv1xlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768234599; c=relaxed/simple;
	bh=z0D+kks62pgegZV2XdqBFQKhsdGUA1pYhXHbdmpQH3A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I0DXM3FTyuL5pIdfX/P3Ubqw8l7YnMtG5ae72x0W/FWJirJ3LMstUA0pk+AtThCE0ymgDZSuy9YuHh52Os9ChzJy72hZfIzxmCHHYZj2PgdW8BMjZtcbTnfvAqp92G+7iSuZ/tz6ocwQChbhXeECzMDJfbouN1LWy0vTQuIJx8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWINgpfe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 559C7C19425
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 16:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768234599;
	bh=z0D+kks62pgegZV2XdqBFQKhsdGUA1pYhXHbdmpQH3A=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=JWINgpfe6UAOkgeETEa7uvayd7WGS9Jxt9ywTzJBQhjcIBl2qJ/OxANTuubmjAEIB
	 /ACq/O9kVnLFnFTaEYUH0wOF2rPPmvXE+8lHzq1B4IQem4E8eKk0uMRFGtkVX9ciAC
	 uB7+S6qPucRdogv9p7Y4Z1qXErxrHg0apUCpasuB/5JfalwSVq1h9cHduk49FyWACX
	 0f3xVy9e3TKZDzJDNg3AFkD8zOmVSiBHigyl8YKV2AftFwfDMyIplAwZY3arDKLgoq
	 pOqqNfenfcqv2y6SZ7uXcS01SKbiSQAhtwFVPj78EKxper0y/l6Ot9qDndzY0uQoFn
	 qdVWXfOAv2+QQ==
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-59b8364e4ccso3700788e87.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 08:16:39 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXvDO40yq4zvTEWquUHYVyKVZVNCRWtVkwcYJi+FAiZ17Xobm1rnCN/yd4XVy66vC4PFry7e2VVyk+n@vger.kernel.org
X-Gm-Message-State: AOJu0YwLEYo6v5U5zuuQGWAKUFBBrUCDSy6J8oHbTv0J+ILkaqdMDEWs
	mxfSfDtr2npiPcTrgVl7sSObyDF2nyz6FMc+j3LmsBQTF7m01U+RykNMGAhvPRxptsyuXJMDfvN
	tjZJE54KqboIN7UGdldXDMGNqlaL28yU=
X-Google-Smtp-Source: AGHT+IGpidu88bI10yHqzleK8HEPnMVL3wkygkIfnHiAC80d9chHmyCWYJ17j80L1yIwn2cFIaGA2I7sYXdg5upl3OM=
X-Received: by 2002:a05:6512:4004:b0:59b:7864:9776 with SMTP id
 2adb3069b0e04-59b78649935mr4713341e87.46.1768234598010; Mon, 12 Jan 2026
 08:16:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260112064950.3837737-1-rdunlap@infradead.org>
 <CAD++jLnrcsEjKpBQWL=RHKVyyfq1UDk-sDZ7MP-16z0hBLC_dA@mail.gmail.com> <CA+HBbNFKyOFfhRu=XAE891dREPatFRD9VJ5=upz6xPBb8khGjQ@mail.gmail.com>
In-Reply-To: <CA+HBbNFKyOFfhRu=XAE891dREPatFRD9VJ5=upz6xPBb8khGjQ@mail.gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 12 Jan 2026 17:16:24 +0100
X-Gmail-Original-Message-ID: <CAD++jLmPt9M5HEtN4psbk7Du8j4Y6_a0YzhxOM6wds53jT3kHg@mail.gmail.com>
X-Gm-Features: AZwV_QgjxMyqlI3jrJOiQTa3nS3d7KSkF-hmwennVlPIka7VAyMMdzR0TUaIOrg
Message-ID: <CAD++jLmPt9M5HEtN4psbk7Du8j4Y6_a0YzhxOM6wds53jT3kHg@mail.gmail.com>
Subject: Re: [PATCH] gpio: remove the gpio-tn48m driver
To: Robert Marko <robert.marko@sartura.hr>
Cc: Randy Dunlap <rdunlap@infradead.org>, Lee Jones <lee@kernel.org>, 
	Robert Marko <robimarko@gmail.com>, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <brgl@kernel.org>, linux-gpio@vger.kernel.org, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 12, 2026 at 1:24=E2=80=AFPM Robert Marko <robert.marko@sartura.=
hr> wrote:

> It would be awesome to see it in the tree again, as the drivers
> themselves work just fine
> and allow SFP-s to work on the TN48M and I have patches for TN4810M
> (Which is a SFP only version).

I sent a rebased version of the old patch as v11 of that series
so Lee can pick it up and we sort out this.

Yours,
Linus Walleij

