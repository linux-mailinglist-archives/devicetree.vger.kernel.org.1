Return-Path: <devicetree+bounces-305021-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Y0niIY9QHWpYYwkAu9opvQ
	(envelope-from <devicetree+bounces-305021-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 11:27:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ED06161C692
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 11:27:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1DC703005E8D
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 09:22:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 667D038F638;
	Mon,  1 Jun 2026 09:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hV4xS2nx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729FD390985
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 09:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780305778; cv=none; b=qGoIrtD5adJGRmJSvITIFVrR9x4VetZksXpX4pBRFgWwuavXl3JYpug+v+VSxmtND5rObkyWTc2WgqJMdPUdCmOd/Xgd1InCU5Li+aVKAhkiZQAEg9yP4bP09zKFlkLESryue4bb2290GVfGALCmeucKK6m2wuzgjCDjTcKnVEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780305778; c=relaxed/simple;
	bh=rpfwfbxapnDb7Or8/44PpYyEbjlKfqUuWiCVwRD+Tzk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K3cjheqifHUxpx5V0pGE3wa08nb2wU9ZgRxuDsUT16N6JW8jt7fXVuCWZGyFAAozEYhgfeFuSZwr2yaEy0+g7amKOuxE00AXcGM0ch9sdyxvS4p98KXDME14mcHAqOFTLETMPY6qO0W2iEgJpRks0dZp7OkESXARP290M+223EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hV4xS2nx; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-490ac357c55so5059215e9.1
        for <devicetree@vger.kernel.org>; Mon, 01 Jun 2026 02:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780305775; x=1780910575; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yQQS7y81H0NDGPMnprb/jA6ybDLaFKle7kIHgxmBOFw=;
        b=hV4xS2nxY5vBFw0bqgMY7DV6JJOqu6qq2mKWg7MPySOczZA/V6Sb614qtI8eTrB/kW
         i7Lt1eoRGPU5Kx1Fbqs8UhdQDlsKe+SAPrCNLs4hVLpbWnMb1BbdDWgVHZm7ZnWJujBH
         ZFx6C0iJNXCzxzGpicruap5u4083vIrxoIUf6l5ExdKQr/+C4jMGoBU/KLB3mzDtvqJB
         ESw5E1M+wMyTnGZZCMkhrQs0hWxjBi4jOOMcLXNd9H6r85GTo96khVkAXpYmqSjHm5zi
         dZRNVWYw+s6v5cGAwMifq4b27/vI/CecWKEEBQPOQE8OyChx8gpqYz4Os9AofiWvo3zI
         wvng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780305775; x=1780910575;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yQQS7y81H0NDGPMnprb/jA6ybDLaFKle7kIHgxmBOFw=;
        b=SoWaLTlxevQJRhKDYEnMOf1f/sb4P/XuZRPatU9eANv0kztEO07zmXJ7BmVZneYhoi
         /5GV02ZR65elXiMGIKC5q0JIgGmPbrtR9493bzH6C/vvGkEBpNIxR82inQFZrtMUmUr/
         wOPwb9BBO36n1YjBtJ7fdRiiXqZMzA9yZmIXTlpSQFXJX53jNZTowUtCVnYy50BeLQk6
         egKGvarisaVDCIVOnIQf89iK27rnY2dB8s0xFBwCoK3s5+vk54+65wV8Ebhe/xXF7MIA
         8fqAOM+FOoVegaZmq7rfeh0OgEsucJNNHJzBpUweK776MOV2NmU7z7RPjovGI/IHWaNC
         VqsQ==
X-Forwarded-Encrypted: i=1; AFNElJ84/mnRPxoi5j1Sp/7zZP8JmpdZ+NvFudIqAknEbRZwrp7q1fmOaKnwtOnugZrhY7Od+MSAHUn1kKZ0@vger.kernel.org
X-Gm-Message-State: AOJu0YySx4cE6gMCxyDaSdU1D8CYnH9A2g+GZMbaOtScaljMEapPU6ov
	9Rx6Hw5VW8iarSRXYliAPSU22DqmfrlSo0OUXuVTRheKSk3be+bRxE1D
X-Gm-Gg: Acq92OFrg5yWihuNz57Fqm/2TRywqEDbvWuSMGIGqERia37RFSgGO/OUDVHch4EDiTN
	0KIMtNXqrErFhEmGoZs7TB/2pb77HWZknkbNQZtB0ujiC2o2+TOn5rAdH9zvlFOJCPFN8I2VHcH
	84spx0dPhIRnc7MsW5xXK7EJ+QXoLrNejVgKNgajPSxOMPe/9Up2EbZ3OOSo0hfj364LJU8ZzH+
	+D1bgZlW2Er3baQZnvROgKz+ZFWBpRAuVO7meOdpTsZ5QfnqqEdVxH/1FtMXh2gb92FNQPt/3hL
	xx8b4JCERJ75+4cYqNLpJE+y+uXzXxGjCsgf70w+EzgdrDy0sWTtEbQYm9ecxMi5V9dnRdNm1UN
	kgAq+KTd4WPcvkr7xgxj0P9nH3b5qmFTaKvFXQSaW6BkkP72FUbYhh+X7uPUDakdTUPTfk+DvL/
	3QU2saOoXhPgBEJ6zW7pIHcbSbPA==
X-Received: by 2002:a05:600c:2a8a:b0:490:9588:bdae with SMTP id 5b1f17b1804b1-490a293bf4amr128209045e9.18.1780305774554;
        Mon, 01 Jun 2026 02:22:54 -0700 (PDT)
Received: from nsa ([148.63.225.166])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4909c0af2d6sm83225405e9.14.2026.06.01.02.22.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 02:22:54 -0700 (PDT)
Date: Mon, 1 Jun 2026 10:23:52 +0100
From: Nuno =?utf-8?B?U8Oh?= <noname.nuno@gmail.com>
To: "Pradhan, Sanman" <sanman.pradhan@hpe.com>
Cc: "linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>, 
	"linux@roeck-us.net" <linux@roeck-us.net>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"corbet@lwn.net" <corbet@lwn.net>, "skhan@linuxfoundation.org" <skhan@linuxfoundation.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Syed, Arif" <arif.syed@hpe.com>, 
	Sanman Pradhan <psanman@juniper.net>
Subject: Re: [PATCH v3 2/2] hwmon: (pmbus/max20860a) Add driver for Analog
 Devices MAX20860A
Message-ID: <ah1OwT0s21LTSsZI@nsa>
References: <20260529001903.625737-1-sanman.pradhan@hpe.com>
 <20260529001903.625737-3-sanman.pradhan@hpe.com>
 <ahlcnlJJnLfmCZNH@nsa>
 <20260529165132.678448-1-sanman.pradhan@hpe.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260529165132.678448-1-sanman.pradhan@hpe.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305021-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,bootlin.com:url,juniper.net:email]
X-Rspamd-Queue-Id: ED06161C692
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 04:51:40PM +0000, Pradhan, Sanman wrote:
> From: Sanman Pradhan <psanman@juniper.net>
> 
> On Fri, May 29, 2026 at 10:31:20 +0100, Nuno Sá wrote:
> > > +static struct pmbus_driver_info max20860a_info = {
> > > +	.pages = 1,
> > > +	.format[PSC_VOLTAGE_IN] = linear,
> > > +	.format[PSC_VOLTAGE_OUT] = linear,
> > > +	.format[PSC_CURRENT_OUT] = linear,
> > > +	.format[PSC_TEMPERATURE] = linear,
> > > +	.func[0] = PMBUS_HAVE_VIN | PMBUS_HAVE_VOUT |
> > > +		PMBUS_HAVE_STATUS_VOUT |
> > > +		PMBUS_HAVE_IOUT | PMBUS_HAVE_STATUS_IOUT |
> > > +		PMBUS_HAVE_TEMP | PMBUS_HAVE_TEMP2 |
> > > +		PMBUS_HAVE_STATUS_TEMP | PMBUS_HAVE_STATUS_INPUT,
> > > +};
> >
> > Any reason not to add regulator support? Given that the device seems to
> > be a regulator...
> 
> Thanks for the review, Nuno.
> 
> The driver was submitted as monitoring-only to start with, and I was
> planning to add regulator support as a follow-up patch. 
> 
> I think the DT binding already includes the regulator.yaml $ref
> so, in that case adding regulator support later won't require
> a binding change.
> 
> If you'd prefer regulator support included from the start,
> happy to add it in a v4.

You should be able to easily support regulators through pmbus. I meant
something like:

https://elixir.bootlin.com/linux/v7.0.10/source/drivers/hwmon/pmbus/mp2975.c#L986

- Nuno Sá

> 
> Thank you.
> 
> Regards,
> Sanman Pradhan

