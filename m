Return-Path: <devicetree+bounces-265555-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COclDmqgkGnkbgEAu9opvQ
	(envelope-from <devicetree+bounces-265555-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 17:18:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6288A13C72F
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 17:18:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6C5463003702
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 16:18:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE09230DD2F;
	Sat, 14 Feb 2026 16:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jF34TvUp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83640229B18
	for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 16:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.160.169
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771085924; cv=pass; b=OSF0YyTMM5u5oMWrrfbtyVN9n3f3hPHf/INZ1pgGNFYMFfWetnzOdy6jXAh5HOgL+137gP/N1wwkSpvKZglS4KPKAaRE2UxbBjVae0ZpiO0HJ8ZIzZKdIQxy/incyUEBL4LorpbJHFiIISS6EQbGy+tN8GauryjnnsqqRyjK5EQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771085924; c=relaxed/simple;
	bh=F+zOdJH2aduC2BMqXskNYx6ekceGSkZ42XiIyjJDEaI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NKaawQF/yTRMPBU6GfOI8BleHt4jVCWHW/GVwOmXrjnFWHqJ8DUPoSi7c70H7DDQY55vF+vsdofBWgVUHmjGRjaFAuGag7EKRddwHg6zZ+trSCOErmBaKd86dtNJs848cjSnGg2ga9FSgxvxPiy4unRY+78hTfSZZzbAEr5qLm0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jF34TvUp; arc=pass smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-50336c6798aso2825781cf.0
        for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 08:18:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771085921; cv=none;
        d=google.com; s=arc-20240605;
        b=QHXb074VflOdhORYRW3T6cRE6mcDwVxt4IldJKeWbH5jdsllekFFuP3B6mglPBI/1O
         LRacsS3tz2mP3wOdwow44iA+UuOCPM1TYWeT9lKy0OP0a4eSPoi4sLlvQuhx99PsFMUp
         9oUVikDribMf0LEqPQ2wt0lkYuz8OdZw2JZyMpUFobQlwg4SNLq+p37KS0sfZ2z+kjGl
         +9w+BYDXKu0DIbUj07UFjBo12ZnFXbh7UScbqIJCdUKnp1zDnL+JfgiMKdySm2VPgncj
         PyRLpvJbn+hYl/wohKLlCvonV/rxEF7TfKVbdZ/Op3m/4Jf8y/pFNqIGKtQUUdkHZ6Gb
         q2aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=U4Pg7faVraxi6oaHzCJaQKTq7PIuXAtxlyfauuDqWFs=;
        fh=C+RQ7uelnY7M1AE4Y/hDyVoy6romTLy8oSX7NIxr7LE=;
        b=FEGFu3Igrd1LJsKy3ZbM3neyyFtsmiWiRD2RLV1h9uVGrufFK0wQLDNlP5wXUHK408
         QnJIw56NEwd4BqNrMQE77diPn4w23M6qxO6US7Sw6yzons2pe/2bKb0Gfk7KkTApFLSI
         jXaM5sw+wjezXNh5mb9L8URuMmMSV4DwtBO1lDwBbLBFqErakwGs3JPw3dj/bAJ6HNnL
         6DWP2S+d/eTUgh10wH6Kjr/rMGFQ9T7hWjmOmJGZptiUaQ20jYze/wyyPiYt0pObx70v
         R1oP94O0D0AtOQCCNJnpGSSEhyYMPF08XSUAwl0WnXJBmeS3YozVFSlX15FwsGr9xHS0
         cBrA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771085921; x=1771690721; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U4Pg7faVraxi6oaHzCJaQKTq7PIuXAtxlyfauuDqWFs=;
        b=jF34TvUp/VYMl/n7fzTt/oADznI/8gbua8AlBo6V+lTnlpQOW5EPUzxNTgTma7T8pj
         Ts5S75Yi1jkQaLOt2CqSz4iGHN29YcvUldznjq/UdHkGwB+KlwD1sIwXFg9CPjSUeUeE
         wHbD/1HA5fZf1UBgDdMLKNue7B8UwVkUJUSwpRtNmUkRKVosvUV9dqONMgZbJyc7ywGC
         0oZpIDBxVRX1g1kXap2Mw7SPYzvAnFL4+A0ZWssbuiTdcGej65x5U6MTmeL3Q/8bLON8
         44mOw+hiNmfT6wVPnhtgNvDpC3ygS6Q7wEHg3AjkljdP6SQuc/PLR7qhvlzVCMiLrk8S
         QzqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771085921; x=1771690721;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=U4Pg7faVraxi6oaHzCJaQKTq7PIuXAtxlyfauuDqWFs=;
        b=ooQ9AoXcqr8zH+wNqUH8rxvWrCovOOe/vwkChRuEEp7GryEJozSaqtogGvlVd3bU0x
         lUwl+WhRyq63PBIT/0xhipuKIInuLkCc6htDuzPWz46T9n27qlxGJ5KQEqF194zB6hWO
         +b3eXWwciXOM08ymDjRL4uP+MNwd/WsGZJ0hhAg/f0kHuQtTcXdnq0Fi6er/ymSmHqh5
         385H6uwl7RWrtaxZhHiAP0FZO2EYEt5cBH2ZOVEnU1bZnudFNQfgymj/yLWquyycJYsa
         F6KYdUEF4V9oPue6M+e3ak+viDb7z7Izfe++CXQQTnolj3zxQv7/kT0+PNgcQPtlXks+
         YzNQ==
X-Forwarded-Encrypted: i=1; AJvYcCViBDv41wWEQtRloWzMx6yBIAbq8aAXYCd4kApuEm3okBgVedNNuq2okwNgapRg09sqkpHVX/jRSFOg@vger.kernel.org
X-Gm-Message-State: AOJu0YzOn535ndNU2DWOoSdc5UmlWN6PY1gDzQiJmsc30yUPEe8Dgrec
	Nrr0lpVIYZxJwACTh3x6l4HALAT6bz2rkU9y6QteKc/vjvCcOyHjC9VLlUezJT0rRne6kUrXLvR
	pbgS2B+ULBCPFpTZeUrQ7ns7iw8Z4CCE=
X-Gm-Gg: AZuq6aJlnyW/aq6i0ql6Nd33ZZUTN5wabQ3Th8Gmo4jgxKQr+4XlgEfvrqsRsHemcx1
	W+koxJlCbu8gWQpPSPF1vbDC84efxAZm+72HTGDALVHgs0wqJkG3tdM8A7/UYKZvr+dWqzoL0Na
	AKs7D+MOzFOOdjUbzbpi2ifPbs8V/ueFoluJAoJSyQZVdi/n6HmAadK9jHOTnGlkS1xsO40ILYb
	rsf1I63SpBl3Xv9oh30nw9sUB3zPyIFngi/g3BSamjoF+Dq71HdnFbdWcEROoLU61Nr6WTINjG9
	pWUd7MRrSutdK+5/cnxjkjXRWdoM6D6he9ALjmTQd/PvrxFCOF5oJLCJtU91hYqtq4yyXv/+lSp
	Eh9KKJHY=
X-Received: by 2002:a05:620a:1a19:b0:8b2:df32:b900 with SMTP id
 af79cd13be357-8cb408303c9mr571211885a.4.1771085921471; Sat, 14 Feb 2026
 08:18:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260213-upstream-20260219-v3-0-df9371d29f5c@gmail.com> <20260213-upstream-20260219-v3-1-df9371d29f5c@gmail.com>
In-Reply-To: <20260213-upstream-20260219-v3-1-df9371d29f5c@gmail.com>
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Sun, 15 Feb 2026 00:18:28 +0800
X-Gm-Features: AZwV_Qicd_vZzDv3dzszxT8e49aKxSIrqTBL_5tdswhD8TxsGjOHXyVR5TXm89o
Message-ID: <CA+NOmzJ3n37MKYb6S2ktpsQDv1L_zufDXuwckgiU=mTuGfdmzg@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] iio: proximity: hx9023s: fix assignment order for __counted_by
To: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265555-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,outlook.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yasinleex@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 6288A13C72F
X-Rspamd-Action: no action

Hi Andy, Krzysztof,

Thank you both for the review and for the valuable feedback on this series.
Regarding Patch 1, I have refined the commit message to accurately
describe the __counted_by requirement.
If there are no further concerns on this specific fix, may I have your
tags so I can include them in v4?

Thanks again for your time and guidance!

Best regards,
Yasin Lee


On Fri, Feb 13, 2026 at 11:22=E2=80=AFPM Yasin Lee <yasin.lee.x@gmail.com> =
wrote:
>
> Initialize fw_size before copying firmware data into the flexible
> array member to match the __counted_by() annotation. This fixes the
> incorrect assignment order that triggers runtime safety checks.
>
> Fixes: e9ed97be4fcc ("iio: proximity: hx9023s: Added firmware file parsin=
g functionality")
> Signed-off-by: Yasin Lee <yasin.lee.x@gmail.com>
> ---
>  drivers/iio/proximity/hx9023s.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/iio/proximity/hx9023s.c b/drivers/iio/proximity/hx90=
23s.c
> index 2918dfc0df54..ad839db6b326 100644
> --- a/drivers/iio/proximity/hx9023s.c
> +++ b/drivers/iio/proximity/hx9023s.c
> @@ -1034,9 +1034,8 @@ static int hx9023s_send_cfg(const struct firmware *=
fw, struct hx9023s_data *data
>         if (!bin)
>                 return -ENOMEM;
>
> -       memcpy(bin->data, fw->data, fw->size);
> -
>         bin->fw_size =3D fw->size;
> +       memcpy(bin->data, fw->data, bin->fw_size);
>         bin->fw_ver =3D bin->data[FW_VER_OFFSET];
>         bin->reg_count =3D get_unaligned_le16(bin->data + FW_REG_CNT_OFFS=
ET);
>
>
> --
> 2.43.0
>

