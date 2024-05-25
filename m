Return-Path: <devicetree+bounces-69110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE098CEE6E
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 12:12:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1F3801F2178D
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 10:12:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A4C322064;
	Sat, 25 May 2024 10:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="KPvVaMV8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4319.protonmail.ch (mail-4319.protonmail.ch [185.70.43.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B33D11182
	for <devicetree@vger.kernel.org>; Sat, 25 May 2024 10:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716631935; cv=none; b=lPXajnkSYkpMjjEno19BDd4w+5LecHB5H5Dv1Z14KMqjAZy3yuWJ81oVusEm/m06R8n3mw7dZP1RJNWXO+9pKlmKpE8BMG2hv8GXm5NQ7nFngSsExMYp2V0ZDZdNq1xYtEKoOsH4SpFOFrii4P6VNwmNJ7Ptv44KsG/leOJg7VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716631935; c=relaxed/simple;
	bh=TePywgtOZLSlmtUkwAJgRE8YCkoJVGql9P4DLoOhK+A=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=r9sMUX54K2Fy/jdBVuPV/IIYz5N3Ell4ouZLhnwIjhBcFOdjGpLgB/YBiV546ih8olf1ziEbKyx5cRWqhbEuy6eMsJdpYKajaCahj21LOV8ABQdqf9BzXPVkowR8/z61k37HSFXhU0HJ5EVMZVOFD0GGHdZxCt32BzvQn/Iau4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=KPvVaMV8; arc=none smtp.client-ip=185.70.43.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1716631925; x=1716891125;
	bh=gZ2fuCsQeBrVCBT3ISM0nKpgpPhN28e/OHnCBxchjV0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=KPvVaMV8rHtHFWfPQ4g9yuJT+FTqXmIBJsbiiD0/kJKEgAxhj+9tl9/T6CC/21ihm
	 TFqp/JSHzZNpiUn+B61AKe7ZTDDRX8Pk7HtX/rk8c+166y661YiccTF81wc8HF1SEb
	 FCR+yAY79pPS/E36JEijEj21tNDnxo2JN8TpH9/nlnf8koxoEAkCP5/q6mPg10l0yE
	 2V+78ziri+plFLLwy2+eUMl4ysU2Lnqbkd3Q3gE/GwYUDrVANM5Zl2GliKnHMBzgF7
	 e9moymGlkAhC8UxTmQqj4U24OAPxS8KRpTzkNQ3AFeGDNSa1UOlWcdWmbeGyUSRXfZ
	 CVGPlK9GNZ/1A==
Date: Sat, 25 May 2024 10:12:01 +0000
To: Markus Elfring <Markus.Elfring@web.de>
From: Henry Bell <dmoo_dv@protonmail.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, Rob Herring <robh@kernel.org>, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] RISC-V: add Star64 board devicetree
Message-ID: <caCBlFpvjmhO9G1A1_2qHImmuoGai2NoPYonB5RCVftq4zIrSxlP8Msh9z_FX9GwQXzfSrB40dRxy1zfxZesOJENeebWQsERa03sDvArzec=@protonmail.com>
In-Reply-To: <1b55aad1-1442-41a5-acc6-16baab90c021@web.de>
References: <IPHlm5mOKUzYfwGy0auyufx-oPkSrtQjUjiQLbtvspD69UPX9O98iB8P2mqM8ahNaerz0yUa009f4XABRniq7aj2PUp83hbRVVhhKmqT0Ss=@protonmail.com> <1b55aad1-1442-41a5-acc6-16baab90c021@web.de>
Feedback-ID: 106097379:user:proton
X-Pm-Message-ID: 587824850d8d4aa25dfd70065ed365efcfdc77de
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Saturday, May 25th, 2024 at 9:37 AM, Markus Elfring <Markus.Elfring@web.=
de> wrote:

> =E2=80=A6
>=20
> > The board features:
>=20
> =E2=80=A6
>=20
> Would you like to add an imperative wording for an improved change descri=
ption?
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/D=
ocumentation/process/submitting-patches.rst?h=3Dv6.9#n94
>=20
> Regards,
> Markus

I'm happy to change it, but was going off the format used in Conor's  Milkv=
 Mars commit
https://git.kernel.org/pub/scm/linux/kernel/git/conor/linux.git/commit/?id=
=3D04a228aadb84d894721b13197649ca741f3018bc

