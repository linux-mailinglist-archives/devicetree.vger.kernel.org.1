Return-Path: <devicetree+bounces-317459-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bQVxACF1Q2oKYwoAu9opvQ
	(envelope-from <devicetree+bounces-317459-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:49:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 629576E160C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:49:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="X5JY/iSB";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317459-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317459-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9E8423049655
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 07:47:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA5493E3140;
	Tue, 30 Jun 2026 07:47:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E1E3E3158
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 07:47:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782805646; cv=none; b=aTya2BzuUg0sX1lgwCHwPIXpQI5DN9gWQ5OKiz5cvpLvQSacuDQ+B19uNPfna/pi2D0sqBNFxAoFNaUd+4+I/Bmzjva5Fc4VSHn/Wv46OQTP8c0VNubzNrn8xmyNWjrSdZ+XjphYEsQtqYNXAy6UVWREfLot9dgQz8j75E6tURE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782805646; c=relaxed/simple;
	bh=O8UtlWA2/ymbY3Pi5cr1VAwTiB4Ay3GNCozA5qseyXE=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fHdexgZl1954rDk1DGBwZlq++NtWkYcWFiPkyxJoUlo+tTzqNFg5RJrd6L2nvXd5ZXUfcCMi04xae4ZJVt7iGxLiuT1HoUr/9FsEH6s6pqN1hJcWZgkNpFIjQdi4IzlN9sqYILgBUBhXQEJaxuwyTJutwG1F9p8/DDPNoG+ee9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5JY/iSB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 251E21F0155A
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 07:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782805645;
	bh=D0vA91JCy6e3U4Zy4A7u6z+5xLKwz9OO6mJyFAEDjWo=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=X5JY/iSBvE5bIvOcIm0YQO9+bwx9WFalRg8XAdM/Dy7q/Oxzbe5Lkdbglu5fv0OUK
	 fJYCmcrcJ4/g5E3FdwKdBPnaotBLNmXbb9CFrnUr/E7ro+IoDK0sXIOJqsF5jzvDxC
	 u+4wKW4E9nCYz3WkKxgbil4glsu3fn7RvqeVrNXIkyRolwRwMM1hkhdCyiD3jWHJYw
	 kwCPOdcOxX8X4XTiAtrhb54ePGhfALetVicbqlcx76vjApOHgz18CZe3D6FHPSjES6
	 9AjqebUwzzoVRWUFStflre7HZDVvMAmy1dTZPWhBVKqjyv1iE3P3xynnO7atbg0hPR
	 0bEvjEPk8WHxQ==
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-39b1f588471so4241841fa.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 00:47:25 -0700 (PDT)
X-Gm-Message-State: AOJu0YzTw/T32heRCXLXwy/lLKO+PrPgg5nI9Alvp7MqlIN9JjQr8vJX
	wIgQAmyJfhQFbSpZbmfHL8U4ciox3F7uEBi2NvCxJCMIgzM0rVGpW3YAN/n5goWSjd8G+Ntqi0e
	W3yV2QiX42IjHOarLykzoRG7l6JixtR0wFLnUkdw/yQ==
X-Received: by 2002:a05:651c:50a:b0:39b:695:32a3 with SMTP id
 38308e7fff4ca-39b1ddd1aa2mr5206931fa.13.1782805643902; Tue, 30 Jun 2026
 00:47:23 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 30 Jun 2026 00:47:22 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 30 Jun 2026 00:47:22 -0700
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <31477953aace52bb6594461e82ddf99493af2329.camel@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260408-dev-b4-aaeon-mcu-driver-v5-0-ad98bd481668@bootlin.com>
							 <b4396f57-3501-4e89-9cf3-8dc5d7cad9b7@roeck-us.net> <31477953aace52bb6594461e82ddf99493af2329.camel@bootlin.com>
Date: Tue, 30 Jun 2026 00:47:22 -0700
X-Gmail-Original-Message-ID: <CAMRc=MdJJnRTOSEecqpX-EddJRAzWc_1a-cg3wrW8m0jR2Fihw@mail.gmail.com>
X-Gm-Features: AVVi8CeaJi7AWd-H-Al7farjl69e4bGemX_zfvWwe4vajt3tOcP7qfQEh_ha7H0
Message-ID: <CAMRc=MdJJnRTOSEecqpX-EddJRAzWc_1a-cg3wrW8m0jR2Fihw@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] Add support for AAEON SRG-IMX8P MCU
To: Thomas Perrot <thomas.perrot@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-watchdog@vger.kernel.org, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	Conor Dooley <conor.dooley@microchip.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, Guenter Roeck <linux@roeck-us.net>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, 
	=?UTF-8?B?SsOpcsOpbWllIERhdXRoZXJpYmVz?= <jeremie.dautheribes@bootlin.com>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Lee Jones <lee@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317459-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:thomas.perrot@bootlin.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-watchdog@vger.kernel.org,m:thomas.petazzoni@bootlin.com,m:miquel.raynal@bootlin.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:conor.dooley@microchip.com,m:bartosz.golaszewski@oss.qualcomm.com,m:linux@roeck-us.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linusw@kernel.org,m:brgl@kernel.org,m:shawnguo@kernel.org,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:jeremie.dautheribes@bootlin.com,m:wim@linux-watchdog.org,m:lee@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,bootlin.com,oss.qualcomm.com,microchip.com,roeck-us.net,kernel.org,pengutronix.de,gmail.com,linux-watchdog.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,mail.gmail.com:mid,bootlin.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 629576E160C

On Mon, 29 Jun 2026 18:04:59 +0200, Thomas Perrot
<thomas.perrot@bootlin.com> said:
> Hello Guenter,
>
> On Sat, 2026-04-11 at 17:12 -0700, Guenter Roeck wrote:
>> snip
>>
>> Sashiko has some interesting feedback that might be worth looking
>> into.
>>
>> https://sashiko.dev/#/patchset/20260408-dev-b4-aaeon-mcu-driver-v5-0-ad98bd481668%40bootlin.com
>>
>
> Thanks for the pointer. I went through all findings and addressed the
>   valid ones in v6:
>

Did I miss anything? I don't see the v6 neither in my inbox nor on lore.

Bart

