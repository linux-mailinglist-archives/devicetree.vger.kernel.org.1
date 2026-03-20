Return-Path: <devicetree+bounces-278277-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDKOAJtFvWkR8gIAu9opvQ
	(envelope-from <devicetree+bounces-278277-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:03:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 702B92DAA2A
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:03:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 41083302D133
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 13:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 781C73A7828;
	Fri, 20 Mar 2026 13:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VL0aslax"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552D7372ED9
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 13:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774011775; cv=none; b=LdvPb8N2acbcR55xTwhIFq5O8Yu+7Qu2Ekb6p164RoPBnMkNuJn0D+IG+NoFUimb8xObZ0nMsKhQqodR/b9V6hn5yyRIDlgoeJCzoyGR60BZEXOK22mWsf4Sd4QFSEy7QE33LyVVJEi5a+WILQYJf1r75z6uKoz0LqTyFUyQ+S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774011775; c=relaxed/simple;
	bh=IWqyvQsFg1lanV8I+iC3MCVSR1nEdS0/5qOrIjLXX6g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OFB9+L+2E0sRx8pD92zXEN7+pcdFcAjLUJ0L86R9W4GBjkEuy1RlSjI+4YftqjL4izDVP5/y62AM1BbsTWyL72mupukOr90m3W4tl3ew/jq9Xxn8RY4EUDxYBpGoLma3PZH1kX5npkxnVHV8fvWdaWtpbUDXdnuHL4pMMQt3OWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VL0aslax; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29A53C4AF0C
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 13:02:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774011775;
	bh=IWqyvQsFg1lanV8I+iC3MCVSR1nEdS0/5qOrIjLXX6g=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=VL0aslaxQ8j3cGzm6v587Ak7/wEae2dSN98h7/sfhKSS547YqRZVV+1SmgsYMsrG4
	 43/RZXRgdtDgtBFMVwuOuLy5TNzOpWK4W4ltcK4a87Nfhral5hy8RRp6IjxrcRJQRx
	 syv6+TF3SkBjsyl/A90pIntDHfvkaphHwF+q2mPHDiunIBCcrtDVMzzUG8slQWLLFV
	 r/UxZyyJMczMowlcJWQ3qpezbC84QtNepMpHl79/vkVF5EE0er2Q56HK5c+Nzje1EA
	 7fcrAPbxdS2ye2MwiN57EIL8iMeOmaImgafEo22VE/jhqvWLqCLCY9nSMvEEAD+CJE
	 KKsPTh8MHgZiA==
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-7d7d4ebccf7so1404783a34.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 06:02:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXjyDHJysuTZPJ6ZgDVTXpvqmR6nQ4NU5vAC1S5aNSVTRjFitrKr8Eb9ZS5R2Lnz0EXAy+O8QG5KCcX@vger.kernel.org
X-Gm-Message-State: AOJu0YwvHao8FGAAO463HD64e2DHj8RRvH6PUIiZlWNlI4Q8dbSZxnI5
	2DYTV6doCeqB4Y02THgHT2yC24IZx6ABMjDgFET2gWWzve3t0kpEp/ENSK59ghzedOoM7XsYrOw
	KKglvSJpsxZXXUc6hoavXb9lORbZART0=
X-Received: by 2002:a05:6820:3081:b0:679:a58b:bf69 with SMTP id
 006d021491bc7-67c22bbc299mr2080548eaf.3.1774011774349; Fri, 20 Mar 2026
 06:02:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260318-gift-nearest-fd3ef3e4819b@spud> <20260318-whisking-steadily-91b2497f6fb9@spud>
In-Reply-To: <20260318-whisking-steadily-91b2497f6fb9@spud>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 20 Mar 2026 14:02:42 +0100
X-Gmail-Original-Message-ID: <CAD++jLnx_UKGqhyMK+TcYX=8UOGW-MtDYMm5FRFfh_iVkZTBFw@mail.gmail.com>
X-Gm-Features: AaiRm502-KuR4fUsvKOvd9AOtxbBgChisi7o25yu1nhHfdwnEmoVld1OFC1l9-M
Message-ID: <CAD++jLnx_UKGqhyMK+TcYX=8UOGW-MtDYMm5FRFfh_iVkZTBFw@mail.gmail.com>
Subject: Re: [PATCH v13 3/5] dt-bindings: soc: microchip: document PolarFire
 SoC's gpio interrupt mux
To: Conor Dooley <conor@kernel.org>
Cc: linux-gpio@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Herve Codina <herve.codina@bootlin.com>, 
	Daire McNamara <daire.mcnamara@microchip.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Bartosz Golaszewski <brgl@kernel.org>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278277-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.730];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,microchip.com:email]
X-Rspamd-Queue-Id: 702B92DAA2A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 12:04=E2=80=AFPM Conor Dooley <conor@kernel.org> wr=
ote:

> From: Conor Dooley <conor.dooley@microchip.com>
>
> On PolarFire SoC there are more GPIO interrupts than there are interrupt
> lines available on the PLIC, and a runtime configurable mux is used to
> decide which interrupts are assigned direct connections to the PLIC &
> which are relegated to sharing a line.
>
> Reviewed-by: Herve Codina <herve.codina@bootlin.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

Rob explained to me how this works so looks good to me!
Reviewed-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

