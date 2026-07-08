Return-Path: <devicetree+bounces-323236-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pwbXAnzXTmrqVAIAu9opvQ
	(envelope-from <devicetree+bounces-323236-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 01:04:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CEB972B065
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 01:04:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=EziJL83Z;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323236-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323236-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 10479301A90E
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 23:04:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8461738AC79;
	Wed,  8 Jul 2026 23:04:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A83379C56
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 23:04:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783551865; cv=none; b=UQrxbJFn4XXPUpiXQAkLIz0rI+7S8k5a3jX9qBFurFtTbqksGyFnaxHKL3tyQ9ZhSr5kFta+UzGBfZyOLjJNbrVeOAETQWpPgqUOpYCayhsjtJX78g7zWyWrJcof1HbXseEMlMMAp2hO5sDdxFE/+Pgnez7ucuaeJrA8eTyoDtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783551865; c=relaxed/simple;
	bh=CkNmuXkrm9AphV+/HDd6pBopBJF4hZCxb/bQkVXOVeo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TX31ERH35XtBBg8ovxJaRlm2A+PqDJ7fk9Y07R2kVEn3mxt5jUI5Bte59YnqYQfRF4BBoDXRhv3RlBxekHX3uzy330bYEAdUooHCinxAXcNSh3YpO1932Vv7oRLdbJre7coqfAhwzl3EXkoIDCAB4is3M7fWnMrLQTdfZweKpJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EziJL83Z; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D8CA1F00A3D
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 23:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783551864;
	bh=8tvZnKf1EOonCwnHP7yo3nXIfcSxA0v9m4Yyik+z4Cs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=EziJL83ZwjmOdH8rKIzYYM5xWx9AV+mN72k+16zfJeE43A7vJtAVIkRwOAI3InNLK
	 l+awAsneO7Hg5CjwUjrTYLLIBKNuJfZDdtEJNVzeV0DO2LlGPUAoyCMT5OnRZWK1LW
	 G+DcWWuWsQs5LwnHvtR0USI+NtX2aPd4PQEDSCiqc/dU6cMn3FpW57zbqbHAw/dTCp
	 JYs/iOkGRG8qRmk1DDl3x4T50gFckp3NORnrBW3uhkf18ywyxrRwyBb8OIEB9szXU7
	 avIidXBfSf5ptm7P5KUCojcxsmNtPE8cCQ8GZm4EzZFMABlncEtY3P5hT9dkBf0hTo
	 zJrMuaDn0ZWSQ==
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5b0117dda13so1062339e87.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 16:04:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Ro5Fj9omrlVcz2erDKZiHZL2eegtKQXC9eqzp/ziKa2AJ+WOCy34p8F4UPxOLXXotyTXi1Tq0TFkOIf@vger.kernel.org
X-Gm-Message-State: AOJu0YwflTP7gka5Bi468HfLkTPZQnuaDjIDLMyibIcFIsPJg0hXLH6L
	Xf+NYuiCCQBcgWT3Pbq4kEVCtbq8a/GloxZEC9jBIsmjd6ymCq+UaYX4zBeb15sZJtIZR6VHLSl
	4McQzbEa7VocMXXSEL565ROo4xcNvmKM=
X-Received: by 2002:a05:6512:8353:b0:5b0:161f:8fc6 with SMTP id
 2adb3069b0e04-5b0161f913emr95235e87.40.1783551862865; Wed, 08 Jul 2026
 16:04:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260709-ixp4xx-little-endian-v1-0-e9622d0ba9e4@kernel.org>
 <20260709-ixp4xx-little-endian-v1-2-e9622d0ba9e4@kernel.org> <20260708223722.439381F000E9@smtp.kernel.org>
In-Reply-To: <20260708223722.439381F000E9@smtp.kernel.org>
From: Linus Walleij <linusw@kernel.org>
Date: Thu, 9 Jul 2026 01:04:10 +0200
X-Gmail-Original-Message-ID: <CAD++jLkf2uOsE3zS_nYFixtaQ4ACW7JqBcUFJoh8bJqhQcBK3Q@mail.gmail.com>
X-Gm-Features: AUfX_mxt60m0a1t2Co4EqpdX4ktVI3XjLJEizNvOZ2LEV4BhQgAs1wllcBye1nI
Message-ID: <CAD++jLkf2uOsE3zS_nYFixtaQ4ACW7JqBcUFJoh8bJqhQcBK3Q@mail.gmail.com>
Subject: Re: [PATCH 2/3] ARM: ixp4xx: Relax endianness
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323236-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4CEB972B065

On Thu, Jul 9, 2026 at 12:37=E2=80=AFAM <sashiko-bot@kernel.org> wrote:

> [Severity: High]
> Does removing this big-endian restriction break the IXP4XX flash driver o=
n
> little-endian builds?
>
> The physmap-ixp4xx.c driver documents a hard requirement for the byte swa=
p
> option on LE systems:
>
> drivers/mtd/maps/physmap-ixp4xx.c:flash_read16()
>  * This means that on LE systems each 16 bit word must be swapped. Note t=
hat
>  * this requires CONFIG_MTD_CFI_BE_BYTE_SWAP to be enabled to 'unswap' th=
e CFI
>  * data and other flash commands which are always in D7-D0.
>
> However, the MTD_PHYSMAP_IXP4XX configuration conditionally selects the s=
wap
> only for big-endian builds:
>
> drivers/mtd/maps/Kconfig:MTD_PHYSMAP_IXP4XX
>         select MTD_CFI_BE_BYTE_SWAP if CPU_BIG_ENDIAN
>
> Because of this conditional, LE builds fail to select the requisite byte =
swap.
> Without the byte swap, the CFI backend defaults to host endian and the dr=
iver
> sends mangled commands to the flash, causing it to fail to probe.

I have tested it and it works, so no.

Yours,
Linus Walleij

