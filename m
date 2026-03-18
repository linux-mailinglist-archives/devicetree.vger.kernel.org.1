Return-Path: <devicetree+bounces-276899-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GhBUGF8Oumn+QwIAu9opvQ
	(envelope-from <devicetree+bounces-276899-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 03:30:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C0ACA2B532C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 03:30:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 91EE530185BA
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 02:30:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1BA22475D0;
	Wed, 18 Mar 2026 02:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BoHoJnLa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A759C1D88A4
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 02:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.216.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773801052; cv=pass; b=eTVAzgBD9YNKnvA9Ll/rXiw81BD9qs/Jor5q4JCe+5ebY61DdjoS20HKus2n4ekaAVnxfYdFy7ITbZXlR7vypqLQArpwb+mwK0xlmWyKSA1taR2LqbZAjvFTERFAzuRbEGMJ9kZXBHYgBrDNv59Ynbl1Q1mXMuj0iCvT9/yopJY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773801052; c=relaxed/simple;
	bh=fy+it17j0+Ps8nxeetEypnBbCisckeo5PoSg9rMpSaY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RxQYW9LMj8LwHdMR3BQ1cjNR1/Rtug4COGTVzO7vX18tk/yisenMHEW1/exC3TCC6nN3hyloSjq8Ag0c2qMorTgza8wmWZBi1YZkkJXPhoujJaaMooLnIa23yMgl4fjDakpAMVmHU+GyTWB07eMuvoaotVd++XHVFFVI6Jya0vI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BoHoJnLa; arc=pass smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-35b98def50bso2212757a91.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 19:30:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773801051; cv=none;
        d=google.com; s=arc-20240605;
        b=Nnv2ckjunpHl8/yYYaVwpEw0cGQcxOMRIWlXTw38bkJMu2ByrvXcPEsq9pHBCmSqyy
         8yJHERAX8uOUjwE0LE/1OiyR1ZT0msZQ9CEykSayP/Y2tzkNngmtUJmh+6GcAag8ql89
         PhLsDLniVA9p13D3L+XByStw2pDEHbR6Yps0Wbf6hK3GU4d0E08sh3g0WDubXtvmihwi
         X8SsuxrEFkwcvuKCLxCAkZEV8f8j8Ft76c03mVfhQ0OUyBGtIVm2xsZXaDTJ8PAd2TWV
         FraODUwU2NYNBPuYHhdceqJ5Zvxcbwjqh9/QurIzR6wKAK8xpsGS1Ps5VR1Oq5INVcN/
         CNlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Aq4o9QA1m9WGEfjaZga/92v/xHZ+8tcWtIREIt3RUjQ=;
        fh=+SZhvlsoukObSyjsfb8HN0EcrZsSGGQ21TvJSozsrbw=;
        b=QaKEsZFYkhnPXCylGEqu8Te+bUaL7DaVj9xbrRnHSXPugja5GuRIf30YMrEydTK79N
         xx658Uiqozilq0IXqXxesvw9Cna4LxE0WGd8yZUyhJUbBeMJntl2i9u7kE48TjP45SIe
         I003vPSmOxhqiEoZlF4ypxzFrrDKDV63HeSo9Yn9Khh49VE4O98VgLesa4Et5I/HGmne
         eHMK01bobkroH98NRQbN80FvGbxIxiJS4uecT+0+pM1brIV4YqBI1wAhDRRPetg425ou
         rAmpT/eGb6aJdT9K/hWijyPxuK0/CsQ/wGUqcboVnFfxlGBXXBnC6VaACzw18UqiGvLq
         w7dg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773801051; x=1774405851; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Aq4o9QA1m9WGEfjaZga/92v/xHZ+8tcWtIREIt3RUjQ=;
        b=BoHoJnLakeDvMm3ioyQkb01V9A31DAxJj/thy0/aRrGAc6fFbsg66dVhqtos1H7iKc
         7OI4HQKBap58a/6jx9df7QoXC5m4RGp9cFVPU5RIatALy8/jlBHzWNyDfEGAI+UMIWsg
         vKVIyDiT7MMkPttfaz+PQG7pkkH3dy9ygEN7EXn1PnZA8caxVCxWPMPETWbVG5+86KrM
         GA2voLMQedGNPjDdp58K/4CkAXybPcV7KUBV45S85xxV4NfHr5UJ3dFiHCmXrfixbuD6
         kDfJWu5ydD+hPDJCVN9fI8zaaEKLwcaqz7sIyQTp7GKzYyfRqchQTv9Mj10zUIcXxT0I
         b21A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773801051; x=1774405851;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Aq4o9QA1m9WGEfjaZga/92v/xHZ+8tcWtIREIt3RUjQ=;
        b=RT1MM1G/d+ZbGQXsFMg9ytFBkxqDf/KwVSG2noYMp0Dm78AzXm0ZfcUUIkld69+vpR
         /KrbTXQ5iaewcpGVbsRl8IWpuEEGO5hjAlQHZKzVAUPgYhP7tCeqWPBXgkKsWRDyGGIl
         uVNtmK71RwtOFJCIlvITnr3VbwvZUaP+sQa1dfrtNJkAHIiMmU48Atk8PkcYboazkPau
         dtKKOGO0Ya7uJfPK0ef7ddQ6KeLQRjnZxhxYfefIlXGHiHM9BgyM3Ni/K+4bIk9NhGlH
         a0m3x+3kdiIenfeixd7b2RmY/+F4w5Fd38vdRGMSXQxrGQ/O8pb7b4ipdjxoQzQswNBD
         KUlA==
X-Forwarded-Encrypted: i=1; AJvYcCVBE2dqmNCej62LIxAHdUV30AmeMKjnJ9a2OdnQRJ49ckBHji16J/O1DvF/wBUcfwMR5NYN93IYkcAC@vger.kernel.org
X-Gm-Message-State: AOJu0YwkvH02BqW/D69Z8e1tQ81PAORrqtkwQvRUFo+uVq/zlSL7QZnC
	4fngKiyLflElLoGxK27ktK6UFz6JhxGcIBEMnPATaqXoVt4YAt4l5I3NekV2FLtV82b015rp5H8
	IJml+v3ihIJ6NP1WnxurzTpFG+k6PHzE=
X-Gm-Gg: ATEYQzxPPv5MAH8qUvK91HX2NXE47yT7GYN8X1KpnBy5cVGt89p+ec6MKu7/emLRRxd
	ZnzuM0NZtIr/FWGlzIgZg+2hxQd14F5Ay++cO3tmxygDfRGVMmywwfp8dusRnLdJOwRJ/gdwqJ3
	7KMS0pHm8REgXmouJfmIq7qIJ+vJUJHhNU6m9h2916NMbmD7QjfOBjeFLDujEBbeRjBRZzEVnsU
	7QTCta1js+aH6sXPlmZ9bdOMyXOy/yUKwPOFhOWMmD5PkwjNcP+y/+fZqokANzgeLdAcBZjcbVe
	WFFCD/dJsIwsNOIEbR4g3jzeFm4W7zMNc/uM5KbHSSkVoXsT
X-Received: by 2002:a17:90b:4ccb:b0:356:1db4:8fe5 with SMTP id
 98e67ed59e1d1-35bb9f477f0mr1591451a91.29.1773801051076; Tue, 17 Mar 2026
 19:30:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260316034606.11304-1-phucduc.bui@gmail.com> <20260316-refusal-disband-54161c7b96e0@spud>
 <fef8779a-a5e6-45f0-82dd-0cd8a892c0ea@kernel.org> <20260317-another-wrongdoer-5b4c56ab6027@spud>
In-Reply-To: <20260317-another-wrongdoer-5b4c56ab6027@spud>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Wed, 18 Mar 2026 09:30:39 +0700
X-Gm-Features: AaiRm53uUzVLsNfk0d_vpvS972DrNGMXHue77LwQ9-whJ0zALN--Uym6f8-JxYI
Message-ID: <CAABR9nHO1L8PokYV8=hpEYwz4-pXfnvPFQ=qOob3w1GRL3U2oA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: input: touchscreen: ti,tsc2005: Add wakeup-source
To: Conor Dooley <conor@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, robh@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, dmitry.torokhov@gmail.com, krzk+dt@kernel.org, 
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, marex@denx.de, 
	mingo@kernel.org, tglx@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276899-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,denx.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C0ACA2B532C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Conor, Krzysztof,

Thanks for the review.
I will remove the extra blank line in the next version.
As for the wakeup-source property, I'll keep it as a boolean as per the cur=
rent
patch.

Best Regards,
Phuc

On Tue, Mar 17, 2026 at 7:14=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Mon, Mar 16, 2026 at 06:10:23PM +0100, Krzysztof Kozlowski wrote:
> > On 16/03/2026 12:13, Conor Dooley wrote:
> > > On Mon, Mar 16, 2026 at 10:46:06AM +0700, phucduc.bui@gmail.com wrote=
:
> > >> From: bui duc phuc <phucduc.bui@gmail.com>
> > >>
> > >> Document the "wakeup-source" property for the ti,tsc2005 touchscreen
> > >> controllers to allow the device to wake the system from suspend.
> > >>
> > >> Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
> > >> ---
> > >>  .../devicetree/bindings/input/touchscreen/ti,tsc2005.yaml  | 7 ++++=
+++
> > >>  1 file changed, 7 insertions(+)
> > >>
> > >> diff --git a/Documentation/devicetree/bindings/input/touchscreen/ti,=
tsc2005.yaml b/Documentation/devicetree/bindings/input/touchscreen/ti,tsc20=
05.yaml
> > >> index 7187c390b2f5..c0aae044d7d4 100644
> > >> --- a/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005=
.yaml
> > >> +++ b/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005=
.yaml
> > >> @@ -55,6 +55,9 @@ properties:
> > >>    touchscreen-size-x: true
> > >>    touchscreen-size-y: true
> > >>
> > >> +  wakeup-source:
> > >> +    type: boolean
> > >
> > > wakeup-source: true
> >
> > I am not so sure.
> >
> > The property is multi-type, so we want to choose one - bool, IMO,
> > because device cannot wakeup the specific system idle states. Or am I
> > misinterpreting the phandles behind wakeup-source and every device can
> > be differently routed in such system?
>
> I checked before my original comment, and there there's a bout a 2:1
> ratio of defined v true. I suppose my comment can be ignored, I am just
> used to this always being true.

