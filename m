Return-Path: <devicetree+bounces-266271-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sM12OKfElGmqHgIAu9opvQ
	(envelope-from <devicetree+bounces-266271-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 20:42:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 126F014FB2B
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 20:42:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 76B5630074C7
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:42:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2900D3783A0;
	Tue, 17 Feb 2026 19:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HwjeF6l2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD00636C5A6
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 19:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771357345; cv=none; b=iZd3p1+FdsO3DkvrPpTjz0VDhmQaqbQ/j4yZfv7tgIiv19LQSOal1LYqta28IrKhJK6OlCYrEOQRUn8o1uavPGGMKWBtHPpa/unwRkzS3uVtbNVOB5yZjRIWTdsPeTvmxocdTJzRqUUi551KIwNWSuWTXpAQFJUxSC2Y9muaqWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771357345; c=relaxed/simple;
	bh=IOYrMdtCWt/Op0E8/4vt5NFeKKiy+7VItgEUcwnuASw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r0K+DFna4KFJMunXdi5FSczhRZ8wgpYo+QiAGrUsGAkCbMqvLp7bC/tP/KuKTfWQzJpzwzyYhPbdoBeIn42FuPhPTcvtx+xVsMNXaAikLtFiIHP0qpj5ok39PlU1Er6i6/h3Pyhrr8lySCqnUnH03mlGci1bYiAHY81tj/2UaXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HwjeF6l2; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-436234ef0f0so3253377f8f.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:42:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771357342; x=1771962142; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YUeQvtbcJRcoGuHYQKHXUnAyTG1dJFRZwd94Z/kLSnc=;
        b=HwjeF6l2jiib6S6LS3cI3Xjd3ZRF1tqLAgSpTggdyUSS1w0s5S4QCdcKIbzTzUDvye
         XSzGjb29uzrk3YTV9eF5zuNcd3K2ZveOEXUzmNITX/L08huBM40jc5lpuXvatyzgpmMU
         McYA0zM4ZlsFGh5xQiZFrghkNRKvPKQZEHl8BLgyDM0lJX3wpkCizwcrq7PIez+duYDd
         SYJxCbclN/zdDHD4gRB3oiDAJbmph9bX9z81N8HecCS+601ZMYPIphY0i18K18x6pKCf
         zENgNMgI17/aIGV2BRvGy0WL5mIdWHoGHvRNruK5kdCSgqgBxYMaEH7l3/c2l11xVM55
         KKRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771357342; x=1771962142;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YUeQvtbcJRcoGuHYQKHXUnAyTG1dJFRZwd94Z/kLSnc=;
        b=DHMs2nVEZkDuLXIyMC2rjbXqC/ogyoh7cnUxSsEoAxXmqtJFM0mlEtRAZ8ArhbxIQx
         +1S2SUFzyXoIHtwWvf+m1T0cYWOUScdF6znrm+VkW/CDyYTWAbRXfqJBV2MCNuk1bdlT
         vyv5i6p6gWHNTH0n8YIUkmvY+I2bL1q9Pm4rx676tgmnVgO8I7v7IchFyS09hTr/mQVF
         lP0C56aI0pkh/vfjTpg6ORHFydDQw79C9tRzX1gFz1UqnGmEq+9NDw/epY+7ZT81i7Gr
         SIjoY76/2rSSxmGUROljJ+8d0/K1j7fezGNm0qZ7w18S8rbUfF5Cxw6Dv8zlBYUAMcN5
         iLcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjQuiIwB0pJdQ+p/BCTrQioq2ejgK85iylF4rDU0dk/aXJ+fL3UOvjPXCoGgEWffHmBFpL5EtBoa2T@vger.kernel.org
X-Gm-Message-State: AOJu0YzWfiobTE48nKF8gsgLtlSlHZi0cNLxCF0h6KuHZwlJ+aZBnskQ
	RTYjaMiv20n+XozR6IqK6FpGcOMCiXYLmv1wSUnHm8IXAeu0Qu5KBVVK
X-Gm-Gg: AZuq6aJfVpVuAqNhpWhkVSTmAWn/VXoDUZFKBOTbsvIN74nrpNJTHiv877Kkg/6YfBA
	XZrvd0vCb0MUHzWXYVFX3ffU78ELnn5T49SuS8ST3jnCCMbBj7Ip2wAN9MfD+DCxNxtDo8ib8Hx
	kuj8HWLgcWnJlCvq8rS0Qh+ih6SP7J4oVVzKbJ93t1pduw1y/hsOuKPjJz0XxXrPPs76A6aSS3/
	qeN98uC8z1vkL0xVJjIo8TvSL3MhBi8/sbywrsji7jp4oHe/XsIdB4doJL+gpmnxlnFfivBS7Os
	rKnipTx8C/LRGPhf1Ia2KN5nnDWqjixJgbUvGz8wWbb1Qj1GMrvpFPLmcYFtsiYH4dmcX8Ytxgh
	g1hxIIMTmmSj/65FJ0T0SehMJU5tbxiI3Kd435sxOek/ZvnESa853CYwgz5EZgn8iVbpAPbfNgd
	rNUjBDahsST2GQx8vOIy9CXWcaCGz9a8t9yAR9DWjxDFJoJzb5J69d88uXXMF4y8l6YgIReysZ3
	juFnn0F25Xyj9UUVI+lVQ0khobUh0oHoXdmWfAePSbna3c=
X-Received: by 2002:a05:6000:2586:b0:432:dc1f:6982 with SMTP id ffacd0b85a97d-437978cd85emr24996379f8f.16.1771357342109;
        Tue, 17 Feb 2026 11:42:22 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796acf5b9sm34488531f8f.34.2026.02.17.11.42.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 11:42:21 -0800 (PST)
Date: Tue, 17 Feb 2026 20:42:19 +0100
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Fabio Estevam <festevam@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: Re: [PATCH v1 06/11] arm64: dts: freescale: imx8mm-var-som: Update
 WiFi/BT configuration
Message-ID: <aZTEm8nUUVcKZH0v@Lord-Beerus.station>
References: <cover.1771353301.git.stefano.r@variscite.com>
 <3e79c4d806b8b8024b71bc99c36b09a2fbb90a65.1771353301.git.stefano.r@variscite.com>
 <CAOMZO5CAb8738HdH49WcY-JPTzQ90n4Bnmyn96_3jfw47mxOug@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOMZO5CAb8738HdH49WcY-JPTzQ90n4Bnmyn96_3jfw47mxOug@mail.gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266271-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Lord-Beerus.station:mid]
X-Rspamd-Queue-Id: 126F014FB2B
X-Rspamd-Action: no action

Hi Fabio!

On Tue, Feb 17, 2026 at 03:59:33PM -0300, Fabio Estevam wrote:
> 
> What about users who still have boards with the Broadcom Wi-Fi chip?
> 
> Will Wifi on the old boards stop working?

The Broadcom-based WiFi module was used on earlier revisions of the
VAR-SOM-MX8MM. That hardware revision is no longer in production and
is not available for new orders. All currently manufactured and shipped
VAR-SOM-MX8MM modules integrate the NXP IW61x instead.

Since the wireless module is soldered on the SOM and not selectable via
the carrier board, the device tree must reflect the hardware that is
actually present on the module. This series aligns mainline with the
current production revision of the SOM.

Customers using older hardware revisions still have access to the
corresponding device tree descriptions in earlier kernel versions.
Upstream support is being aligned with the actively produced hardware.

The same applies to the Ethernet PHY update included in this series,
which reflects the PHY used on the current (and future) SOM revision.

Best regards,
Stefano

