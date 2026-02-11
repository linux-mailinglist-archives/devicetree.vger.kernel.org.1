Return-Path: <devicetree+bounces-264628-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PGDKUQljGnjiAAAu9opvQ
	(envelope-from <devicetree+bounces-264628-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 07:44:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8959121A98
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 07:44:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8EE76302BB94
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 06:44:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FDC033FE1F;
	Wed, 11 Feb 2026 06:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aMQpEA1Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C174D3148A3
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 06:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.160.171
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770792257; cv=pass; b=L/KmKsH6p2E+lkUjJS2lpXzc0nP5IOx4yuuegs4QiODB0SlEjA2VLDnhU7xc7YoVGqAdWr8Pxcyix4nMm/YqIDa4N7UaUX84v9JzzqZNNkXwjcletE/5/HLwzfc29+jkYviRDiqHJcnwThb/ExPhThStI2R+gmcNA3pq5xFuM5U=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770792257; c=relaxed/simple;
	bh=VgJF+Kg3vwW+bEStkfTJ7tw8D3X5eP5It/SJf1PDS74=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PHMZly/4nnYMZ694nkUtB4a88EMp143otQ4FLz1OQI6SKOOmkuz6E3iBiPb/cqIbbUMnXReV95gMOlph51sLnB1w5P5xxU6nMhsMrKrPB70NCYZoEMAFvhJsmucC+6La0VzJBB4pjjwBW8eh+89A0gh6lbHoARYul6fMytPHqCA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aMQpEA1Y; arc=pass smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-50332392929so5569241cf.2
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 22:44:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770792256; cv=none;
        d=google.com; s=arc-20240605;
        b=KXN2HD041bmpVsTbUNAzXwvS6dymPsUu4qekg3sLIwwled6ZVfbjG6wUf/MAWnELNE
         doc0k9bCtQRWkWwR9VokaQ5BsjTvl9VVvEszJjGQ3gWZZKePgcppp8pjmYSAO9Gk2s9e
         OdwYUSJBaFUZOYdPBlZTVIGgPc7aa+zfX+dsV7OhlW4iUr3Xu7UE0idw5vidn+Ik9SQ2
         f7nkvJ56oWp6eGQhIhkNRQ6Ab6YCCBIt5TkjadaG5dGGt5R8KTlx6geTJNkmr/BYzE4e
         4y+ev80GfJxHOLT24zZSBeOstDySOqbn6lF8zuU1mLonCLwz1KvVWWc9ogaCcjIE+M9M
         /RwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=eLreIYfnvJ87jvw+CSoCIEz9jlwWvkw50GfPsZngcE8=;
        fh=D3DvtPPdiHo11oyCUsQcz3qPj5TLXrAcPStDhfzCobk=;
        b=cU2CFjNZPcTLYQC1Z+nEdodO7Y+SetdcpXCUbuZmEFn04qQD3Y8/JNna5P96EW91Lw
         EgB1Wb6PlAv73GhREnTl3M/aMe0/z/2zRfz4pxGvXvd87R/lkbz8pTPR2FLS/F9IrFyS
         phewUImExVvML6qsna04tAe4VhAiLFkFzufsCuIoauxjNxAF4/r/lqbsT3vx603lrkv8
         xEDFT6dg7hCN6/mhP7cY6ZbpNC+aIt/u0STEqExQO+bHIAI7woUSXlLEBfjT4Yi5f6WR
         bxsKj1lec83buur4HbQ9nL68/ZRC1GNDBvBRNPW1EzKmWFVq4R8AF9wqE53Ii36Xpw8l
         RHdw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770792256; x=1771397056; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eLreIYfnvJ87jvw+CSoCIEz9jlwWvkw50GfPsZngcE8=;
        b=aMQpEA1YFsjccnlRwXMz+wkJ1ATxYdgi502dnptWKIEhmtjxbN+N5+b6UqufOl0rhh
         yVVwflS/xV9NHcrjqg7nrnFF//YA37fVuTH9IQQyjG/6oSSkEcxPViNA3equEcDAo4K/
         0OfnQMwbk1cOo97iNqDc/KlD9e7WBWKXqC7ZSTEk0tWV1A+fQw+S68PzqpWI+pC/atrQ
         twZx6GTaf3E5mwHMjVpobsQcZOBHV90Skp17WNmhRwY53+MUoOT1PhhAIpyLzHmWPZmB
         kEwhwlZKiZbIW1uCp2QRHor/3cOOL4yKN2d2Ai9+3EEgQQjZ3M2n46RKO+cXEwY+d2em
         e6CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770792256; x=1771397056;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eLreIYfnvJ87jvw+CSoCIEz9jlwWvkw50GfPsZngcE8=;
        b=n4arZAJhwGukEDOcY1jR8v7hd0vKN/nSojk63vHxA5wAYvjQtwEiBGKY50CL8GbAw1
         OBod/LIPJrsL+MG/u6hiUfuTXLWZ7AMkjxowFUjqivHOdZKecwVe5gfzXWTqankYqoKE
         P/cNTWS4CozSWZ6bydBz5MD9eSlHs/ny+fzah2HC5r9UkQJebOsCRpSv3joSOLf39d4D
         YhJ6NjTHBCj8cE7wXwNIFzcGGHvV3hW6ECVI9GBT1uoakIKEr2jnd2nkQwtFzUVT9/is
         aaKx0Wi3y8uXD4vRPNv2cCV1DMCqSZE5NECx3C6jtlRZvcOQqxbt8wqRyWuGMuo7KanK
         kB3g==
X-Forwarded-Encrypted: i=1; AJvYcCXUuPB3Ok/j5wmq+RAqjYuStkyRKUhQHpeTl/43CHGTtrbStB/O2hkijKiHTAqaL3sK7PI+hVRxofHE@vger.kernel.org
X-Gm-Message-State: AOJu0YzStINjkrKelzJ22pvHemanO9LfPOpKi50Pd3qJ4b/A7yuCsMya
	RdDJuJK8lAzgoCPhVzg4pbHMNZ6SOUiTM83fbHg6JLx/3mrunY2nxwvoP/cXjmG3u9spcb5GEUJ
	e4UzDg8+boQjOv/YbjhBMxQLYLXwhKfs=
X-Gm-Gg: AZuq6aJhGv+dq/CUKYstx4/lmQJYkP2+X8266ApKeCNPaNMiD+2ORqQ9379+zjdoI3j
	zYZw4bavtKj6I5NAPY+5YQpDlA/uTdjVketVjQEwu1n69ULDhiDoxAN8zwHXKDZHRoFvPL6tEGx
	hTsYHeRzMG8jVQsRJhQlf8F+kofSdFyh2NWtweHhRBFAFSgdOEtNxRsd4U7Fy77vNyoJJzJQe9V
	l61P6EtkluTFc6Qi+mJOI8Hc6UYXKw/bVPzJMQP51u3NjsTsKxpyD4334FvJ/t82v5l2AAP8rfB
	e4qXw0Slt2N3yWXHeEGuSFn/OYoBN7VwJS1X4DnerncLBuRlfPsQfzYPeacUIhkdZDe/iUY0
X-Received: by 2002:a05:6214:4d08:b0:894:f706:a5f2 with SMTP id
 6a1803df08f44-8971dbab2cemr5997196d6.3.1770792255772; Tue, 10 Feb 2026
 22:44:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com>
 <20260209-upstream-20260219-v1-4-2b4d74e309d1@gmail.com> <20260209-active-quetzal-of-prowess-47a4ae@quoll>
In-Reply-To: <20260209-active-quetzal-of-prowess-47a4ae@quoll>
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Wed, 11 Feb 2026 14:44:03 +0800
X-Gm-Features: AZwV_QhlMxU8w85uidx-EcDi69OZd3J1_IrmSRDNDsR5ouwCrnGYIFmlGKaQ6JY
Message-ID: <CA+NOmzKaJPHpUZgUVWVKC72m=fCf5wBEsSErq+JmYNWHobax-g@mail.gmail.com>
Subject: Re: [PATCH 4/5] dt-bindings: iio: proximity: hx9023s: support
 firmware-name property
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com, 
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264628-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yasinleex@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,outlook.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: E8959121A98
X-Rspamd-Action: no action

On Mon, Feb 9, 2026 at 4:01=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On Mon, Feb 09, 2026 at 11:37:05AM +0800, Yasin Lee wrote:
> > Allow specifying the firmware file name via device tree.
>
> For what purpose? What's in the firmware?
>

Hi Krzysztof,

Thanks for the review.

The firmware contains device-specific configuration data required to
properly initialize the internal sensing engine of the hx9023s.

Although the silicon is identical, different board designs use different
electrode layouts and mechanical structures, which require different
calibration and register configuration tables for correct operation.
Without the appropriate configuration data, the sensor does not function
as intended on a given hardware design.

The default firmware name remains unchanged for existing platforms.
The firmware-name property is intended only to allow selecting the
correct hardware-specific configuration when the physical design differs.

Best regards,
Yasin Lee

> >
> > Signed-off-by: Yasin Lee <yasin.lee.x@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml | 7 =
+++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/iio/proximity/tyhx,hx902=
3s.yaml b/Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml
> > index 64ce8bc8bd36..7e516fc011c6 100644
> > --- a/Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml
> > +++ b/Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml
> > @@ -28,6 +28,12 @@ properties:
> >
> >    vdd-supply: true
> >
> > +  firmware-name:
> > +    description:
> > +      Name of the firmware file to be requested by the driver using
> > +      the firmware loader interface.
>
> Drop description, obvious. It cannot be anything else.
>

Agreed. Thanks.

> Best regards,
> Krzysztof
>

