Return-Path: <devicetree+bounces-273695-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMLwKF9jsGloigIAu9opvQ
	(envelope-from <devicetree+bounces-273695-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 19:30:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B032566B5
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 19:30:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 673E7311010B
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:30:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F53E3164AA;
	Tue, 10 Mar 2026 18:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVt351IE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBAB73161A4
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 18:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773167416; cv=none; b=Teq5YgvGFZ3y4ke+ygvOJ3P01nUPoVQg7lwiuTYOW5HPI+euQGNytff4uvWhdBmsbB7NcBvUc4LNXxBQFth5V2dgY23Tq1fWR0CUWbx6JZgzExwuWxTr6+FKTQ/1S6RcsDh67m8frIAjncf06+l1tPmRpTqj2RucTGF705r8acE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773167416; c=relaxed/simple;
	bh=aQlHMtCyk/aiLXV0M0P+Eap9vVmkJKZ3nEtOiif8yFs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Pc3ssIRbS+cnMJ84dki7BYteZ5Q7EHKxfEQS0OSmr3cWzE5owri2tLHMHeADhC9/JAT3wvKxybhB+gp1HNSD1XYOrNMABBYkd6D+PoGrJpLm2yhfJuXalbTah7aIjac7/Ca9wtHWAyent7I+/RO0XgFngFpM++n58QX8CgmJDNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVt351IE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9670AC19423
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 18:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773167415;
	bh=aQlHMtCyk/aiLXV0M0P+Eap9vVmkJKZ3nEtOiif8yFs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=bVt351IEoFi5+UWDbxI9FAUSa97i/8zXIhdXcP6Zx3NkVE4wdkURVMwX9zlLpbmqX
	 ge9Q385hvvSRWdzlGY0Uv/7Xc7wM/Gc14UX9GO2X+DPyaTWatC0q9q+4OARxjZWPv2
	 7IBV/zoaJYXyWrBoxSIQm0woqo24tFSsLotD6u3JYn4fzjYrdSbojuwkx9md2ZGeJM
	 L2dXiNQTPqb4fJxTb0WnbAeQZLzs4EV5o7+AnDSrF2MiSF3SzcU723jzGtv1A//YeJ
	 kgb73p0JVpSlM9C0ef7EKxhUbeAUBfwvDlpKKcLL8vWD2vbIi4c8pmUAXLBu3yv13d
	 UJXN5v5ML/7xw==
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-662dc987dfdso1494369a12.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:30:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCULfB6sc+qHmRAjZU8bcdS7EjmhbotnqZY/1cQ0YQuAsBVRLk/6t+Tu419lk18YMKcNrCBiyBaZy20Q@vger.kernel.org
X-Gm-Message-State: AOJu0YzNDqX1FpkCTbYAnNWhwGL3sOFToxVM58EpQEMHzebxVXC7X7kc
	08whi1wZdCf5wxfa46Lah7xA/Sc80ENFEvb56yf02vff4iysRzdhHIpLuUr5BbN+53PmULeQB0H
	vo2erztlionMJizrufncWQLZ99qorFA==
X-Received: by 2002:a17:906:f588:b0:b94:29f9:34c2 with SMTP id
 a640c23a62f3a-b942dfb4792mr846273666b.34.1773167414119; Tue, 10 Mar 2026
 11:30:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260225-perso-fix-spear600-smi-yaml-v1-0-8ef3d205ab3a@bootlin.com>
In-Reply-To: <20260225-perso-fix-spear600-smi-yaml-v1-0-8ef3d205ab3a@bootlin.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 10 Mar 2026 13:30:02 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+WE33tSSqywbPN3g8i92foVmqna6K2zaFO1RUreMvB-w@mail.gmail.com>
X-Gm-Features: AaiRm53GadTJk1y1FXTWSOHUjVdcwczpoucawTc3iDJf70yoFWL4SacHxaC7LH8
Message-ID: <CAL_Jsq+WE33tSSqywbPN3g8i92foVmqna6K2zaFO1RUreMvB-w@mail.gmail.com>
Subject: Re: [PATCH 0/3] Fix spear600-smi YAML conversion
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Akhila YS <akhilayalmati@gmail.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Conor Dooley <conor.dooley@microchip.com>, linux-mtd@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 01B032566B5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[nod.at,ti.com,kernel.org,gmail.com,bootlin.com,microchip.com,lists.infradead.org,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_FROM(0.00)[bounces-273695-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,bootlin.com:email]
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 10:24=E2=80=AFAM Miquel Raynal
<miquel.raynal@bootlin.com> wrote:
>
> Recent conversion from txt to yaml of the Spear600 SMI binding by Akhila
> lead to warnings. These are my 2cts in getting the yaml conversion done
> :-)
>
> Cheers,
> Miqu=C3=A8l
>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
> Miquel Raynal (3):
>       dt-bindings: mtd: st,spear600-smi: Fix description
>       dt-bindings: mtd: st,spear600-smi: #address/size-cells is mandatory
>       dt-bindings: mtd: st,spear600-smi: Fix example
>
>  .../devicetree/bindings/mtd/st,spear600-smi.yaml   | 26 ++++++++++++++++=
------
>  1 file changed, 19 insertions(+), 7 deletions(-)

Still warning in next and v7.0-rc without these fixes. Please apply them so=
on.

Rob

