Return-Path: <devicetree+bounces-254989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1B5D1E32E
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:46:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 79164300D927
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:43:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A07C8395256;
	Wed, 14 Jan 2026 10:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AL7HKPnQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D92E39449C;
	Wed, 14 Jan 2026 10:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768387321; cv=none; b=ZJcyC/J40lBErT/tOXtjeCp3tV1Zt9z8b5BU9huwpG/4IpJx3/y5ejBI0IgiPW90KDxwkrUM5BQ3MC/j7RA1LYfanFzOIcAt7Mg3UFwDWjcGOxI9VpAPU4CWWhlgl9r1XhERN2XtwFLc5cRqqETT6OAWtz/EYdbKCkf3yyZiF30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768387321; c=relaxed/simple;
	bh=Mm/LpctVQFBNJmcsWJnRhlqgykSEqp2UsCupqzHZNi4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:From:To:Subject:
	 References:In-Reply-To; b=dRpToeP8eH4NAdbVgARyvN5ANY8Sf3U2Yrb3Wuo2oFcnD3epp/OrC9Ef0f51xlbvf9BU6XkKhSAL1aD0VT0xiFqh4lSjInTMZlGcpr+84SQr0iVyO+tGZBGVraTg6Hiyf0JiZhnRVhnhoGkXQncx3I0DxTOtxR9l+7EjNSViuZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AL7HKPnQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB43CC19422;
	Wed, 14 Jan 2026 10:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768387321;
	bh=Mm/LpctVQFBNJmcsWJnRhlqgykSEqp2UsCupqzHZNi4=;
	h=Date:Cc:From:To:Subject:References:In-Reply-To:From;
	b=AL7HKPnQJSk/zkkPG2f1bWrqxBSeVruir3jBLT/LdzlcKgWiv7kNx1lLUQHphHxOm
	 BIivK3mTCwz4xxoGYe53cF7mXiEfiluJANFano+0khGdg0tPc1D0acZ9ArNNChQ3NW
	 kTwGyJxaRRoQY6fflaFcVleUSMEBZOcBWUCehV/MWhwHSrGgu6mGht652cgIb3u8FD
	 XOMcPd3AVdIvwhYc50/w7n8EFau8in/u28GcqTklKzTEbkebOlB19uT04jM4pT5Vgw
	 6wvq99lB1CUit5a4nYmuL/48qaQsv1OFshNsUJ1TmdzCBpggn+IfXj8IyO2NdWgqvH
	 u2ITV3Swmx+Zw==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=17a167f30038cea08a2b54c067fb527ca89e6fda4e3b4fd6f46c9494a2fb;
 micalg=pgp-sha384; protocol="application/pgp-signature"
Date: Wed, 14 Jan 2026 11:41:47 +0100
Message-Id: <DFO8ZDZM41FK.28NIFO8J4E74C@kernel.org>
Cc: <jyri.sarha@iki.fi>, <tomi.valkeinen@ideasonboard.com>,
 <airlied@gmail.com>, <simona@ffwll.ch>,
 <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
 <tzimmermann@suse.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <aradhya.bhatia@linux.dev>,
 <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <devarsht@ti.com>, <praneeth@ti.com>,
 <h-shenoy@ti.com>, <u-kumar1@ti.com>
From: "Michael Walle" <mwalle@kernel.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Swamil Jain" <s-jain1@ti.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: display: ti,am65x-dss: Add am62p
 dss compatible
X-Mailer: aerc 0.20.0
References: <20260107174525.1702585-1-s-jain1@ti.com>
 <20260107174525.1702585-2-s-jain1@ti.com>
 <20260108-expert-whippet-of-downpour-ba277f@quoll>
In-Reply-To: <20260108-expert-whippet-of-downpour-ba277f@quoll>

--17a167f30038cea08a2b54c067fb527ca89e6fda4e3b4fd6f46c9494a2fb
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Thu Jan 8, 2026 at 9:51 AM CET, Krzysztof Kozlowski wrote:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: ti,am62p-dss
>> +    then:
>> +      properties:
>> +        power-domains:
>> +          minItems: 1
>> +          maxItems: 3
>
> This is still not constrained enough. You need to define the items
> instead. I still do not understand why number of power domains is
> flexible.

So looking at the downstream devicetree, there is one power domain
for each OLDI and for the DSS itself. Thus, in the am62p case, there
are two DSS as described above, so DSS0 has a power domain for dss0
and two power domains for the OLDI transmitters. The same for dss1
but with just one OLDI transmitter.

So I don't know why there is minItems: 1 because it's either 2 or 3.

What about the following:

..
  - if:
      properties:
        compatible:
          contains:
            const: ti,am62p-dss
    then:
      properties:
        power-domains:
          minItems: 2
          items:
            - description: DSS controller
            - description: OLDI0 transmitter
            - description: OLDI1 transmitter
    else:
      properties:
        power-domains:
          maxItems: 1

-michael

--17a167f30038cea08a2b54c067fb527ca89e6fda4e3b4fd6f46c9494a2fb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKgEABMJADAWIQTIVZIcOo5wfU/AngkSJzzuPgIf+AUCaWdy7BIcbXdhbGxlQGtl
cm5lbC5vcmcACgkQEic87j4CH/hb5AF/Zy22hYWEDKg6UVqNTZEV72WC9WdMLQNl
skvNN+ga3fUzD2S0Y4WlMmamyXQXqXFCAX9JEn07gEllrClM9QL4hcUutBHoErEL
g3BX82OQtIa/Ci0+hiubIq58kXki0SGLahA=
=KbA3
-----END PGP SIGNATURE-----

--17a167f30038cea08a2b54c067fb527ca89e6fda4e3b4fd6f46c9494a2fb--

