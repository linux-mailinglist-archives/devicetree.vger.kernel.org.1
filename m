Return-Path: <devicetree+bounces-265431-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKgnM+VTj2lUQQEAu9opvQ
	(envelope-from <devicetree+bounces-265431-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 17:40:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C47913844A
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 17:40:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 39E98307C572
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 16:39:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 473F23659EB;
	Fri, 13 Feb 2026 16:39:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OSb+eb6s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA918364EAB
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 16:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771000767; cv=none; b=YHnsqPQq9E9MSJTW5yozNqG1QFWCrtznNamCqX2qA/ruUMkE9ZlyrOzBW1DlRCEnwQ/xepf9qvA30aJhK+m8jKxX4NUo80r0ykTJG+9HjX9YtI1o/p7eNKLoVQoSn/y6iXAsmC94SIOHPK5umVpd2NKJrXL19aEIq108n74LPiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771000767; c=relaxed/simple;
	bh=I5t+AuxYw7p7Xyx85rveOZeK24TscG2Fhq1FrAYn1hw=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=gSAjWs1S7wt9nIQSqp+ruTM3cPcp7kecG0752+FbzfNgneVGoJ8ik8jCW3cOTl6MgcCenP8h7J+VSJLA7fZ58AvLsCty/ONPfeBrW8dGOqQCaNlERaXhERTHjo21bbvga4JgE5Eaf7M9b8zLT19NPgSqHBQDWq4CHUQ2cVSQqLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OSb+eb6s; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-48336a6e932so7014095e9.3
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 08:39:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771000764; x=1771605564; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IYpnXoF4mkHSRo0JO+Wo5zILS4TZKjxUVcEjwxhz2As=;
        b=OSb+eb6sGoq1Xz0rDLY7B3NG6KlKT5trRdjEdWC9lUP7GxFtHixEJ0YQz37IElpwWE
         wC8VvY8s/VbEvWJbiuMU5/TVSxLVV2JqsHEbUcei4oqytBwwOKxk/BwvR4c/bNi7tgUU
         skMpvj+k6BSgkgF5Bk8jAcQ9YamrUA/fAJmAchMc5uLQlqiNJnB4+3sE7CoORMsORJHH
         Z21hNQ0ACqYxLJVUjiVwnf+9oYHjqFefafJGosw1MlDa9X+nxgcgtLy+XZ5iQzYI49xx
         w62i7XOs/LYtH5UlGn8hkCi4I5woYyavprBn96QvhV63MlQMNrw3N1VdatcEOe+8vI/t
         ZJ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771000764; x=1771605564;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IYpnXoF4mkHSRo0JO+Wo5zILS4TZKjxUVcEjwxhz2As=;
        b=giKunle8c31ckOowVbkRpNmZWYIpSnYJeQiL2H8AbtBkqZqnMhFJ/Pk2yW/TnfERFp
         aE3PI+SP/+VCqu+ZZqDnE3MzvR0D3c5tRxLLgjxUh1KHRFbRdBBFOMwjQqlxTLeRzD0v
         N9zoxXbRUacl0gUiSxsydToT/Ebc0P6/D4ZAFitmvtXy5WwBZ2xp0lH9mB1bmLH5t5LL
         C1nn46TYNIFYVQyjbXhp1D30owzLhUSfd3ThGRtWw+sO6tAKf5Jl5fO5b8khFUm2Vg/j
         WaYeL2d491LimVWelWKGSDuxucF52Auhtl2PrRSrENho/s/oStSg04EPVm7qwXGp6e8U
         NnIg==
X-Forwarded-Encrypted: i=1; AJvYcCV1gpOkm3tOa2A5PTfzNbkK3gk8KKcxzPAqABpAQ9Cz7emz3UdqnTNox3aYTnX0a2q5OXoP5gQXMieU@vger.kernel.org
X-Gm-Message-State: AOJu0YxPlSSHDe4Zy2r0jRdB3aGCXyQ4S/M1LW+u1fl66BzW3hx1Xg7j
	2y8SEYVig8Iv6pZePCAJygHawRJQ1VQ4Jvr4klASd9rU79IyQeMoFneE
X-Gm-Gg: AZuq6aLz2EfC3fqCYqUfBqRtjDHDkopbGrfBXOzcy2Ro67bv9kVVvYQn02IsbxgnXSj
	0FET9Rx7gh1PJVBhpzV8UerwlxSQbRZEm91yA7uCD219fycnZRcBcE+ycHvyV3zjgAn1J1x7OGY
	shOZEr11Q0k7L2I0DfPaNluu0U7tsvRyzBO56GvRiaHZ2WkDmpZqyFWnS5izIdFTapFEcLHn74Y
	McLTG2n+M2tB5I37tPUa1SOEqFXrpB1FXkanFoISZWKHyZVvi0V5y54tMvfd4ONlStaG6j6f+a+
	l4a1g9cwzb+YuObvdgvf0ARMs4cAiX//5Lz9O6GNpwo2/VHYDWZvXrKpfUu/+MiNGE50IfbgApn
	8CdWYxytPSLiPNNx/owN0hMK56+wZLHG02Y2O/iKeznSzsilzGU/mFpkglNR2HP7shA5xTSWgfR
	fXfWtyCTLOBx7T2hqQbd7hJb/1NpEaiAs=
X-Received: by 2002:a05:600c:4e86:b0:47e:e20e:bbb2 with SMTP id 5b1f17b1804b1-48373a15ff4mr40626655e9.7.1771000763657;
        Fri, 13 Feb 2026 08:39:23 -0800 (PST)
Received: from [192.168.1.187] ([148.63.225.166])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d8334a8sm283255245e9.12.2026.02.13.08.39.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 08:39:23 -0800 (PST)
Message-ID: <c956f310b31e608520e203186ffdc753e55c045c.camel@gmail.com>
Subject: Re: [PATCH v3 2/5] spi: add devm_spi_new_ancillary_device()
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, Lars-Peter Clausen	
 <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron	 <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, Nuno =?ISO-8859-1?Q?S=E1?=	 <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring	 <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley	
 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>, Mark
 Brown	 <broonie@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org
Date: Fri, 13 Feb 2026 16:40:05 +0000
In-Reply-To: <20260213144742.16394-3-antoniu.miclaus@analog.com>
References: <20260213144742.16394-1-antoniu.miclaus@analog.com>
	 <20260213144742.16394-3-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265431-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6C47913844A
X-Rspamd-Action: no action

On Fri, 2026-02-13 at 16:47 +0200, Antoniu Miclaus wrote:
> Add a devres-managed version of spi_new_ancillary_device() that
> automatically unregisters the ancillary SPI device when the parent
> device is removed.
>=20
> This follows the same devm_add_action_or_reset() pattern used by the
> other managed SPI functions (devm_spi_optimize_message,
> devm_spi_register_controller, etc.) and eliminates the need for drivers
> to open-code their own devm cleanup callbacks for ancillary devices.
>=20
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---

Acked-by: Nuno S=C3=A1 <nuno.sa@analog.com>

> Changes in v3:
> =C2=A0 - New patch
>=20
> =C2=A0drivers/spi/spi.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 40 ++++++++=
++++++++++++++++++++++++++++++++
> =C2=A0include/linux/spi/spi.h |=C2=A0 1 +
> =C2=A02 files changed, 41 insertions(+)
>=20
> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
> index 693bdcc5a12a..1b48ec67b8e0 100644
> --- a/drivers/spi/spi.c
> +++ b/drivers/spi/spi.c
> @@ -2612,6 +2612,46 @@ struct spi_device *spi_new_ancillary_device(struct=
 spi_device *spi,
> =C2=A0}
> =C2=A0EXPORT_SYMBOL_GPL(spi_new_ancillary_device);
> =C2=A0
> +static void devm_spi_unregister_device(void *spi)
> +{
> +	spi_unregister_device(spi);
> +}
> +
> +/**
> + * devm_spi_new_ancillary_device() - Register managed ancillary SPI devi=
ce
> + * @spi:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Pointer to the =
main SPI device registering the ancillary device
> + * @chip_select: Chip Select of the ancillary device
> + *
> + * Register an ancillary SPI device; for example some chips have a chip-=
select
> + * for normal device usage and another one for setup/firmware upload.
> + *
> + * This is the managed version of spi_new_ancillary_device(). The ancill=
ary
> + * device will be unregistered automatically when the parent SPI device =
is
> + * unregistered.
> + *
> + * This may only be called from main SPI device's probe routine.
> + *
> + * Return: Pointer to new ancillary device on success; ERR_PTR on failur=
e
> + */
> +struct spi_device *devm_spi_new_ancillary_device(struct spi_device *spi,
> +						 u8 chip_select)
> +{
> +	struct spi_device *ancillary;
> +	int ret;
> +
> +	ancillary =3D spi_new_ancillary_device(spi, chip_select);
> +	if (IS_ERR(ancillary))
> +		return ancillary;
> +
> +	ret =3D devm_add_action_or_reset(&spi->dev, devm_spi_unregister_device,
> +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ancillary);
> +	if (ret)
> +		return ERR_PTR(ret);
> +
> +	return ancillary;
> +}
> +EXPORT_SYMBOL_GPL(devm_spi_new_ancillary_device);
> +
> =C2=A0#ifdef CONFIG_ACPI
> =C2=A0struct acpi_spi_lookup {
> =C2=A0	struct spi_controller=C2=A0	*ctlr;
> diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
> index cb2c2df31089..9aef1987b12f 100644
> --- a/include/linux/spi/spi.h
> +++ b/include/linux/spi/spi.h
> @@ -374,6 +374,7 @@ static inline void spi_unregister_driver(struct spi_d=
river *sdrv)
> =C2=A0}
> =C2=A0
> =C2=A0extern struct spi_device *spi_new_ancillary_device(struct spi_devic=
e *spi, u8 chip_select);
> +extern struct spi_device *devm_spi_new_ancillary_device(struct spi_devic=
e *spi, u8 chip_select);
> =C2=A0
> =C2=A0/* Use a define to avoid include chaining to get THIS_MODULE */
> =C2=A0#define spi_register_driver(driver) \

