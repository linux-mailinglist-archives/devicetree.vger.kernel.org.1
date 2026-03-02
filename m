Return-Path: <devicetree+bounces-269820-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4OP7IQ1ApWm36gUAu9opvQ
	(envelope-from <devicetree+bounces-269820-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 08:45:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DD70A1D4193
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 08:45:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 95901300F117
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 07:44:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D898138551C;
	Mon,  2 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Uf+UY05i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 988E33806D3
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 07:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772437493; cv=pass; b=EgmIURLLU0abx9pm5JkmcftMRApm4YILyhbZJCoFW9Zf2wtckDEwhZZD6WzPZsuP22JBO508sk58hTfmRLISnBKm5rT9r2CLpldr+lpclua+uIBLckvCkKd1XjRF1ztxlCDPTAUJ891oC8YxZ06rN6uCVwsvW/QB2fuF4Wrhrc4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772437493; c=relaxed/simple;
	bh=eHQq0Mn4I5jgVFbKAU7X9z4l/FCPH9tFnBxQuMQ3Nmg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AUOj/G6yWdNTFXYLW/4l8JG3DM26hMnYFfmYUpHqgJuuHgUOzXP5rqKeIhChlYG3H80/9Fh0AqJCa/hThhxPepNclV9wijeKhW/aC1vKoslxB86Xkdw2M6GlhHDVmuJi1n3eh6KeKsFafgwhfDt5FK4+0ZVpDJZ9lzP2dYYEwYo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Uf+UY05i; arc=pass smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-4398d9a12c6so3110904f8f.2
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 23:44:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772437491; cv=none;
        d=google.com; s=arc-20240605;
        b=eNRTdMnQTLC82TZQSd836e4fr7FBmACNBSwNtLnv9ub/sHc9NQrsPHogpPbDVvTt08
         b8B6qsb397G49pwNabTmYe2cKJxESZoytHKuzjZiLNIjfkdQHMR2jHBN5l3DzF/VvRi0
         JjBUc4EsOfgPu7CkfiEE5jYjh6g3sMHw4UzqMhAEEDIuWVYLCIGMIEdmUX6XAVBhGKI5
         QXE+kBau/Pjfk+bWWH76qAV3ZNEzL1WTaPvrTBgYaU+ou7MvSgjb83n+DR5Fa/WpvMOG
         1BLgq0JK8U6omca1VTOImNQEZw5lgpYPRWZqeo0QvxO2//MWdxFl/60dKpOmA5kZJZvC
         VyVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=SigtsR5BoloHk2svJ3ROPknj1i2mSRr9B2CFMiOEu7E=;
        fh=bqBnaWOVRmVoRcqQw02R0WOmQlBZ9Subxj0IFdEyDug=;
        b=ijeERUwm4etqWGHi73MImemsoh6G7/6wtnPJ9OZACvfpB/iq6F/fjLJXxT7Bg3GBDn
         6SbPmSUm6AaxUcCqQKsmGEPSRL2nGNJ2KaU1JNcR0pG0ProiKaU1DzsUR2rBMbKDICFo
         TaIKJyD8mHAJHkRS7qzfKLqr1Ey7lGBQTJFcavFeXO+LUMIUOvaeaWalVtYmXsGEiDJv
         HSh+cIe/f+4UosnPViqL6CHm9WHqbeTBUvXO8crGlghsicwyYBUcLXlgZPVRR8GG5sXc
         6jx60isTV6GqiLj4ZqTYPREWbdBXslbWJkkfsFoBj4KAJS/MtIBKg2K/RHH/v4PKkh2s
         mo3w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772437491; x=1773042291; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SigtsR5BoloHk2svJ3ROPknj1i2mSRr9B2CFMiOEu7E=;
        b=Uf+UY05i3mLQ8qL7dN9blvPw3eR7hWP08uI9OIaYzcQXXbfClLmR90+/1MLq1FiAMh
         WeGAbA0srwT5zSaSLzWlTRdB9JooiQqfeMOhnCbTdvRXi1cxmD5jioEmFzBwe4iPFc6Z
         FTheGVgo5CC8YzAYXsWOmVM6rwNN/u3EebzTM1mwurhSNCvtXjHg+bMRqfMKNY2y0h93
         l3oWSDEXQPs233lircd8xW/Sdq59MCi9CR6/BH31k4TEMkrneahYXCYx/SEPqs+2sslK
         42+FX4uIwuOhR1s8hzD9mZ+Q33Xhf/Jbo1diTqmO/0CJuRYwq+1WcjaLfniVf6nl0jEU
         ojOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772437491; x=1773042291;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SigtsR5BoloHk2svJ3ROPknj1i2mSRr9B2CFMiOEu7E=;
        b=vIdn2oqzHYghYvdYyqaC16HHuCFRqEpHfyuVLqUJzDXcxNRT1CiP/Ak3LI8uteZa9h
         7bhda4sP0eGk7xw44QTkY8Rx8AFhzeMR+xIDnfAdkZUt28ZEhVwqvqADF9S5pZ6eIdrZ
         mq3gDNQP7apUVAB6Jg1CdgZQZPVCp0O6twX7UrDDtXDcdLxTVOaLYYWMKdaG6XpdwQTH
         3qZSe+hW8WygUyVfLXKLv8zlZUDwoNsjR21LyO9M47NSbieUyrriCm1VvJKUuXehJHJr
         TyDuHX3elC7OQdSDkxm2xTW+2eGY/KGwN6obcm79a4CSnKPP23eofdJESUCFkZP0T53o
         pavQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJmYdgSVCIvejqxZQHkkxSjL+8ZBBFb6Vgp7JF74X20o5W0y+xjTgFmrLqt3ABPBBmeTqCzqnbLiRF@vger.kernel.org
X-Gm-Message-State: AOJu0YygTwlIMAvw5RP25ui3vVmJBD2it+22ZEa//Pw83tkOICoB1LJg
	NmDILXatEASZQuqTImQro/TIrsF9pTJGlSTf0S0l9zrSOgCv1Dl5MxIgxdBQ8U+p2SyU3w0SH+L
	kFJckA99jTyr9CNifpmiaImbXRLm1hNM=
X-Gm-Gg: ATEYQzyKQfVDzNAJe3v1vgasbwqd0rhivwRiNsgooB//Aya4fsb70vUs47r+f2xkAMb
	KzPl8mwRECUTb51dYKpAhcUjnIU2OijSIkZ+NJ68VrP3CA+VXonI4dVQYlnnunAPSW8qdXVZ+OF
	MTih9lqJ/VNMGtfZ4yDvskaL6aREpVKKtCjOjkud9AwmQ9JQO+er7p1EWRl1WmIjf091JdwoB8g
	dL1QQKlcJiFqSImBZdhRCz5V1x4PD9AJHwItQkCAMpg3BxaYa0NQbPYahh00rNJJhjnaDDFzHVq
	FSas8xfI
X-Received: by 2002:a5d:4b4a:0:b0:439:a958:434b with SMTP id
 ffacd0b85a97d-439a95845e5mr8886180f8f.2.1772437490839; Sun, 01 Mar 2026
 23:44:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260130134021.353688-1-clamor95@gmail.com>
In-Reply-To: <20260130134021.353688-1-clamor95@gmail.com>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Mon, 2 Mar 2026 09:44:39 +0200
X-Gm-Features: AaiRm51JxTLkFNuDN7fE4liCNRLR1WY7QHBspjY6N0jJ1_EFAS6d0jT8oUv6g1o
Message-ID: <CAPVz0n2YUvFvO5MT7wTWX+yDxMvvXbh+ZBTMVNCENVny_PPAQg@mail.gmail.com>
Subject: Re: [PATCH v1 0/2] power: supply: cpcap-battery: pass static battery
 cell data from device tree
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SORTED_RECIPS(3.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269820-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,atomide.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: DD70A1D4193
X-Rspamd-Action: no action

=D0=BF=D1=82, 30 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 15:40 Svya=
toslav Ryhel <clamor95@gmail.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> Add an option to populate battery cell properties from the device tree if
> the driver cannot access the battery's NVMEM.
>
> Svyatoslav Ryhel (2):
>   dt-bindings: power: supply: cpcap-battery: document monitored-battery
>     property
>   power: supply: cpcap-battery: pass static battery cell data from
>     device tree
>
>  .../bindings/power/supply/cpcap-battery.yaml  |  1 +
>  drivers/power/supply/cpcap-battery.c          | 27 +++++++++++++++++++
>  2 files changed, 28 insertions(+)
>

Hello Sebastian!

Would you mind to pick these 2 patches if you are fine with them?

Best regards,
Svyatoslav R.

> --
> 2.51.0
>

