Return-Path: <devicetree+bounces-269193-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BEtFLp9oWkUtgQAu9opvQ
	(envelope-from <devicetree+bounces-269193-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 12:19:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E131B672F
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 12:19:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 08E31300E1BE
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:19:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED9DD3E9F71;
	Fri, 27 Feb 2026 11:19:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="iAH7MK5y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 994F12949E0
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 11:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772191157; cv=pass; b=VU7dvn3MJQ5HyomWjm/m2yESZGy056lcMT02cZaWyHsUywBgv9Q7+uNquiY5a13IM/lgQetfavIYRlw+1X1FOJoZn1Qt9TrbVNGuXs+L+MiuwBi5H89W5OSxw8GkxrmT6zxCGV5toO6TnY9+ho6RKxmSPrnDKz5n69fX1XcEqQQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772191157; c=relaxed/simple;
	bh=IqYEhsL1D9wOTVoKnbtmM4dfqH6hZJq5zpOWmWUsdDI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UHRRBkJ93YXENCEfYUyh11j5+XsEBeCHDMOXFjarKfnwBjVbyzAuWEhBpUiB7voUvCsA9FirmCY4FYkoSimjHqezsmUekFxpxJi43pJ6fNpega/03p6eKMi6t9yOt1RNEHf3eyPXZK1kOTOcCDUaiSLhNeEme0qadSxOggIEf/o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=iAH7MK5y; arc=pass smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b9361c771e9so262779566b.3
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 03:19:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772191155; cv=none;
        d=google.com; s=arc-20240605;
        b=cOwe+mFqQEE7Uq01NHMPqtNSzya3V7srsidK1u1ux1baKWg1UXQK3tH2+PyCzq2PLJ
         ZTEGuqrFDKC6ftzP/VM/iRAfBgJ2zQbSUKqPbTJ8QhAqjmL0MM86wWrusFM/XgtzAmgM
         RGxJepZw9F59BSJKw2iaVyKP1I+F5+GCQZyHKjN+dzs+q50TzZlcrCuymJQ6aEe/zpWQ
         ACV0nJxdelxTW8jE1PsqEcKzgKMyKQtLcbsr/nEaa3t+h+TzhWXOuNq8PhIFkhnDP4TY
         qK+P/e2dEtgZR18TdGtlPEFdD15C1RfSHOMEgnLO+ez7nfaiJ7dZxgyX02hZBW39pvMX
         uh/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=V4Xpqv2bHmTvN1Dj3fqhmrqYQsZINM78hGn3frtqwk8=;
        fh=HSKiqzQO4SfTQx8JIsiDdHbWZcrdP6dR0YIUFzh2UH0=;
        b=WE7+bP2jNb9Q3v5CKaflV9cBXc3t/kQHYH521KEIV9UOJksR2DTg1bNy2mnX5yQ8j8
         PZEREyk9MP0pl/NVw8tC1YWzyEyMBdup8Sl0mrlhTyoe/Ne448wH91bFVVlbRJksVZyE
         8j47ViGR432rlUdVUFOv3Nm89xsh2gnHBU7T+v63AcQ58ffZXprAPZmQTHWebPLXbbVO
         m7GQICiQ3b12H189XrjA9wCGQ0UsA8yddJWQDPxQzi9Mg3KnLEEWsxomdPCPpmXX2lZa
         6vMI0ZJoOiFfCXDqhaaiuJpAgege8NWkRY5vIoG6CF7VTOfqDS0SawqReLHmo9Sl4Ixr
         G+xg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772191155; x=1772795955; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V4Xpqv2bHmTvN1Dj3fqhmrqYQsZINM78hGn3frtqwk8=;
        b=iAH7MK5y4UCjKCLlC5p4toxmeQaBlNrXFrMxS4nMACM37Lc7yXyZfJn3E5POwdOqKT
         kR/6It4Lwakqj8TPcliC0J1ZcrMcuynA1ej8VLZ/9woN90RloAvyaLpR4IviTJrNqayg
         JbwhlpfYqLY4hVS116+fkzuqpJmtPbgGcomdP4hkL4BmEG/mudOS+iW48MTF84a6PmgO
         saIzOm6Q219vu/XsiT6DkITE2vdwsjVYU8JB8bwB7rnJrwLZzVi964/VlIfrtukyE84M
         ILQCjFVml4sLoufyIJUXR4mfi9YFZa8j4vk0bcM62Sxmxkpnoam94M37hkO3yZt70qbP
         rgjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772191155; x=1772795955;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=V4Xpqv2bHmTvN1Dj3fqhmrqYQsZINM78hGn3frtqwk8=;
        b=eGUYsYFYe4jB+g+s1J64XEoKWdqZIq/dVrk6jujFPtDwo3j4IHjKi8Oho2kqb6b9JU
         AkEXFGv64AnysvH1jC+IClWlEmLHNZu/Ga96pSMOEA1wmtb+V+RSNoU7kroMaH3p3v6d
         Bas8SdwRKtnEU0VCNBGc3U5LLokBwaR4dBROdYYOgxj8YvB0mBYLgNXogLEvepZQZNKS
         gybK1dcbxJ/vXy63q5oFUscA5lukQGOvkNPZBqLHqgT2N0OhH7gwM63o2h9DWiyw2Q66
         zaQNa9BBptp7kZnGk88IZOEsD8x9QgRA5VH4f0dUUkYL+NO9uzYS977rCGRj9mWa28Nw
         7A7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXKEAfywycHM9GIbGN8UZexNU9Qd/mKBWk7c4E+2oCE0l6leCIygoVbMsRheYrxwcits3MK4vV10Fy4@vger.kernel.org
X-Gm-Message-State: AOJu0YwZ9qYRdGuHqmBn6r46FHVoThwZ8ihDCMahhTIuH0PzTn+T8UhV
	rXhakMEKPsv2S3mVOngZkvyYHdEmFP0yeV5L+QWMwjP9dPlHyJvbcL9F9LIozqAMYRaUFFfScZ0
	sKqSgmw9Wh6e6+y6Xf/rxDtepig9hzDVO8CbXUQkvjA==
X-Gm-Gg: ATEYQzzLWdXcFed2NfpoaH75gkfyTB7Hx9uHZ+dTB/ekhWqFe6+99f5zWAaFG6QGyCl
	hwL3e+AeaBEVIETOC1UUBdOVSySD5YolO07Eo80VpoLq5wB0OqSXavciIZFe4jqDM+x/hwnmlHh
	fPUdeUF2IJ5ajiDwvvjZBFwGXtwZSX8cF6A5kKiHchNi0TYvE2QXX3qvvYY68GE5usVUdKwVBr7
	fpktwJC33rZCQMmqQs3NJAxaXzpUBQhHxVNV+QShlU8bKWBL7uOCyLBDSETH92x98OjNyOb+Z7S
	2KpG+A==
X-Received: by 2002:a17:906:9fc8:b0:b88:4c99:bc0e with SMTP id
 a640c23a62f3a-b93763d2329mr157001066b.26.1772191154904; Fri, 27 Feb 2026
 03:19:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260225-ina4230-v1-0-92b1de981d46@flipper.net>
 <20260225-ina4230-v1-1-92b1de981d46@flipper.net> <20260227-prudent-tunneling-mole-6dedf5@quoll>
In-Reply-To: <20260227-prudent-tunneling-mole-6dedf5@quoll>
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 27 Feb 2026 15:19:02 +0400
X-Gm-Features: AaiRm51rCw0oHYNDVqiMqSIblU7wjQqf9rO_7JmzfthzvHDl0ktahOmA-FUnRUc
Message-ID: <CAKTNdwFuBRvFXABOHiRnS6TEDiUDRAteF2N+-wx5zH-GRDYB-Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: Add DT schema for TI INA4230
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-hwmon@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269193-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,mail.gmail.com:mid,bootlin.com:url]
X-Rspamd-Queue-Id: 82E131B672F
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 1:53=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Wed, Feb 25, 2026 at 01:29:11PM +0400, Alexey Charkov wrote:
> > Add DT binding for TI INA4230, which is a 48V 4-channel 16-bit I2C-base=
d
> > current/voltage/power/energy monitor with alert function.
> >
>
> A nit, subject: drop second/last, redundant "DT schema". The
> "dt-bindings" prefix is already stating that this DT and this cannot be
> non-schema.
> See also:
> https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetre=
e/bindings/submitting-patches.rst#L18

Ack, will drop in v2.

> > +patternProperties:
> > +  "^input@[0-3]$":
> > +    description: The node contains optional child nodes for four chann=
els.
> > +      Each child node describes the information of input source. Input=
 channels
> > +      default to enabled in the chip. Unless channels are explicitly d=
isabled
> > +      in device-tree, input channels will be enabled.
> > +    type: object
> > +    additionalProperties: false
> > +    properties:
> > +      reg:
> > +        description: Must be 0, 1, 2 or 3, corresponding to the IN1, I=
N2, IN3
> > +          or IN4 ports of the INA4230, respectively.
> > +        enum: [ 0, 1, 2, 3 ]
> > +
> > +      label:
> > +        description: name of the input source
> > +
> > +      shunt-resistor-micro-ohms:
> > +        description: shunt resistor value in micro-Ohm
> > +
> > +      ti,maximum-expected-current-microamp:
>
> Please add it also to the example at least to one node.

Ack, will add in v2.

> With these two fixes:
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Thanks for your review Krzysztof!

Best regards,
Alexey

