Return-Path: <devicetree+bounces-261534-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNTDDkT8fmlThwIAu9opvQ
	(envelope-from <devicetree+bounces-261534-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 08:09:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D72F8C5151
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 08:09:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 04AFF3013D73
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 07:09:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EFEA2E54A3;
	Sun,  1 Feb 2026 07:09:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c/E02SDd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42632DC337
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 07:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769929789; cv=pass; b=qhnzZCc948d3qcVAlgqfascsfLRNQ1jCnmmu4CCb3dgojWQW/+p4hiNLtoV2uFNqGNV/RKSSEnTlNyCZMt9YuIJ7xXzBJ+S0Hjx2MFKS0x672l3mAVRtQKBoDfn3JWk3Oun3+jbX+3kafmJ5+AQAwFXSog7YO6zy1qrBYrwffQI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769929789; c=relaxed/simple;
	bh=mVleZTFVGkwhs8mQsAxLo89FsklFvp22Sy0QI4BhQvE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ycgne8SbvEIswXJt6Pth9BGCVnWU4Tuxq+4jRXwQ5RW3ic+K0rS1i2PprYdDgxV6wWOs3D38dwfqZcgF0sRn1EVTcEmVH4p0tK2lNRM9wr2LCpzYDZHe2ZENFbJz/B2iDJAmVIwq38a/jVhIdI59zldz6zO4HEfL2oZBcTBfwDQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c/E02SDd; arc=pass smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-43284ed32a0so1827329f8f.3
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 23:09:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769929786; cv=none;
        d=google.com; s=arc-20240605;
        b=XFl7G+Q1Vx0lOGKaoKKN2MRsXrJgXYzM0xePXThrvqmXjeyDXSjScm0jZrf8RmY2Yf
         GKoCsK0UOw82WEK4hm6uFQTW8YnHsEu1lbKZhwUTwcIvHDDALBKoXuHacwzE6Y7TCCOZ
         nhauDq916k3p/T1WPos5rpFnAKgui0JAfQ6D8Wb31B3+mc2SyNP4IadPi2m9/VRe9JSm
         efpoG2wkG8JQol6qc1zJXbaqbM59k9pYZoA77iS7q30cJGklSf9NZyRGHSWqrUAPUzZ+
         Lsk43cp1UTEgDsOYrPL932dTIjKbn1O83FWX7YonXNHycNFDOhUKia8AOPihOa3GEfHJ
         J/OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=mVleZTFVGkwhs8mQsAxLo89FsklFvp22Sy0QI4BhQvE=;
        fh=TH/DP1Qt4iIkfA6+tt8UATMWu7cMwTQ9PaB+eCR2N64=;
        b=jT6iO77fts+ZNbapiy3QHUo2c7m3FYtyZHTs1RPktv+RG8n7KDCG92/QkH9maszFwa
         oa2ByrrUsAGwxGocdfBgq9AaLH5wFAud+JGWVaSrihrgHzzKThz6eUBsit5cr+3AE5Q3
         Sdm+ApGI9TkX+ekl+4gJoxY07mMsXh1/BegFGqWqyEn5fUZahf2z+Q1m7WmJ5Ay0eByB
         iQzVvaR8bFEPCO1nAyHp/c5MhnEEOnvNAkALmrUk77nmwROABVZ44wP3hwVU4zK0VMkQ
         8d4lcxHTdpUqGgiewrZQ+NQ3BnGZ+C//GZArLiq9h9jxkqqs+9X12xF1f25xe/LxxiLj
         QJ5w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769929786; x=1770534586; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mVleZTFVGkwhs8mQsAxLo89FsklFvp22Sy0QI4BhQvE=;
        b=c/E02SDdbVDPPQi7HL8AFN3msp3RoF3Mpiv4ztFLpwmQ02C8hdg1DqCFwXPHIN1mju
         FbIv43PIv7hBATmlP/PEOYiM++UxUYMBGg+epg6xMTgnnDEn4OlkzxPBSBbCAPr3n2AQ
         WqW31xJD/0UiMYR8As70DsGvCdsLdrE9f/EX3f5HGqg2rRnJYN+1f7gGc/lIrn1/ShZv
         SsIAKiaA4fojunyTpmjg+yqt3zFLbYN4XtQ+VAWVtSx+Tg2AMKc5kPuOHQEK9oUehzsn
         JEPwI8BDMY2FrvIspNC4uXgJh5Q9/pgmQpe7GRfrrhW9nAedb7FJR92YxVk5YdU7Lux4
         RIxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769929786; x=1770534586;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mVleZTFVGkwhs8mQsAxLo89FsklFvp22Sy0QI4BhQvE=;
        b=nhorTiz5FKap++plfhbIk/3UbkI9Y9ff6gePFWpVPklRsnOyJFVNmuwlTkBQhrr6nW
         mkjGhDcSe3ozTjZBoJVjQyrMifXAyUAct8vemg8nd0NrjXJMXr7AQP4Of8jlfEmTjUlC
         rJpLKptirpECUGoPXwEgGT7T//aEmp9AKJD5fCwWMJxeimfanz6AEP8SSmo3qxjC1pwt
         6KRMsarEePhOhnKaKaRVyC7DeXxEvPCxFshoePVrBFTb7+E6qcGnlFa4Uxnx3tQam4Ly
         clZxNZZzrcxhcEFEK05GrbTO5h3aILdG+1IrSoIRCfb2G8NtzNCu9d+9u8I3cCdAdic0
         uzxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZKKHGP5MFWvyFu1ka46ZC7iZCyKjpoivv4ng+I0BrM8F3FimHidqInwYp0rbcZpVsKUOIBvSXr3Jo@vger.kernel.org
X-Gm-Message-State: AOJu0YzBGLpE/T9U9Hv01boRbpnOQWyxxNq+V2cwnnWBKvLu3DuQ3YHK
	rH+/dvhCoAzBLTkThuP+OmYRs2wBZiU4xmPo+o46CS/1twgRWq/LEUEuRUXUMT4gg5CZIUqbySI
	MVev/zLMUxw9OBvQXIpiGKYw3cOCrdj4=
X-Gm-Gg: AZuq6aJSreo/0YhH/KCtK0VtT6VNSoeeHGR9KO2Tq9v9VL/8l6+Sr/F+zZtZJt9DGeG
	zQ3hJ1xLrDboNTDckksZyZ8gneUPT7VX/g0J33xfeDukYJfcYyYR0ozv57RDLFYbaRqv7EUAOn5
	vxRnf2Jopxz4+DqiVcChR1mFlEFS8nflRmoOzphIIApDR0QV2iRsORMuplsAwuj9ULSU+HtGgka
	tXnZQiAQNyF4axAXALxwqXLeZhKNg1SJtQu5DNXZZLg2aXzIIymcQdVXoV9U2TivTZKY00e
X-Received: by 2002:a05:6000:2310:b0:435:a594:33dd with SMTP id
 ffacd0b85a97d-435f3aafeb2mr12707085f8f.46.1769929786087; Sat, 31 Jan 2026
 23:09:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260125134302.45958-1-clamor95@gmail.com> <20260125134302.45958-9-clamor95@gmail.com>
 <fca2c04b-fe1c-4685-9c80-b0d7d37ced60@baylibre.com>
In-Reply-To: <fca2c04b-fe1c-4685-9c80-b0d7d37ced60@baylibre.com>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Sun, 1 Feb 2026 09:09:34 +0200
X-Gm-Features: AZwV_QgqhXC-zAPZm3FWrQrZKb00Emtx10eOBVUYX82Uyvi3NU9ESnDiArQ89Vo
Message-ID: <CAPVz0n3XPmYPWD=Yr8WXGn84M-9Onf+AHZK0ZpyQcBJJNHUCeA@mail.gmail.com>
Subject: Re: [PATCH v1 08/10] dt-bindings: mfg: motorola-cpcap: convert to schema
To: David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Dixit Parmar <dixitparmar19@gmail.com>, 
	Tony Lindgren <tony@atomide.com>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-leds@vger.kernel.org, linux-rtc@vger.kernel.org
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
	TAGGED_FROM(0.00)[bounces-261534-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,gmail.com,bootlin.com,atomide.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: D72F8C5151
X-Rspamd-Action: no action

=D1=81=D0=B1, 31 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 22:07 Davi=
d Lechner <dlechner@baylibre.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On 1/25/26 7:43 AM, Svyatoslav Ryhel wrote:
> > Convert devicetree bindings for the Motorola CPCAP MFD from TXT to YAML=
.
> > Audio codec bindings adjusted with common ports node for port@0 and
> > port@1. Added compatible for Mot board CPCAP. Other bindings remain the
> > same.
> >
>
> ...
>
> > +examples:
>
> Ah, I guess this covers all of the missing examples. The other commit
> messages should say that was the plan so we know why the examples were
> omitted in the other patches.
>

Subdevices schema state that they are part of MFD and link to the main
MFD schema. MFD device description mandates to have a complete device
example so having examples for each subdevice is redundant.

