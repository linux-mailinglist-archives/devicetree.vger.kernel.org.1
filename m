Return-Path: <devicetree+bounces-262426-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGgeKxSBgmneVgMAu9opvQ
	(envelope-from <devicetree+bounces-262426-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 00:13:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E80DF9AF
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 00:13:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A70E9305F7FF
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 23:12:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 605E72FF14C;
	Tue,  3 Feb 2026 23:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="gNFazDB1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D688374194
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 23:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770160377; cv=none; b=E7PS69iKr/siA7mvR0CUkkUB5C6SohnZ9npkokUqM4mifb+NvxFXOr+0IDIuoZbjJO4I2Z2h5rFBuE7eLYxUMQpBDrxuB2+HC79gPCVA7FtNRFPx+up/LfRtBLvZo4dQaPeHh859FlWqy+NLN3tPY9VtHfUsCdp1bJ90kbwshss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770160377; c=relaxed/simple;
	bh=b+6ezU8PaueXB2DpM+akcgePYGBcPLLporezIjuLT+g=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=p0IBhHluOyCPcnLUggn6/uEbPLdTY+kY0vAnZJhWFNEIuPxkf/0ZUplj6hLUFIKO87ZtonS7NbWbz61lqHLOrjtA0QNS51bME3qBOddlKOhucG8V6fUmwkgybePZQFL0It6GHCvp+vrgruXnZhCxgKQFfl6TBkDumsJHMW7C8rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=gNFazDB1; arc=none smtp.client-ip=209.85.210.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f193.google.com with SMTP id d2e1a72fcca58-81f4f4d4822so3145738b3a.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 15:12:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770160374; x=1770765174; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=hCOjNNMnUuznv6tosNTA/iIRiTXu2wBeg3Ia+sthXnc=;
        b=gNFazDB1fEFOxYJalqDLQnf2a9KU5UxQM/7PkxkGtDV1nok7eq3eZveSWzBoI8jd7w
         3aAy7gNFXbkum1bc1XR7TP4nvkqBrlIBd1CI8VTkEVJkgPBK0+i/vdf+VIou32iFFDoF
         3FwjHmPqRIRcFbvdKe2QqpAlMUsCTEjyv6esizdi+gglNAoTdyJ/niobMbs67Gm7UkUq
         OgVkjl5lVs00rpiaKmLVRWhGiPFgOm10RJlOTgpv5DnIEHqWi2NkTgfPpAfyTSH3qq3d
         QilVD2rfiBGOZ9K8pSZpLnQOaANb2d/Tw+ykFOpAjPBNuZcJ7rDAGbJjxZCqvqX8NgRj
         8vgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770160374; x=1770765174;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hCOjNNMnUuznv6tosNTA/iIRiTXu2wBeg3Ia+sthXnc=;
        b=Hxl+14L6s5KayMBtiTYaTfEPSRHytHt0ngUQrfbm8QKzV039AOdmWkQDrcw9d0msBl
         5E83BcRCXxbjyDEiuwwlB3rlqi1S0dObQzwbrYvnnAN+kmBOYrhBvasqWNEHYq2727Ua
         Jw9dbXgHckxZ//Hjy3b4gaO4dqbh++OfiThogeYTrvuYxbDi+V1I4RbXseO76dbdZgEA
         pxED4IBRHMNUY0bB0l5a8/tdIHOJ0+1WaoAIOInnIysk1W7WbubOwEcsAibYrKDeygvO
         zCidGmn1tqTIpYI744Nmgft5ElQk4QRx0mtYbXaclM4HBhO82D7qv0ozYqRPzwIGMw3h
         iDwQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8QMA2U2FYoCMnW8iU180MGqvZEXudx3zyZ/U9VVgaVW2ygpuhExeL4cWF4QEXQYjKdvshWTGoYTrc@vger.kernel.org
X-Gm-Message-State: AOJu0YyIx8/ZAZwq5g0U9EKOwCo8UKsXeSGBHIfmW5aNsc64sH5KP1OD
	nOouuPZlZweDXo1X6OwJVY03Ndb6mpmkKadGyDLOCyWNGVMHFFB6Nj7asajNPs5+s+s=
X-Gm-Gg: AZuq6aJUV3RjL4LhvrzR8VSEnOGLHuPqyRb5eItNTQUXnLOL1q6qt/9CCdGqeG9/fvg
	RR6YYpxi44qgeGJOihVhduqnKDGKkHnf9bBbaTIjrPx9FyVvFoo71FDUHZY3pEFxahH1m18hhoW
	ks16An78VUsiEnuBwG2buao6yVAjojCapx7U2rHGNNsVGUI2x5Zy8mh222ZEk0YDy7a96KqbnxL
	l93aJQvxfJT75xv3/9V4VBB1eXuVqpHvUMOujrhb9Z66ms0rxO4xvtr1zzvNhv1XfFOEDLx0DPn
	7gPn2s3oJ6L54SiaMox5xLzYblI4yAwfA3Pg+YKuUE8CJP/2A3nrvz5oFlwWP3kbjQUN28wSqO9
	e4fHpSSbttl7hFpvbhTRfdgZh+zCYoxaRWaJuuhhv1HzEllDaNpRe5ctzInYcOmxLV8hkL2/4j4
	HVzWGNpGrQ9zeWEy3v5Ik=
X-Received: by 2002:a05:6a20:9185:b0:366:58cc:b74b with SMTP id adf61e73a8af0-393720cfdddmr966865637.21.1770160374489;
        Tue, 03 Feb 2026 15:12:54 -0800 (PST)
Received: from localhost ([71.212.200.220])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6c84c70e08sm321672a12.20.2026.02.03.15.12.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 15:12:53 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Rob Herring <robh@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, "Rafael J. Wysocki"
 <rafael@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>, Cristian Marussi
 <cristian.marussi@arm.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, arm-scmi@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH RFC v5 1/2] pmdomain: core: support domain hierarchy via
 power-domain-map
In-Reply-To: <20260127151735.GA1699112-robh@kernel.org>
References: <20260122-pmdomain-hierarchy-onecell-v5-0-76855ec856bd@baylibre.com>
 <20260122-pmdomain-hierarchy-onecell-v5-1-76855ec856bd@baylibre.com>
 <20260127151735.GA1699112-robh@kernel.org>
Date: Tue, 03 Feb 2026 15:12:53 -0800
Message-ID: <7hjywtzaiy.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	TAGGED_FROM(0.00)[bounces-262426-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_PROHIBIT(0.00)[0.0.0.11:email];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 17E80DF9AF
X-Rspamd-Action: no action

Rob Herring <robh@kernel.org> writes:

> On Thu, Jan 22, 2026 at 05:14:00PM -0800, Kevin Hilman (TI) wrote:
>> Add of_genpd_[add|remove]_subdomain_map() helper functions to support
>> hierarchical PM domains defined by using power-domains-map
>
> power-domain-map. No 's'.
>
>> property (c.f. nexus node maps in DT spec, section 2.5.1).
>> 
>> This enables PM domain providers with #power-domain-cells > 0 to
>> establish subdomain relationships via the power-domain-map property,
>> which was not previously possible.
>> 
>> These new helper functions:
>> - uses an OF helper to iterate to over entries in power-domain-map
>> - For each mapped entry: extracts child specifier, resolves parent phandle,
>>   extracts parent specifier args, and establishes subdomain relationship
>> - Calls genpd_[add|remove]_subdomain() with proper gpd_list_lock mutex protection
>> 
>> Example from k3-am62l.dtsi:
>> 
>>   scmi_pds: protocol@11 {
>>       #power-domain-cells = <1>;
>>       power-domain-map = <15 &MAIN_PD>,  /* TIMER0 */
>>                          <19 &WKUP_PD>;  /* WKUP_TIMER0 */
>>   };
>> 
>>   MAIN_PD: power-controller-main {
>>       #power-domain-cells = <0>;
>>   };
>> 
>>   WKUP_PD: power-controller-main {
>>       #power-domain-cells = <0>;
>>   };
>> 
>> This allows SCMI power domain 15 to become a subdomain of MAIN_PD, and
>> domain 19 to become a subdomain of WKUP_PD.
>
> One concern I have here is generally *-map is transparent meaning when 
> you lookup <&scmi_pds 15>, &MAIN_PD is returned as the provider. It's 
> also possible to have a map point to another map until you get to the 
> final provider. The only way we have to support both behaviors is the 
> consumer has to specify (i.e. with of_parse_phandle_with_args_map() vs. 
> of_parse_phandle_with_args()), but the consumer shouldn't really know 
> this detail.
>
> Maybe a transparent map of power-domains would never make sense. IDK. If 
> so, then there's not really any issue since the pmdomain core handles 
> everyone the same way.

I don't really know enough about potential usage of maps to know if
there's ever a usecase for transparent maps.  However, the problem I'm
trying to solve is less about transparent maps, and more about
describing hierarchy in a situation where "leaf" domains of the same
type (e.g. SCMI) can have different parent domains.

When I first proposed this[1], I didn't use a map, but you suggested I
try using a map[2].  So I'm not sure if I misunderstood what you
proposed, or if now that you see it implemented, you're second guessing if
the map is the right approach.

Kevin

[1] https://lore.kernel.org/r/20250528-pmdomain-hierarchy-onecell-v1-1-851780700c68@baylibre.com
[2] https://lore.kernel.org/r/20250528203532.GA704342-robh@kernel.org

