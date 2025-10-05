Return-Path: <devicetree+bounces-223706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 333E1BB9B44
	for <lists+devicetree@lfdr.de>; Sun, 05 Oct 2025 20:51:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 69F984E2046
	for <lists+devicetree@lfdr.de>; Sun,  5 Oct 2025 18:51:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39B351D9324;
	Sun,  5 Oct 2025 18:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="LpQp/mGI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B196719F135
	for <devicetree@vger.kernel.org>; Sun,  5 Oct 2025 18:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759690302; cv=none; b=QDA5mBgSh9cqYT21G2Pww9uWSw+z61r9t4mV4bVyeHWG67215KpTZ0L0Jqg2ywQGESALb+hOSMdXIgZqAk61iy5jcWrJFHeQcpwL0t7Z++1wLHaWu/a0iHpmuQF8XiwaAn4o59JR+NIR4YNyk/Bua2vp2kmUbFQ4shIKaa/1AK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759690302; c=relaxed/simple;
	bh=IUKD0+ADU4UnQEpeie5i0GKKyLwSoueCoB/MShZDZq0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j9mufHACNO6bItJWBqG2QYG5LaIz/iQzUZ86R7v1yS33Sxfy5I9ihhET5DE+cJhBU+vHYTwLZVU4a3G+Mm21vWJinR1+27Lyox/c6MZAQ+J3UOi5g6ToIGpxiBezjGigGEPy4hiLz8fM7SSL8iwss1Y6fwb3p/P0kLv3/TGTXzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=LpQp/mGI; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id EA42B4E40EE3;
	Sun,  5 Oct 2025 18:51:30 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A21566065F;
	Sun,  5 Oct 2025 18:51:30 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 65431102F1D0B;
	Sun,  5 Oct 2025 20:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1759690289; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=0RLcbxdoO8qQhFouwp+kCoEbahNiZlchBj+VX9oB1Fk=;
	b=LpQp/mGI5WwFk0At2y2/u8JJ+/2xkPOBQ/h7gGRR1ef3XjmEpoAmWOJ2ySi1P71ZIFLbLz
	w7EhzRO9a0ZuHF7m1ca3HHZD2mqJpqULCGTvj9FHujk/FwjnfsF1z3MHEuzigqabs0XMEF
	uJs4yyyGxqnyAAdbJsBSmIPZpXu6Eg8rTceGZvLHg1enT6SjG4m8wYNiWx5CdxvdecvuV9
	7pvY/MLAv/SsH6qWqTt7wB77w+uZsfFe4qGhafFYxphk2TXpaENc5Fy36ncyE+jJIKB0Ia
	yKGiCCJdA/7mtrxfTTgGz0MVweyL9ccN6SWBKD9k9KtFr+gYdSunwnTa7YE6uA==
Date: Sun, 5 Oct 2025 20:51:25 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Khuong Dinh <khuong@os.amperecomputing.com>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: rtc: Convert apm,xgene-rtc to DT schema
Message-ID: <175969027436.3719968.15009798867106471646.b4-ty@bootlin.com>
References: <20250924222848.2949235-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924222848.2949235-1-robh@kernel.org>
X-Last-TLS-Session-Version: TLSv1.3

On Wed, 24 Sep 2025 17:28:46 -0500, Rob Herring (Arm) wrote:
> Convert the APM XGene RTC binding to DT schema format. It's a
> straight-forward conversion.
> 
> 

Applied, thanks!

[1/1] dt-bindings: rtc: Convert apm,xgene-rtc to DT schema
      https://git.kernel.org/abelloni/c/a6b4f791cdc5

Best regards,

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

