Return-Path: <devicetree+bounces-264804-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EtVDui1jGnNsQAAu9opvQ
	(envelope-from <devicetree+bounces-264804-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 18:01:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DB8126628
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 18:01:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BA300300C247
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 17:01:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BE9B33B6F4;
	Wed, 11 Feb 2026 17:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qa56ajQL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2DE146588
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 17:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.222.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770829279; cv=pass; b=Lu5DwtTi8/iu5fV/fTvZHjmeIHue0EVbTE3adfEdREzrasbcGOu8/L9AqBs0F4EMUVTd/21Dcytt/I8YWGFfybAejq3pMGnbIQNiY/XXcZtap+74YyrXty9o80wY8iRSvsAE5A+66IdoHPnB6D+TOwe3WZi18q4tcFFdsdmJcgE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770829279; c=relaxed/simple;
	bh=4ZnEBjDHwmku7NC9H+imiySGSAr5j+VPjTjM/2L2cLg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PuvW7JmmfUZR6sWwoPlykXCfINaADytXm/Uwlt7ri+xZ2qvuVgyvUGs7R2COnnfJ9JOYWFlBs2K6GETFqR3axY5L9InZM7mI15pI1MUgPpEKjNN7rdicqM5Y5mbuVxFJ4Z8ER9fQHlFqxQkuywImWHfyecpVJTSPKexFGsXDZig=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qa56ajQL; arc=pass smtp.client-ip=209.85.222.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-9489d087bcfso1223945241.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:01:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770829277; cv=none;
        d=google.com; s=arc-20240605;
        b=lLcj+eU17x8zkvhVkrYfmK34GmDjp9A+/OwQX+8d72D3RN+hKOWP99JwoBauRXuxFb
         CPWyhSz+iDeCPBTefSvecxY2Vmp3CWG9XrInYslAaGlnzUuR3fEKZdlb04++lc7IgCJ8
         nT//418t6HumYY0cyzGaJpTagSM68wkJIeb4IPLscvQMCZ6SF4wkhO8EghevDYJ2Rfac
         eY+J0+7RMQP6dyLRsL5quUIxCtKlorRmpGjx3t97R5zUtbaejOBNG7+MqJPTwITOYcU9
         dP2C/pu15ydH+5emGMpEIMMR+1RzD2agId2M9vZe5yK9ZiRzEYT20yawFr11N6pQ9BHf
         Pv7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=4ZnEBjDHwmku7NC9H+imiySGSAr5j+VPjTjM/2L2cLg=;
        fh=lMSPKYg4GwY2o6Uf2Jscq5BY6+gEZXdRcGBm0IdMbD8=;
        b=lxeTGDSR0DhRZ8MXngdCaTcy3ceRpZU7JzXnX0ZelGCqnmRb/NYmSPuMq48NVHHgiu
         uYRG+XuCN423Y04nkFyLEKGxYRlE3q5VrR8ZptNs6u18rn8DdPIUdWFEjhb66cOovC18
         66UmdimnygmlQZB8jS9wTdRcopYiSLfFdzB3JbkeV+WNGm37P/OgnxWf59qVgreCbEow
         LQlYhYkCTSSO+Z3VhGuPgTlqtwC4kl3CXhc/MxHgk7PEXRPSfeLwbCybNHFKREP1W+MW
         bsW2gcSbIC+PRUV0AHy1A6lmcd0a3mMeIWShTTnTAZoYuOaOeTK3DPbVMcGWZVriL9LC
         uPLw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770829277; x=1771434077; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ZnEBjDHwmku7NC9H+imiySGSAr5j+VPjTjM/2L2cLg=;
        b=Qa56ajQL4Cyy4WWIeR1fiBsmxfmPcVQjjzGT+oFf2dnq67i40IbmQl+YhcFUzOESbg
         vwDuFUFf9G0k+M7O8lrsnUW9Pgl9Co91Tap/BIaGEVh/ROc94Dv0dGNST7wZP87QWU+O
         hRJGZwb+KynruWH/pcrVIInwxNLUfO+57puFvMpn3SCCDMmKcADHW9JZd/9vjCLb1HWD
         i+JeicOOZMUUlGCy4io3RbXf9VT4X4Pqdnn2SYlc1Bvb9yhQkCoOXQE5gN19dNvFhiCF
         o5YUyF2p+4/HQ0/OU4ojNlEUwhjCXYY1BmZCk0i/x4rAtPbnhauOL738B5d7FQ0Kuu/A
         VqAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770829277; x=1771434077;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4ZnEBjDHwmku7NC9H+imiySGSAr5j+VPjTjM/2L2cLg=;
        b=DWlBmKBBfzaQ6Ebi5P3i+fuZDqc/mI8TNusSSC2siI2E+/yij6/6SHqraYPVzKf03N
         C6t7gvWMb48LqZgF92fp77DOjnX7x4w/PQwjrB1p8DBIPV42PC9rA6tDfr5OxMUTv2eu
         iAPCv+I8r7R+dktmqD05TrzDoI+0XgG4tAm16P0CTF38v5I6liMc3kLwWM9fufYZ6WXQ
         VumrJuYF2BxVp37g78vMlZktltaTeoRME9JrSXscAKP4jInK8viBz89mQPN3uSQpJ7Pe
         +483+GBXDNS7296+GR1wBnGl2EBhmoRoK2D88hpoYESumclhGybigsT7DENsImpBn5cH
         WTwg==
X-Forwarded-Encrypted: i=1; AJvYcCUTS4EMLGLXpSmo1TORPuocBSghOG/yDF1l0VWF21kJgeJOspuO9nigxZtZpBInJ50jJBXnYXHRSJ9y@vger.kernel.org
X-Gm-Message-State: AOJu0YwuITBD9fEO28nKhQ5T3M6yU9LibyXIMQw4A9LStyC5L0s/fLst
	qb4N3E27r7158QFAIozpPC1/Gin4Dk8Qm2h9NudR8N8LRiKjyk7o/AXCgFIUvnVgEKuNWMaMtU1
	p/szlxRtNn56jVPL8j1dYJnzHueWOf8I=
X-Gm-Gg: AZuq6aIwio4V3w1+tsneJaDbmzx3awwoGjxJt6BLUq8UPYL4Wx/9BOhCNDmztCJ0Y4V
	lutxfhQJv+/N2v977rCIEOUerXG7bYKvyZ88xWgvprGxIhaW/W865tbASMAGSohrAOxFhKWUl8O
	2svg10KJ6vVGioDyKlqNyNHQ1vhHo5oTwicPQliJqwZe60764y0KZwGPg4hiwIUpCeo4wQNLhho
	LTcvBxQcXSIoxWdZJ9FywslY7dmqx5l3IwFffNxQSz3DaJHhO8zx4J9raS55UXXEA0Nl0j2AWPe
	W73oIEMDVAJ8D3HoplE1FMMgKxqqXrP+dJAah85FOHBXo53ZAssdeLq1c0e8rHUk7ToX
X-Received: by 2002:a05:6102:b09:b0:5f5:2501:6d2b with SMTP id
 ada2fe7eead31-5fae8c57117mr6228570137.35.1770829275348; Wed, 11 Feb 2026
 09:01:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211081355.3028947-1-james.hilliard1@gmail.com>
 <338e6575-ec44-4179-94af-9086a7ca79ac@kernel.org> <92359c6d-06ac-4f8d-baa5-6fa45a536455@kernel.org>
 <CADvTj4q74H__JZftOiXkdsY3+E_Xmcx6Y6i70RQDJ0K09=XOHQ@mail.gmail.com> <30026ed7-cd19-4be2-adbb-e8bb155a75b8@kernel.org>
In-Reply-To: <30026ed7-cd19-4be2-adbb-e8bb155a75b8@kernel.org>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Wed, 11 Feb 2026 10:01:05 -0700
X-Gm-Features: AZwV_QgM_JKrxsxQoYHHcgPm2Da0hw5ny58m-RsFEi2Y7Wb236pUtImS10OxfNc
Message-ID: <CADvTj4oBtO0Yhib1rE8QQwgtJvy-x_hK46C63mjVAydtxHOV8g@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: add gpio-aggregator binding
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-gpio@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Stein <linux@ew.tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Herve Codina <herve.codina@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RSPAMD_URIBL_FAIL(0.00)[bootlin.com:query timed out];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-264804-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jameshilliard1@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,bootlin.com:url]
X-Rspamd-Queue-Id: E3DB8126628
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 1:44=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 11/02/2026 09:28, James Hilliard wrote:
> > On Wed, Feb 11, 2026 at 1:19=E2=80=AFAM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> >>
> >> On 11/02/2026 09:17, Krzysztof Kozlowski wrote:
> >>> On 11/02/2026 09:13, James Hilliard wrote:
> >>>> Document the gpio-aggregator virtual GPIO controller with a dedicate=
d
> >>>> schema and compatible string.
> >>>>
> >>>> Also extend the GPIO AGGREGATOR MAINTAINERS entry to cover the new
> >>>> binding file.
> >>>
> >>> <form letter>
> >>> This is a friendly reminder during the review process.
> >>>
> >>> It seems my or other reviewer's previous comments were not fully
> >>> addressed. Maybe the feedback got lost between the quotes, maybe you
> >>> just forgot to apply it. Please go back to the previous discussion an=
d
> >>> either implement all requested changes or keep discussing them.
> >>>
> >>> Thank you.
> >>> </form letter>
> >>>
> >>
> >> First thing which was missing (I did not even check the rest in such
> >> case): missing rationale for this patch, missing hardware description.
> >
> > I added some more details to the commit message, this is a
>
> No... Commit msg is exactly the same.

I added the details to this commit message specifically:
https://lore.kernel.org/all/20260211081355.3028947-2-james.hilliard1@gmail.=
com/

>
> > virtual gpio driver though so AFAIU it's not hardware specific.
>
> You can give example of any hardware where this is useful. You need to
> make your case with actual arguments.

The sunxi h616 board I have has hundreds of GPIOs, only
a few of which are needed, I want to map them in device
tree overlays since there's some minor variants with different
hardware gpio configurations.

Setting the gpio names on the parent controller is not practical
since doing so would require setting hundreds of values for
gpio-line-names, you also can't really combine sets of pin
names across device tree overlays AFAIU.

> > Use case is I have a device with something like 300 gpio
> > lines...and I want to name/group a small subset of those
> > lines for delegation to a userspace app rather than trying
> > to set 300 or something gpio-line-names values, also I'm
>
> So if I change the approach in user-space or use different user-space
> app then I change the DTS?

The idea is to make it practical to set gpio-line-names for a
subset of the GPIOs that are wired to peripheral boards.

Say for example I have a control board connected to a few
different peripheral boards, there may be different mixtures
of peripheral boards, some of which can be used at the same
time as they use different GPIOs.

The idea is we load device tree overlays for the detected
peripheral boards with detection done in uboot based on a
GPIO pin strapping based detection.

In userspace we want to match the peripheral board GPIOs
based on the GPIO line names, but using gpio-line-names
on the entire GPIO controller isn't practical as that doesn't
allow composing gpio-line-names configurations from
multiple device tree overlays and would require a ridiculous
number of placeholder entries due to there being no way
to configure individual gpio-line-names for non-hog lines.

Maybe there's a better way to fix this limitation by allowing
sparse line name configurations(i.e. the ability to set a name
for gpio line 275 without touching names for lines 0-274)?
Although that would probably leave the access rights issue
described here as an outstanding issue:
https://bootlin.com/blog/gpio-aggregator-a-virtual-gpio-chip/

> Well, that's not a valid reason for a binding then.
>
> > supporting multiple board variants and want to be able to
> > better compose the gpio difference with device tree overlays
> > using these virtual gpio groups essentially.
>
> This also should not be used to differently organize DTS, for the sole
> purpose of composing gpio difference. The role of DTS is to represent
> here the hardware.

I'm trying to represent the hardware configuration in the DTS
by naming GPIO pins for userspace, but there's no way to
currently name the relevant pins without setting names for
non-relevant pins at the same time.

The current technique for pin naming is all or nothing and
doesn't really work properly with device tree overlays that
only need to name a subset of pins, especially if there are
other overlays that may need to name a different subset of
pins from the same parent gpiochip which can also be loaded
at the same time as other overlays.

So ultimately the purpose of what I'm trying to do is represent
the connected hardware accurately for userspace, something
which is not currently really possible from device tree AFAIU.

>
>
> Best regards,
> Krzysztof

