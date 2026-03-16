Return-Path: <devicetree+bounces-276361-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMW0F9NIuGlTbgEAu9opvQ
	(envelope-from <devicetree+bounces-276361-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 19:15:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B684A29EE39
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 19:15:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6825D301AA4C
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:13:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB3A33D34B5;
	Mon, 16 Mar 2026 18:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="a5rz4F7/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECFD93D34B3
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 18:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773684816; cv=none; b=F9x+XMFl5LEDSQTp3x7f/yYxG7ZyDTggoPMytwq3M6qE8K1RJMGaXMD3yDhz91egVU8Tae7bpvUCXZeClP6LXPNCHAQoFUlnheQ0q/6QbQ+qeVeQhQZQeFPKhm05BYYPuQTkIZhzEcy8ncPK6HtMjUyAQMVkJWzTbmbIoI/2dCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773684816; c=relaxed/simple;
	bh=xJhMoZNqr+EHjdBUv6t14tIBHJ2MlKnKgZGrDXGR260=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=t7Wa/AX9gb3Z4bG1FWvgkSOvD1BxcODPdnaZtjnUiOWhh/WIxnX+1+3wNHvm0qWCbSTNuWr8R7oIO1DwU0YNLRAUThRjNra7xnC0q+vFZqQKKjEMj9adE5OQdlAD592rzIkXzEAD9pPtfvySvR1//EDV5NdSe6rQmB6cFMWldYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=a5rz4F7/; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-c738fecf349so1958155a12.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 11:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773684814; x=1774289614; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=6I630kcGdJmHLQvgv2ucM+rk0u+MBt6XpMILrvY8Gco=;
        b=a5rz4F7/PIq5VoPeuJr7+Y2B1gH2TPWLfJJYg2OnJMJUiRdcIuf4QvJSK6AnFFYIyA
         kDlAQke4I7guGFiBOIBg2AtC0aFC41RPGIeqiaikJAowEAcmII0mcc80kUAy3q1+ONh2
         G7a9tEcDZjdM4Fllm88bAx31ihMqsRr+sErfpHhfltzj7sfeeHTJLHvckufLbmxwLguz
         kHUILezoTbEFcVO31e+ZHgN1aQxeIP7pr1p7xwyBvOR0kAPrz6c8UlZb4sNw77FcUy04
         CY4X6qDSPN+ro6Fo0oHiQulDhZ/b+mB0QjWIpPxrTDkTLA3iTJS/wQ4oaevjugviTfxq
         vKJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773684814; x=1774289614;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6I630kcGdJmHLQvgv2ucM+rk0u+MBt6XpMILrvY8Gco=;
        b=lUTFIP0DBSsYH86hdUUuhr/2kNG57LQP4WyQK4flN6ayJqAC9mSxr9WUrP9oKBXmxv
         J9o2yJTBdfUcqaD9v/hh2Htbvu46dXVQ98TOzG1HdQ0OrI9qMgcXsmL11Je+jQuZgANE
         ZTkyNIA9CHYvbJG1iJiFAwzZ3QKzXXO2Twh9KWi8c6DoajU36Tr7qDSC4masMJ7FLUqC
         W94qLAu2dtVZtthA7KWubBo8reLhlRDDMs54OeIgIB6oUB4dCqyCwhnDOUzJe6ubnUBT
         mWc5Rzs6Xavsuq/QpHmMGVl3rjtv9WqaJ/9sDeTqUBD9NhwJE7YQ0t/iLNuD6E175fij
         qliw==
X-Forwarded-Encrypted: i=1; AJvYcCXxWQvW3xSLsX5IHEEUGUzQxVSigg7oLMAFmzcDl98XZhV6lOQ8gy4Q3RM4AwwgNA3gOLKO6Owi2y0K@vger.kernel.org
X-Gm-Message-State: AOJu0YwRGbl0Vp40OoeTG7K3pfHSW8YT9VXnmEazOAB7GOE81ea1WW06
	CYGqXAYu6oLILyufc6myS3jO22JnZAuG3GQn125FlUmNd/PVHFQGAOGVBbZEpf1hmOs=
X-Gm-Gg: ATEYQzzPdENr3OgSGxXyK5+O2volHnZ0vPmJnh1G7qtfROshhhLm+HfcVjfbHjg0M0+
	Ix6JuCz/xDkOO9FeQDYCsIxTqOOZnzUeUG0RNZksqTEKAQZnkS17mSlh/UIf1n9l7YPJM8mozsc
	V9+c5PCazvuSkrnAljetK6b25JnOegRTPhSMxn2yQA0hsoJLqH29APl9eNb/BVFv0JO+MBdUD+s
	1IQwdgxlVZtCaGz0b5iXo9vLGJk3nRHfp29w4PBPtItZX9Dis9WnPfs3xGQPRVnuncv4OUEj4o6
	zcIYzIM2qmBA3/cPtdek/r+oSnLaQRMQEfw+inMpxgqKvuvRi8+MuTUVG1ZiDmy0yvikZVqOiAW
	OUd3FOvwFqfeu43yoz1ZaAFUi0vXJUqrlgRBy1ehUxlMq3S4CK0cMTvtmr8COUB1cs4QBG8a9fv
	BXiac6peUgPGSPwY+Fiy0=
X-Received: by 2002:a17:903:22cb:b0:2ae:5a70:477e with SMTP id d9443c01a7336-2b06365b4dbmr4321155ad.12.1773684814193;
        Mon, 16 Mar 2026 11:13:34 -0700 (PDT)
Received: from localhost ([97.126.187.42])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece7ee3basm151378665ad.43.2026.03.16.11.13.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 11:13:33 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Parvathi Pudi <parvathi@couthit.com>
Cc: Parvathi Pudi <parvathi@couthit.com>, nm <nm@ti.com>, Vignesh
 Raghavendra <vigneshr@ti.com>, afd <afd@ti.com>, rogerq
 <rogerq@kernel.org>, tony <tony@atomide.com>, robh <robh@kernel.org>,
 krzk+dt <krzk+dt@kernel.org>, conor+dt <conor+dt@kernel.org>,
 richardcochran <richardcochran@gmail.com>, aaro koskinen
 <aaro.koskinen@iki.fi>, andreas <andreas@kemnade.info>, Andrew Lunn
 <andrew@lunn.ch>, linux-omap <linux-omap@vger.kernel.org>, devicetree
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 netdev <netdev@vger.kernel.org>, danishanwar <danishanwar@ti.com>,
 pratheesh <pratheesh@ti.com>, j-rameshbabu <j-rameshbabu@ti.com>, praneeth
 <praneeth@ti.com>, srk <srk@ti.com>, rogerq <rogerq@ti.com>, m-malladi
 <m-malladi@ti.com>, krishna <krishna@couthit.com>, mohan
 <mohan@couthit.com>, pmohan <pmohan@couthit.com>, basharath
 <basharath@couthit.com>, Murali Karicheri <m-karicheri2@ti.com>
Subject: Re: [PATCH v5 3/3] arm: dts: ti: Add device tree support for
 PRU-ICSS on AM335x
In-Reply-To: <91797572.667989.1773662409130.JavaMail.zimbra@couthit.local>
References: <20260307122641.738450-1-parvathi@couthit.com>
 <20260307122641.738450-4-parvathi@couthit.com>
 <7ho6ks1r4s.fsf@baylibre.com>
 <91797572.667989.1773662409130.JavaMail.zimbra@couthit.local>
Date: Mon, 16 Mar 2026 11:13:33 -0700
Message-ID: <7hcy131w36.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-276361-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[baylibre.com];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[couthit.com,ti.com,kernel.org,atomide.com,gmail.com,iki.fi,kemnade.info,lunn.ch,vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,couthit.com:email,ti.com:email,baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid]
X-Rspamd-Queue-Id: B684A29EE39
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Parvathi Pudi <parvathi@couthit.com> writes:

> Hi,
>
>> Parvathi Pudi <parvathi@couthit.com> writes:
>> 
>>> From: Roger Quadros <rogerq@ti.com>
>>>
>>> The TI Sitara AM335x ICE-V2 consists of single PRU-ICSS instance,
>>> This patch adds the new device tree overlay file in-order to enable
>>> PRU-ICSS instance, along with makefile changes.
>>>
>>> PRU-ICSS instance consists of two PRU cores along with various
>>> peripherals such as the Interrupt Controller (PRU_INTC), the Industrial
>>> Ethernet Peripheral(IEP), the Real Time Media Independent Interface
>>> controller (MII_RT), and the Enhanced Capture (eCAP) event module.
>>>
>>> am33xx-l4.dtsi - Adds IEP and eCAP peripheral as child nodes
>>> of the PRUSS subsystem node.
>>>
>>> am335x-icev2-prueth.dtso - Adds PRU-ICSS instance node along with PRU
>>> eth port information and corresponding port configuration. It includes
>>> interrupt mapping for packet reception, HW timestamp collection, and PRU
>>> Ethernet ports in MII mode,
>>>
>>> GPIO configuration, boot strapping along with delay configuration for
>>> individual PRU Ethernet port and other required nodes.
>>>
>>> Signed-off-by: Roger Quadros <rogerq@ti.com>
>>> Signed-off-by: Andrew F. Davis <afd@ti.com>
>>> Signed-off-by: Murali Karicheri <m-karicheri2@ti.com>
>>> Signed-off-by: Basharath Hussain Khaja <basharath@couthit.com>
>>> Signed-off-by: Parvathi Pudi <parvathi@couthit.com>
>> 
>> [...]
>> 
>>> +/*
>>> + * Disable CPSW switch node and
>>> + * MDIO configuration to prevent
>>> + * conflict with PRU-ICSS
>>> + */
>>> +&mac_sw {
>>> +        status = "disable";
>>> +};
>>> +
>>> +&davinci_mdio_sw {
>>> +        status = "disable";
>>> +};
>> 
>> I think you need s/disable/disabled/?  (note the trailing 'd').  Without
>> that, I don't think you're disabling these nodes, so I'm curious how it
>> is not conflicting with the PRU-ICSS.
>> 
>> Kevin
>
> Thank you for pointing out this typo.
>
> We checked the kernel code as to why this did not create any issue in our
> testing.  We found that the device availability check goes through
> of_device_is_available(), which only treats "ok" or "okay" as enabled.
> Anything else is effectively treated as not enabled.
>
> So even though "disable" isn't the usual DT value, it still prevents the
> node from being probed since it doesn't match "ok"/"okay".

Yes, but since your node is in an overlay, if a previous .dts[i] had set
this to "ok", then your overlay would not disable it, which would not be
expected behavior.

> We will update the value to "disabled" in the next version, since that is
> the standard.

Thanks.

Kevin

