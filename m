Return-Path: <devicetree+bounces-277099-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Bp1GZB6ummTWwIAu9opvQ
	(envelope-from <devicetree+bounces-277099-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:12:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7362E2B9AFC
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:12:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A1FE930069BB
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:08:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E938335F5FD;
	Wed, 18 Mar 2026 10:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="5PH08Mmr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A84033A7F42
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773828522; cv=pass; b=bpeiI258ZT3lS9LyoJ161VMzdOIVpRzPEKybDhWig9kHj2jsLLK2p3LKDIyzpqwmWhhWePHvf/cBZRdtIjTeih7NPbIJhA7DR/nd+Ief5hiySCIBdjU1qiq739d7+e56vUD5jJBsVSeC8+GJYF+ScaG2Wlu+ZxfTV5r60Yqe9i8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773828522; c=relaxed/simple;
	bh=QeBwEzpkQBoucAoNzKR5pXm1ojBrdQj1YQVWxIyUZ6o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TDjEuJ3sS4B3cgkROSJx7pE+Odis/XJSyl5koSv6tc87Cf7bGGoW6Ocp+NZwNzWQtYllRGGbBon/S2uYWuew6+zLpSXXywtxG3qDYB1MQXrOw85504lMKoRlvksXFZyOX2A9NHiz7c7+dvOyNb4Wum4Yy8lhKJA9d0sOXqMZt/M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=5PH08Mmr; arc=pass smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b97a06d7629so571347066b.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 03:08:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773828513; cv=none;
        d=google.com; s=arc-20240605;
        b=gVXVP9eGFcAHbHFIKC4leBZ0tBE5v5VlsABKm6QPOFaiJ8EUpi36OGOGLdbWYOXW1Y
         VybZRyF0F34kyq1XOPeDMMz27q6MaeThw9wMpuz10usSdU5vOm5HO5fRFGLP5lq2rNRO
         8VUcPed3ccXRgW8LrIEnG/JNOb2G19cEfjeqitn/ADE6gzKghnSKGYyIxtdxujQeq62m
         sPNPV9JWiMwSsmhG0+93b9iKlW2kGOTsyHoqQlzMCIyMc+O0XlTSBJHWOhOkswjdo3Ts
         l7S3i425fUgGLiI9eanjYNvbxxWopT3yETmAWSz1DwJg2FyFQRH1k3ECkXC+htHIbxcL
         AW4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vA3prr0pqra4fvY8vHWhez7S8tBJXQJ9txp+/8w8yfU=;
        fh=WnyTmqtK2b0YVbiz70RxG5RZBdGiF/j6eLCMuUR9fus=;
        b=Of41boLoZXl8rFRYSq8crmGnpv9UKLM6XW1/T0NWI6hzIZDIC2v1K1RIiGSobavF7F
         0xAulAorf4jW21fPO3Uvay4qBqBKbLQEpaqrKMAF6kX8xo7kzWk55xnyBKjP1kDLSs4l
         oRNAAt4IsFZwtYczSUotBkMgP4cNKgYAvGJMsWNVnTS8YG1ZY4af1KDx+KW8qcmnp6WR
         ILQxerNqyYkePbGfJV6jz1HBu77iP43X7qDniSHtJp/M8qZcvXCsX/SZuRxVS4TQMr7K
         DaLSj22knQmGXpdWHVAqjatwWXGCZKoWiOvC3uxv8eE7TH12x0hRKDYJmBds6AwkEeTQ
         gHsA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773828513; x=1774433313; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vA3prr0pqra4fvY8vHWhez7S8tBJXQJ9txp+/8w8yfU=;
        b=5PH08MmrYQuBIHjHEFqxdobbKawbDu7m48yaplt4qym8hzW3tiwTW/15LPFfeT1m9o
         EorOizKk5k4hUhQ9tZ98jLyMVwJXCi+JAXmZWAEWsPrWR9krbrYEtBDIeYG+7kQxirgG
         zKCYAWfMunFRu1+kTyEV5rIw7uqbC20Kr5JsCPE+hZbEorIO3kkSLYYMcH/b9ezTK0sy
         +leJTauMV0yQ//Ph/YGH/tG2VXR0dScUB65Q8EPIfUDvTOEPS4FaGBjbdNd285Gt85PE
         48s52xjHlwf2TWbX/6CGboPSx0IVTAZH937pIrBnTMnMwmyxDQcPt2GpOTsJGZLRMZdl
         9n3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773828513; x=1774433313;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vA3prr0pqra4fvY8vHWhez7S8tBJXQJ9txp+/8w8yfU=;
        b=c2eFGDuSk5k/EEzK+qq/SdD1kjEgVj1AjL906yq0wBpL+3gZIOOFqsgCfJvxbYYnqu
         OqXpsGUX110TdciiiFAZJByou6IVn8RIrTcMoIbKhN6eIqxMoFgHGIKMpuvpsVvJMfDg
         RK2VqTbAwFfJKWQLonJaAyYt6jrDathaZwlDoa4w7r7HDaKvR6WT9Y1jc1HvZUGt/mKB
         w2NEPLtvSHfYHQYCEoabCWLIj9BW6X00wspM5LAjd+KA3qsxFPisLnjQ4l+aH6f3tTdW
         WLoIpm7Q4WhjPsxAR3afRUnv1cXuduSGyUzsJn7LIGsKYXeH1CYDESabOqheYq5kd5YB
         hcAQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmySX3Fm0qitBN2zNx28/NSrfe0CilpuuOlIyW0nYV9m4dOLCEDOvm+KupFp3Xy9OnjZpnTnDtUdmg@vger.kernel.org
X-Gm-Message-State: AOJu0YzAg/GRKzAihLZtfjwEO1K03WpcTODzqahsNO2xRPm7/I2ILc0R
	UnMmlfEEwAJ56J2xZUYED6hOi3VFVW9dPMIcl0OVZ5spgAM+OE/nZprKxLvHsxVavxGPxiShKjL
	GN8eyAb4YSuefqsqtJ4N0Y+qOdYEq3jinl4dg5LHVKg==
X-Gm-Gg: ATEYQzwJx3s+J6jgywFV6FK+BOVtcBYHkJRw42J4E36iwZUEuH0drIMQb+PCiKegFG2
	xhzLWp+HfKnac7KZpgiDmOWME9q7FZY2PCBCyYt1k32GisYIv+5HpWapeTZHnelNQa0HWnkVve4
	IEKq1gVqe7Q4rfJXKJOPPVrW+AYgQITuKciVgRdzKov2zyDhHIsXzr33LGz2Kb+9wA7eYmQ7HVB
	tcyKXQo1Vjadg8LQVAy59e70rbXo2G1EIZ6VKiIJnCTm8GNkQLnMm/kVsrp0XSC7yQxo0GlRYiI
	KyEUEJU=
X-Received: by 2002:a17:906:4784:b0:b97:ad7c:64cb with SMTP id
 a640c23a62f3a-b97f4abcd3bmr149390566b.44.1773828513373; Wed, 18 Mar 2026
 03:08:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260318-husb311-v3-0-2b32e6192b9c@flipper.net>
 <20260318-husb311-v3-2-2b32e6192b9c@flipper.net> <c7129177-1265-4bf3-9925-48146bde37bf@kernel.org>
In-Reply-To: <c7129177-1265-4bf3-9925-48146bde37bf@kernel.org>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 18 Mar 2026 14:08:18 +0400
X-Gm-Features: AaiRm535_GbWw5AUGnVGXLuLzlNfnDHGSXBhv5FW1noP-OPW1VXZBuUsNdmUPdo
Message-ID: <CAKTNdwHrmpLLf0Oh27Td3YG0qsGKxhDBLRh4_hL3+kGWwKFvZw@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: usb: richtek,rt1711h: Switch ETEK
 ET7304 to use a fallback compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Gene Chen <gene_chen@richtek.com>, 
	Yuanshen Cao <alex.caoys@gmail.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277099-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[kernel.org,linux.intel.com,linuxfoundation.org,richtek.com,gmail.com,collabora.com,vger.kernel.org,oss.qualcomm.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[flipper.net:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid,flipper.net:dkim,flipper.net:email]
X-Rspamd-Queue-Id: 7362E2B9AFC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 1:27=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 18/03/2026 10:23, Alexey Charkov wrote:
> > As stated in [1], ETEK ET7304 is functionally identical to Richtek RT17=
15,
>
> Functionally sounds like its functions/features. You mean the register
> layout is identical?

Both actually. The only difference is the VID reported in registers.
Will reflect in the wording.

> > so reflect it in the bindings via a fallback compatible.
> >
> > As there are various TCPCI chips by different vendors reimplementing th=
e
> > registers and behavior of the RT1711H/RT1715, fallback compatibles will
> > scale better.
> >
> > [1]
> > Link: https://lore.kernel.org/all/20260220-et7304-v3-2-ede2d9634957@gma=
il.com/
>
> [1] should be after the URL, rather.

Noted, thanks, will adjust.

> > Signed-off-by: Alexey Charkov <alchark@flipper.net>
> > ---
> >  Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml | 11 ++++++=
+----
> >  1 file changed, 7 insertions(+), 4 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml=
 b/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
> > index 1eb611f35998..62169daddb4c 100644
> > --- a/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
> > +++ b/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
> > @@ -18,10 +18,13 @@ description: |
> >
> >  properties:
> >    compatible:
> > -    enum:
> > -      - etekmicro,et7304
> > -      - richtek,rt1711h
> > -      - richtek,rt1715
> > +    oneOf:
> > +      - const: richtek,rt1711h
> > +      - const: richtek,rt1715
>
> That's still an enum. Don't change the format.

Ack, will make it oneOf: enum: ..., items: ...

Thanks a lot,
Alexey

