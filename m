Return-Path: <devicetree+bounces-256189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AC4D33770
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 17:22:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 93FF9302BF6E
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:22:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35ACB34403E;
	Fri, 16 Jan 2026 16:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="itHa9A2Z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B429F189BB6
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768580542; cv=none; b=DXBCxVOCnB38ooqiBJtv5PXt/OnVsL9iqzXrkfCG2mHiJ7JmPw5O63Taqqq4S7LQffnICg9OjNSpiDF3ByThCFEzo1rIT+XiI3LTmo6O6ze3Xtpfpbz4m3IawNhmyC2476t0I2GpIrfJ+qB6hU2dHKF2L4/2aRuYpdEw/Dl7kIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768580542; c=relaxed/simple;
	bh=S+mUIA1lGIO9jDEh8LKBbnwFtjaSLNqZN0j+RsLAtmA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=quANUWBKeMzEmMPbzAokg+lBXMdwyzqcxfD5KmJWNelub19qfqH+nsaipk7VOUa1WlVnM3dHrtWqlIkPZGoRfgbvgifSiu8OByL1a1dL9Q4LejHhpiHJkSdA10I5e6fntS8x14228rIBf1AYsBWG8zJIhcAbv+/rz8PCYLX7ZYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=itHa9A2Z; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 429144E42109;
	Fri, 16 Jan 2026 16:22:18 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id ECD21606F9;
	Fri, 16 Jan 2026 16:22:17 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C4EFF10B68C2D;
	Fri, 16 Jan 2026 17:22:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1768580537; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=8rG4nCVgnD6kuNMUKbQR/uZ6kGwE2W5W6cqCnY2AlPA=;
	b=itHa9A2ZiXydeMqkMXo+E63AeoIfZ/JkqyGMdqHMmZApHW4bmHHB9qyUncE7BEfZxcyRtB
	j0k53GkWouCLZN6PTwx+J0ljcA6J6XyjdFffxTgfceyOl4/ChcHBr1rlHndYbqVVsRPfTn
	GS4XrX15Y1RoN452W8nhgHKwQLvyDnuzqYPKFtRCvoPOqyQgxQzwQ9roB4kU/3SSwoU8J0
	9+eaGbD6weOFhsSfxLbV7abmP6YFRwzBfJ8nq7Xozm4qrw/m0C4Au3exVkOHVCe8LFnAEo
	uW/OwSGjc2Oa/FNT4hCCePTk6SM/1ZG/zRDNAJ8KlPLcaqZ8ko5A3qOjp+bjxQ==
Date: Fri, 16 Jan 2026 17:22:10 +0100
From: Herve Codina <herve.codina@bootlin.com>
To: David Gibson <david@gibson.dropbear.id.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ayush Singh <ayush@beagleboard.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 devicetree-compiler@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree-spec@vger.kernel.org, Hui Pu
 <hui.pu@gehealthcare.com>, Ian Ray <ian.ray@gehealthcare.com>, Luca
 Ceresoli <luca.ceresoli@bootlin.com>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>
Subject: Re: [RFC PATCH 18/77] dtc-parser.y: Avoid an empty proplist
Message-ID: <20260116172210.007b9fe8@bootlin.com>
In-Reply-To: <aWhEG0GQp04wjcLs@zatzit>
References: <20260112142009.1006236-1-herve.codina@bootlin.com>
	<20260112142009.1006236-19-herve.codina@bootlin.com>
	<aWhEG0GQp04wjcLs@zatzit>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Hi David,

On Thu, 15 Jan 2026 12:34:19 +1100
David Gibson <david@gibson.dropbear.id.au> wrote:

...

> 
> I think it makes sense to apply this on its own before the rest of the
> series, but the commit message will want rewording for that context.
> 

I will do this rewording and I will move the patch at the begining of the
series in the next iteration.

Best regards,
Hervé

