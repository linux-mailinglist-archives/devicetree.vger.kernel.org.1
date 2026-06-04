Return-Path: <devicetree+bounces-306827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FR1XH8Z1IWpEGwEAu9opvQ
	(envelope-from <devicetree+bounces-306827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 14:55:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEB2640186
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 14:55:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306827-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306827-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0745E3112F36
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 12:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6741A47A0D7;
	Thu,  4 Jun 2026 12:49:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F098547B413
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 12:49:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780577370; cv=none; b=VdrspsSbgUf31vEJubpv0vGgi89rMv3OlrE/usqeKmjnpfHtQV89qAuUkPJXXKVTDfVtouhXHT9UUHbcfL975yAK2f6njLdfcBGjAu5coUzWds1IMbM4mM3HOddcQAUkEbde6/s2VF2WMx+P6E8H79gbYFtZ84pahbN8QZSRt/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780577370; c=relaxed/simple;
	bh=/us1vr8a5z11BxNxG8w0EOK4mYuoD8wxJHeVXKELP2Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tWbzpoJMlrSYnCjqQyX4TArfXWnVaVLZ6Tfd+Sol/Uwjqf6mDGr41Z6OB/BbjvLDigUZnS3beliCzPj1+0HTmolb+lZODVsZoKFQ1zmA7OqJ7tzeiYuCDbDH3THDXsbJln1/mFuEzuCoQHYWh+5cKr7zSleE87tB8K7ad5rKwWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.54
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-6cfcad4f979so602401137.1
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 05:49:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780577368; x=1781182168;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jXcg6gYzrpbGrQNaU5i/n/QDTFmGYgHfcoYdrRVlWKk=;
        b=jJxLt5UIw+/OLwX4fYgOMsEdHlhmXm8teOPyO+1V9umz7TK17HjzRarmgS7dN7+bzR
         PIKxkK+Tx7PPw0IlPwP7RneJWF0GjUIEnUPq1QknJe4Xs7CT3dhQOHZhPLfdAcfTyT0t
         +LC5IJXlNpV1NQWW/KoQhr3AHYXpyypFkjC+Sr7Hvk/gbe1qoIKeFHYBUlHBaeo2wnFf
         M8QiqyQ4znVaUo5pccyQf4isSwQAc6Z74oX6FXkFocM1ABpHh54nZAbo1h1VUfiwRxns
         cwgko5dvlDiOXG/gMort6cAQzl5KZbopor4Tgs4+qS1rmkiKGyjvRQU8qKtwwTvT4se3
         zJMQ==
X-Forwarded-Encrypted: i=1; AFNElJ/xY0HjJPuzS5sisVJ1axhknH3E/0x8ihVLQnpeSrrNNtXqtzCsCzXCQry5MIaAEjRhAxsoALz5kL5C@vger.kernel.org
X-Gm-Message-State: AOJu0Yxa+LJLZq+fCK4rJVPTDOvJduhp7nHphp9eA2do0fJtzFkt/3uo
	KVFi19ekSvQ8YzaW/+EvMdQDuNM9WHw78EAe83SpCWMcUVH+OTK7JS6QopqfpdFKO2Q=
X-Gm-Gg: Acq92OGHnZqrFw+Cr9quxEfkSjDg4UftRLz/FsEENRiv9Yb/XN0P6U+wBd5F8yR639N
	Hz+NruuM8w3rwmM2VKMIGk9ZstG20+VRzdcqKfUJ+zCjpiTlNvhahtekBs+wDNiigydwmDZ95nj
	CjuPEgVKnlBXhxHuKkWFe5SrWCLdDbvt/vCxetEP9KQmRSxUnmHPO2eJivWvq+IkdJ8l352g4mj
	N/ZuIkGph3WjHQ3Mso6exrGqcZ+WsZh1rbDD4+lKFBEtD2Ttvh6rI0OaS9aPHZFMxw80gijCRFD
	VQqjMyNkui/W4RwLB60JNNbuKejZVV26WNR1s6oGRuwohERDzH4+r5hPNZXwA8JyRip76xkqVYh
	kCKg/I5BLOXDrOZ/o2NfslMMPXe043RF0iG2JBVhf2F1L8LIFWLraT7NRrgBFaCM3476d39wge/
	rdosJ84aIpaa45xvoQgJ/Omp2E+r3wrQpulsYftBZk0pSJzthm2nbP5KlZLCBWUG8yhlhDbQt6X
	PaSy28ipQ==
X-Received: by 2002:a05:6102:5091:b0:6cc:a388:1c7d with SMTP id ada2fe7eead31-6ec444bee17mr4621634137.16.1780577367923;
        Thu, 04 Jun 2026 05:49:27 -0700 (PDT)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com. [209.85.217.49])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-6eb649b710csm4770859137.7.2026.06.04.05.49.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2026 05:49:26 -0700 (PDT)
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-6cfcad4f979so602372137.1
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 05:49:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9bdVEzRfjMpadDY4OQJngooiVSLPCcx/nDAn/arz14+8Cth/ZGo3ZwgkdD/54UEe/pjcPSVvQEE8XJ@vger.kernel.org
X-Received: by 2002:a05:6102:c06:b0:650:967f:fb32 with SMTP id
 ada2fe7eead31-6ec2978d496mr5106431137.3.1780577366377; Thu, 04 Jun 2026
 05:49:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260525110603.4018170-1-john.madieu.xa@bp.renesas.com> <20260525110603.4018170-9-john.madieu.xa@bp.renesas.com>
In-Reply-To: <20260525110603.4018170-9-john.madieu.xa@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 4 Jun 2026 14:49:14 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW0-pf_jcKTfLCDrwj_ezqrLyO169Pp_cQFzipHnG0oqg@mail.gmail.com>
X-Gm-Features: AVVi8CcDFx5qXSuegazwE2easrqw_MlaWBK-wBRkmOsQBF_Kpu53lNXiO8RHuTA
Message-ID: <CAMuHMdW0-pf_jcKTfLCDrwj_ezqrLyO169Pp_cQFzipHnG0oqg@mail.gmail.com>
Subject: Re: [PATCH v4 8/8] arm64: dts: renesas: r9a09g047e57-smarc: add
 DA7212 audio codec support
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, magnus.damm@gmail.com, 
	bmasney@redhat.com, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, john.madieu@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306827-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:john.madieu.xa@bp.renesas.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:bmasney@redhat.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:linux-renesas-soc@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:biju.das.jz@bp.renesas.com,m:john.madieu@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,m:johnmadieu@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,gmail.com,redhat.com,bp.renesas.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,vger.kernel.org:from_smtp,linux-m68k.org:from_mime,linux-m68k.org:email,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,glider.be:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DFEB2640186

On Mon, 25 May 2026 at 13:07, John Madieu <john.madieu.xa@bp.renesas.com> wrote:
> RZ/G3E SMARC board has a DA7212 audio codec connected via I2C1 for
> sound input/output using SSI3/SSI4 where:
>
>  - The codec receives its master clock from the Versa3 clock
>    generator present on the SoM
>  - SSI4 shares clock pins with SSI3 to provide a separate data
>    line for full-duplex audio capture.
>
> Enable audio support on RZ/G3E SMARC2 EVK boards with a DA7212 audio codec.
>
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>

LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

