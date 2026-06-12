Return-Path: <devicetree+bounces-310994-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id O0EZEPEULGo1LAQAu9opvQ
	(envelope-from <devicetree+bounces-310994-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:17:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AD767A1B6
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:17:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=aRxEDs3d;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310994-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-310994-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 75998319A9F9
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 14:16:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F4252F8EB3;
	Fri, 12 Jun 2026 14:16:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554D7383C96
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 14:16:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781273792; cv=none; b=WoDccA1FOD3RxEdRmD7IQeNXtEuao+5AjMre9rGvBkOj39LnEkwA4PaUaFMo7m74wTneky4cQgddiVI7URdAbrzTj72pmEhEmEozRaFxm0Os1QYoG2pQCAm7jEWOnF6ppKVcIaNf2OWj3ZfSdlo8eVHauaB8UW9Zbu6My1n4f3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781273792; c=relaxed/simple;
	bh=3fGK3MuEMlOcBmW9XxMN5UOMxwFay0WRS+u/9IMQ16U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SrEjd33mq/9Yv3QQckg7/rs1mOJEcaxewnx+9tABZA4z0WKVtChErmC/bM1reTJlHKT4g3m0RjIWfVKU3uUQ3oQbynjHJ5pNrwpsnhkyqRUm4ViyAYB1slDGPzdAxnH7wFwEm+Yp2Zrq9ofcjzDfE2av4Kq51FDJolRhqo6XVgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRxEDs3d; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C36671F00A3D
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 14:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781273789;
	bh=zzHvGw4t1ALo5R4403eulHWBiG5vQMAyxhw+Kh/g0Tc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=aRxEDs3dz9wpawy0H/gTDRSGiCyhK9eK7C3WEC8II0uj8zWpVKrp5ErvkPYRMm4Fe
	 NLKP7Lq9Cnn6MQ5LtaWQlK3+f4OdfMN59jA0VjXGaUADOGPVAuyV7foIZONzIRkt9N
	 /V4pnI+n6WB4rtQ31JzvcYcZAk2CAa2TmNWjyoWa9CIxkGUuE0BPj0C46u+swBNlcX
	 mXMqd1BX4Zys6e190ggRL20sbgZsifEgObhtes1YaYOK4Hf3vsCyqFzmDjWtH84A87
	 C2SJJrM7LW8fG+TeHDlQR7vKNhpzGwTBQhy8hhTLx3XgKB8Lxb+lENDU2BHV5s3ZIf
	 +geBNGicEa4ig==
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-7e6dcc22cbcso980498a34.1
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 07:16:29 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9qYB3O1dfAfPcWOBocFBF9lk4MroJgVUin5jwbp0vpGxqf2wQvwFtHJIIPCosnsToFeDQenXkIA0Ep@vger.kernel.org
X-Gm-Message-State: AOJu0YzL8YkJelHQnEaJsvN9nA7QrWaeQW44YNhImCLFZef7WYXIhzQ0
	g7f6DmaeGej1cRbOF/WZ2lZjRbb6YPDBwOmtSP+2O6abuhWkWA4zfmNqQoW0AHdwpEaLtROM2SM
	toyvIO5562ntsl/3M1N7JDKA392OIZkk=
X-Received: by 2002:a05:6830:6d49:b0:7e6:e385:4c1e with SMTP id
 46e09a7af769-7e7846f019cmr1818964a34.4.1781273789209; Fri, 12 Jun 2026
 07:16:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260611154105.3727-1-shofiqtest@gmail.com> <20260611154105.3727-4-shofiqtest@gmail.com>
In-Reply-To: <20260611154105.3727-4-shofiqtest@gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 12 Jun 2026 16:16:15 +0200
X-Gmail-Original-Message-ID: <CAD++jLngjw7WrrAmKW-VTkQzjM_TfK3hg46qbcs6=DW7bgt3qg@mail.gmail.com>
X-Gm-Features: AVVi8CckmRBftUowDa4_GiG5wg5tFvbvCbslw1rfEAbTZ_KMxVac5yjOhpwxxDA
Message-ID: <CAD++jLngjw7WrrAmKW-VTkQzjM_TfK3hg46qbcs6=DW7bgt3qg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: iio: accel: convert lis302 binding to
 YAML schema (v2)
To: Md Shofiqul Islam <shofiqtest@gmail.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, jic23@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310994-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shofiqtest@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A3AD767A1B6

Hi Shofiqul,

thanks for your patch! And thanks for working with the ST MEMS sensors!

On Thu, Jun 11, 2026 at 5:41=E2=80=AFPM Md Shofiqul Islam <shofiqtest@gmail=
.com> wrote:

> Replace the plain text lis302.txt with a YAML schema for the
> LIS302DL/LIS3LV02D accelerometer family.
(...)
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>

Please use my new email address:
Linus Walleij <linusw@kernel.org>

I don't mind being listed as maintainer, ideally I think someone at ST
should pick this up but I have good relationship with them so this
is fine unless someone signs up for the job.

Yours,
Linus Walleij

