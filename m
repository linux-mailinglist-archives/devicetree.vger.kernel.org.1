Return-Path: <devicetree+bounces-266620-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCJ/HBvmlmkuqwIAu9opvQ
	(envelope-from <devicetree+bounces-266620-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 11:29:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 071E315DC84
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 11:29:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B0721301981C
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A0453314BF;
	Thu, 19 Feb 2026 10:29:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A78492C0F7F
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 10:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771496980; cv=none; b=eK6f1NcjRwjrUa41OK/f7gKc/DIspTYuczEGzFIGL1IgeUyHr6ajXltiCokTF4q7viAP2cV/E0nbYXfnY+wzCkM1fbLkZ961NrLb0PZxZTbp6+yRIU6uj5U2ZgSUWVCPufUmqcKfqhcvmoYXj9ESMQLsuYvKlONyqOu+SOdxOhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771496980; c=relaxed/simple;
	bh=2wVcxigiWF7bmx5zDNOy2YgF6Z3jZwMF/ktrBkzISyk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=K23IHbtpCj7du9x55DtrcJrwVphD5Vd+hw6SA5tNjSM5JP6OCT94uYTbTEHc2Q7X1Jf6kkcmhhem4dAyniJZRI2n4qQtr4JlfWCcIiNX3lss8o1RYdqQ3dch3pT1vpFQMhasLfgS18YG/kknQY36LUs6HlPN4B5Lx2CDFNxlIM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5fe086fb0baso496644137.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 02:29:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771496977; x=1772101777;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F/iP8fek36cTZj7uGuQwlk+a5PJBqWvYn07ZjqPzOHk=;
        b=kMcKH7vZMFszSskIOWBUjgBFoE2vM4ViuZDqFkKLD6m4CMUquv10evVsYdMwJ93qgd
         /hxRFjSW58tfSt5L6E4Jz8x/G1IXIeO6I0hIak3HPxbfEC94xnVcTCqxLK9Q3baxoMIp
         FslIW6L4yFHHkaHx5Ebw7zyKWanGABZtWKpFcPxl5KiHQW/YRlScnf+aL2DH6BRgX5OP
         wTRdtTDBnfeFhRH1BOLEgxCFPaFQCZdOfoNDefQyeAm6RQt5GaQrStTltDNoByDniBUZ
         u+MWbics+7u69O1hjXBprhD22fTGsNUZFQo/aWSruYh5Yig3Ve7usGOddHXEwS7sh81D
         UAjA==
X-Forwarded-Encrypted: i=1; AJvYcCXJgLNUuS+WiBYFARyYAPH8mmLixy3PbpDNstYHjN42Gf3HQrkeNmGGS3BQO8rGxffczIcf60Ig+gW4@vger.kernel.org
X-Gm-Message-State: AOJu0YyXzmN0S4idHO3QvVSvcgbtmVOWJO8867+4CwFnkLGrNukfJo+8
	b9CNpTP+jM7vwyJ4VR2871nOkqbOliW9t18U8ocYT/r/kYKPw+H37DV+FXHKpRn3
X-Gm-Gg: AZuq6aIa76acf3GCSWiIxCgEurdUdTOWsIUFvcdxYUYK/C9wCJoQxSHSY6FFOuk82zS
	CvKGMt8D9IKvF37/nQ23FV4DGTBnnVc6ePHmR3+siktl5P3KqmKZjxeYocmEa5LmPGmyKuqul3r
	vp1umT0FUKezveXDsjrd/X3wrYfdc/zgOnSR2R8ztuIB9Q11DbInSLIRehrQYGWD0wrJwbFBD5D
	/g1ECVWoglUAvV2PNkToOKF40E/r+ALy5fs7qpwohG9Uv2eo49YuURsBe8cNlzEWufXFJXr7msn
	ukc++BGPOxGahcrIi9cn0wXAKhcQgYEpmWIf8VPFNJPqbPz5oUNmU8Bog7521MSUEFbLOGcOy9Q
	iXko12CyOHR/eFNveRY2FkDJLfTZJI+9dB3tNuJdwklBCgVWThF2Dlsz5EH+amFrz/asgmNEcA0
	XgBvdHbmCUEhUMJSgqPZqfD2bc5eyhZpfJYEsk3vIGnh1BWexVtua4fUYOnDkpTBB8M0914JM00
	go=
X-Received: by 2002:a05:6102:304a:b0:5ee:a8c4:18d4 with SMTP id ada2fe7eead31-5fe7fdd7fa4mr2426275137.35.1771496977527;
        Thu, 19 Feb 2026 02:29:37 -0800 (PST)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com. [209.85.221.171])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5fde8adf700sm13186926137.12.2026.02.19.02.29.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 02:29:37 -0800 (PST)
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-56637565faaso708822e0c.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 02:29:36 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX7Vb1DHNgnvlbdDhSH5ifSiH02bU/DVv4bn5Fw/nj2g/vMt1wMzubtbe11437q/fj4BjJ8DBmmQQiM@vger.kernel.org
X-Received: by 2002:a05:6122:2494:b0:567:2b94:2e6c with SMTP id
 71dfb90a1353d-568bf59a621mr2370313e0c.11.1771496976112; Thu, 19 Feb 2026
 02:29:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260122-pmdomain-hierarchy-onecell-v5-0-76855ec856bd@baylibre.com>
 <20260122-pmdomain-hierarchy-onecell-v5-1-76855ec856bd@baylibre.com>
 <20260127151735.GA1699112-robh@kernel.org> <7hjywtzaiy.fsf@baylibre.com>
In-Reply-To: <7hjywtzaiy.fsf@baylibre.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 19 Feb 2026 11:29:25 +0100
X-Gmail-Original-Message-ID: <CAMuHMdURxN=kBQHJKnsTVEQPeuB41r5kZy4sgFNqg=U2ynuZMw@mail.gmail.com>
X-Gm-Features: AaiRm519SaRshXGNVfvg14cRnmfkYROkGvJOkhQFEH8pcasVxqZP2kH1_tN-rv8
Message-ID: <CAMuHMdURxN=kBQHJKnsTVEQPeuB41r5kZy4sgFNqg=U2ynuZMw@mail.gmail.com>
Subject: Re: [PATCH RFC v5 1/2] pmdomain: core: support domain hierarchy via power-domain-map
To: Kevin Hilman <khilman@baylibre.com>
Cc: Rob Herring <robh@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>, 
	Cristian Marussi <cristian.marussi@arm.com>, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org, arm-scmi@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266620-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.967];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux-m68k.org:email,mail.gmail.com:mid,0.0.0.11:email]
X-Rspamd-Queue-Id: 071E315DC84
X-Rspamd-Action: no action

Hi Kevin,

Thanks for your series! I became aware of it only recently, and read
it and its history with great interest...

On Wed, 4 Feb 2026 at 00:13, Kevin Hilman <khilman@baylibre.com> wrote:
> Rob Herring <robh@kernel.org> writes:
> > On Thu, Jan 22, 2026 at 05:14:00PM -0800, Kevin Hilman (TI) wrote:
> >> Add of_genpd_[add|remove]_subdomain_map() helper functions to support
> >> hierarchical PM domains defined by using power-domains-map
> >
> > power-domain-map. No 's'.
> >
> >> property (c.f. nexus node maps in DT spec, section 2.5.1).
> >>
> >> This enables PM domain providers with #power-domain-cells > 0 to
> >> establish subdomain relationships via the power-domain-map property,
> >> which was not previously possible.
> >>
> >> These new helper functions:
> >> - uses an OF helper to iterate to over entries in power-domain-map
> >> - For each mapped entry: extracts child specifier, resolves parent phandle,
> >>   extracts parent specifier args, and establishes subdomain relationship
> >> - Calls genpd_[add|remove]_subdomain() with proper gpd_list_lock mutex protection
> >>
> >> Example from k3-am62l.dtsi:
> >>
> >>   scmi_pds: protocol@11 {
> >>       #power-domain-cells = <1>;
> >>       power-domain-map = <15 &MAIN_PD>,  /* TIMER0 */
> >>                          <19 &WKUP_PD>;  /* WKUP_TIMER0 */
> >>   };
> >>
> >>   MAIN_PD: power-controller-main {
> >>       #power-domain-cells = <0>;
> >>   };
> >>
> >>   WKUP_PD: power-controller-main {
> >>       #power-domain-cells = <0>;
> >>   };
> >>
> >> This allows SCMI power domain 15 to become a subdomain of MAIN_PD, and
> >> domain 19 to become a subdomain of WKUP_PD.
> >
> > One concern I have here is generally *-map is transparent meaning when
> > you lookup <&scmi_pds 15>, &MAIN_PD is returned as the provider. It's
> > also possible to have a map point to another map until you get to the
> > final provider. The only way we have to support both behaviors is the
> > consumer has to specify (i.e. with of_parse_phandle_with_args_map() vs.
> > of_parse_phandle_with_args()), but the consumer shouldn't really know
> > this detail.

This is also the first thing I was worried about, when I noticed you are
not doing transparent mapping, but add an explicit hierarchy instead,
based on the map.

> > Maybe a transparent map of power-domains would never make sense. IDK. If
> > so, then there's not really any issue since the pmdomain core handles
> > everyone the same way.

AFAIUI, SCMI is not limited to the SoC, but may be used for the whole
hardware platform, so it could control power to external devices, too.
Once we need to map a power domain through a connector, we need
support for transparent mapping through a nexus node.

> I don't really know enough about potential usage of maps to know if
> there's ever a usecase for transparent maps.  However, the problem I'm
> trying to solve is less about transparent maps, and more about
> describing hierarchy in a situation where "leaf" domains of the same
> type (e.g. SCMI) can have different parent domains.

Hierarchy is indeed something that cannot be described with the current
SCMI power domain management protocol.  This includes external hierarchy
(your use case), and internal hierarchy: AFAIK, Linux cannot be made
aware of the hierarchical relationship among the different power
domains controlled through SCMI either.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

