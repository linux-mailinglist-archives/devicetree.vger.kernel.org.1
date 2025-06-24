Return-Path: <devicetree+bounces-188917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E46DAE60B5
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 11:21:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 914F17B207D
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 09:20:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F2E8279DBE;
	Tue, 24 Jun 2025 09:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="24JfGFkJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280DB27AC28
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 09:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750756886; cv=none; b=JUOXN6i0NMW+hX3lnTdYFhTV8O9qoJCOuHHpTBEvv29cuTPe5C+hR8jYvlGdoNJaovDQWcDroAuYMazDTRamuEC73rPzQMaOzLJa43Qo6Tp3Bt3d5sqZkoSDShBZcxgW6rxfOiREL49f/vu6WEZ/88bSIj8rBy9tuD9urUQ0U3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750756886; c=relaxed/simple;
	bh=4Roq/W4hQ9coTMsn/ZxwRa/AYjAUnZ7hmUnYQZTY8Bw=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=WiUldf67o5lNj8uNr1MIcGp9IyMZ0rwKqitce3lMU89iufq1QBvXgh86AZulTUDKYq3Xg6/ufDYIofQQTiHGC5a1nxOtiMOUTmWO2Obf0a3iChqrDMen7r5s5nkvbGDZNccJm3tUNlnm73c7XmYtOY0biG6+WzqBmctCtzqwZFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=24JfGFkJ; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-453398e90e9so34116905e9.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1750756881; x=1751361681; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XgqmjJzaPxyt1ZsIY6295iEdPbXgM6l1ZFSOy0jxXTM=;
        b=24JfGFkJd9yKih869WgtpTrefGp5AyzWPL5SHO6RVoLSU5eDBW0rIN9rPtmht5qQsq
         44QBCnCPIlDxRf/MGUXqQrClmvVX7IGi9F7qNHgi9mER2/QwOGRu9md2zHfMX1X93W2/
         jy1hoi6JLde7N3oQL/ySwwMN4QgEk5Nd3NRuat9/u6bTno+fr12pj49T3+TUNQ1EEgn9
         owZXDQ02WydaY54x2G1CV4q75NoeFF649in6x6B8zHMlGY45j+Cjm9epmFZwn+sRPjJF
         c0fVv/0ythSpHBmzJarJhCq2sl6xPUNQ3AvkPrjmxtDCxsDu4783uh3boHySDBCDnfSX
         W8Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750756881; x=1751361681;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XgqmjJzaPxyt1ZsIY6295iEdPbXgM6l1ZFSOy0jxXTM=;
        b=sFnRh535hgQnH9L0Nmxy1bHTO0/lomv2JDXBVxCuEOByOg8ESI6VIIkP/EtEPgwHlJ
         xkR4YvCHcpRiY2dyt1VafPNwRtE8CLyvQlU0y7165aR55bTBwiXSFZfBc/m8aZRROFbT
         yhPiwApqY46YSDNzzm2aAj9M1yUvfmHuRC7NUS4hLzDXxMUO265jAeBh/yd2bm9RQF97
         Vq2Kmg+ZQ3ll4yHY0o5drQVhGzHKiC9GU3DnOFlJq2RsvlbzmkHT1b2CeVq1P+x7t6XM
         cnRnyYB/Ie9NqAzhB/aNGXkoHzUDu5qkKVgfLSvQmeR4YD/LgrqwB+Yx+fBnH9QinM3N
         5MVQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+KhdLZmiApkfDznxojpelhj8GpEnKFoyDHBOunJfjFGKnTkL6QjG4g8xHpMG5YljKrO3NxlygjWjr@vger.kernel.org
X-Gm-Message-State: AOJu0YxJN690kRevjPXxhVDf8IKQYMLziGdw7/JdRLeMNKV7UcWYfAnm
	XzoJrzj2yqPpPJnpLubX59bzBOIMztnSGNdxINjD2oG1E5yvevUJcl7TtcCE8X+OLTA=
X-Gm-Gg: ASbGnctXNOUWn/HbvaIjYrkMDtsrpOgKQsERSZ7fUXLlcwvM4gZUhf8kTgRrRZIP+UT
	pd6/LQN5xkQy0HrQUkZv0SzPcV3PJNysKLgkfNDwZvNyQpjc3V5qsRDGiFWB7P5Tlfok9H5Nf9u
	MrlBgns46odsGBtm5+rxYX7ZyJMbLhD/EUAng3HxjIAOXFPaZgItoTxwUgeF2GxlvgGCNFf3lkt
	0Hj2lc8AtC1rhavodhHPHhhnG2Gb6kefMfJDJPXILamLygph4Qwc9KSlRyEKrtJyh9u13dczpDO
	mDWQ+lldSaEzFNh1Ed+Pk48i6Kaz9NeSUjazxGpREiX5upANEJh3fZDzWs04W0idbCObe3hRVew
	K7HZM
X-Google-Smtp-Source: AGHT+IEHGvWxG1VWj7rDXVCaYbdrbGUVQYD209E9iHHpArrPTW17K/tHD0lsgZerfKnxairsIipZDg==
X-Received: by 2002:a05:600c:1caa:b0:442:f4a3:9388 with SMTP id 5b1f17b1804b1-453659ec1cemr131426705e9.19.1750756881065;
        Tue, 24 Jun 2025 02:21:21 -0700 (PDT)
Received: from smtpclient.apple ([2a02:16a:7402:0:54f7:a1c1:3e0:3848])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453646cb692sm137276985e9.2.2025.06.24.02.21.20
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Jun 2025 02:21:20 -0700 (PDT)
Content-Type: text/plain;
	charset=us-ascii
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: Re: [PATCH v3 1/4] dt-bindings: clock: mediatek,mtmips-sysc: Adapt
 compatible for MT7688 boards
From: Ezra Buehler <ezra@easyb.ch>
In-Reply-To: <db2575e9-b7b2-4a44-8ef7-0979b3f1f60d@kernel.org>
Date: Tue, 24 Jun 2025 11:21:08 +0200
Cc: linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>,
 Harvey Hunt <harveyhuntnexus@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Reto Schneider <reto.schneider@husqvarnagroup.com>,
 Rob Herring <robh@kernel.org>,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 Stefan Roese <sr@denx.de>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <FFA8EEE4-65EF-420C-B041-76394BD8FF9E@easyb.ch>
References: <20250619203502.1293695-1-ezra@easyb.ch>
 <20250619203502.1293695-2-ezra@easyb.ch>
 <20250620-unnatural-bloodhound-of-tenacity-4133bd@kuoka>
 <C75A767D-BD81-48CB-8D39-9FD19BA67E78@easyb.ch>
 <db2575e9-b7b2-4a44-8ef7-0979b3f1f60d@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: Apple Mail (2.3826.600.51.1.1)

> On 24 Jun 2025, at 11:12, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>=20
> On 24/06/2025 11:08, Ezra Buehler wrote:
>>> On 20 Jun 2025, at 09:42, Krzysztof Kozlowski <krzk@kernel.org> =
wrote:
>>>=20
>>> On Thu, Jun 19, 2025 at 10:34:59PM GMT, Ezra Buehler wrote:
>>>> From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
>>>>=20
>>>> As the MT7628 and MT7688 are identical in most respects, =
mt7628a.dtsi is
>>>> used for both SoCs. To prevent "Kernel panic - not syncing: unable =
to
>>>> get CPU clock, err=3D-2" and allow an MT7688-based board to boot, =
the
>>>> following must be allowed:
>>>>=20
>>>>   compatible =3D "ralink,mt7628-sysc", "ralink,mt7688-sysc", =
"syscon";
>>>>=20
>>>> Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
>>>> ---
>>>> .../bindings/clock/mediatek,mtmips-sysc.yaml  | 27 =
++++++++++---------
>>>> 1 file changed, 15 insertions(+), 12 deletions(-)
>>>>=20
>>>> diff --git =
a/Documentation/devicetree/bindings/clock/mediatek,mtmips-sysc.yaml =
b/Documentation/devicetree/bindings/clock/mediatek,mtmips-sysc.yaml
>>>> index 83c1803ffd16..3fabaa8acc10 100644
>>>> --- =
a/Documentation/devicetree/bindings/clock/mediatek,mtmips-sysc.yaml
>>>> +++ =
b/Documentation/devicetree/bindings/clock/mediatek,mtmips-sysc.yaml
>>>> @@ -26,18 +26,21 @@ description: |
>>>>=20
>>>> properties:
>>>>  compatible:
>>>> -    items:
>>>> -      - enum:
>>>> -          - ralink,mt7620-sysc
>>>> -          - ralink,mt7628-sysc
>>>> -          - ralink,mt7688-sysc
>>>=20
>>> I do not understand why this is removed and commit msg explains =
nothing
>>> about it. Re-add it back.
>>=20
>> OK, so you suggest we allow
>>=20
>> compatible =3D "ralink,mt7628-sysc", "ralink,mt7688-sysc", "syscon";
>>=20
>> and
>>=20
>> compatible =3D "ralink,mt7688-sysc", "syscon";
>>=20
>> I'll adapt my patch accordingly.
>>=20
>> Still, as AFAIK the MT7628 and MT7688 are identical in this regard,
>=20
> Standard rules apply expressed in writing bindings, some talks/guides
> and all modern SoCs...
>=20
>=20
>>=20
>> compatible =3D "ralink,mt7688-sysc", "ralink,mt7628-sysc", "syscon";
>>=20
>> would technically be valid too. Could you elaborate why that is not a
>> good idea? The MT7688 is basically a subset of the MT7628.
>=20
> You did not send such patch.

No, I did not. I am just trying to understand the topic better. Anyway,
never mind, I will just do it as you suggested.

Cheers,
Ezra.


