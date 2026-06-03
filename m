Return-Path: <devicetree+bounces-305916-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YiWpEZeAH2opmgAAu9opvQ
	(envelope-from <devicetree+bounces-305916-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 03:17:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B6ECE6335EE
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 03:17:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=rtVdKDuD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305916-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-305916-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5630C31037F5
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 01:12:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C2453090D9;
	Wed,  3 Jun 2026 01:11:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BD230E0F5
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 01:11:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780449116; cv=none; b=JQMdrNch5/o86Hu2R6F2R9ud78Y22+uPtF09H+g0i+qQLDP9jHYk6WHgvdSUiVbrwIBUcNPjISB9patKKQHQxdWbIMU+ZA10ik/iVfKlBKRsS/aFIf29D+YC4w8YVWynOHl0axVq/90+rBbXTns8S52KA1DSn1iaFcavCl5fGA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780449116; c=relaxed/simple;
	bh=pxsYJ1ePpzQuD5t0vTi+GN7ozjOM4QwjIHiqhvwy5NE=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=VrtEIBImpY+D8TP9zn5wM+DSim+oJOBVG/MO9VKkEQVMlvoslLtpeMD6iLuRUz3AarS7KlYUqkirRZYUfVR2tbe39dtCB366NYWDaYydPmPg8lzg60AGzaTp4aY/O43dWYwAMGVFYzSiaZj3dZrZHi+w5pUcRpRBksh3qh9DbJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=rtVdKDuD; arc=none smtp.client-ip=209.85.210.182
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-8423f420455so1355875b3a.3
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2026 18:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780449109; x=1781053909; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wfa0xqifL6vDOGACfxfGJ3JF4SFfMplxwiS2lFwtPkg=;
        b=rtVdKDuDFHOFEuFkxwFgAQwL/f2YaFezQ9KAYzGrcQ/Jy7nYJ+MbyRtQMvxAZaw+Gp
         51ta3AIgM89aS5lGjUzmhze40BIKYFGe+9VL1JXJvaeA3iQAvYkojsHvaeRfnunyqXF4
         pxwsSM/yUasjnlfWWqB8F05mOI2ElvVJgHmKYpZAKWVP8jQ1RIcjZ/buLrNz0sYmARup
         0bplJ1vJ5WT4ickbVszGW66LbzdYponzejsJcvOWCoMle/4OACm/9LzPKxj+HKx8ui20
         SiYPMS7LEmWPkNhqWm9xhSMjLpTD9wqve1wrmxAM5dCWWN3Jtgnm41L/KuSeMkYzgvXA
         rhiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780449109; x=1781053909;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wfa0xqifL6vDOGACfxfGJ3JF4SFfMplxwiS2lFwtPkg=;
        b=gORatVXtJ6R1zh+A7OPOd9w/T0tDpI9ZoZiLXES5R1ZztZRVAeFrc9ihaWND/gFNEB
         CSudZlP+kHrK1uh+C9Qqg6PGeCy0kU6FU8b5QmywqxdtqUNh1ARk4LUnpVq6HHhlqTE0
         CyXoftjI9SmzwVbuk9Ni67oSxNl4DvFwVAhbSHMd6RGWj+LiItHLOrBugfICjPLDYmTV
         8ZInESusnEUkRTO7QBarZi+8pqZOuCe4PyWxmsZPzXr44UHJC4bVmd1+jn33fCRtZ0i0
         Ercp52DLRSeQa0Z5hI5IHt0hfPV1H1BPAXL95UhhixQPIK80ZnKWrAGupHidFltfKkDX
         58aA==
X-Forwarded-Encrypted: i=1; AFNElJ9ERs+g7O55oO3kOOLobwcI084QEtyxgDxOWSVr3oCxcmza3Xqc3UiXviCpBTVowB6juutf45144thl@vger.kernel.org
X-Gm-Message-State: AOJu0YznSiiRoxYkdCo3/kf/kYFQkO+sKkVmyzSzU5fBXF40DiYyJiEj
	lToMqujAhzPaoCBVvWWSKZkhQ945oS2bIQ52T07PTbaXYOk9C6tZl0yStr94zZCL
X-Gm-Gg: Acq92OHZ5hidD9eH8iBWnZC1Qs9JbuhlzWJbhatJgeRcuVuKvskwm4ZHpd0foCPFYS+
	dQ3Z0AurqKAxQL2Fv21xewFC0Pd8nqZQyy/Qtoh3Vb8OemBgI8aa+xpgjAPSZ+eIvKKm3LntcT5
	mIr0RM8vqB5/v/Lg1oV7JwpU3HxidWDImNIBSuFVpI3Vy78wyDIJ9Drh/KFtkpDTpkr4KionSaV
	Mp8hPlVydGjLx18/8S4h7sTK3V0S8XjdZwTBB0CJ4eCcNmp1JmBJK904yxf8K0ZsPWVq/9JYeXL
	D+4D+bjipz9eoPMXzzUJnR9nnd8lQtwu4UgHVNSZTjFo7NQRXYzfeeKXetvYvB/Wg8MWatvCREh
	nkopoK9m6rZHq5EJf1FPu36K569hQ1mzVg9348sOKFXDyck/G3ma0lj5EDDB345f9u0QEkfXqNX
	Z4iLy6tMvIEzoAC4ZMnMXoPvas148+aEYpCnSc/S6NMNxG+HsjrMN2oExxSg==
X-Received: by 2002:a05:6a00:1f06:b0:83c:928:6e5a with SMTP id d2e1a72fcca58-84284e22fd8mr1087363b3a.13.1780449108782;
        Tue, 02 Jun 2026 18:11:48 -0700 (PDT)
Received: from ehlo.thunderbird.net ([2401:4900:8899:fcac:9fd7:3b2f:a800:e88c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-842828fa877sm1081497b3a.51.2026.06.02.18.11.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 18:11:48 -0700 (PDT)
Date: Wed, 03 Jun 2026 06:41:43 +0530
From: Sanjay Chitroda <sanjayembeddedse@gmail.com>
To: rva333@protonmail.com,
 Roman Vivchar via B4 Relay <devnull+rva333.protonmail.com@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>,
 =?ISO-8859-1?Q?Nuno_S=E1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Lee Jones <lee@kernel.org>
CC: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, Ben Grisdale <bengris32@protonmail.ch>,
 Roman Vivchar <rva333@protonmail.com>
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_2/4=5D_iio=3A_adc=3A_mt6323-au?=
 =?US-ASCII?Q?xadc=3A_add_mt6323_PMIC_AUXADC_driver?=
User-Agent: Thunderbird for Android
In-Reply-To: <20260602-mt6323-adc-v1-2-68ec737508ee@protonmail.com>
References: <20260602-mt6323-adc-v1-0-68ec737508ee@protonmail.com> <20260602-mt6323-adc-v1-2-68ec737508ee@protonmail.com>
Message-ID: <1F6728A6-BD73-4159-AAC9-82370212EF04@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.55 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJ_EXCESS_QP(1.20)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305916-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[protonmail.com,kernel.org,baylibre.com,analog.com,gmail.com,collabora.com];
	FORGED_SENDER(0.00)[sanjayembeddedse@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:rva333@protonmail.com,m:devnull+rva333.protonmail.com@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:lee@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:bengris32@protonmail.ch,m:devnull@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sanjayembeddedse@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,protonmail.ch,protonmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rva333.protonmail.com,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,protonmail.com:email,vger.kernel.org:from_smtp,protonmail.ch:email,infradead.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B6ECE6335EE



On 2 June 2026 6:16:55=E2=80=AFpm IST, Roman Vivchar via B4 Relay <devnull=
+rva333=2Eprotonmail=2Ecom@kernel=2Eorg> wrote:
>From: Roman Vivchar <rva333@protonmail=2Ecom>
>
>The mt6323 AUXADC is a 15-bit ADC used for system monitoring=2E This driv=
er
>provides support for reading various channels including battery and
>charger voltages, battery and chip temperature, current sensing and
>accessory detection=2E
>
>Add a driver for the AUXADC found in the MediaTek mt6323 PMIC=2E
>
>Tested-by: Ben Grisdale <bengris32@protonmail=2Ech> # Amazon Echo Dot (2n=
d Generation)
>Signed-off-by: Roman Vivchar <rva333@protonmail=2Ecom>
Hi Roman,
Thank you for the patch=2E
>---
> MAINTAINERS                     |   8 ++
> drivers/iio/adc/Kconfig         |  11 ++
> drivers/iio/adc/Makefile        |   1 +
> drivers/iio/adc/mt6323-auxadc=2Ec | 299 ++++++++++++++++++++++++++++++++=
++++++++
> 4 files changed, 319 insertions(+)
>
>diff --git a/MAINTAINERS b/MAINTAINERS
>index d1cc0e12fe1f=2E=2Ec9ad2417a3ef 100644
>--- a/MAINTAINERS
>+++ b/MAINTAINERS
>@@ -16256,6 +16256,14 @@ S:	Maintained
> F:	Documentation/devicetree/bindings/mmc/mtk-sd=2Eyaml
> F:	drivers/mmc/host/mtk-sd=2Ec
>=20
>+MEDIATEK MT6323 PMIC AUXADC DRIVER
>+M:	Roman Vivchar <rva333@protonmail=2Ecom>
>+L:	linux-iio@vger=2Ekernel=2Eorg

No need to add explicit iio list for driver=2E
Top level entry covers this driver=2E

>+L:	linux-mediatek@lists=2Einfradead=2Eorg (moderated for non-subscribers=
)
>+S:	Maintained
>+F:	drivers/iio/adc/mt6323-auxadc=2Ec
>+F:	include/dt-bindings/iio/adc/mediatek,mt6323-auxadc=2Eh
>+
> MEDIATEK MT6735 CLOCK & RESET DRIVERS
> M:	Yassine Oudjana <y=2Eoudjana@protonmail=2Ecom>
> L:	linux-clk@vger=2Ekernel=2Eorg
=2E=2E=2E
Thanks, Sanjay
>+MODULE_DESCRIPTION("MediaTek MT6323 PMIC AUXADC Driver");
>

