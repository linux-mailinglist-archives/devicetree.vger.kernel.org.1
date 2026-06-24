Return-Path: <devicetree+bounces-315402-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PzesIv9IPGqqmAgAu9opvQ
	(envelope-from <devicetree+bounces-315402-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 23:15:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D946C1636
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 23:15:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=yB8tYRn+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315402-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315402-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7A1C23006811
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 21:15:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B0BF3E5EC5;
	Wed, 24 Jun 2026 21:15:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B033E5A33;
	Wed, 24 Jun 2026 21:15:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782335738; cv=none; b=oI/Ozzfg0Pt4Aq+jRCVDILgJ+OdVmBXA29dF4nRai69hw22aVwRRjulC9s1NH0mUvYqfGrTh2dHfVGTIMSmGBefWEQeNn8YvwzV5YTMs+KJq5czhCEJJQBWzB+ZZRRWh5iCPDZ/odTMfcZpKdWNMbG8dOYMSFK+8clKgQv5lyPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782335738; c=relaxed/simple;
	bh=8+Tz2wcICAvnONh9G2yDdK3WLJUQtA4ebKoIfNXDAHw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gXwgb74grr12pYVx2m0X79nZjbV7JG+45yog5rvfcG+dFOF4JlnI7kQpjxLF2cXM6lckdzrLgj1n/aUlg8pc3Snz7yQUg6FvbWF0WFfdLV9BxKH2qMiS6LWcwnktm+zdgNTz6eoPg5+X4HrJBXLxva+KC/JTXRw8oxN6HsC1lEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=yB8tYRn+; arc=none smtp.client-ip=185.246.85.4
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 064C14E40832;
	Wed, 24 Jun 2026 21:15:36 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id CF8D4601C5;
	Wed, 24 Jun 2026 21:15:35 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 49B76106C8468;
	Wed, 24 Jun 2026 23:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1782335735; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=fZx+6xjHPRMW3K3siAMWojAagmcwhsm8cdaR644WEFE=;
	b=yB8tYRn+4MBt/aTA4Y/ErC+7TRlTBW0HGDOybRoJA/BD9JJmNO095Soktwnfo5rOsTsDWs
	WL48svqI8hTSbIQ4ZageUQedkTSdrTlIgsdYsi+Z3lJWuBRJobwveV6PhqtvDi81uggpxd
	otGT6yFuNbbQeeSLkQd39Qhb2YpU8MqgW8mOwG/jZpIbxhJghpUxZd/L0fk1t89d/Ii7nV
	iQDFqPs/ID6eJ0IovYYrwviAYKXW8Fv34IZ2WJhQHleAHIQ7Ovpg5GjLH4pMb3KI1k7hYA
	pWeTuwBqIVvYGYnvXqczejnHp4wXsase4yD48sShEZfSYsk7Oifvar/833XL3w==
Date: Wed, 24 Jun 2026 23:15:33 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	Udaya Kiran Challa <challauday369@gmail.com>
Cc: skhan@linuxfoundation.org, me@brighamcampbell.com,
	linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5] dt-bindings: rtc: epson,rx6110: Convert to DT Schema
Message-ID: <178233558783.1517260.7052068183567523489.b4-ty@b4>
References: <20260514173851.25088-1-challauday369@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260514173851.25088-1-challauday369@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315402-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:challauday369@gmail.com,m:skhan@linuxfoundation.org,m:me@brighamcampbell.com,m:linux-rtc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[alexandre.belloni@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexandre.belloni@bootlin.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,bootlin.com:dkim,bootlin.com:url,bootlin.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 23D946C1636

On Thu, 14 May 2026 23:03:32 +0530, Udaya Kiran Challa wrote:
> Convert the Epson RX6110 Real Time Clock devicetree binding
> from the legacy text format to DT schema.

Applied, thanks!

[1/1] dt-bindings: rtc: epson,rx6110: Convert to DT Schema
      https://git.kernel.org/abelloni/c/c7ab7504631d

Best regards,

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

