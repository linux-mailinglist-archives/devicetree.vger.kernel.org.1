Return-Path: <devicetree+bounces-270913-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UPEbFj/sp2mWlwAAu9opvQ
	(envelope-from <devicetree+bounces-270913-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:24:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CD31FC8C4
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:24:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2BB153047E83
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:22:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5463A3932F2;
	Wed,  4 Mar 2026 08:22:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617DD38F64E
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 08:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772612536; cv=none; b=QOWncIRBHWi2esJ7DzzY0U2Bu16zQHHnFyoCWOwsdRRU9CNtpYSMt4fmU1PNXlCO8NLc+G1dKS3f4CX6Pm2eIW3YvUY2uPAkkrD/cne1sp2iNhqy0NBkNeBTKI07nBAdk30bofm++iWLhAF0+MjyM6a7O5gawyYCbp+aX1iOo18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772612536; c=relaxed/simple;
	bh=7/wPTDCTtiPAqWfH8TyBseAYgEZt04T6e94ACGrqkKI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ORI7TC6zLCs5JMNiVt7FCJ3Zf1ENQWLHbN1FKFqQHVXs6V1XaWR888WzSQ8WLQC/ET3Yo2k2JJ6C8YicHU0Jwd4dA+tV29huvxMZ4oZZDTpk3EH0SX80U+0hkCtMSN0gI3f2muljpO+tZm2ItMoWAsDFuwtLfADfzAW/fTcaSNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-5688b9e4e80so1658435e0c.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:22:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772612532; x=1773217332;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=glRfPg2dFgKoSAd8Np4FiflBn8BE4BQOn9BTgaT8ZrM=;
        b=Bazfu2KX6EwSYwA+bRnMhg6cQV1+xyfiGidcHaj3hSze6Tlb9ATmWVtsqrSEzGIG1e
         qZyV9LdZoi3cWLKeRwSM64QaE1GEJarVV3ipiXpdtLmIKCNUfdCWRGOW2tIYaN2PCiqv
         A8VdOF3eBTZ36SJbG6oW4GSGxJclN+prtwkEJktjUjyeoOmiLSpLouPYMLH1+ADWEweG
         m3MMe1URWTWpB/T+1ERsQyEEY/qvR+bNRunw5/f5R2AFXa/MeaxKIusVkBznESO6i35G
         r4W1yZuTCBeZcWh/MyNtRkdMxP3GPyVb8MbIwLrA17nW88ffLnPGgDQVZjXNnwPYvcno
         Xk7w==
X-Forwarded-Encrypted: i=1; AJvYcCVNYK5FFSq1ioG2ZqQZ6ur0ocK1Hq1Iccf8eJzsuDuQDEYpDrRKoZyjVP3MV1tAd9jT5C75DrqY5EWR@vger.kernel.org
X-Gm-Message-State: AOJu0YxMST2hB01YL8QZSrf74mTCHktX2UW+AuMgE7C819Oeq4AHbuAn
	137I5237tuHupB6aVzhip47plvSDhBZ2Lyrocuht88MKXJJEBf5GvslONXqeKno3
X-Gm-Gg: ATEYQzy14pNjSWpvT4d+wGML/3tJgMaZ93YwBH7EQCvZiOHTJbYVt0soe6bgFxRNP0y
	HJLUSpagDBnIucZzOGQY8uRzQj9QMVbHiYO8qMGKVtrPfmwHWnnKxhhjrsFxA/wUWy7n4tq4EUP
	MBoS4HNrK29jU7GmsH93+byI42pR7iQMhmt6KB21wByM01TaGJjx0e91fYhLy0Ze5jN6AD3yu9Q
	DrTiAMnULDQ6C9yRB0TU6iGWnSu3JGcuQ2qMHjuZKJ2HFjUa+bgjhsMTsWK1O1y83IHocYO3HhH
	S7cCdwT/tqGkJSyA6uPsS5+w7xbdiPpH8OJLGGM0obfDbQgQyu35WJ9p2whFcaz1uK2qqxzB6Zk
	9xNV+jzcHo9FA/athJ+XfAK7M4kYNYSkO9CWNqY48ZcC2vdmiUyV12WlD3IwQE6nAMjSdUhM5eL
	u8QU9l7dOLgDvn9mep2penNZkqg7e1VNkOnbIzN36CId6KByY+WC20qz/FnS7hFcOFdwUjxw8=
X-Received: by 2002:a05:6122:e189:b0:563:45d3:9b1d with SMTP id 71dfb90a1353d-56ae8128011mr473175e0c.9.1772612532264;
        Wed, 04 Mar 2026 00:22:12 -0800 (PST)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com. [209.85.222.44])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91b8c96fsm22624791e0c.2.2026.03.04.00.22.11
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 00:22:11 -0800 (PST)
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-94ac3958788so3636800241.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:22:11 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUvA9FjJUVG5G4XL1v8axUIuKiPspyCPoBo4mgsfT+RSwy4FQ1UHp6e+OCISyHzVHIILMAkCgtV7I+H@vger.kernel.org
X-Received: by 2002:a05:6102:5110:b0:5ef:a1ea:bd33 with SMTP id
 ada2fe7eead31-5ff8f9ef7b0mr2443984137.9.1772612531530; Wed, 04 Mar 2026
 00:22:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203103031.247435-1-biju.das.jz@bp.renesas.com> <20260203103031.247435-2-biju.das.jz@bp.renesas.com>
In-Reply-To: <20260203103031.247435-2-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Mar 2026 09:21:59 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXDt=VZ9-tpHWqHdZq_Uv=67Try_Un+SRKotRkL9yN94Q@mail.gmail.com>
X-Gm-Features: AaiRm51pC7YVz2x2KDtt6tjYIN7TWmh14FLmPTSKWXMV-aPGDw8SpsP9in0fhkk
Message-ID: <CAMuHMdXDt=VZ9-tpHWqHdZq_Uv=67Try_Un+SRKotRkL9yN94Q@mail.gmail.com>
Subject: Re: [PATCH v3 01/10] dt-bindings: dma: rz-dmac: Document RZ/G3L SoC
To: Biju <biju.das.au@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 61CD31FC8C4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270913-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,bp.renesas.com,vger.kernel.org,renesas.com,microchip.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	DMARC_NA(0.00)[linux-m68k.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	NEURAL_SPAM(0.00)[0.051];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,microchip.com:email,linux-m68k.org:email]
X-Rspamd-Action: no action

Hi Biju,

On Tue, 3 Feb 2026 at 11:30, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Document the Renesas RZ/G3L DMAC block. This is identical to the one found
> on the RZ/G3S SoC.
>
> Reviewed-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Thanks for your patch, which is now commit e45cf0c7d9b960f1
("dt-bindings: dma: rz-dmac: Document RZ/G3L SoC") in dmaengine/next.

> --- a/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml
> +++ b/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml
> @@ -19,6 +19,7 @@ properties:
>                - renesas,r9a07g044-dmac # RZ/G2{L,LC}
>                - renesas,r9a07g054-dmac # RZ/V2L
>                - renesas,r9a08g045-dmac # RZ/G3S
> +              - renesas,r9a08g046-dmac # RZ/G3L
>            - const: renesas,rz-dmac
>
>        - items:

This part is good, but you forgot to update the conditional section
below, restricting various property ranges.

                    - renesas,r9a07g044-dmac
                    - renesas,r9a07g054-dmac
                    - renesas,r9a08g045-dmac
    +               - renesas,r9a08g045-dmac
          then:
            properties:
              reg:

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

