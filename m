Return-Path: <devicetree+bounces-264245-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKqmFPvUimnrOAAAu9opvQ
	(envelope-from <devicetree+bounces-264245-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 07:49:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D711177F7
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 07:49:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 98E943008468
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 06:49:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CA5F2E0914;
	Tue, 10 Feb 2026 06:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mtR8f2Xq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com [209.85.208.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A092D0617
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 06:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770706164; cv=none; b=SL3EjOXpXbSs7qCeOpRSEZkouQ0vffqyDK6yoOU+7Fuh1H/PB17QmL78dqihk0r0dTqqOAMuY+tQml505Pq1Gutey+/MkH/6J0mCaN9YFoyxfPh0qY2111D2kLuwzLLfMq1HhVXaocfLIwp4ln7CkQ78b4VhMhlNMfDVfbaTKjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770706164; c=relaxed/simple;
	bh=35j7QCKr7CjNoYrKsWuIp3cK/z8O6HH27ymSrJiQpvs=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=WU+Lhnz9/nfDw2y9THmDnZawIZixMZn0yU65BQVbKZAHi/1Wp81lcgkwtjm9ZXqoVt/9p7QvzI9tdL9w0NRmhJhfl8EDXA/8vhSFOwS4ZonrbIQzEI7WqG0/JYHzZfzLTm95m9sQcg449PVtAEJADLt+6fYNmTSjGUSyqf43GRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mtR8f2Xq; arc=none smtp.client-ip=209.85.208.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f196.google.com with SMTP id 38308e7fff4ca-385c6c727fcso42316331fa.3
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 22:49:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770706161; x=1771310961; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6UuS3rFdbmBg/Ac9hnd/FWadZClcyql0U6id5zi3Xzc=;
        b=mtR8f2XqYiLwu75lQJtbNPDMniXnrkxg8XvGpx4dDpIJiobb3M+2Y8WflRF+fcJO9e
         Xes8vl0Fhn1+fFJoXYSDExbcVKFRAwwJgklf/BNmHrF9PVOcEs5uW2vWirjyt0CSx4ZX
         TuSH1KIS94BTJ4PsTRaGGarl8E/ALWy8ZNSwYxodVtO0IP7vY8yWNbqfWCMpuQxJWxe0
         oXXSKejkJ25cGv9xescnL/gAUiP/ApcbCsHNmdj4g8xhkGlKNlCHgmKEMHykZGp8JvHG
         tXgsdGeDzUtQNFDpYenjoK4vUExE/wo+XWbLlyjqwm86d8KGP25yHbQzqZ6mYb9uUAEj
         zo+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770706161; x=1771310961;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6UuS3rFdbmBg/Ac9hnd/FWadZClcyql0U6id5zi3Xzc=;
        b=oETMkBL6oRtt+clHe+wv2rzWUqel0V46nVKIZy/UPJiq7Ym57/GWkFjdjD4ULFdPgZ
         Vt6hKLRKwn1aVeGRcBSYqiH7Zkpj7nEWD65O0ias/jp98rVd05SgOHos79qUcR7EKEHT
         Z/eEyCUME61JCbS0+kJFq9kbWHNarujP4PUkHot5108c5gy6xs1cWuZTS3agSuhoYVRV
         sbKAj/pz15wL4lksMEj4MaiKZxvgXn396L4qQhtLBdVezPT3SJWaC4MmucBm9624Mwic
         3Xpeb3VRteaAPxeluzFOCGLzbynzhg9J0vluAj/VIGyZNWH6APgw39y5hnvs/ozwgkVc
         6ttw==
X-Forwarded-Encrypted: i=1; AJvYcCVVv5920p1kEoc5adXMRndqPU6G4VyMUC5oZ0V+ItaCWl47IsPA/9scw+LLhNMNfgm+29LPXOrsKvB6@vger.kernel.org
X-Gm-Message-State: AOJu0YxZv+I/pHolisRu9nZEB4gRqxdXcwfreEprJpbmM0jS3jehMxRF
	8m3+10gMKH8krzePRvP4B6R7VNeM0vQFgnStVozJZxOB0mgfz9/mXb+KSIdbUCzI
X-Gm-Gg: AZuq6aIJGsQ5Q66S4uSRNDg0OKsW5yxxTmiha+VxWPM+eAc/MkUFt9SYKgDyvquiVXJ
	jL/PQwx+eZdbrEExqvNiRm1Ehc6yfqCF+VFMXCNZ4+OxlGjV3HHLH7cR6aVGSZOPi9vSa+9W3M3
	+Iuv3U1d/qctfhQc/tvWxIoFDRjiLMeleeMVwAC5CjRKsUVHaho/7hw65NE3lpEjjBYhC+dqgnN
	MLX0LPxyhnc0eWEs/2EsBcv+V4BG+onckCcLilH+vLDiaxtNlKFbAX8/vMV0P600IURRLdRcAqK
	PPARnb/m4VnD4pX2cq0y6+EtgyQw3BrcLeciutFrbCQXzIH6VwsnE+Gn6WGA4JmFMF7p1j4Un10
	JG/pHDil7NV0xncti7j34aM9OL3j/9BmHh6vpj4xKojWbdF5MnS71c9slg1KypH2buQb0MItjGQ
	KkkVnW43Tq66HeRliCIq0+InRD1hr3Xok=
X-Received: by 2002:a05:6512:b16:b0:59e:387f:bf97 with SMTP id 2adb3069b0e04-59e55b9e424mr258253e87.21.1770700139219;
        Mon, 09 Feb 2026 21:08:59 -0800 (PST)
Received: from ehlo.thunderbird.net ([178.137.233.16])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44cf6f67sm3033446e87.13.2026.02.09.21.08.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 21:08:58 -0800 (PST)
Date: Tue, 10 Feb 2026 07:08:58 +0200
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>
CC: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>,
 =?ISO-8859-1?Q?Jonas_Schw=F6bel?= <jonasschwoebel@yahoo.de>,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v2_1/5=5D_ASoC=3A_dt-bindings=3A_n?=
 =?US-ASCII?Q?vidia=2Ctegra-audio=3A_document_CPCAP_CODEC?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20260210024619.GA2374304-robh@kernel.org>
References: <20260206173423.145954-1-clamor95@gmail.com> <20260206173423.145954-2-clamor95@gmail.com> <20260210024619.GA2374304-robh@kernel.org>
Message-ID: <35B721E4-F950-4425-AFF8-D6DBF54F513F@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJ_EXCESS_QP(1.20)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,nvidia.com,perex.cz,suse.com,yahoo.de,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-264245-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url]
X-Rspamd-Queue-Id: 69D711177F7
X-Rspamd-Action: no action



10 =D0=BB=D1=8E=D1=82=D0=BE=D0=B3=D0=BE 2026=E2=80=AF=D1=80=2E 04:46:19 GM=
T+02:00, Rob Herring <robh@kernel=2Eorg> =D0=BF=D0=B8=D1=88=D0=B5:
>On Fri, Feb 06, 2026 at 07:34:18PM +0200, Svyatoslav Ryhel wrote:
>> Add dt-binding for CPCAP CODEC=2E
>>=20
>> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail=2Ecom>
>> ---
>>  =2E=2E=2E/sound/nvidia,tegra-audio-cpcap=2Eyaml       | 90 +++++++++++=
++++++++
>>  1 file changed, 90 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/sound/nvidia,tegr=
a-audio-cpcap=2Eyaml
>>=20
>> diff --git a/Documentation/devicetree/bindings/sound/nvidia,tegra-audio=
-cpcap=2Eyaml b/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-=
cpcap=2Eyaml
>> new file mode 100644
>> index 000000000000=2E=2E5335fa56fb3c
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-cpcap=
=2Eyaml
>> @@ -0,0 +1,90 @@
>> +# SPDX-License-Identifier: (GPL-2=2E0-only OR BSD-2-Clause)
>> +%YAML 1=2E2
>> +---
>> +$id: http://devicetree=2Eorg/schemas/sound/nvidia,tegra-audio-cpcap=2E=
yaml#
>> +$schema: http://devicetree=2Eorg/meta-schemas/core=2Eyaml#
>> +
>> +title: NVIDIA Tegra audio complex with CPCAP CODEC
>> +
>> +maintainers:
>> +  - Svyatoslav Ryhel <clamor95@gmail=2Ecom>
>> +
>> +allOf:
>> +  - $ref: nvidia,tegra-audio-common=2Eyaml#
>> +
>> +properties:
>> +  compatible:
>> +    items:
>> +      - pattern: '^[a-z0-9]+,tegra-audio-cpcap(-[a-z0-9]+)+$'
>
>Expecting a lot of devices and differences? I would assume all known h/w=
=20
>is well known and any differences are known by now=2E Perhaps even just=
=20
>the fallback is sufficient?
>

From=203 to 5, maybe more=2E Hard to trach different variations=2E Having no=
 full schematic does not help either=2E

>> +      - const: nvidia,tegra-audio-cpcap
>> +
>
>> +  - |
>> +    #include <dt-bindings/clock/tegra20-car=2Eh>
>> +    #include <dt-bindings/soc/tegra-pmc=2Eh>
>> +    sound {
>> +        compatible =3D "motorola,tegra-audio-cpcap-mot",
>
>Why do we need motorola twice?
>

"Motorola" is the vendor, "mot" is the board name=2E Same name you have re=
cently seen in the CPCAP schema patches I have sent=2E

>> +                     "nvidia,tegra-audio-cpcap";
>> +        nvidia,model =3D "Motorola Atrix 4G (MB860) CPCAP";
>> +
>> +        nvidia,audio-routing =3D
>> +                "Headphones", "HSR",
>> +                "Headphones", "HSL",
>> +                "Int Spk", "SPKR",
>> +                "Int Spk", "SPKL",
>> +                "Earpiece", "EP",
>> +                "HSMIC", "Mic Jack",
>> +                "MICR", "Internal Mic 1",
>> +                "MICL", "Internal Mic 2";
>> +
>> +        nvidia,i2s-controller =3D <&tegra_i2s1>;
>> +        nvidia,audio-codec =3D <&cpcap_audio>;
>> +
>> +        clocks =3D <&tegra_car TEGRA20_CLK_PLL_A>,
>> +                 <&tegra_car TEGRA20_CLK_PLL_A_OUT0>,
>> +                 <&tegra_car TEGRA20_CLK_CDEV1>;
>> +        clock-names =3D "pll_a", "pll_a_out0", "mclk";
>> +    };
>> --=20
>> 2=2E51=2E0
>>=20

