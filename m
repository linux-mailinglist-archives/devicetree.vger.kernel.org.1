Return-Path: <devicetree+bounces-307219-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NIcbJj9xImp3XQEAu9opvQ
	(envelope-from <devicetree+bounces-307219-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 08:48:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA59645A79
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 08:48:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=B77iAmzD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307219-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-307219-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8ADF13038BBF
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 06:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0587410D3D;
	Fri,  5 Jun 2026 06:45:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A864413230;
	Fri,  5 Jun 2026 06:45:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780641954; cv=none; b=AOw2YZk3/Ywwrn6RJgoJzzOJUZ6wI7dgBrSu8v6ZMR1+m/8EwvwqrJOg8Leg9ecY2eHmux7lYp+RwvYo/HYLDM7yNqDa6GBGVMz2wkqmiW/ND9AsNTxWCr6k3A+FkyU2X5vDsCRawYEXjeKInRz0Gqvwh3Dbq04Hro7OiVTPEx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780641954; c=relaxed/simple;
	bh=YJpo32jO83UGLMU8gDwSrkla4iGpcMmeia16+cxd3fo=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PebHRuZPHNl/BHy7h2seOdOxWbHtH16wO37TF1ivC3tazilc3mMW+gT16GSxQLtlqLzXAsHmxB//OYGRseupgQ0kL5WGY1R15jdoACySouH26v30us5U2z/QMab03zOximya+xyuh9cy0H//zBFtRw/uhXf+onvYPFn7uuSRyNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=B77iAmzD; arc=none smtp.client-ip=185.246.85.4
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id A49F04E40776;
	Fri,  5 Jun 2026 06:45:49 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 6E3895FED1;
	Fri,  5 Jun 2026 06:45:49 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id DE2A7106A1EBD;
	Fri,  5 Jun 2026 08:45:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1780641948; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=TKj5g8/lTeOWFoQK37ljdSXM22TotCuzq0IiX82cl6o=;
	b=B77iAmzDGqP2LQRUinIChZycZ8eIsD5vXpR2K4QMSECuNKKn/tYKa5XLIVUmHtCJUGpL1m
	C3x6DT6ILwh26Xvgaf4NiFJVFeODu3PQ8qKFz/FjJO0Q4to0kghX+wt/mV/vSGnqo+8X/Z
	ZTSAtTjvJBzg16ALrljjbx+55oCpz3ghYjheOTJnvU0gUDuBvjuEixKGkt6/eVKLO4d/03
	vvEATcHB7THSWpvM+OEDPw2JLyYAgb4iWPRfzv81vCcsOjHJjBd+MzpdvawMUDyAMwQ+Zb
	izt1c7Twaq/RqZ55NrX3E/iEA46DH0Exj9Or0bUiPB3T77XoM29XZhRt+PQ/ow==
Date: Fri, 5 Jun 2026 08:45:43 +0200
From: Herve Codina <herve.codina@bootlin.com>
To: Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh@kernel.org>, Saravana
 Kannan <saravanak@kernel.org>, Geert Uytterhoeven
 <geert+renesas@glider.be>, Kalle Niemi <kaleposti@gmail.com>, Matti
 Vaittinen <mazziesaccount@gmail.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Danilo Krummrich <dakr@kernel.org>
Cc: driver-core@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Allan Nielsen <allan.nielsen@microchip.com>,
 Horatiu Vultur <horatiu.vultur@microchip.com>, Daniel Machon
 <daniel.machon@microchip.com>, Steen Hegelund
 <steen.hegelund@microchip.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v7 0/2] lan966x pci device: Add support for SFPs,
 simple-bus part
Message-ID: <20260605084543.4701ea28@bootlin.com>
In-Reply-To: <20260511155902.34534-1-herve.codina@bootlin.com>
References: <20260511155902.34534-1-herve.codina@bootlin.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-307219-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[herve.codina@bootlin.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:andrew@lunn.ch,m:robh@kernel.org,m:saravanak@kernel.org,m:geert+renesas@glider.be,m:kaleposti@gmail.com,m:mazziesaccount@gmail.com,m:gregkh@linuxfoundation.org,m:rafael@kernel.org,m:dakr@kernel.org,m:driver-core@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:allan.nielsen@microchip.com,m:horatiu.vultur@microchip.com,m:daniel.machon@microchip.com,m:steen.hegelund@microchip.com,m:luca.ceresoli@bootlin.com,m:thomas.petazzoni@bootlin.com,m:geert@glider.be,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[lunn.ch,kernel.org,glider.be,gmail.com,linuxfoundation.org];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[herve.codina@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,bootlin.com:mid,bootlin.com:dkim,bootlin.com:from_mime,bootlin.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3CA59645A79

Hi all,

On Mon, 11 May 2026 17:58:58 +0200
Herve Codina <herve.codina@bootlin.com> wrote:

> Hi,
> 
> Previously, I sent a big picture series adding support for SFP ports
> available on the LAN966x PCI device [0].
> 
> In this series patches touch several parts and sub-system in the kernel.
> Reviews have be done and it makes sense to split the series and send
> parts separately.
> 
> This current series is the extraction of patches related to the
> simple-bus driver. It has to be seen as a continuation of the big
> picture series but related to this specific simple-bus part.
> 
> Patches 1 and 2 makes the simple-bus driver compatible with fw_devlink
> expectation consisting in creating its child devices at probe.
> 
> [0] https://lore.kernel.org/all/20260325143555.451852-1-herve.codina@bootlin.com/
> 

I haven't receive any comment on the series.

Is there anything I can do to move forward on this simple-bus driver?

Best regards,
Hervé


