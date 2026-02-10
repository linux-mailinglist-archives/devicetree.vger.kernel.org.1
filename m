Return-Path: <devicetree+bounces-264549-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJg0Lw6bi2k3XAAAu9opvQ
	(envelope-from <devicetree+bounces-264549-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 21:54:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4890911F22D
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 21:54:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8832E3008D41
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 20:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D15E334C24;
	Tue, 10 Feb 2026 20:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f3+wPWSa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA8D03346B8
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 20:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770756876; cv=pass; b=PJNg53uPLXKN4WEDSv+UpfXDBFwr31EBXDXDzk64yc4jikPzgLmWgSyM7N+Ijzrh9Io+kzq4oKakQ2w2GAobjq9uaiYgRNJTjVW6yyPCjJAh4hS5AIEWKdJ6bovijFaJ5XeOIQNostPLB/y166rDcoaWWQeYuDMnTno+71bpvrE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770756876; c=relaxed/simple;
	bh=q3FqIQvO8cvkl4nCC6YTH6him8mnQtv/Z9tzeCFgRWg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aBYLtGmnWYoPis6HSnH9HPXOii75U4mzfm2b0IDGhlVl4Rf4meBQyXb2nhbFKfr87s4fKI+MHlj7WjW6Is01Bi4lVq9T6gx9Pz5f4i9sd7qO9uUGi4+nvtK1QVKhnnQlbVI8nLLk0WqvHkENOUdwJvgwr1Fa3Z7iDceah6z2XTc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f3+wPWSa; arc=pass smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b886fc047d5so1101591766b.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:54:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770756873; cv=none;
        d=google.com; s=arc-20240605;
        b=Ag/H9ztNXfb84oTsNH4NZ+d5/qScBi3cc2uysEcczj5neDllOPquhgLKY8uSKNoBgM
         J39RvTBNN4ykn1sMyZTFOyxFsTLGnpaJkXq6KvgtCsDfCptUYclaaFWqyThQz7zIA/tW
         ZjOF36Q1PT8Hlj2BoKaV+NVGhI6fWpw/exTICflGwAk2FVpPFRnVY3DpDWHtpfE6PK7m
         /iBtMAvJS9EGkBtwKB3FwMxOniMbeECtw/Bvm/O86ZOL9RkitePlRAxVA6SwEPFL5yUy
         39GZNPlga/0SqsFOOBZP3hwROYUaOB/XJucItrJi19WDHvfDgl7FtZDPCjIvx7tQAOFH
         2EHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=M0+zRUlOfUnZOOssxXAVkmpFMr6RYTxI9SHoGCQOmoo=;
        fh=/gEJSdh+jz0+GobhQsLfR2TPoCVpdTD8Uc/kBj13xXg=;
        b=Z8FQ1G9WbwQBF53PpHCePLpEs7r07XBD8VLUgaI2tKQ3LgtSOOH8VyUfSofos68ud1
         EwXicVHBMsW205YH0jd7HYuw0GN0hxH4RhjFcirCJEPSkI2p/tzQ09Q8vxR+49AjjXqW
         WwzTlGDh7j5yK0B2nXbuEJG9TablwSxHBAe3xwZ2HuYS4883ytOn2hhhZ/KBs+he7pRY
         eYVGdev2A7EVEMtSRMVPFqVZfk1njZfGMpYxOIAe5yCSGOg1I8ILghKD2Xk1FGI0tHNJ
         hM3qW0CboXcwyLzBOU0alkRtgKqj+YV7Y7kDex2Jv6DT1+ey13gNCG3p99SN68K7Q55g
         1Atg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770756873; x=1771361673; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M0+zRUlOfUnZOOssxXAVkmpFMr6RYTxI9SHoGCQOmoo=;
        b=f3+wPWSayTc2E60IhSxm49E0QL/luMF3k7mjZP5vHil72zAKJ2vHTduHOaf7/+5wM/
         RCJtBd6y9rx/R7yQaDiecPU/emfu0T+RRwEGLYre128N9olNEyVhm3otiGL6MuqCFcbh
         g9kJkPxaKZvDIWA+8WSw06SXUuFdvYZmGmRuvZe7JAc2EpW5gKUB6cyDrbNQ74NVc17l
         62aqyLEeG0+8X+gsWKgcSmuKelUafIqRHWFLI5T97CbS0SzUMvgKZFc3quhlW2lgMUAM
         RvHvkwO0Utimskn0tsIGHyOpr3RuE6/TzTyCsVp28482R0UtRVXPGsM40UafunSNCjnb
         DxYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770756873; x=1771361673;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=M0+zRUlOfUnZOOssxXAVkmpFMr6RYTxI9SHoGCQOmoo=;
        b=D9O70tt/igAssJ37e0laykGhqpWVrth2rCYtP73JzQ/RBWFFY+UJT8uG2EZJIz1k8p
         6BzB1HHI1V6X7yQZR8tiTdfrIQywVycXkyFiYETDrn1fbXgE6u5QbjayUdA8+hTf2nJa
         4lLSPdDutdZDnNKe9oiuJx16ncRdu9HbSwIcvSX6Mi3zSNwcIvhKw6dpFosRUk4CVCAb
         2z1SEYzeYIpt9APoreLsUNz4glMm2wK3wp1ZRKH9qO3y8nCY3bciK10BjSJ9OiJr28eU
         I1hZIyd7N+Ef1qgQXoaAqndhWYaLw/PQ2k3A8DUrZhWymrJENPxvcQRC6nAzeilWvMlu
         v2bg==
X-Forwarded-Encrypted: i=1; AJvYcCU/+7NM+vlouqflXibvRqtU9hl6iKr+FdKRQG6SDZ9wG8nI2UlLW795P8LHOA7rrchNnpV++j1iLvjJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwzMLtvrElqb9Ga6cZ+FcEYLKt1B+Dwx7eedJKjiwLmX3n8YfsK
	/x1LaAMvSU24vlnNMfG7wtuTEgnL95Dy8C3d+G+uh4L5sLZrwTpdjC4njmv6txu8O2A4/y1Ogqv
	3r1oTiJpuqEK81JZL9z/rROvqxqF1RIo=
X-Gm-Gg: AZuq6aIwN7PXvUR9puEiiOTZPOHBhnXzW/raGokcoxdW8CW7L54RMQjcD+Keu/K5pCM
	ixJGSKc/J0HbKYm6fhEswzcU+9mTmv9ap88Bc9iWaxs8DSwfT7mOiDULMZUFrd8IAY+3RzozTjT
	dq6qjLSBMt2CfQnZ78AselfvsnLns0CS6BCJvfAfJ4hbz9no9gxUIo/LVfF5A8wfY1MoQxgZ37C
	d4Ih2lsMGvLh5CQwsK79SbXjfUiSA2STrUwrwmFQwN4wQnXFNf31DfL/vzWC+UXFoLJpRyNjMH3
	x9jqdrlO2WGUXbBRKdGwJdLUnOhr03fahYo+lWcgKSSRkHAHt9nC39TKRC+KNP/x1jMB67f6LIS
	Q7XIwhD8=
X-Received: by 2002:a17:906:478b:b0:b73:5e4d:fac4 with SMTP id
 a640c23a62f3a-b8edf17c3d0mr872130166b.7.1770756872908; Tue, 10 Feb 2026
 12:54:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260210-cm36686-v1-0-aef68dd46ad4@gmail.com> <20260210-cm36686-v1-2-aef68dd46ad4@gmail.com>
In-Reply-To: <20260210-cm36686-v1-2-aef68dd46ad4@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 10 Feb 2026 22:53:56 +0200
X-Gm-Features: AZwV_QiJ4Iw7UcJSk9ruANiayx_rurPPFTMjvoK7bffS_WbsRrm1pZ3P06rt0sE
Message-ID: <CAHp75Veczn--S=G0iEyUOnVYZ5rT+F_Sw1=6YOo=ynPiKPHF6w@mail.gmail.com>
Subject: Re: [PATCH 2/2] iio: light: vcnl4000: add support for Capella CM36686
 and CM36672P
To: Erikas Bitovtas <xerikasxx@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Meerwald <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
	phone-devel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-264549-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andyshevchenko@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 4890911F22D
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 10:46=E2=80=AFPM Erikas Bitovtas <xerikasxx@gmail.c=
om> wrote:
>
> Add support for Capella's CM36686 and CM36672P sensors. Capella
> CM36686 is an ambient light and proximity sensor that is fully
> compatible with VCNL4040 and can be used as is. For CM36672P, which is
> a proximity-only sensor, also remove the IIO_LIGHT channel.

A couple of nit-picks, otherwise LGTM (much better than the first
version!), thanks.

...

>         { "vcnl4020", VCNL4010 },
>         { "vcnl4040", VCNL4040 },
>         { "vcnl4200", VCNL4200 },
> +       { "cm36672p", CM36672P },
> +       { "cm36686", VCNL4040 },

Keep it ordered by device name (string literal).

...

> +static const struct iio_chan_spec cm36672p_channels[] =3D {
> +       {
> +               .type =3D IIO_PROXIMITY,
> +               .info_mask_separate =3D BIT(IIO_CHAN_INFO_RAW) |
> +                       BIT(IIO_CHAN_INFO_INT_TIME) |
> +                       BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO) |
> +                       BIT(IIO_CHAN_INFO_CALIBBIAS),
> +               .info_mask_separate_available =3D BIT(IIO_CHAN_INFO_INT_T=
IME) |
> +                       BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO) |
> +                       BIT(IIO_CHAN_INFO_CALIBBIAS),
> +               .ext_info =3D vcnl4000_ext_info,
> +               .event_spec =3D vcnl4040_event_spec,
> +               .num_event_specs =3D ARRAY_SIZE(vcnl4040_event_spec),

> +       }

Keep trailing comma when it's not a terminator entry.

> +};

--=20
With Best Regards,
Andy Shevchenko

