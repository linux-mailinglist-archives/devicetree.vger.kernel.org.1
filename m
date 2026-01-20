Return-Path: <devicetree+bounces-257331-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBLbIBd+cGktYAAAu9opvQ
	(envelope-from <devicetree+bounces-257331-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:19:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E953E52BAA
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:19:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B76977E6A89
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:25:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA7FE410D31;
	Tue, 20 Jan 2026 11:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fF4bTY6c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB2D3C1FF7
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768908306; cv=pass; b=b9GAeUHsLKT0JuKt0qV4mcLMXFTZFU7if7er6ElWeNSBbmOGI6mG4eSJx36ADNJYPdoxJRkOQKp8/05Zx5PWXkxtcSAwP7GKWV8ft7Hc4dxAuE0mLehcsNBx6koCZA13i0UwC/wduQdNuE9HczpTc5XZqdSHCFFnHaJWRrXjqIA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768908306; c=relaxed/simple;
	bh=NRnrSD0zAFPtVaS5sTi5Ar8t18WLmEhSZ6lKcGsCMmg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mGWsye2AyPmreflxSALseMI3qM0ocYtF4wMvjbNc8BdqDLWuBwjFXnAagTB7Piz/s1/qMIQbqg7QH19XImu0ZBM8OqsWf4hCDluUXZ4hkOCnXCxhGiUFpMfwagQPW1XvN9EgjqK08y1cUcP0qruY8ph7cDqutCKZkp7rcqJXGDA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fF4bTY6c; arc=pass smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b8010b8f078so859849966b.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 03:25:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768908303; cv=none;
        d=google.com; s=arc-20240605;
        b=RKqaxAPlAOyGkB0En84FrJirYadAsMMlv3YiVP3Guwi2WDapJ0Qm8MRqBl1aZl/XYO
         3u+MSXYTdzpOtfc25d1HTZ/NefJJVNlfupOHHTO5jODeOOEyHaHscHwY5kQwbfkDrD2N
         veSbJnqSAmn8j94YfFb+S827uyVLULDE7a6JwjqhEo4l4CH1ycb1vtCWiaO03fIrW9pK
         399ew25I4mBFHMu+75PhNVCMFiHbwFwns5n2CL9sOhEGfQ2ugEVbJbvMVVUxGNjZdqjr
         JzUyhZRiI7oomRsiZ99mzGVx6dajgteW/TsP0rQaZyjyOx5iqNK51xDA0hebrRszGZZD
         X4Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=NRnrSD0zAFPtVaS5sTi5Ar8t18WLmEhSZ6lKcGsCMmg=;
        fh=KSAgzpPsW0SEjZGoec2WLlb9gTcqauM44M8ANUxSQwg=;
        b=cvAlO+Wu1RHc7xcoeG+iS+VZ4WDY1aIctCSBH3H1VileQa1HcmvjNF14eSBn3On2s2
         WGrE5ZPJLplibGaIttkE47hLZGTnknK45xD+TSYbqA4NvHcNNwfz3l2w0+jOvOpHwXhc
         I/TR13OsoXU0VZgZgDz3zZxvalqSEHewuI1hhqKttdNGWsbcZhhwK0FIsRGqj5wH6fHu
         L4NX+QBgOKG6Wliu2eoHU8uZLmqE650Dsr7UY6mbzRPlJs18a2svSSfWWl/DqrBRMCxL
         tA3IlGIutUeXaQ/TIvx/ncGmtiGWGHLGJLwDGeyJlItxnVm9/5ZP1SF0XTXC5t5bv77a
         vuWQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768908303; x=1769513103; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NRnrSD0zAFPtVaS5sTi5Ar8t18WLmEhSZ6lKcGsCMmg=;
        b=fF4bTY6c3MbHOeQ/jKWah88aHsRPIwdCzy1n+76DzcN+krplIKkOg8JnbBr8qdeUMZ
         XLIHNPiSeBkYa0qAKsaCHGaHVzrIhEMeJh+CtaPE/t4PRy+y8+f10o2y5z5IB8oZ78Jm
         JfNzahHCQWQ5Wjo46/bNmVjJ4An2XmEnHbQAK/Pyautkqw47mw1dDp8Du70Dl9ZAtgz+
         GXkVYjbaTWJer0qL0flmGqRtOOSfxPWvaDOCAxRX+9AMmZqdfK58u+x3BAq7h4a+p44p
         0P/vp3R/Tmit/BIC5wkN7p274WeglzgE8vqaTCoKUXeRXwRo69w1TYzn4JVu2Ak1V6Ck
         Z/pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768908303; x=1769513103;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NRnrSD0zAFPtVaS5sTi5Ar8t18WLmEhSZ6lKcGsCMmg=;
        b=X8QDAf1oY7zlQMQoOCe26HXi8Jksuu7lXN+xm02GGa6L1RtVkHhB8RwTyk56lmTR48
         vc+GgnKZ2HaloiE69eJfXojwgACFFYxj3W8ugSylHxrwih+SGQlRn2fD9GhC+/ISFtOq
         ZkwHPvPzlDIfzOroQbgp2A3Tlz/u4AiZsLxoq4cil7wu37oNZ2usDc0B2Emb0zAAriBT
         Jb+ixIK/KDjTk8Gs5W7LM3O4L/Ac8BfNJL56hkJgAj5brgmpRMVYgBV9TGX8LAAC2dKr
         wCQjU21OK97vrbBfoyIi/0jc+Wixr10HGx+sMnDbHKJHQADtyl/0JLQ3IMLzh4N0UKbU
         713w==
X-Forwarded-Encrypted: i=1; AJvYcCUxVW81kpOqT+8x/7VFxCv5qxCCIsc/tkUt3Ojgf2UG5Z9HcppunquU4M4JxjqnRjaY7Hj9jK14hypy@vger.kernel.org
X-Gm-Message-State: AOJu0YwchNxdCxJbwpCTTKbm8NQnyNzl01W2xfFze+Wxfz5C4lA/zBzK
	M3pHo3TygM9SYFSRCs++YPV1J7Xccezi5+UXs6yiek/hHsqOsK/4MRm1e+qk9MXf8LbQx6AGyw+
	8vPQ50uTMbGWclvncQJtEzTyNvZxsD74=
X-Gm-Gg: AY/fxX5QGUz/TdYzXlmfRFbx5vCwjN5efxqt6fAhBhEUDQQP3/YWewxxBCth1kAoWCk
	9GD+b2RBGcxE0autRPNs0LC/mVQb72aquzwL5LWtoulSMcwMwCH0dOV9AMLMvu9qCQGwNMf8Hbu
	3eJPf4+IHmqg6eC7UiCJCNYbXqAyq71j3/ya7QaLGvCWW5MOOrdRwvX9IEmQqwkKJqr5kOsgxRj
	l4rOCZijmLukJUKVBYW4p0SnzAVab8ghmip/82KJM9VF8M4VrfSLtryClAn9f/L5ewT1mMwewnQ
	yy5XejRPnbpbTQB1xaA/BLX+MaG/jNGD5UjTPo2lXw69szoDMZ7NshzUiGOLolCBSsCdHOw=
X-Received: by 2002:a17:907:7212:b0:b86:edaf:5553 with SMTP id
 a640c23a62f3a-b8796bb20f6mr1347007566b.59.1768908303287; Tue, 20 Jan 2026
 03:25:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260116-adf41513-iio-driver-v4-0-dbb7d6782217@analog.com>
 <20260116-adf41513-iio-driver-v4-3-dbb7d6782217@analog.com>
 <aW3dxuelYDM67pqZ@smile.fi.intel.com> <texwv5s2tvcy34bwr4iruj5xofmea663pwletmpqpuh66zulmv@m7qvjgqbhalv>
 <aW40ylvMwVhqNQMw@smile.fi.intel.com> <hgy3bcrqqsvt7pobhnzuvwzhb2taetpxltkaxpigmmlvmlirod@v6anhmrsvv2r>
 <aW5kk6K30Izckvg5@smile.fi.intel.com> <e5lcg5kkey3c6u2l4rlzzpolp7qkudhcofyzcx5s2tjbh2iwkg@js3fisv23zyj>
In-Reply-To: <e5lcg5kkey3c6u2l4rlzzpolp7qkudhcofyzcx5s2tjbh2iwkg@js3fisv23zyj>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 20 Jan 2026 13:24:26 +0200
X-Gm-Features: AZwV_QiT_7RWmWfYlrbsFcBlA4d2Dt_jON90l4jrfax3VAFOpLzCvwj49Sjh5L4
Message-ID: <CAHp75VepcSZo_E4_UxhKRfHrMFDd7huJg14m8=6zVo4ENKFXkA@mail.gmail.com>
Subject: Re: [PATCH v4 3/7] iio: frequency: adf41513: driver implementation
To: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, rodrigo.alencar@analog.com, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257331-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andyshevchenko@gmail.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: E953E52BAA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 12:43=E2=80=AFPM Rodrigo Alencar
<455.rodrigo.alencar@gmail.com> wrote:
> On 26/01/19 07:07PM, Andy Shevchenko wrote:
> > On Mon, Jan 19, 2026 at 04:37:09PM +0000, Rodrigo Alencar wrote:
> > > On 26/01/19 03:42PM, Andy Shevchenko wrote:
> > > > On Mon, Jan 19, 2026 at 11:21:59AM +0000, Rodrigo Alencar wrote:
> > > > > On 26/01/19 09:31AM, Andy Shevchenko wrote:
> > > > > > On Fri, Jan 16, 2026 at 02:32:22PM +0000, Rodrigo Alencar via B=
4 Relay wrote:

...

> > > > > The current implementation is kind of a stripped version of
> > > > > __iio_str_to_fixpoint(). Would you prefer something like this, th=
en?:
> > > >
> > > > Do they have most of the parts in common? If so, why can't we use
> > > > __iio_str_to_fixpoint() directly? Or why can't we slightly refactor
> > > > that to give us the results we need here?
> > >
> > > __iio_str_to_fixpoint() only parses "int" chunks, adf41513_parse_uhz
> > > was modified to accomodate the u64 parsing removing unnecessary stuff=
.
> >
> > But why? The fractional part most likely will be kept int (it's up to 1=
0=E2=81=BB=E2=81=B9).
> > The integer can be bigger than 10=E2=81=B9?
> >
>
> Correct, integer part of the frequency value goes up to 26.5 GHz
> (uint_max is approx 4.3 GHz). Also, with the dual modulus, the PLL can
> achieve micro Hz resolution.

=C2=B5Hz is not a problem since it's up to nHz.
So, the difference so far is the integer part that can be 64-bit.
Again, can we factor out something to be used for this and for the
__iio_str_to_fixpoint() cases?


--=20
With Best Regards,
Andy Shevchenko

