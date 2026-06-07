Return-Path: <devicetree+bounces-307906-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KvtqLsf2JWo4PwIAu9opvQ
	(envelope-from <devicetree+bounces-307906-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 00:55:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B0D651DB3
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 00:55:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=B+Fr2a7B;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307906-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307906-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 47CCF3011F02
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 22:54:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5742B32AABD;
	Sun,  7 Jun 2026 22:54:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8E6931E85C
	for <devicetree@vger.kernel.org>; Sun,  7 Jun 2026 22:54:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780872892; cv=none; b=GKSRX3VVk2+KEYAx1em/JcfhzWbKScgX7sJz2T2GdlYwyDdL/CVkRWGujUGxMvdC8o4nQ5ryW9lSGvcC3ywn8t2fhlxoLSN9z2kpsfw3IFnno9n4DWxmdXyQmxPS1rQSNN+1BxL9SJhoWonDXhzJvCwahrydqGI4skhcGMnPJks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780872892; c=relaxed/simple;
	bh=Xb6YZr5P4SpdNG1BfAW9UCOTDTAg1bbB2MWp6fZ13tY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hDRCXIcgqnRNIT30Bg9tbq51qiixjX3zLnpli9hnnk8tIw+A1s6biqO1ULwP4bzEwqD37vMN7v8qGJccLjQ7EjmkI2B3qiL2zvgD2PQUSfr4rtHsWlkVLuu/6WqSxXsB2l1qvQrGGg3EMEHX3kHamrjxyMkyZaxHKpbvY2JI8kE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+Fr2a7B; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BE261F00899
	for <devicetree@vger.kernel.org>; Sun,  7 Jun 2026 22:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780872889;
	bh=Xb6YZr5P4SpdNG1BfAW9UCOTDTAg1bbB2MWp6fZ13tY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=B+Fr2a7BnxVpZt7hKXSV7edObZO7V/fYEZV2Sa7J2mxv4R4CIyIBIYrDBJvNf6gwm
	 Vy5oXR1qSdjTQcRUzYCU0Z71c13g/b83ksUsSJw/F/7StU2wiRU6Hn1YCV+Hu3GngT
	 xQLgiG13ix+uI4DNPLbHuSxcTNQ8bADQaoCVMscJUz9Gw4jn3B1Q7uIJLgQPtAwWv5
	 KWIMZDa3Eovs5Mc103+lUNl5TayAxRTCETJgQ/ZXmch+ZKxKvaNrsi+otYfhFPmCpd
	 9oELmcumSp74R0t5YVxNJKfAinxtFjpPtof8PRbWFw3wG1vtm20cU5AfxLGY/0e88X
	 zFGx7hrWjA9tA==
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-396753f343aso36775781fa.2
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 15:54:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+BlOhw5mOVeWfAqMgGRIB03zvXdvdffCBrfQkjdt5WKrBf4LQYNYkOstUfCsOPHJc/j/oT9HS/7Qe9@vger.kernel.org
X-Gm-Message-State: AOJu0YzTrHZWukeeF/HXTX9J+gjaKnlJ7GiJNfME6QCFj542NQflHaGW
	ln6lQupxi80BmJCs6h4vBdBSMpoIhtUC4prriM4mggxA9baoXRXwwuwPyjk6wsQ4IILA76YMQF7
	+ajrOyHngklOTaz5JuRmFF/HSNa/Wn6A=
X-Received: by 2002:a2e:be12:0:b0:396:668f:b7f9 with SMTP id
 38308e7fff4ca-396d097b35cmr34288001fa.24.1780872888238; Sun, 07 Jun 2026
 15:54:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1780652883.git.github.com@herrie.org> <e49aba850b1f48ea00089e7142c00584541001eb.1780652883.git.github.com@herrie.org>
In-Reply-To: <e49aba850b1f48ea00089e7142c00584541001eb.1780652883.git.github.com@herrie.org>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 8 Jun 2026 00:54:36 +0200
X-Gmail-Original-Message-ID: <CAD++jLm-GGocy0oX=ZJUCTzUnyQFUL-kEf45UE6v0A7h+6b+vA@mail.gmail.com>
X-Gm-Features: AVVi8CfshfqyBj4K_uz2ane6IflcZIJ2ilG382ED3RLq3ijeVS3X5S2Bwjv2MfQ
Message-ID: <CAD++jLm-GGocy0oX=ZJUCTzUnyQFUL-kEf45UE6v0A7h+6b+vA@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: iio: st,st-sensors: add st,fullscale-mg
To: Herman van Hazendonk <github.com@herrie.org>
Cc: jic23@kernel.org, denis.ciocca@st.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com, 
	andy@kernel.org, sanjayembeddedse@gmail.com, maudspierings@gocontroll.com, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-307906-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:github.com@herrie.org,m:jic23@kernel.org,m:denis.ciocca@st.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:sanjayembeddedse@gmail.com,m:maudspierings@gocontroll.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,st.com,baylibre.com,analog.com,gmail.com,gocontroll.com,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,vger.kernel.org:from_smtp,herrie.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 15B0D651DB3

On Fri, Jun 5, 2026 at 12:08=E2=80=AFPM Herman van Hazendonk
<github.com@herrie.org> wrote:

> Add an optional st,fullscale-mg property that selects the initial
> full-scale range of an ST MEMS sensor at probe time, expressed in
> milligauss for magnetometers (and analogous engineering units for
> other ST sensor families that may grow this property in the future).
>
> The property is purely additive: if absent, drivers fall back to
> their existing chip default, and if present but unsupported by the
> specific sensor the driver warns and falls back. No existing in-tree
> DTS is affected.
>
> The motivating case is the LSM303DLH magnetometer on the HP TouchPad
> (apq8060 / tenderloin) where the kernel's chip-default +/-1.3 G range
> saturates the X axis to the chip's 0xF000 overflow sentinel out of
> probe, because the chip is mounted close to surrounding power planes
> and picks up enough DC bias to exceed the smallest range. The driver
> core hardcodes fs_avl[0] as the starting range, so userspace cannot
> recover without racing the driver to write the in_magn_x_scale sysfs
> attribute after probe. st,fullscale-mg lets the device tree declare
> a wider initial range up-front and avoids the race entirely.
>
> Signed-off-by: Herman van Hazendonk <github.com@herrie.org>

Makes sense to me.
Reviewed-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

