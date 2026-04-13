Return-Path: <devicetree+bounces-286921-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMqRENqn3GkEUgkAu9opvQ
	(envelope-from <devicetree+bounces-286921-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 10:22:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FD23E90C3
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 10:22:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D0AC303F7FC
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 08:18:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C3C93A7591;
	Mon, 13 Apr 2026 08:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SrqBdkSz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1B273A6F0E
	for <devicetree@vger.kernel.org>; Mon, 13 Apr 2026 08:18:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776068284; cv=pass; b=Awi1dICfHsMxYsk5ODOfMDpV6Wth1aXczjmXxgJ4DLGWRuf4bgfDyoMr9D9Yi4VLoJsUs8ad8bQC5J50flGbf6ySxdH/Go+tTwHaDYckJtPyD/LVTtspS6/LU8kXLKkI3KNdq/7YwSDUWKQbVnxPhWolVqqU/o7wOlAvU6PsLQY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776068284; c=relaxed/simple;
	bh=Kr7oDKdU55g5UujuqnKWNs4YuX6K9H43zs6YbbtsyO0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t44MzWyBDFXBDA+G1NQMqRm2ZysRVG9SFFiiwk3wwC9Ez9QB0l5AoQR7CeZfJsKz6v889vbZuBjgJ3B/FLDpjzRKXhb0ggzMqnQMgUnBcdC8t1pbcBeusCG63AH5eoyuUQC8/7FHqSgzSINFXTjYYQJBfRanMxN26nHQmBwh2PE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SrqBdkSz; arc=pass smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b8f97c626aaso638623666b.2
        for <devicetree@vger.kernel.org>; Mon, 13 Apr 2026 01:18:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776068280; cv=none;
        d=google.com; s=arc-20240605;
        b=b9dqP0/tDJXcL+35i8G+nT9Z4zMWcA5bdC6ommMIPJirHuSETK2xLjrnUlI0wikJFB
         xt0ec/XSavykN1nXxdhorr5Zjxg7ij9pX4WSjFafQrF1cRsgGlwXc+huTHb4B37UygCx
         n+QVAVJs5AS108+grcUg2gDtpb8v/6gh/JoYrTH3WDOEz38SZxztoATXqGv+X+MNH3J7
         sxxYbgy4VbJOOxmL4cEBnbutHX1xuMiTq4rdcaOkOFINjZwSRx24uJgYJBt1StFBFmVv
         TMZHPYuvrEfBefZza25G+Dt8x/Y1D2WyLw5rXWFu88Hodm/UcFV3hRkNwyO7W8yBV//h
         2MYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HKKtC3Qnmy/nhNGVLZ07dvj7VhPVzyQUkTlW6PGzNKw=;
        fh=BIe8Yg2cNj2eirkOuTkXBOKnqNcC7nf+gE63VdCwn9g=;
        b=jx/r56rz9kzAHpGVlTXmGHhYdYPcfAgxey8u0Y6t1wkOGk/Rh7ym5qCpZc0kTadsee
         wazXzD9lScHBqG0xoQO+uSvaegdRpDOd1M6OR7B8V+EFrwwbK7xzDGDQC9G5DrEjTSep
         GJlG11fLMm9JMn4z4/exgcAN5svB4Hy5Ttg8zqROWVTaqYp4/VpeFIwrs1Rviz5/+IZA
         BPUrxAIy0/snqkHNo4ZHS7HOaCB/T2qvhaYXOuwSznx7MiRYvwwS96TUdWpAdMwvLwEw
         lyyPrNxKtOAvyskXDkt9r73cRwtaLrD2BphKUgO7qNseKBF4cFfNY6XAN8B5uHpbsyM6
         9bqA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776068280; x=1776673080; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HKKtC3Qnmy/nhNGVLZ07dvj7VhPVzyQUkTlW6PGzNKw=;
        b=SrqBdkSz3IimTGrj3sYDJ2vp38C2TcOYM5k5gzFIAoGUp8yIcub0LceMVX+/z/nvo3
         ePark7QRopoaUOTkISEY9Bu56d70UuCvNr7PFmGqe8PYo3HZWC0FmpDggLPkbhhoc0PS
         hpbul78v6GT8P4YYRRGBrSGnSyUSBmGoICSHH/eOMnysZl19iXPG2bk/Eahnq7VTVVHO
         7bbuhemlvbG22AVCy8S40k2yo36Y4ZNaSpwnnS+mXpGbtmLiJQFK1jSxj4FqyPiUvx6j
         7IxrWSSqUeXOSsLSECdvlDnT18rTAVWjJCXhimicZjrN4EHlV8cergaMjv7RdBoW/gch
         5tEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776068280; x=1776673080;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HKKtC3Qnmy/nhNGVLZ07dvj7VhPVzyQUkTlW6PGzNKw=;
        b=cn/D3RmNZaKcGfd0+MkKgSPEG+wI3CYmsqe8mgzI7e7G8OXXm2Z7IPvXVdGfr76QJV
         qR3g02Htx0ix/wLpkmx+dljHlUWMtvf0moI5sqckBWlwg4rElwAgIudZpN0katQCHseN
         NuQyklbeQjclqbxKnB6rEgRdvB0cBlPRuOBSELBJt60PeUiCfYOj3c1zwUjZVWuG4Zzo
         N4hf9Nrnq+Jg8KsEUAEsY7pAyLO6w4X7CnF40CXoGaZJdjp7Eq6UlIcU90O5760a6ga7
         bggF36Rj+jQcjwNaZEsC5ApuueJAZZsQxqcqV2iSoG6czHCgqpn+UzIvPaoNuiDTc5jF
         k5HA==
X-Forwarded-Encrypted: i=1; AJvYcCUR1lJshxggiO1C53MzgByPAn05efAoqFZxfGOateIPOZfVVIc9gcJ6+tLc1nhF7iyydtPwo6r0sJq3@vger.kernel.org
X-Gm-Message-State: AOJu0YzIPBj81XIRkaiitsoz55wUmaShGtz8RMgOKWndPXPCpBkUnaqw
	vgSoVECwONdjEgWAZF8f5eu2kwH+Aak6CHeZkoZqp2qH0JnCMymr+p9vBlKXwWtmDPsibqKzCb9
	aqnBhgihw0MItN+5RmZ3enzDX/jZpBSI=
X-Gm-Gg: AeBDievygrxovoZWmWRrprWGcuDc17TD7UyJJanH18RYpI1xHW4xhv30mIK/C7DoW/M
	3luwTGIdr74eaq90sq7fGuu6AQtXZ8FGe/l26LBLioSNcphrfzGLynbgi3q4p4om08ciuYymBUp
	ZD8nwFcKVhpolKplcX0dIHnjDvi0XWboxy7aUKG9stATRCQKI2H1otCCQgsWv907MrpIIEaRD6I
	enPRgAy9IsSL8ry9O2xwaQYM0u0l8Vbp35nIEUKKFD9wnAjigeSHohazEwVleXyUSqYnj89aCXa
	Q9dvyQGNYJ1+oigxnw0F1HC+Xhj1D/zayV5C6yROgFuU4v2kSKgJpHVIUMW44sv0zsgAnrG5zu2
	jmOYFRNo=
X-Received: by 2002:a17:906:ef0c:b0:b97:34e7:ea87 with SMTP id
 a640c23a62f3a-b9d7248ab15mr627211066b.19.1776068279504; Mon, 13 Apr 2026
 01:17:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1775900045.git.zhoubinbin@loongson.cn> <CAHp75Ve59GPAFvKM6yOkPmr=kmHBjVL-Vz78X0WDikiWd+2arQ@mail.gmail.com>
 <CAMpQs4+QmyAObvCcJOFnfTuufG8=M0q5m+XMkaP6-SOp-8wq9w@mail.gmail.com>
In-Reply-To: <CAMpQs4+QmyAObvCcJOFnfTuufG8=M0q5m+XMkaP6-SOp-8wq9w@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 13 Apr 2026 11:17:22 +0300
X-Gm-Features: AQROBzBJwSsZg2tUBgFtmmJxajkFQLHqP5eXC7UwkUnFX9NthWB1sHncPf4yD5E
Message-ID: <CAHp75Veymi3z2atMuSeDyrhyx-HLHgCMzJF5EgpJZzTGgpcD3Q@mail.gmail.com>
Subject: Re: [PATCH v7 0/2] i2c: Add Loongson-2K0300 I2C controller support
To: Binbin Zhou <zhoubb.aaron@gmail.com>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andi Shyti <andi.shyti@kernel.org>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Andy Shevchenko <andy@kernel.org>, linux-i2c@vger.kernel.org, 
	Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286921-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andyshevchenko@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,loongson.cn:email]
X-Rspamd-Queue-Id: 92FD23E90C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 13, 2026 at 11:08=E2=80=AFAM Binbin Zhou <zhoubb.aaron@gmail.co=
m> wrote:
> On Mon, Apr 13, 2026 at 3:52=E2=80=AFPM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
> > On Sat, Apr 11, 2026 at 12:58=E2=80=AFPM Binbin Zhou <zhoubinbin@loongs=
on.cn> wrote:

...

> > >  - parent_rate_MHz -> parent_rate_mhz to avoid CamelCase.
> >
> > Was it a special requirement from maintainers?
>
> I=E2=80=99m actually a bit confused, because when I submitted the v6 patc=
hset,
> checkpatch didn=E2=80=99t issue this warning.
> But now, it produces the following output:
>
> scripts/checkpatch.pl --strict i2c-ls2k0300-v6/v6-0002*
> CHECK: Avoid CamelCase: <parent_rate_MHz>

It's a false positive of the checkpatch.

> #512: FILE: drivers/i2c/busses/i2c-ls2x-v2.c:437:
> +       priv->parent_rate_MHz =3D clk_get_rate(priv->clk);
>
> total: 0 errors, 0 warnings, 1 checks, 574 lines checked
>
> NOTE: For some of the reported defects, checkpatch may be able to
>       mechanically convert to the typical style using --fix or --fix-inpl=
ace
>
> > Note, the physical units are special. The m and M have quite a
> > different multiplier value. So, even if asked by somebody I think it's
> > still arguably should be kept as MHz.

See above why.

--=20
With Best Regards,
Andy Shevchenko

