Return-Path: <devicetree+bounces-267051-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INwnO8WsmGlSKwMAu9opvQ
	(envelope-from <devicetree+bounces-267051-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 19:49:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C50716A2E3
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 19:49:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C67F43038F27
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 18:49:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BC7C366545;
	Fri, 20 Feb 2026 18:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="E80IzUOf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF45822DFA5
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 18:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771613375; cv=pass; b=RWnF6gnNac2dtzBnu9kT/2QhVJo6y5aiEPnIxkA/cvDz3mOLq0qnFrr+vGlnCKGDSdRn6jVpCPZt7T58qKMUHo88Ty1gw1fKUM7Za+BGbWKFaUKK2kXVRFKP6etuBlp92eHwO2uCbksZGWx5aNYN8Y5zA+R2i67KFluNhZqWVkk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771613375; c=relaxed/simple;
	bh=TOr5HOHrQ2xjuVTHunziB5WVpm1ag/FbTe/dq53usUs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ajWiCJYBTU8un5y/2O26m/8FFBIy4pnT6FLXzbIb7BtSRjy6l61YhRXvRO8Oc+D06+08kGOvD197aZxMzTL4hcXOPuChW7XbUAY0nxuZWH7YfmbA8s4RdXZkyAIgPyQmboCLuQODKSjhNE+MTH+OuG8pfKP2m52QKod/gHuM/sM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=E80IzUOf; arc=pass smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b885e8c6727so433882366b.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:49:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771613371; cv=none;
        d=google.com; s=arc-20240605;
        b=MjCTWMdE9rG6rUSPbGxRWqxqKLykwuq4bVd20yxa7XKsVMVXrYM3C+UHfQ2n7svm88
         +lAp1GgbV4qFNSHYQEwo5nCAyhg++lANoTcotDu3rzOcaaJH4Ez5U0AkBE6pX5nrSr66
         vBo+mMLiG+Rei18Zu3UrPWwMiCCWb/22JQ3zUXoyJ4CPx42WGHDOv3argtqs4JjKWwQ4
         8jJfJ0hk5Z4GEInsnaY38npLNXkf4HLJ5kL6IyPve0x7gWFlkU8ln8zdCz4qpUmVRtgn
         fqGl3oxGUZE57SkRB+IQmAVL/YhQYMs+JkqCEljrrcVbq1a55Tc0L+8MB9IbniQRUuKO
         o1ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wx+eX0mBS59Zy6hvZp9IaEVvMB66mMGe+OdOIYRjb5w=;
        fh=ZqKpNRMpgXrWPj2sDkX03Duwzjak4+3iXGkhJFL3ERM=;
        b=Yv+u7gp204vRxWEaK+xYbgj/e5yiwEToLkRNt/PiBoyi+zBHkaZsP22t1pnyJ+5S3E
         m846TF9ULzAjwPqAJWCOoVFCr6J8y5WAUjLwrmqNSz6U8pNbK0zTw9AddVwkLV08d5m8
         XTGtp4UnyzbHLN0i2bshyPVb8riYoa4cpO6bqe9+eqHUCRe8zK5E8HEFzIt+7IaTLBBx
         BiBrJ2UsKbgXGi6C7YLXU8oepE5S+TomDvkrUQKi7udSom7WhGir+gwJfhmRQZBCmWQb
         QUDVbwGjFEYVoal+jA6gNSf2OtA+14fThTmfPnoWEV1ebKO/FQO69lO/63ZtlpJP5WLm
         rsEA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1771613371; x=1772218171; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wx+eX0mBS59Zy6hvZp9IaEVvMB66mMGe+OdOIYRjb5w=;
        b=E80IzUOfgMfPpS+VtjXgjqT+6ZLZ/zkoLDchI/2ZFnJ8LPL4o2dmasugc7NdoMh3Oe
         wnQ52LtUQfhbFp3GwwcNk86jmcq012cO2qdqwncPJqVfNDEsWBydlIjhc7i7pgnYK19b
         vo2GnC5rVPMuDo7WtsRQGkkBTlpZM1S1qbix+NgZC27WIE2uWdxVa6fBSw7o24+dTBZ8
         fq+0HouLZHPmlkSP+mjO0rL47BL7Lx0VuwG4mcWf1f1UGC5qmYEb10Xf5UUnJ1T5X+Ik
         LWzTbwLGDuVNayxFygjbkRcsFJObpjFmNfEaal1kwGwljwhg94mYk1LAVzdtpMXQbZKA
         M/Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771613371; x=1772218171;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wx+eX0mBS59Zy6hvZp9IaEVvMB66mMGe+OdOIYRjb5w=;
        b=fUPzz02AMIZDcWIgK+LUpFpDl6YYqdPRFVyg592DVzKlhx0L1idNrWFMgZv++pEWR+
         9SLjR0qIO963TyT20/RGsAFEaHs5FVOAfIopmiKTTRa/uzvaTKcOdYVS3z65mSWF1BlK
         aMsgZGQiyiiqEMjVWlDd+3ISfYgsqX6axn+Hw3VqniO4OrLI0lH2j9B4nFC8KiULxR64
         zIhVSELkKAEaP4rVJLBCRVCAHtYsSLQE6RMQWSrbDqf0akYhssm3qREVLRAeygQJwuj2
         NzIjKaE9dBCXoio0iboTyliD5OhtwuxAmlDXJ+zB5sNjRUJaSkUlb01au82xLe2XX8Io
         Aelg==
X-Forwarded-Encrypted: i=1; AJvYcCWLNVr12FlqGXsgXJoxrxnl1pQhcY4z49x02z3N7iuFkaxbGIZw5uyToGszkMexJ5IqJolK1qvyP8Ls@vger.kernel.org
X-Gm-Message-State: AOJu0YxzkeOZrbo0u7eDUjLFVzuBq5jXk/b5FLNz2/Kux+iXvkgFYvTW
	f3uKhsp5SUkQ7JMc02QEmOasT7NZcyeDvRERzxu5xioAZXoU8hvERJMR5OnPN/Lj+oL2ZUXgq4V
	gxi3GUHTkU0lpNkcxcgI3riYjqBncOhnUT/qDJoHbwQ==
X-Gm-Gg: AZuq6aL3dY/ilI9wcN1ue7aRYq8PV/deWCcAKhaxkLsjxA7v4+XInDaxo+9Y2wOnE0G
	KKPcy1TVPvu1E9FNwmToCs7wub+mhmP7qmVFuXgUp3JKm8pGC3CYXCxMNfhOKaMFDwiXFF9kSUz
	m5GyoCaoMdt/rG8lHnIq7agsqG3vetdj6izHykTsq7Q1B8VorzvEhqtYXVZE2ErI5DUoMf3yP5Z
	hXqSp4NE7+xaU0XLhoXz4oyNwiisIa+Jn80+Wsork9O5dPpMuJkwlsNa/O2L16YtM51OikEvjp6
	mFegNboDSA==
X-Received: by 2002:a17:906:99c1:b0:b8f:dec3:6606 with SMTP id
 a640c23a62f3a-b90810d9416mr39173466b.23.1771613371158; Fri, 20 Feb 2026
 10:49:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260220-fu740-v1-0-c8af54130c58@sifive.com> <20260220-fu740-v1-2-c8af54130c58@sifive.com>
 <20260220-contest-ambiguity-1a4099520bdf@spud>
In-Reply-To: <20260220-contest-ambiguity-1a4099520bdf@spud>
From: Max Hsu <max.hsu@sifive.com>
Date: Sat, 21 Feb 2026 02:49:19 +0800
X-Gm-Features: AaiRm50P1Nlh0T0vDWni0aUkbrbTe6xYAsBq75SA6rKDY3TAVmB4kTeN4YB9xj8
Message-ID: <CAHibDyy1mA2s9_UjKGPemRaKNSvyq07Ok5+4yruQ1uXX+R-Pkg@mail.gmail.com>
Subject: Re: [PATCH 2/5] dt-bindings: interrupt-controller: Add SiFive
 FU740-C000 PLIC
To: Conor Dooley <conor@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Samuel Holland <samuel.holland@sifive.com>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Thomas Gleixner <tglx@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267051-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[max.hsu@sifive.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sifive.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sifive.com:email,sifive.com:dkim,microchip.com:email]
X-Rspamd-Queue-Id: 5C50716A2E3
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 09:23:18 +0000, Conor Dooley wrote:
> So do the general rules for devicetree bindings, that's not something
> SiFive specific FWIW.
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks for the review and the ack, Conor.

I'll update the commit message in v2 to reference the general device
tree conventions.

Thanks,
Max Hsu

On Fri, Feb 20, 2026 at 5:23=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Fri, Feb 20, 2026 at 04:27:06PM +0800, Max Hsu wrote:
> > Add the SiFive FU740-C000 PLIC compatible string to the binding
> > documentation.
> >
> > This follows the SiFive IP versioning scheme which requires SoC-specifi=
c
> > compatible strings for proper hardware identification, even when the IP
> > blocks are functionally identical.
>
> So do the general rules for devicetree bindings, that's not something
> SiFive specific FWIW.
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>
> >
> > Signed-off-by: Max Hsu <max.hsu@sifive.com>
> > ---
> >  .../devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml   =
   | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/interrupt-controller/sif=
ive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controlle=
r/sifive,plic-1.0.0.yaml
> > index e0267223887e..351d26ab1956 100644
> > --- a/Documentation/devicetree/bindings/interrupt-controller/sifive,pli=
c-1.0.0.yaml
> > +++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,pli=
c-1.0.0.yaml
> > @@ -63,6 +63,7 @@ properties:
> >                - eswin,eic7700-plic
> >                - microchip,pic64gx-plic
> >                - sifive,fu540-c000-plic
> > +              - sifive,fu740-c000-plic
> >                - spacemit,k1-plic
> >                - starfive,jh7100-plic
> >                - starfive,jh7110-plic
> >
> > --
> > 2.43.0
> >

