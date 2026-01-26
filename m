Return-Path: <devicetree+bounces-259564-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBJJAceOd2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259564-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:56:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 215D58A638
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:56:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1967D300D0E0
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:56:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9254B341061;
	Mon, 26 Jan 2026 15:56:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1508A2264A3
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 15:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769442985; cv=none; b=VOBnBLXSgjp4x5Egpx8kkOWFo+nEWDWclfMBC8Lr0SSKgL5DXpX/CopLHBm5gWHIRaIYeuBmgM6Rg8tHw18QGepVa9xOF8+JPv7gQjMzoRgfM8Fp56yOl52oAi7lAPQu0KOwzWzQEYaDMOm4DfmIbDxwcYOzTeilRu0Q4dYW39w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769442985; c=relaxed/simple;
	bh=j2Ql7ryMTYd6hLKkTTmh/xjJDWhevGva+bLot43hmIk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b5uw5ITX+NiDI3+celqXhmCWtOsjRfSjHHVLHKf2O0Bj9PAsBT6RNHOWKS2g7/Wl1iqoCMFTiZAPAByNv5Nfui6SrgMKcjLbI59Kc+JGk+v2QGVBTlTUhOn90U3GSgprEC1HTfnLjSM1dIxqur1jYQz30yLm5F3xokO+D1u8Zfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5ecddf73062so2875770137.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:56:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769442983; x=1770047783;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bW75QeMDV4a8PkPxWmQfsAC+HhpeyRhnFa7BZti7x6E=;
        b=h+uBuKounh2JwaqNznAR9p81Q9ScB2zEtkpGP7RXiOHOaRWDdzLkOKaDUy3VHIaMHr
         9Z1ZcvuRlTlmmp2LXtX1H6xZSfhfw3qIOzTCS5hulN+bgVy1VNwYhZSj7vcV/2xTmHyU
         5saIeYVo6lnxxUUxapnxq+0JwcPkasj4ckKE3kIVuz2KH4D1YrA3r0/bzAsC0saPQSid
         qlsYsc+36DUgV2SMxmR0KlntjA70W/VWxis/1GEGkEB/oLaqpjf9j8XzurVdHOZunN1j
         dsnmmL7H7yyci3bBB4hflGkW0NKh4wpDr3WQLqpVCav/NNo2bxWOk19cE0Xiifv/nWdY
         p30Q==
X-Forwarded-Encrypted: i=1; AJvYcCU/cb5n4Lci5fUIR5eUayvPnIy09XIzTecLrAWi3MetmhshjKUnMrAXmrMaIQTSN/hJP0PIuFcRxOSU@vger.kernel.org
X-Gm-Message-State: AOJu0YyaI+uZIz+JY3XuGDUxM6HZCZsjFAYquuxWZmOVaEyLgyCp2VFs
	rQA/i4reGjBk20eRLW/3+3PFmhkJbWX6ACj+2wS0scXPircRQLEde6o1LoJiTgiJ
X-Gm-Gg: AZuq6aII+0iUkUvuq6sgwzg5W7u/SoYZg+aiw7lbwNybuLcsO6E8EMBUYSGQ2goX4yZ
	HIEzv2JFbV1guA8Aj1agD/fe2AkSTYhyCU/sgXCoWAw+6WUtuo5lg5d/aurdeFb+NMIm3ViNCwK
	PgH4xbgPfRiS02P1DARN0BMqTz7H105aOx+kZmN1reO4UoTzIe1VAKBz/wR0PisJVmXjqOA1/eu
	eP75JoJ+RC6T75pmrmRiISwk+8GxcRnVyt7myN7x5qYPOmVUBfstpyALRAavMUPYqIRRE23gxM1
	ie4Sk6JYGKgnArbiqyPOk9oIy4qck6dTIqydl4x5TBfk7dgzX3aeja96peJ7KA3USLIEPk3Oxe2
	qgKWZ8jhyWYEsjcSephGU8dYwFa0/aTNatMU0TFQ2vQibmUrEEiRZM8eWPbfCD4DQ0eoyQ8TNmR
	efD4zv7n3tUMUAgYCh3m9TYN2KqhJc8keLq1AAPavOKEwF7Pbh
X-Received: by 2002:a05:6102:f0e:b0:5ee:a3a4:98b2 with SMTP id ada2fe7eead31-5f57727a64amr1487048137.8.1769442982940;
        Mon, 26 Jan 2026 07:56:22 -0800 (PST)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-948469a695asm1063511241.8.2026.01.26.07.56.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 07:56:22 -0800 (PST)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-947fef8ebf4so3705894241.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:56:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWCE5Fn6U1sQnqWtXJHwgT6YNgGju1WZxdBvcho0CrAy6MOyUC0I9qy5s1ljenBQXMfsKsy4bwcjYkF@vger.kernel.org
X-Received: by 2002:a05:6102:5489:b0:5f1:b58d:bede with SMTP id
 ada2fe7eead31-5f57727844cmr1470425137.7.1769442982080; Mon, 26 Jan 2026
 07:56:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260125192706.27099-1-ovidiu.panait.rb@renesas.com> <20260125192706.27099-4-ovidiu.panait.rb@renesas.com>
In-Reply-To: <20260125192706.27099-4-ovidiu.panait.rb@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 26 Jan 2026 16:56:10 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUeGJO-byndbrDDEO6dLun8cyfqe9LZf6PYRP+HG4OONw@mail.gmail.com>
X-Gm-Features: AZwV_QgJ0TDPdAIJdv1mbLt6nJx-pGX34vWTaFM3iyDnGfxutud9aETDmEzc77I
Message-ID: <CAMuHMdUeGJO-byndbrDDEO6dLun8cyfqe9LZf6PYRP+HG4OONw@mail.gmail.com>
Subject: Re: [PATCH 3/5] dt-bindings: rtc: renesas,rz-rtca3: Add RZ/V2N support
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: claudiu.beznea.uj@bp.renesas.com, alexandre.belloni@bootlin.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, mturquette@baylibre.com, sboyd@kernel.org, 
	prabhakar.mahadev-lad.rj@bp.renesas.com, linux-rtc@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,bootlin.com,kernel.org,gmail.com,baylibre.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-259564-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,linux-m68k.org:email,glider.be:email,mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 215D58A638
X-Rspamd-Action: no action

On Sun, 25 Jan 2026 at 20:27, Ovidiu Panait
<ovidiu.panait.rb@renesas.com> wrote:
> The Renesas RZ/V2N (r9a09g056) RTC is identical to the RZ/V2H
> (r9a09g057) variant. Add the compatible string for RZ/V2N and
> extend the existing RZ/V2H reset configuration to cover both
> variants.
>
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

