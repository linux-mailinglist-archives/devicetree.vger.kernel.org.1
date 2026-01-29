Return-Path: <devicetree+bounces-261012-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEE9Oiaxe2mSHwIAu9opvQ
	(envelope-from <devicetree+bounces-261012-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 20:12:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A07B5B3D52
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 20:12:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 65BEB30234F4
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 19:12:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40BA5314A77;
	Thu, 29 Jan 2026 19:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="nbqWVRaW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF743128A3
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 19:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769713951; cv=none; b=O63P8OA8rgd5DmJYC8jdVD2lO5TQXZ5JG1dV95agOoIrFAI1/dN+K+sNZ4Oqvb1cFHa8mWbTIifeQkwSRXE7t/eeO4JnkgfDF/4CvumetMDkRmCSr/qIi61sy0/VyHuJ8SCyLz2AR3muGtqL4B4Uk5AYn3Gm43aQzRwcbDs5S4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769713951; c=relaxed/simple;
	bh=dSYnrzt7K0yLf0drxkPL5DDn4XBeQFzegSo8lkgGcDw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Kjs2EXrhCTv3x/mV+N6Pvm58pwoFp2aEs8sbFD92+oAJAvXTO/qSe/NQi2Jjcst9x5qCLqn2dpeyx2SFtbv2kAoIGKBCODSIgJJAvdSa0USCxoknbr2Wzusx5DrMFIOTE/YxS+MiHBG0vefcDn8pgEYP5WagAkp9ynDdXuDG2fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=nbqWVRaW; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 576CF4E42326;
	Thu, 29 Jan 2026 19:12:28 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 2453160746;
	Thu, 29 Jan 2026 19:12:28 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id EBBE9119A880F;
	Thu, 29 Jan 2026 20:12:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769713947; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=G+qpvlG2xrJTTZN1oTAH5PVb1bJNZhMGlBHpdOodgpM=;
	b=nbqWVRaWs2v1U+/1dC5sgiAiZvRkOvIHFBdDbmLZ2sqq1yR9oQnld2/x+VwZ+XVCcN5WuH
	XhVGT1Ulrl8w0HDxGUBuSi+n95sZwvgvGRqksDL7Zdr8CtEUJIZK6yvllYYUCFiZ+ZD/+y
	zD6xHt0YHvtZuwWCO31rE5G1/ZDrGyioXV8h58lfbcrDj7Z2lQKQzo4qcwOpHd1q3wgVXx
	PXs7lqRHka7PW1lFQ884i9Ms71Wz+6hjlb75iqpl0AhQc/q2M8JsL+XogUY5r6Cu8fvq0Z
	zVHbGJ+mVmau2LHomnym4y4WAfht4rvIUg3WGdhe5ij3aPHeG+om8vThOILZ5w==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mason Yang <masonccyang@mxic.com.tw>, 
 Akhila YS <akhilayalmati@gmail.com>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260128-mxic-nand-v3-1-c61764e85f60@gmail.com>
References: <20260128-mxic-nand-v3-1-c61764e85f60@gmail.com>
Subject: Re: [PATCH v3] dt-bindings: mtd:
 mxic,multi-itfc-v009-nand-controller: convert to DT schema
Message-Id: <176971394479.256159.17492450215654905937.b4-ty@bootlin.com>
Date: Thu, 29 Jan 2026 20:12:24 +0100
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261012-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[nod.at,ti.com,kernel.org,mxic.com.tw,gmail.com];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:mid,bootlin.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A07B5B3D52
X-Rspamd-Action: no action

On Wed, 28 Jan 2026 15:36:12 +0000, Akhila YS wrote:
> Convert Macronix Raw NAND Controller Device Tree binding to DT Schema.
> 
> 

Applied to mtd/next, thanks!

[1/1] dt-bindings: mtd: mxic,multi-itfc-v009-nand-controller: convert to DT schema
      commit: bcf8e207624d044a060ac4c6f9861f34ade41ca4

Patche(s) should be available on mtd/linux.git and will be
part of the next PR (provided that no robot complains by then).

Kind regards,
Miquèl


