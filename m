Return-Path: <devicetree+bounces-274197-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oL34OhiLsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274197-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:32:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBA6266968
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:32:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9F5EE30848DD
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:26:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B02C03E1CE3;
	Wed, 11 Mar 2026 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="xDOC//x3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E8D3E1224
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 15:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773242753; cv=none; b=sfPUY5fO9xUY9Rl4fASSXTBKURvz40bGmQS6WtGuD0OngAM1O9zZCgmiZ9RlWXqJ2SpsbQmLaUK1yjxp5sETLz0qGi7HiGYTvKOe0l/HdW+SXtgmkWMZCR9MC0qhROXJSD1q7KU7tjr7hVLpX+YsIkc6NWbw5O34SQsT/Qde7ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773242753; c=relaxed/simple;
	bh=NS2aHt5ta7M08m+nCUfPiI1AZ2CXnUxzIfef4rJx7a0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=b33vuNB/gE/Pnbfmk1NOn+ZIDbAkVoUGmXQDmWHdal7aWmZtF2q+0i/nUnVa/nmvrUnEyK++1fy727Czfvbr28JbNETq+Z124F3AVILzOuB1dZFb5GszsRlwNg74mE18IeaYjm+q6e757KfRxHMA3mbODgeKZnQgYS3J/a/xKxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=xDOC//x3; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 3B5EEC41585;
	Wed, 11 Mar 2026 15:26:12 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E52D660004;
	Wed, 11 Mar 2026 15:25:50 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id BFF5710369D02;
	Wed, 11 Mar 2026 16:25:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773242750; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=zSKPonUvHb2gGCvampT9jeEKT/zJuf2nzMw6wtOz/9M=;
	b=xDOC//x34BBY+EUooh1GCSyL4ycYZBfdiCp3iNM9JpHbHVRWOdfkmpAlCSETbSgvBtxgzy
	2exGy0npd1UUVxfGn0Vzn2NvFr5Vd6LqawCWJKRIsvwbJvbUCtG4a83ntRUYfYM0+DBddY
	QlPfsWMUO2789p4xPlRfQaHTlBEJh1d1gFAZFqOBeBs7R8S9RLEt46OvMiOX/WK/1QffSS
	RxBkFC5OqJIIktO/Bwca33lESLUPsUbO1UHQ3edIFGBxARkvLnONp1Ld+Q7QcWowS84Y94
	ZPMJGnExMeHX+rd1LHEzqiK8pQY/ZvOdz/PQOn66d8FpInwaNOjJLzjMORCnbg==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Akhila YS <akhilayalmati@gmail.com>, 
 Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Conor Dooley <conor.dooley@microchip.com>, linux-mtd@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260225-perso-fix-spear600-smi-yaml-v1-0-8ef3d205ab3a@bootlin.com>
References: <20260225-perso-fix-spear600-smi-yaml-v1-0-8ef3d205ab3a@bootlin.com>
Subject: Re: [PATCH 0/3] Fix spear600-smi YAML conversion
Message-Id: <177324274850.685435.11462507375095087792.b4-ty@bootlin.com>
Date: Wed, 11 Mar 2026 16:25:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274197-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[nod.at,ti.com,kernel.org,gmail.com,bootlin.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:mid]
X-Rspamd-Queue-Id: 6BBA6266968
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 25 Feb 2026 17:24:42 +0100, Miquel Raynal wrote:
> Recent conversion from txt to yaml of the Spear600 SMI binding by Akhila
> lead to warnings. These are my 2cts in getting the yaml conversion done
> :-)
> 
> Cheers,
> Miquèl
> 
> [...]

Applied to mtd/next, thanks!

[1/3] dt-bindings: mtd: st,spear600-smi: Fix description
      commit: f9b2ac395d91fa974c0922bc949bbb6c8db58f3e
[2/3] dt-bindings: mtd: st,spear600-smi: #address/size-cells is mandatory
      commit: 88527c84fffe51a912f36eaf1b0ef11acbcff5e7
[3/3] dt-bindings: mtd: st,spear600-smi: Fix example
      commit: 0bfed8aaf864ec42a84bd68092923282d764136b

Patche(s) should be available on mtd/linux.git and will be
part of the next PR (provided that no robot complains by then).

Kind regards,
Miquèl


