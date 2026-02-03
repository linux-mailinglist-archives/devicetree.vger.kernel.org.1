Return-Path: <devicetree+bounces-262281-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WE6xKov+gWmYNgMAu9opvQ
	(envelope-from <devicetree+bounces-262281-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 14:56:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FBEDA41A
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 14:56:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D5147303962A
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 13:56:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7645A3A1A52;
	Tue,  3 Feb 2026 13:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YQnKdJFU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com [74.125.82.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263C93A0EB3
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 13:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770126981; cv=pass; b=LZ68751snwwWLdsxydZRoC5QGEvO/CyE26yIgLpYsk0Eb7ykFWqQYrcbOZJs2RphKrADS2+K4hbrsxNXl20ehFMWY55/397r+D8nqnpr3aKNfwSQBwxeeCM1zupKq1kIEwW1VMbGcbXfOE9RpOKzlQxbOGaBrPBNkj+T/ZdnUKY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770126981; c=relaxed/simple;
	bh=2kJc0/oJx9J66cb6iheE4k1eLdyJmqswDf8bzyH50wo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Icdeb7JjvCuqsAltZfSXDnY+JzgCbRy2V5UQ+yDwDNIsZ7GbwL+T65LY1b/2T//5sNbaFEqC4TQzNoSFbaxUidUVocw5d1lK4+a7GHUX75WZ2CtV+K5Pa30DF/bRB2OfkIsDVQndD0KcCn1ZFwaukt9x4r2JqnYUK/hbaGKzMlM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YQnKdJFU; arc=pass smtp.client-ip=74.125.82.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-1233bb90317so614175c88.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 05:56:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770126979; cv=none;
        d=google.com; s=arc-20240605;
        b=SlhFuj1kgQyeilK0/iacgkY8nujI2LMG6W2+A0TxdvH1EvH4GG41HichBfMJel0Ovu
         U/tNYJlI+tFhA55/p/BgJjqji667rBZULvggMhvn2GMCLb7tsJMH5sUXRTmR8J3O3/6c
         k9l18NsaRzzcUmlT52f96ZUywFKlUr2BbSwSow58xFoSIlvWfUoOLx4rtmbyWx7gTs+s
         qqMFqlYXisqOcoNdJj5BbceQ6ktgNhmgycszmDQPHsT/SVFHtjzH4Z+45hHuNjmTLVMg
         m5p92uARjxkP2GaXoGKL+IOuLTqjgOG+/MyeffSJ0fgAS/oNQKIavG5PRsoN0UYh/2+O
         HHbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=oiDNEn6LPf3NNMPn5SjpOYR+1H1anFvHfyh9Q60C1l0=;
        fh=X8XypK+V0FG5pmM1qazoEYaDtomsNJMeL3vG+SxgjWs=;
        b=SLpQer2FE8fLEudb05V/uWxI0hpNp0FlWEVb+YAxScVFdQt4QbJs2QInCI4EVtRne4
         L0r+bgTRs0DlA6b8dLtmYG2CTJggGDuVGNUL8J7Oxig+8UOZ5Eqw2F5l/qOgWrrLXjfh
         X45XetZVhhAWs/irQSbUTQlBNJT6+QTfnLJUhAcP0KfTTcL/IEKgq0RwBtt1DP8KqFkC
         AsZ0T1Az3j/1pu0vtTf8nh72NuiOmh8/rdnfngYqOOoNFB5BQLjRcn22w+akvYBKQIoK
         6pigtbw9RHkDfLI1GIQWdgpvg4pZTXW1MwNhlK9ixjW8H71trwe98v8w4FhAZBTPxNUo
         Owgw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770126979; x=1770731779; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oiDNEn6LPf3NNMPn5SjpOYR+1H1anFvHfyh9Q60C1l0=;
        b=YQnKdJFUXHT+4HIyh3YOt6oazxnPJmvj8aNNHHnXPJAUbQhGFDGEtEnDDd2SluT6Af
         dGEWv9Bqv93TQbcJAPW5RT+Prux1UMAzGOS0CsOIsW612+FISPiEDtySrutPKmJubKMC
         TgyJ5mGjaXWl1ieEf/zEMBcu1gEDLP9Qgj5njPvq+hPfoAFkPI37PKjdxx0PkqnVpqt7
         8EYZ60PqTWSfjenCNetIri/QIyaYxvNDZMzVFacwwqsVy3WjRkSsSRedKJ775Y9fxerB
         h9spegp2vJ4GVC7JrhJ/gb88itu6G8TXvxBveUfomu65nrbaoaoBcmAarGKu/G+Sm4jJ
         4BDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770126979; x=1770731779;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oiDNEn6LPf3NNMPn5SjpOYR+1H1anFvHfyh9Q60C1l0=;
        b=hkigMm0c154tDautKSO6TunBg0lIO6GoSUhw23z/EGpqopAVSfzOXl4lk1BUT54mhB
         1qzKzFzCKCamTt+mB46tyQzcxCXgM7IVZqu5t3DtAzffqRF+dr7IJpRkhWVG6w0sotwY
         1TI0mhyBgqhEXLWmPcTKt3+CF6UYKc6Yvot+MD3PEEl9t3Wa/Z6HEN+LVe8KkV9DOti4
         v5ymOP/h/Ii8/zMjfkdr2nqo4qpcOCz1P+Q9iQCr8LWTWso4hRAu5XQSCVhp9aRb0fad
         fWunGjHe8Y+buxpiG8+cmXn6TI1ZIwNhGYUAR1btYjnEC5280m7r2UWPoXMYNw5NmU8v
         /zcg==
X-Forwarded-Encrypted: i=1; AJvYcCUsDppRPlLL/JtpTg0VPXNrKWS9gMiBQJbaMaGMDkrYknGAACVioEmFK7Ta/rlW4WpyPCQfK0Dr8jNO@vger.kernel.org
X-Gm-Message-State: AOJu0YxQFG1Np9T3Q9GqRe3lQNv0NlZjL7pzpHimuGqts9ORwAMmZElg
	vHVou6uWVNzJgEnYn7XDY/sFhL44n0N/IXOgMipXyQdUw70JJwJF/8EnNIatMBERbgIotkSBeSv
	UufolJwWwHMdT5dH/T8dF3Pih36EjdDs=
X-Gm-Gg: AZuq6aLw9m+FxkGKki1xCQuO05xbB1jp+bh8VIAcIVYu1EAPz2yVetBZ9UmOwXhn65Z
	AaaQ+BsUJTZxX9QIe8qP8I4/44SCBf7trHYjpP65E17E5IRoIS8J2MdU3qhZ5hzYClpwchD2ugD
	ttHe1eM4AbPhsNrf5QMe0Zp9TPJvou0xQDQ8g/EnkU2BbfF3IzKivc4bgccX7Izf18YA0sXATEP
	rFj7dRoONh4UpnXqUFasnD2F9jEAe60MIhaCZ2iZAVZ4bsSTqC7z1SzV5/prit/zozYNha30EW+
	uZuwcgOTu3LJQX7qDdbqqSbirsaiz2cdLYC3mUCbDEExdDRrnfj7uVzWhTPg5cPg+9U+F8KsVbY
	K4+zRUYKnNw==
X-Received: by 2002:a05:7022:90c:b0:121:d898:edae with SMTP id
 a92af1059eb24-126ea91f3e4mr1123936c88.24.1770126979199; Tue, 03 Feb 2026
 05:56:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260202-imx31_dts_warning-v1-0-434dd2643c3b@nxp.com> <20260202-imx31_dts_warning-v1-5-434dd2643c3b@nxp.com>
In-Reply-To: <20260202-imx31_dts_warning-v1-5-434dd2643c3b@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 3 Feb 2026 15:59:04 +0200
X-Gm-Features: AZwV_Qju5F7xT8vnmaZowdmwJ5PbMdVnDwBoeT5wIv_XHgkftgb91IXvaA8NXhI
Message-ID: <CAEnQRZCWcWaDGSFVvV0AT3rp7pO+iPXNnXW+4Dum9PwOFy3nQA@mail.gmail.com>
Subject: Re: [PATCH 05/10] ARM: dts: imx51-babbage: rename at45db321d@1 to flash@1
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262281-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,armlinux.org.uk,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.1:email,devicetree.org:url,nxp.com:email]
X-Rspamd-Queue-Id: 33FBEDA41A
X-Rspamd-Action: no action

On Mon, Feb 2, 2026 at 9:45=E2=80=AFPM Frank Li <Frank.Li@nxp.com> wrote:
>
> Rename at45db321d@1 to flash@1 to fix below CHECK_DTBS warnings:
> at45db321d@1 (atmel,at45db321d): $nodename:0: 'at45db321d@1' does not mat=
ch '^(flash|.*sram|nand)(@.*)?$'
>         from schema $id: http://devicetree.org/schemas/mtd/atmel,dataflas=
h.yaml
>

The commit message should say *why* the commit is needed and not
focus on fixing the warnings from a tool.

e.g:

ARM: dts: imx51-babbage: Use generic name for flash node

Prefer generic node name 'flash' over the existing specific one to reflect
the function of the device.

This fixes below CHECK_DTBS warning:
 at45db321d@1 (atmel,at45db321d): $nodename:0: 'at45db321d@1' does not
match '^(flash|.*sram|nand)(@.*)?$'
         from schema $id: http://devicetree.org/schemas/mtd/atmel,dataflash=
.yaml

<snip>

> -       flash: at45db321d@1 {
> +       flash: flash@1 {
>                 #address-cells =3D <1>;
>                 #size-cells =3D <1>;
>                 compatible =3D "atmel,at45db321d", "atmel,at45", "atmel,d=
ataflash";
>

Thanks,
Daniel.

