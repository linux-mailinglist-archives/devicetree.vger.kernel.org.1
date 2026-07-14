Return-Path: <devicetree+bounces-326522-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c+fgEA+aVmqq+wAAu9opvQ
	(envelope-from <devicetree+bounces-326522-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:20:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAB5758B27
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:20:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=Dc7lcxIL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326522-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326522-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CA901302DE94
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 20:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 042543168E6;
	Tue, 14 Jul 2026 20:20:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CA31DE4EF
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 20:20:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784060424; cv=none; b=N7XDr7vuDmuB2Md+BBVO4ZHHyCKR1pW1EhpM+PDwY/ISI0PRbRvPlfKzZVNDd9L7679hgykAtypjrZQi8ymjVahSJn2TPALxkW+GNk6nCYhxNrNjaKYeLIAH70smFGke4BoUjLSxTKj9NIUGc5i4i8MMSJU9U6CeHJ+lJAnmdQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784060424; c=relaxed/simple;
	bh=KTLPW7SeK0eHR+5Ne7iDAKcWs9/wlvNXzu4pSKLITdo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bYF2evEErLvJ+J+p3bGoN2TOWwKswvF55PT5MUN3nH5nNty95o8u2mkYqrL5pV0irNTUzR1lAafZthjDg0lzleUQwtvIyYS20hfRglz3QTnsVOc7HJpVjQ3EBp7BveCRLXfnyIIVco8G4qH7pj6VYSp5SDmJjD9XaBuSD8dR/6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=Dc7lcxIL; arc=none smtp.client-ip=209.85.210.43
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-7e9d7464b71so1604240a34.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 13:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1784060421; x=1784665221; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=eHU+hJdy7DYz+ulB1cPA669ik4xQKiISAcTXAq3NZ5A=;
        b=Dc7lcxILxStv6ymMzTOEat4xx3RvhC5fn/YDprx2J6WjmxWtKHp44unEHx58Jem4uO
         2Q2dk11Bf/lcqrFjzIU/ZyV++E8Ct+r2D1O0waj2J/iNMkaxSG08QjpqYSGIbOyx5/cD
         n5k+wb5c4Ub4gqTap6OTK4pbNWnP9AvinZFd5j76Idc131JG9bhOtpWJ7PbbW/4v+f14
         bbPa6b79rqRxcNwCTl3VqtwzbAQyNOGzDwqh7VrKQ6Vvgd7G7wYI56x8Nao/xe1uNZk+
         axd47Ky9pqIFkrBfg9VK/fS4OXmOXOOpd4uox3w2osIY6aUoaHAcuuU0RyHeQpsbDiVH
         pOkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784060421; x=1784665221;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eHU+hJdy7DYz+ulB1cPA669ik4xQKiISAcTXAq3NZ5A=;
        b=oIGKrbyV58yzB4hvcCwdsJAfrT/Lg2b1Dsau/cU6Fb+6a5j8K3UjCve7aISEcjFWPX
         cpZZCbxIl0UC31eaWLSgfX98WJVDxn5s5b3T9Zr8GJXuGKj329qxXgp3BtEpQwcEDSAm
         wxVnyHj+IyCYxE5NzDPheflySwd8J2arqZbwslsJRdcyV6oge3GZFVk+eAUN67h3/zpI
         3waV3M9UyRPsWsi309Ptsrmk5o1FtMQDRjXtwAHDEWsnpBt2JNojTDJlqI3td/qZsGY3
         ps5pohe4ba9jCJIdlQeqLqhf2dqxBNH/34Qr4PJ4hWoAPsZLe/ejOHNRJkp0ALKg13tg
         FPbQ==
X-Forwarded-Encrypted: i=1; AFNElJ/GB25VG85PyFSWbx5p0ce+jlt6M4qB9fL8DUIcqomhO57f7L0vgJMuIutlThj7cMxSM0BkkeX6RNVG@vger.kernel.org
X-Gm-Message-State: AOJu0YytCgXP9HvwJWciZq/f1aWfnzBfHt35p42cxthq/U4tkKOtcv4S
	HH8RexaQa9b9F9yH7r+4uUiSlc1504zTX25th8kESEVxazYGxZJZWSbIhk2WzAxc1DU=
X-Gm-Gg: AfdE7cmM0SP5FTiQXyAWJHrgLCELXnlOpSz/cvknVa41g65QxlSuAKa2z+Btoo//76V
	uIlptr650fuAzNpdJ/A+WRlyNdWr63kAR0AeGA4fz7yKBLghQUTPYQptXicXegJJ3K8hD7BbVds
	jpBbkibHMkF5OwxNuj0Dpuv5ejeTVvbqNrS+c2hT5uHrw8vtphu3pyfpF+suWzMISjl5LHKYd+K
	rYX8C10bG4eq+A+Ph7rtik0zwvxnulzNjvaMj9q5jrphUI7SMAhUkyOI3kiTkJ88VGP29XGIW90
	r99MmZPdK5kXL0i64eUUNTmT20Gk+4ebB81h4D/yc95HEO5Bz+YLOqZYERXTyUpSQMVlT/YKSqk
	rYSqu8yShCPe/S77MQUX7XKgIFGQqRQd5b6SXK704lztCNT8QqVStm7KxC4ukP3WSamYtdF4OpW
	WEDRt5pCMAyCGtVCcS2dOpM8qFDw9fOwAmEBW/TIb+iRmQp6oyoh8KudrpOvMvKBA=
X-Received: by 2002:a05:6830:6ab4:b0:7eb:89e4:8f5c with SMTP id 46e09a7af769-7ec4a79830cmr2047499a34.14.1784060421288;
        Tue, 14 Jul 2026 13:20:21 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:280e:69fd:7612:d5a9? ([2600:8803:e7e4:500:280e:69fd:7612:d5a9])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ebcb2bc0d0sm15910199a34.19.2026.07.14.13.20.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2026 13:20:20 -0700 (PDT)
Message-ID: <66b7b01f-0e79-4387-9b68-92858ccc1fe7@baylibre.com>
Date: Tue, 14 Jul 2026 15:20:18 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/3] iio: adc: ti-ads1100: Add support for TI ADS1110
 to ti-ads1100 driver
To: Jakub Szczudlo <jakubszczudlo40@gmail.com>, linux-iio@vger.kernel.org
Cc: jic23@kernel.org, nuno.sa@analog.com, andy@kernel.org,
 marcelo.schmitt@analog.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, mike.looijmans@topic.nl, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jorge.marques@analog.com,
 antoniu.miclaus@analog.com, mazziesaccount@gmail.com,
 jishnu.prakash@oss.qualcomm.com, duje@dujemihanovic.xyz, wens@kernel.org,
 sakari.ailus@linux.intel.com, linusw@kernel.org
References: <20260714195528.597753-1-jakubszczudlo40@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260714195528.597753-1-jakubszczudlo40@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326522-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jakubszczudlo40@gmail.com,m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:marcelo.schmitt@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mike.looijmans@topic.nl,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jorge.marques@analog.com,m:antoniu.miclaus@analog.com,m:mazziesaccount@gmail.com,m:jishnu.prakash@oss.qualcomm.com,m:duje@dujemihanovic.xyz,m:wens@kernel.org,m:sakari.ailus@linux.intel.com,m:linusw@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
	FORGED_SENDER(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,topic.nl,vger.kernel.org,gmail.com,oss.qualcomm.com,dujemihanovic.xyz,linux.intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:from_mime,baylibre.com:mid,baylibre.com:email,baylibre.com:dkim,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CCAB5758B27

On 7/14/26 2:55 PM, Jakub Szczudlo wrote:
> Add support for the TI ADS1110 to the existing ADS1100 ADC IIO driver.
> The ADS1110 is pin-to-pin compatible with the ADS1100 while providing
> higher resolution and an internal voltage reference. This patch series
> extends driver support for ADS1110, updates device tree bindings and
> Kconfig text, and improves the overall hardware description for the
> TI ADS1100 family.
> 
> Tested on: Raspberry pi 3b+ with 7.0 stable kernel

Hopefully this applies on the iio/testing branch? A lot could have changed
since 7.0.

> 
> ---
I made some suggestions for cosmetic improvements, but good enough for

Reviewed-by: David Lechner <dlechner@baylibre.com>


