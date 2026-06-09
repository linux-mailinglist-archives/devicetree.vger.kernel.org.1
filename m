Return-Path: <devicetree+bounces-309241-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id g3MsDW5FKGqXBQMAu9opvQ
	(envelope-from <devicetree+bounces-309241-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:55:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 96802662A82
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:55:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=PIRywoC7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309241-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-309241-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 15649304CF72
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 16:41:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D23063EFD37;
	Tue,  9 Jun 2026 16:41:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8925E343894
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 16:41:30 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781023291; cv=pass; b=sBXeu9mhfEkLnhN7Z0DP6n7r4t9pqAFWvZvDb5O7OQMbWFLuTwo4IuPttPg1vDEnbf7zie6ZfgUQKHNP/73f9CXceOJhvKNxRBVQNv0TVdWA8GTL2ADjMiTZqNsJsn69S5FrUiTQNOE0j+pwwrnKdfIJ79gLuUsX60ClW5/zM+A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781023291; c=relaxed/simple;
	bh=E2GCKIOLtfV53ggPo+NGPJvjLDxOwlQa/g0l6GIWSuU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dpHSFRxvTL7tQdiFojiQEWbOlFa/CjZhLxMdeUx4Fke8fwLVfafUa2KyTICIzlX+PzvT3+l/B0XyA5ECLmCh2XZ+Cs/G9qfPk3XNKkUwqzWZI3LvGlYuyLg7UNrxNScHsffcgAU00EAbzyPkBe+766INFXabIS/uqdI/wqp6Kjs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PIRywoC7; arc=pass smtp.client-ip=209.85.167.50
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5aa66893e9fso6865859e87.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 09:41:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781023289; cv=none;
        d=google.com; s=arc-20240605;
        b=B9W1jqHHrSUGuvZJV8I9i4QIX09D5i+fsrmgItS+kZP+1jGBw97bWTWooUnnlCYBeu
         Db33bzsRl+5/Cb5Wri16zNcsMQJLGp7YQYnmplMiQ/k4n5s3dDJKY0D+qP83ep4vH4T6
         CfJr6yKDGPjmjWhdTT4tDvxE9VPqDrryck7n7LexfNRlw7pWDVqFOZ9TjjV3B4QYpkGa
         wx+9gXmS0O/QH9STe+Vr4OENLu0l3h6CpcZdMJF2sFbYaixleHcDqStzDAPeoDLi+vCB
         YjJp9R38NOr9B6spnxHkENRlgtzQxSGSOj3NWtMV9p+9bfTACL89ZtYL1FjaqyGOsFIB
         H/8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=JbVtrbPRmQGLBtb4NcidkH30D+QB4F0TUQOAbXH9LEU=;
        fh=jamsBUgzJwsIIjvD8X5yRxMEz3P5UM52Q9NeOjmZ1s4=;
        b=aNVuVSQ+iYT8/gk3gGTJNuI/QTh/ag6rT/FSoaOlyj+NiQkfKrgl9VaGb24IqZ0mov
         a46QUBvl7weJKsxcXnfLAkxTmIkUL0QK6G7CJ/oSRJZ1FKCTWjsRgGfief/1RfrbTSH7
         6dY5w2ge5ItjvmDxpXcsBZVJupvkrmjcYBVpaThOjUBc76MFzpLAv933jpA8l5DjH000
         nW0Skxo8kfbuFtPRiCyPy3sMK7ZwJ9ciIptUT9wXsmO9ZC8pXaKGUycvSbtdAhH+I/dN
         WsdhO56cZtB5GtA3Tj18XuGzSntURU1zKgJNwV7TeoUQs8iAYPcZmwf/+VlQYtcPqA8s
         ss9g==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781023289; x=1781628089; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JbVtrbPRmQGLBtb4NcidkH30D+QB4F0TUQOAbXH9LEU=;
        b=PIRywoC7jRPDfIsDQePtTZP+TehrcS7vVKAWJbIWMk8GOVt3ztqKGg5u6KRBDA/JA/
         +hGJABbZbTqcDvfPD1WgsC5KsgnXyL5TTgj+hcQk2CIGi2MP5DlmOO8NxXWs/xAgc+wj
         4kXxsUjRGFm1pUI++J+k3BjMNVvaEFsR9LmhgDITm4DSlHLBkfqL/CBpuKT9iIUPNxbm
         +hRFRgxpv+wMXQ1PQx/aRP4Yd0bsyZZmV2ABin6QDqPSU8D/SCmWU5gUkeQk/Qhbzbdk
         A5r+bTRkk4bDC5M59GzgPh/p+t93yNQhreS6C9Rz6t9pLovdHbCXefITnDLVKSqbfQrM
         VRhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781023289; x=1781628089;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JbVtrbPRmQGLBtb4NcidkH30D+QB4F0TUQOAbXH9LEU=;
        b=kpcMG8KSV/GaN6j7VT7ZlYulDQcBQmaGPaxsL83kG3qzbnLSJZk/OTasXEyE2gNY6p
         HlLWmXjZzUssczezMaqmrbSkn8pn9eletAq6MJyGNqeE04uRb1YNoR2bnzTlmD5wl1nr
         kLlPfnBs9v9WvD2brvmz0tZKqC76rRXsrGWBXpKweGuHd3i96Hm5GlgvQ2f27OI4SRkX
         eAmMwP1qeFHh3NoD0f9Q6dG7TsEViOF19rJ0ysw1pnw/eUXmc1YKxM+LLRvqvjvm7uS1
         1DpwHrF/netJZi3gWG27E4pGl0cvG3DunfpHkPxG5bFIVQViJZ5Zs5hHlUelm0X7C0cp
         +Zjg==
X-Forwarded-Encrypted: i=1; AFNElJ/nJ19sszUEYz5CWSLMqJkGLtKHDfSZAlO54AZmjABa8g9EgWj6nlis2muEBXEl0/qQlFEh3tWVH9yc@vger.kernel.org
X-Gm-Message-State: AOJu0YycqOnACQxNesDMSX77eo8mH35JXKvb7Ug1Ri0VZM3MVFf4e8M6
	Fe1OwaQwY8xyjueCNAaviT+d7A0feHSq+gQuQCiI3OEmj5QIa9uNHxjCrEfku70tAk6NmSh7Fhf
	LVqy8Q8dcvT9nVurbX4FfmoKiC+nY6qY=
X-Gm-Gg: Acq92OGqRgf78wY3TcYJOIKlKzANwRPeLxRzheaYWnAUkphNP0IAXSoZVx73ji6QLix
	tCiFMcU80Yu/XttLNh7RBXnnBW7QXu9PE0nIlNkJ0YqeC8qGXIHoKM35+czoJcfBOd5/0bG2QGX
	FPYOJM1M+iU/+y0ziwhWPBPUlregZSRzOXuuLRnVlXZV4pTouC5JQPHCsEsOAnpqvsPrOiX9SPg
	hYuSj+sU5R1Cz7BNLVNARXZPfi9Bfckle5DcQJCSKFpE9ycH/WSxo07+Gx/nk+RnZn5mYIcbHgt
	jNMNYYX1iaKWB9dKqw==
X-Received: by 2002:a05:6512:a93:b0:5a4:496:5bac with SMTP id
 2adb3069b0e04-5aa87bd5171mr6091292e87.36.1781023288477; Tue, 09 Jun 2026
 09:41:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260609161701.52513-2-m32285159@gmail.com> <c9418ca9-5563-45a8-b995-d2bf7514d819@baylibre.com>
In-Reply-To: <c9418ca9-5563-45a8-b995-d2bf7514d819@baylibre.com>
From: Maxwell Doose <m32285159@gmail.com>
Date: Tue, 9 Jun 2026 11:41:58 -0500
X-Gm-Features: AVVi8CeB5Cz3-YRRLOs9srWuk1EOE3Tb2CijlwWS3Fx5DtPSuXMKb63HwLEYvMo
Message-ID: <CAKqfh0GF32Vwcoyr_rLdq9Q_-DESGAiNYWk=SEAODStzOs=MkA@mail.gmail.com>
Subject: Re: [PATCH 0/2] Replace Tomasz Duszynski as maintainer for SPS30
To: David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-309241-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:jic23@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[m32285159@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m32285159@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,baylibre.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 96802662A82

On Tue, Jun 9, 2026 at 11:22=E2=80=AFAM David Lechner <dlechner@baylibre.co=
m> wrote:
>
> On 6/9/26 11:16 AM, Maxwell Doose wrote:
> > Hi all.
> >
> > This is basically the 2nd half of replacing Tomasz's entries, once
> > again, in the SPS30 dt-bindings and his entry in MAINTAINERS. All of hi=
s
> > entries across IIO appear to be dead, which is why this is being sent.
> > Jonathan Cameron's approved of this [1] so his entries in iio are being
> > replaced and an RFC regarding this topic with Tomasz Cced has been
> > sitting on lore.kernel.org for about a month now.
> >
> > Maxwell Doose (2):
> >   dt-bindings: iio: sensirion,sps30: Add myself as maintainer
> >   MAINTAINERS: Add myself as maintainer for SPS30
> >
> >  .../devicetree/bindings/iio/chemical/sensirion,sps30.yaml       | 2 +-
> >  MAINTAINERS                                                     | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > [1] https://lore.kernel.org/linux-iio/20260609140712.2e5d1640@jic23-hua=
wei/
>
> Do you have this hardware?

No, however I should be able to get it fairly easily.

