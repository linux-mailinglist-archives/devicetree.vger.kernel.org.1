Return-Path: <devicetree+bounces-263094-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKiYAlbMhGk45QMAu9opvQ
	(envelope-from <devicetree+bounces-263094-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 17:59:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D3DF5949
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 17:59:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 35F08307240F
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 16:54:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E8B443C044;
	Thu,  5 Feb 2026 16:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e50E3c+f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E3B3A9620
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 16:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770310457; cv=pass; b=n4FdmyDBZjINlN5lIIZoXe709n43WrieCH8TpAPEGFBQWr3l/z0MjOp7eEH0FD8p90H57IF16LvhZtVVuCdrrMl0qBaly9hXy7pm0but/LE2IlV/gTzcTOGoKBlcqL+6miR2wHR7F/Vdu41PNwY2GtnvMtAqR+zM1r91gK5aipc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770310457; c=relaxed/simple;
	bh=OpvS9XyVUoyw+oX1Lr7fUn152Rj180s+IMS/CRzzP4U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZlFv7fxwKhcc03Sw8MbnEQ5ZhyYGzK0unLqn67njXcGCIDXL9TsyGuyBAgfPx18V79JJ9lWn2FiwIdti5RXUerdMWWcpHdC1+yTjhDSPFvv1b6SBdTk9lkzFMyAKT8TSmkjho5tkzMnzLhKI1zdMPt61C4mECBNYd8xM7tPaiMY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e50E3c+f; arc=pass smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b885e8c6700so211663366b.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 08:54:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770310455; cv=none;
        d=google.com; s=arc-20240605;
        b=Cg3xV7vhNV0VZM5kKCEVAf7U2u8LbXQIxS2/ClMySif5K0/zd7ba8cB+bIb32CHXMc
         ED+ZuMuIuGKUOS/BC4AEQFQj082ZlZDq2lpxIx2ef4fhzcqaou3LK4GhU11DsQfEofCm
         5bbhmG/5PUw8op7aG3IxAsBsNA1T6p4zR+oMQb188Fq85CPljwjHiy/yQalzu1QXdLpy
         NO+7LSX1MLgVi4cMR3CoHB/nccYQhsSDk4neAbqmOymbYpH2KI+bkrlNopgeS+ELq4Q9
         mZLMCYY3uOOfGRiQEjfPmjflCkaxWRbLAKi/UhZfJCsZm1dc0LTUTM40piPa1DTrSgNl
         txmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Mok7tSoTC7RJ19nbmvu/1cT2bgwCt+f3Z/EsF+273Lw=;
        fh=UawYj00Wj6WMlNN5MHnRiv2rMy28wngQzjyfyju7HjQ=;
        b=Ab4D6BHq1jamRKFv7IW+s9dFGgrCSwoBVODCBfSXt9bkqlLWFn5lKHeoA+Qr8gFqzG
         QiynSN9tqfll3swVo5EGH31wjEvux9EUV2B5zaJ9ggMYrhrjXGYCzYbccPRsoKVDD34c
         enWEhAyLQyfR5cV9+scvLRe9I6Ho+HK3TQGtpJsyfrYdClTV9sfdva4dIPrnfj0vnMoR
         PqbR4oFZ7MU3xlG+Pc7l6vJ6tb+dk72d4hmkGdBd3rNoCH73YKdZKBuoPca/4eqd2BeE
         oJRSCdQgr/dvOsgIcWEYAWrV3KlKSlbEWqKaFOED3HFhW6JKGkucSoLrbmNoOJFMtTHz
         OTJg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770310455; x=1770915255; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mok7tSoTC7RJ19nbmvu/1cT2bgwCt+f3Z/EsF+273Lw=;
        b=e50E3c+f4Da0k+Q/3Q8f6VXWkUv03psrrJVDfQ58zas5t/ua/TaDNPhnW45UvQXMC0
         lqBc9mXfZZ47u2gBxugXxViYfAInMRrfii3Kp7SC1f6o9Tq+tDdG8R2TpSpjJnc38YK4
         BczhPHgOAkME6NwS5vmiuaUDkvTY3rFu19+pLgvpn80o7lHvUBzKybJaMsv5WgJ3alxD
         tkd6idxlXtdq1blPngEQlk045RnApB6JkUxWLuU4W7bX2UGaRG5KnI3VGyvfRSz9g8lw
         u2BaJhgG8zUA6k/Pm4ggSR8MSyFwBpe2AMhcx6+TGWTxy1OpL2fhE6TrHE+3HDsyBmGf
         xHLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770310455; x=1770915255;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Mok7tSoTC7RJ19nbmvu/1cT2bgwCt+f3Z/EsF+273Lw=;
        b=pLRiRgb5r/0ipsZqcCwgIVVVewA9ZtT+PlLgbF5F+DcNyduOXzmMs2M2VrF+K0deL0
         GSOddalPsD6HePv4I7gegLkkdzHjwEmE6bcqI+v0xB0sZ8KSO7m+JVw/Ep6hw+XpFIoD
         9MPV2jyQn7IBs8c5uCxGZqshvyTH6rnNBuws8gWbanebpId4tMl09RobOS1kltpu5XKD
         q0Ti1mPduh8zMa68LzUr0BdGmSynyaYR2oQOD7TFJJCUejAjITziggzP0oKhXQ8t2Tgw
         mhBedxfBZ7sP5wv+eaQokqIudDz+7fCMtHVh1iU4tX+R/6/VOyxa0KY3yDUJ3i1a4hV1
         ohPg==
X-Forwarded-Encrypted: i=1; AJvYcCXZUOLPOU7VnmyQwCxylm3tqbNoQJ2Ey4dOrACtuAFUmhMk1VR1E2kxooncNefAikvDVzbT4O8vI44Q@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+Yt8l3+fJJH24UmPjjAEMqlpfx0hfVzgB5zNC1lu4c9CuSjpJ
	y9vqyUP3D7uYo/vaCh/HMe1pDMKvni0XKUWcje1M3RWHZM/RFlrpikv1DEs4kPmsxnQDbpmkj5V
	dVtNPkxuWCdaSJ5Y1TdNTT2OkfkQjOCo=
X-Gm-Gg: AZuq6aJKissCgRgRpUsfW6r0yBeMmVutongwctG/XtkdmnXdNAy1IyxYwbrCBqcOp6V
	IPiisBQOj7S2juiBF6kN/uNoo06nG8EZCouw1BBh+Ci3y1CK3t1W8csgnxOOrj3716Jj5vdkpyN
	cyedS5XMfxX29zfpz0/LAM3khMcvbbL8vM1CKd9kFA0qbNw3AEYfWy+pTxIxrC6tzBKluI+r8FF
	4VzociF0VOImro7R+MmtQCFn2843GeINHp65I/ejSuhMuwWy/DrceKm8eilvg6RzfmbjQ/I7iOR
	K1bLxnekaPD4DwSxUqypWYQr8z6OQC+mITsBVrjBhW5dd5Ff3OKPcrppLPfvJm+V1PI0X9Y=
X-Received: by 2002:a17:907:94d4:b0:b87:2fcd:1955 with SMTP id
 a640c23a62f3a-b8e9f40de76mr467741166b.50.1770310455075; Thu, 05 Feb 2026
 08:54:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1770309522.git.marcelo.schmitt@analog.com> <a5721b31e7cbf8327c74d761757d9051c289297c.1770309522.git.marcelo.schmitt@analog.com>
In-Reply-To: <a5721b31e7cbf8327c74d761757d9051c289297c.1770309522.git.marcelo.schmitt@analog.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 5 Feb 2026 18:53:38 +0200
X-Gm-Features: AZwV_QhA2nGFwsXuz10t8Kj4Zl8EbQywBy3FuQIW-ZrEVDmxdKmmWiomaychFD4
Message-ID: <CAHp75VdFvVMBr6U40wQ-9Eo3e-svsdfOKhkEt0cfUbFoDbdA3g@mail.gmail.com>
Subject: Re: [PATCH v7 7/8] iio: adc: ad4030: Add support for ADAQ4216 and ADAQ4224
To: Marcelo Schmitt <marcelo.schmitt@analog.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, jic23@kernel.org, 
	michael.hennerich@analog.com, nuno.sa@analog.com, eblanc@baylibre.com, 
	dlechner@baylibre.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, corbet@lwn.net, marcelo.schmitt1@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263094-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,lwn.net,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andyshevchenko@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 45D3DF5949
X-Rspamd-Action: no action

On Thu, Feb 5, 2026 at 6:49=E2=80=AFPM Marcelo Schmitt
<marcelo.schmitt@analog.com> wrote:
>
> ADAQ4216 and ADAQ4224 are similar to AD4030, but feature a PGA circuitry
> that scales the analog input signal prior to it reaching the ADC. The PGA
> is controlled through a pair of pins (A0 and A1) whose state define the
> gain that is applied to the input signal.
>
> Add support for ADAQ4216 and ADAQ4224. Provide a list of PGA options
> through the IIO device channel scale available interface and enable contr=
ol
> of the PGA through the channel scale interface.

...

> +static const int adaq4216_hw_gains_vpv[] =3D {
> +       MILLI / 3,              /* 333 */

I would go with

  1 * MILLI / 3, ...

for the sake of consistency.

> +       5 * MILLI / 9,          /* 555 */
> +       20 * MILLI / 9,         /* 2222 */
> +       20 * MILLI / 3,         /* 6666 */
> +};

...

> +       gain_nano =3D gain_int * NANO + gain_fract;

> +

Unneeded blank line.

> +       if (!in_range(gain_nano, 1, ADAQ4616_PGA_GAIN_MAX_NANO))
> +               return -EINVAL;

...

No need to resend, if Jonathan and others are okay with the series, he
might be able to tweak this whilst applying.

--=20
With Best Regards,
Andy Shevchenko

