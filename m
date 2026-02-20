Return-Path: <devicetree+bounces-267047-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EsPOpypmGmvKgMAu9opvQ
	(envelope-from <devicetree+bounces-267047-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 19:36:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A6D16A1C3
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 19:36:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 30EE6301413F
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 18:35:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A91F366802;
	Fri, 20 Feb 2026 18:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="YqpoFQJN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048ED366542
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 18:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771612518; cv=pass; b=loM+R5oJPFBCN7qAwqrAPRSMK6xAKgHI2xHH/pTWtsPC77qXL2GKVIYwL4FaB7qJrihUW9jYn275GwhKfFfOqvIQwnrurdWGINBMDxtWSeBObXQndb6mWwUZgGSm+YT/cuZtc9dFQmMFu7fjQHXdjOYl8kpZl5cYKKTDo3h5wlU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771612518; c=relaxed/simple;
	bh=MxQa3nrfu1YS+AokB96QoOSx1G+mkz1ci5wmgAEFyag=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oJ3gEoLDiII3KSbrhxcB8tZsqEy9Sp5VYYpX4xchUJg59qdbFcwSuoYNHBlxUwwWAe5H6FGG9m34YD/TvlOrRnk0UWqg0oaxR54zXg4xGwREeTBBS7XFmbvIYjyTpMIphtrGqMfjotlKbyXGUi3sVY2aE3YCb5VJJZmbVANxH6s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=YqpoFQJN; arc=pass smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b8fbb24a9a9so484321666b.0
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:35:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771612515; cv=none;
        d=google.com; s=arc-20240605;
        b=U985hAaaS79CYMYnDSVQgbKe5omYYYfjggwqs/5ju+wDK6jE5d32uu0XA9i3TYGxyZ
         3sw/9F3AuGy3Nnhjract1Zqv0ppEyHTNFSf7OX57TmSLxQmHa1V0CiImyS8yA/mG6YPa
         gZPgMJeEGuY5HHS8/iYChO0Hu8BLZ0rLl9OetwwC00i0ybNQp5AXVhWS+5ELOIgafZ3B
         AzPqUNDWSHO7cwHWM5waICLgS26h/VsLEVmAZWHt4g54lOGWsZiGjYeu8dOdS2LtcSvs
         Ud3gsP0GCWMXNAh41MD6MuatXwdCtdVduA1cQeCrK2lTXYfDNo0+mHQtrc08100y7Jqm
         ynTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1Xu9HuQBL5cHkzfmroWqrxWWuNKUX0XVOJbElhWvSbc=;
        fh=EOiyEoHrQRfpVPCmCnen8BSmo3dv3RmHks2M/fH09BU=;
        b=EnbkXIc3zk9NqCoip6s4rv9Ar0Dj/SWPMzqNV/6W2Dc7hwCPyQjEBZs1Rp9UALS3EH
         eBWmXheI19VeHkCBofyHU7ebyHULAMZi0yUp5CpuNEgsIBwMEzR7oe+BiUVqvvGvN+/D
         oCz8DUnwMljRGahEUnPSD0vsqHhwfe4t8J2+wcDOpo6n6S3HO4XAfsLKqkND1ZaCzKTe
         BhPcPe+D9kPoiNKbqFt649OT03GP1t82rH+/Kua/KJc1VHLcRj9nK/wkrrv4pNpKRTvM
         bkVopnpqrCjo+7y9gmw1n3NgklkNsz4ckE30rwsbGQeP5NBnxyPrVWCV9cOn627DOJWC
         CdxA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1771612515; x=1772217315; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Xu9HuQBL5cHkzfmroWqrxWWuNKUX0XVOJbElhWvSbc=;
        b=YqpoFQJNZ7VmDgwYZImK521CGV7x2h+X3liTv6D6Q6BoDi6sRtJUi8pdKoHvtAPYis
         SXCmLw5YWWZOayoTatRpLHJBpt4vOWQ27fHjpXpPcWekHiBfRaRV/9PFlugAQgAsV3EX
         iDzo9YiVCCC3koGRvgSb0YSaEN4FUWFFjYcsBeQBEGMSCCiT/unt+3Sr+Gju42BtGeEz
         rpW//XkxJseLJIiOhL7DJ/vrj7sXrG7W1sjEeYa7+G6JssrxMH+45wDUewTPNLEoNgtE
         8enzrbaZ3Z7wS6OURaL3vupbVgxJLejr5gX9wSHult60ZvbpN7PqtNweroIVOwIdAJ+t
         +IBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771612515; x=1772217315;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1Xu9HuQBL5cHkzfmroWqrxWWuNKUX0XVOJbElhWvSbc=;
        b=sf6ZSzPBplvlLJCVkgyFg67ynnBGIbKZiVK3IcGw6XiClCPsEz+HzNx06tI7gjKHcu
         elMi4HRNfp4AjpyN5mzbkC/z3HX1tATbZZoXfBS8NZkYAzc9Po7X9GbFMXiGACYtpZv0
         WVjdN1mEB8vYBNrSfL4unGIFKnziw51ld4SA8sig1FqnyQQJ1hZq5dy0h0DjJARYohCE
         QlG6eJz8cuFHSGmwDz1klGXM08DIkJjdLrNbKPhAp+nHK9fb8jDckME9d8Bt5caa2t8r
         Ka0wiQoqou/yMuQyKRGU7O5pFQ5I9UvR3GKcvAcjlEyQwOvu8RTC3jrQ5GukJk9CfPa8
         n68Q==
X-Forwarded-Encrypted: i=1; AJvYcCUyjnsk/AEBN/KxAuFNFOfmOiuXaxJJdVl3n8xe42xJ8b39955C87Lt8hwwsjC2vR9GIVYBpj1wIVJ4@vger.kernel.org
X-Gm-Message-State: AOJu0YwmsFapYptrt8ckd6tzJbGml7oTgfSLySEfyLgowx7non8p8f2Q
	F+eJwuSHC8U3uaEvibCRWoIED+ypG4sqYVKehVqGWR63kbtVUOEvyuQYSaBRM9WcRpWKvt3wg1A
	3UaROKYedfWDqsEZFShvSdWpJIqe9GzItYVe8ahAq+Q==
X-Gm-Gg: AZuq6aLQ/9/rUwXlvD1SS/FfkMmG8wqroO7BpI+x0WXgQjPvliw1CcZB1TGMz82i3tM
	OjP75mxLuhkcTf4lO5ENslGM9FPx5pqVNqavUCI2fIhU/duiR1VrotRHSwH1vYB+/Jc4cRVErhs
	18ZV6Ke34PgUGn5Uky4V3D7b00L6ymDuqH25CVfSv17WUksw4tlzj8lxdo7DNe7ESdgMPdJE+gR
	qt0txlnIe1qqgOLqQuOhPIsc+fvegO7dGRmzw9uXr606dyYTlxEaMCsX9k3ThYNHP95bsQTpPaK
	44H+3FrCSw==
X-Received: by 2002:a17:907:3ea7:b0:b90:77bb:5aa3 with SMTP id
 a640c23a62f3a-b90810895b3mr33703266b.16.1771612515417; Fri, 20 Feb 2026
 10:35:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260220-fu740-v1-0-c8af54130c58@sifive.com> <20260220-fu740-v1-3-c8af54130c58@sifive.com>
 <45821cd4-214c-43c0-ab2d-bbf34d9ec911@lunn.ch>
In-Reply-To: <45821cd4-214c-43c0-ab2d-bbf34d9ec911@lunn.ch>
From: Max Hsu <max.hsu@sifive.com>
Date: Sat, 21 Feb 2026 02:35:03 +0800
X-Gm-Features: AaiRm52zdgGy_ZwaGZNcNjw3wNbwheS9Jou-9dGIz_POzEmmVoyRUwnv2BD7-yg
Message-ID: <CAHibDyzQAWgGP9sktLtnpND-Qr6FRrTA=HEiweyDD6rWm=8=5g@mail.gmail.com>
Subject: Re: [PATCH 3/5] net: macb: Add support for SiFive FU740-C000
To: Andrew Lunn <andrew@lunn.ch>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Samuel Holland <samuel.holland@sifive.com>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Thomas Gleixner <tglx@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Conor Dooley <conor@kernel.org>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267047-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[max.hsu@sifive.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sifive.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lunn.ch:email,infradead.org:url,infradead.org:email,sifive.com:dkim]
X-Rspamd-Queue-Id: 15A6D16A1C3
X-Rspamd-Action: no action

Thanks for the review, Andrew!

Based on Conor's feedback on patch 1, I'll be dropping this patch entirely
in v2. Instead, I'll use a fallback compatible string pattern
("sifive,fu740-c000-gem", "sifive,fu540-c000-gem") in the device tree,
which makes this driver change redundant.

Since there will be no net subsystem changes in v2, the series will go
through the devicetree and RISC-V trees instead.

Thanks,
Max


On Fri, Feb 20, 2026 at 9:15=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Fri, Feb 20, 2026 at 04:27:07PM +0800, Max Hsu wrote:
> > Add a distinct configuration for the SiFive FU740-C000 ethernet
> > controller to comply with the SiFive IP versioning guidelines.
>
> We are in the merge window at the moment, so net-next is closed.
>
> As requested, please reword the commit messages to replace the SiFive
> guidelines with the generic DT guidelines. And repost when net-next
> reopens.
>
> https://www.kernel.org/doc/html/latest/process/maintainer-netdev.html
>
> The Subject line also needs to indicate which tree this is for.
>
>     Andrew
>
> ---
> pw-bot: cr
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

