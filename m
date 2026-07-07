Return-Path: <devicetree+bounces-322335-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gGBxJEpXTWpvygEAu9opvQ
	(envelope-from <devicetree+bounces-322335-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 21:45:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 374E571F571
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 21:45:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=googlemail.com header.s=20251104 header.b=WE+3jIY4;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322335-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322335-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25B2230234E2
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 19:44:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD37E3B42DB;
	Tue,  7 Jul 2026 19:44:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8533B1EFB
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 19:44:39 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783453481; cv=pass; b=I76/bOG/74hbUP7V8eQJo7xHRe+WUBIdc+RUDfpWyXFULaKhZsf7BNdKCibP5ULtzCcaVQQrxGSrLV0GVUsSaHGnbMUFUlSvs6J5obGBRHiHNt6yWcHX/gzf16Ar2xhIq6T2pwbde9nvtxD29P8T6vE52xjUon3OFLlqpMFoYvU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783453481; c=relaxed/simple;
	bh=HtfrFM7rpGnX8vGtZgY4JOSL1xoMsykPlMzTpKQpNPs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZYzfRWrYEu9AzCBWrKUwB/Y9lPlJKXxHAgNhquL9yCSTSpJZGMFMnG6gm7eNdz1NGAs0XlFNao28OXHOv+yVpYYvkzUCw/La83ZjgulwC+E+H5UTNPLfAC7KNqxPXr8r9EqKrdlROBAK/qrtEX2xzu2WGFU8vWMtoyv/PvR6HRA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=WE+3jIY4; arc=pass smtp.client-ip=209.85.214.182
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2cca24023edso36253495ad.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jul 2026 12:44:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783453479; cv=none;
        d=google.com; s=arc-20260327;
        b=b7gejrWwU1d+Lx5cuceBaFAk6yU4J7VZgj8aC+DDk4cJn5AIu47sGPOgCN+msn0J73
         rbZfpJ73HKsbcWgC/54EYCsXprCx2RXUsh+eJtH7GzhkQtTPxggjfkuXUVskWceRyLt4
         qsOblt9gxmElATO06SrmS9II1xwhLC5/jo7lRrGEnuCwdotNkvhePQuuyLhouXqSAhBG
         5trrQ33pBRcyM5HIkgpqtkHKUUMi+nwDJDb83VaHB9UvVaArfD0zf+17teE3Nnuf+VnH
         8ckUB8imDI8jLD/+iNQNuDmXwUfI9l9EdyDZkOAJ2KjLs0GHEadB8T8UsAge9N5bdIDZ
         mq3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HtfrFM7rpGnX8vGtZgY4JOSL1xoMsykPlMzTpKQpNPs=;
        fh=6q8K4ThL1ACRQZEZNxdq20YAu5Sivj/LDw16vxG0cDY=;
        b=eYFQUyC6OKomGFCC1aGd3iNxxAKTU0ePc7grkWkVenFtZlJfs1az/gjM2SzOZLHZvL
         wSQ+m3B2nHL3PZZItxMdquqPXvWFPVpLFGCaPOT8Fe1JPcaElTUxOFoQNkaRb+xG23JL
         q7WtE02/+ihV8lVuEDBLFWC+AgOIZ2b8eH1wVjExFxSYq6/O5zr7x6K26Wo8MJbMHj7q
         nezHLejw7D7bhzGFRwEKZLq/1sIIEw1zGaLgKd4cNx+UhO+jlVLrLgKdq9JFFNgHYQH4
         deK/qhHgqZgXH3Q1zVYK4ABZWIGgzFDC2VdVQ+BuTu0cubual/wNGnXUTtJ3lgPswFdA
         L8bg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20251104; t=1783453479; x=1784058279; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HtfrFM7rpGnX8vGtZgY4JOSL1xoMsykPlMzTpKQpNPs=;
        b=WE+3jIY45ci/rBMurJZg2VwgMrWEbxYXopp5BltcxQEDx7iv/3KqBhQ2lt+uWEVL4d
         f7kxbXq0icZoDmFobfF407EC0zL00Q4vBUuTM6Qup5q8EPZg48y9qWZ7aG59ZEgkrPM0
         vT4vNuUbDOw5KPTKjpWp3uRtfsN7A60o21VtnxmrFv49zxTSHJcZdRa/4s2KJm+L0dtv
         SyWe7mu2Dh10HbgRdTFxaGgNYqpxFyFLzzbw99OYwO3GuC0bt3yWXYqDxxfKsdOu8Fy3
         75prGzK+xRqO/YOwHRSel34rT4ynFi5fEhp0H5WTv5BBap0hz+KR2TipZB548MDd3+MK
         Cg7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783453479; x=1784058279;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HtfrFM7rpGnX8vGtZgY4JOSL1xoMsykPlMzTpKQpNPs=;
        b=J0V2HmbFYB39CdRi7ImZesSNdt9xYdRA9PcFBNqr/Mr4LVscmbxWFuSnpH8J6ueDHs
         KpYQE7LbBO17/uLlzIVgSJsahR/npTTsQDBrqn/sH9/lcQz1k0VyNjyDG2chsduCo40A
         /7VAYEnzkrYvNDuIacqD1UAs2dhBxsWTSEjNrB+hVB4tYM9H/eJGyHkPbA6t27OERW+J
         wXz+La3dH8hdvu8PmQgsHIzRn0VBLG2A0LVGvmtC4Y9R9oEHS26lq7PBZogK9EhYTbqk
         uzPqPd3NGGkqaAuSnuqfpmKZaJ5xqWO7ci9jKe9mrZiVqUYfT1L2aODyWdUbZjZVBzeK
         McSQ==
X-Forwarded-Encrypted: i=1; AHgh+Rrlr3c9qAOQzXqIoseNLMOvgZnwPWIgkxxxWxfMMyQQI/Oby821oMByNIerE2SD6AfMmGEFDL5D+MrW@vger.kernel.org
X-Gm-Message-State: AOJu0YwMoPRWz8r8f3klunu91u+wqNDrL0QPe9MybibzVGejbM7NdN6H
	Eh3bPq1cN1D2udjVK7rS9yXBdZiR8t4KgttWgfj/yh/Q5rT6EXdZXkWRezHoKmSjI0Oi61sHcBm
	JeVwLlKHWW5qF2lpyXuxCBgGDRPnL818=
X-Gm-Gg: AfdE7cnU07R3/zEFdbN/t9UGCo/DUqJFmbtXwWCDJO4FnnHcYoo1iS3sm3iRVgwZyc5
	rwHCK1NyzczyCl6kgBM++ti0AAVsTzp02Y66wTrM3H5LMfHR0gyNMts6Q6KeH68uLcmW/axJEy0
	gD8kWdNVggNkTuuHOff+NfO5AXFH60gd20fDChUYNspzm9pRPbViDMMfLef8hUNWN7XIzG/65Aw
	aX5cTNLO9kOSNeTZmhZ4VtjCc34z3yaPqFXZVmaTah2LHrVubm6J1lPDU6F08kwNbEDlLqDbfY+
	Urv1pX2si4o+IkOrQpYtW76mqA==
X-Received: by 2002:a17:902:f645:b0:2ca:9d5a:8b6c with SMTP id
 d9443c01a7336-2ccbe3fcc82mr64122445ad.5.1783453479150; Tue, 07 Jul 2026
 12:44:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260702-add-mcu-fan-khadas-vim4-v8-0-244feee91a36@aliel.fr> <20260702-add-mcu-fan-khadas-vim4-v8-8-244feee91a36@aliel.fr>
In-Reply-To: <20260702-add-mcu-fan-khadas-vim4-v8-8-244feee91a36@aliel.fr>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 7 Jul 2026 21:44:28 +0200
X-Gm-Features: AVVi8CdKrhqOEXxfOyDGizCGSCM2_7htBspGi7RIbYxEuj_pMgbN59CYzvH2GP4
Message-ID: <CAFBinCCkpgta_QfqDzye2cD46_Wad=2FO=oBcw9_zkxzQp3OAA@mail.gmail.com>
Subject: Re: [PATCH v8 8/8] arm64: dts: amlogic: t7: khadas-vim4: Add i2c MCU
 fan node
To: linux-kernel-dev@aliel.fr
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Lee Jones <lee@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andi Shyti <andi.shyti@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, Beniamino Galvani <b.galvani@gmail.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel-dev@aliel.fr,m:neil.armstrong@linaro.org,m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andi.shyti@kernel.org,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:b.galvani@gmail.com,m:rafael@kernel.org,m:daniel.lezcano@kernel.org,m:rui.zhang@intel.com,m:lukasz.luba@arm.com,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:linux-amlogic@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-i2c@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-pm@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:bgalvani@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[googlemail.com];
	TAGGED_FROM(0.00)[bounces-322335-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[googlemail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,baylibre.com,gmail.com,intel.com,arm.com,lists.infradead.org,vger.kernel.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aliel.fr:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,vger.kernel.org:from_smtp,googlemail.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 374E571F571

On Thu, Jul 2, 2026 at 11:57=E2=80=AFAM Ronald Claveau via B4 Relay
<devnull+linux-kernel-dev.aliel.fr@kernel.org> wrote:
>
> From: Ronald Claveau <linux-kernel-dev@aliel.fr>
>
> Enable and configure i2c MCU node to get fan working on Khadas VIM4.
>
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

