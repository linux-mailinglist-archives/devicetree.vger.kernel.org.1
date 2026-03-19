Return-Path: <devicetree+bounces-277818-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gPcGJ1QLvGkArgIAu9opvQ
	(envelope-from <devicetree+bounces-277818-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:42:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF842CD0F2
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:42:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0BBDE302DE69
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:29:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 208E1372691;
	Thu, 19 Mar 2026 14:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="WPTB81GO"
X-Original-To: devicetree@vger.kernel.org
Received: from out-179.mta1.migadu.com (out-179.mta1.migadu.com [95.215.58.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FCE3612D8
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 14:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773930583; cv=none; b=NsgpeaGTntcXkSbmWCENkYaVmBUeCTllzIiortB0QPGfQwuOdvr3lAtUfu7zWViFZmAZqnlqNkSuR4H3Cu/J0jKVvfGuL9BNlDrRSQiHvkPbJI9L/mBo8F1UfIsu+ZN0CpJvTcor3HUjc0nNaDpEGkPPGMZ4W+Gg1oJd/OItGAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773930583; c=relaxed/simple;
	bh=ClvSwmmtkzBXiXphxkK1ex8lGft+DN9Mx1wFMEacTiY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:Message-ID:
	 MIME-Version:Content-Type; b=NHSoOs4G4MaWk0baMkIT3kn/nhdki0EjNsSLu8xRdtJBsvJ3xgYB7cJnoqQdn1hLGwAUF0nBWpHbgu0iL03RwrqMMKOQ6gEeUOBKPHCUKtvFyj9djgaamNoXPjCETXKGquu+DktUpQF8N9Kix/4/s7/svHjdFxuizf/WEL+0fGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=WPTB81GO; arc=none smtp.client-ip=95.215.58.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Date: Thu, 19 Mar 2026 14:28:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1773930569;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=W4radnMC090lS2rtEOXBuU4RadmReMtVlkQALqOTpw0=;
	b=WPTB81GOkvTgv6MgXSQu/p9DofPCBFi+MuP7JNB5Xr4QaXBAqA/R5LHSnBIrqABxc9PwMc
	o2J83KF53htQACrtWGv3/XcdQfphDE6PW7YMQmYWRpN35w34ntj5xGYHSPY+0hc/e2QZG2
	pseEC2q8kYDH7TCXeXQJl7ww7ghN7l6MG/cYJ3cey46DjZ5Dzfz6mNPFoV8RHcFuUybw8A
	HUfl6x4nLc0sWk5Ocqm5XKzn+roQQIYeLPd0fyRC2Mp9iDLEFnqPlNRqFs3yBAgsEqv7jF
	25tPCMawJX5H4AvOffgEI/0qaUji/Z2RK7la4isZW0PeWCccbmAm7KKBygAnrg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Ferass El Hafidi <funderscore@postmarketos.org>
To: Hendrik Noack <hendrik-noack@gmx.de>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Hendrik Noack <hendrik-noack@gmx.de>, Ferass El Hafidi <funderscore@postmarketos.org>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/2] Add support for Wacom W9000-series penabled touchscreens
References: <20260319095303.19927-1-hendrik-noack@gmx.de>
In-Reply-To: <20260319095303.19927-1-hendrik-noack@gmx.de>
Message-ID: <tc5hl0.um7mze1ddzgg@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8; format=flowed
X-Migadu-Flow: FLOW_OUT
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[postmarketos.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[postmarketos.org:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277818-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmx.de,gmail.com,kernel.org];
	FREEMAIL_CC(0.00)[gmx.de,postmarketos.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.961];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[funderscore@postmarketos.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[postmarketos.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gmx.de:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,postmarketos.org:dkim,postmarketos.org:email,postmarketos.org:mid]
X-Rspamd-Queue-Id: 7AF842CD0F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 19 Mar 2026 09:53, Hendrik Noack <hendrik-noack@gmx.de> wrote:
>Add devicetree bindings and a driver for the Wacom W9000-series penabled
>touchscreens.
>
>The driver currently only contains the information for the W9002 and
>W9007A, which I or Ferass could test on devices. It should also work with
>other chips, such as W9001 or W9010. However, I couldn't test it on these
>and the message length would need to be added.
>
>The pen-inserted-gpios is used to get if the pen is inserted in the device
>or not. It's also used as an interrupt so that the power state of the chip
>itself can be controlled depending on a change of the insertion state of
>the pen.

FYI the pen-inserted-gpios is removed in this revision.

>
>Signed-off-by: Hendrik Noack <hendrik-noack@gmx.de>
>---
>Changes in v2:
>- remove pdct-gpios, as it's unnecessary
>- fix devicetree example
>- adopt to kernel coding style
>
>---
>Changes in v3:
>- fix missing include (thanks lkp@intel.com)
>
>---
>Changes in v4:
>- adopt to feedback (thanks dmitry.torokhov@gmail.com)
>- add W9002 support (thanks funderscore@postmarketos.org)
>- add reset-gpios, necessary for some chips
>- remove R-b from krzk due to changes in dt-bindings
>
>---
>Changes in v5:
>- adopt dt-bindings format to suggestion (thanks krzk@kernel.org)
>- remove pen-inserted functionality as suggested (thanks dmitry.torokhov@gmail.com)
>
>---
>Hendrik Noack (2):
>  dt-bindings: Input: Add Wacom W9000-series penabled touchscreens
>  Input: Add support for Wacom W9000-series penabled touchscreens
>
> .../input/touchscreen/wacom,w9007a-lt03.yaml  |  73 +++
> drivers/input/touchscreen/Kconfig             |  12 +
> drivers/input/touchscreen/Makefile            |   1 +
> drivers/input/touchscreen/wacom_w9000.c       | 433 ++++++++++++++++++
> 4 files changed, 519 insertions(+)
> create mode 100644 Documentation/devicetree/bindings/input/touchscreen/wacom,w9007a-lt03.yaml
> create mode 100644 drivers/input/touchscreen/wacom_w9000.c
>
>-- 
>2.43.0
>

