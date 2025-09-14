Return-Path: <devicetree+bounces-217089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 700AAB56CF1
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 01:18:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EDFC27A2C10
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 23:17:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18BA423A9B3;
	Sun, 14 Sep 2025 23:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="RZ9cWh74"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA80238D54
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 23:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757891924; cv=none; b=tv7YbOjEsaiEael4h8i4vQHWa7sW608pMNyNfvSwAXrcWU9wOz3XOD25o1+3lhr0hOmUMiXnUY+MqynzivtOYPnS4odsjl01pkon8MEYmneqCkwAcMs3zxQCM5UwTiN+7VUxW21UyejhqLaQvMYyw+yn1Bt/D7/FjiA/ueQzfrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757891924; c=relaxed/simple;
	bh=owoiE2+a0fU7T7scY+nSlS9EWC8wWpLinLlp5irhkjU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JfXpvc4TeYpKB69a34PqbqGZv0MrMYDOiG2ZafIgpQ5fWe854imIEOMX/+dOizBtU6sQVDs3P8a5cS2VYFCp1HtpzYZPSeY7Y7ziimP6v/lfYJ6XogctshUohq70N8nPBAq7SrYpZGOdarbuLIipSKoDOtNG9SLu1to95wPN47o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=RZ9cWh74; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id C526E1A0DFE
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 23:18:40 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 9C57A6063F;
	Sun, 14 Sep 2025 23:18:40 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8D2C2102F2A7F;
	Mon, 15 Sep 2025 01:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1757891920; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=InLhKcpHVNtmYglLzf2fc/rNJemJ2rA9lGwWtAsypig=;
	b=RZ9cWh743rTTOxfOLdk+PNt2Of0Clc1T79o8UcLKlrv6BLHnVsrns9prVgwCGTz8vmN5XQ
	I4YQtlNiMyGwX+7PO715nxQoJ5oCnlgiyF8aMykNLwmO0aMuddqQ/JJ9JJxflWH4v6zjrT
	JyYKBV6ko25K2wOXiS7wOViZH1HiOWukEKmjR1HOQvnZebgGZAP9RuLKMLB5k7moC+DyNF
	diAnolqfFV1LDlJ2mifyh+GICgK/LCBl9Q/QgbuTjvoFoi8065TtqavbXL5IfH0/C6QNmC
	23/ZrU9CdspcRlkFBSbxD7UnO0bREq8NbIXVxOFr8Pb0PJnu3Kd25XHzykqL9w==
Date: Mon, 15 Sep 2025 01:18:39 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: rtc: Drop isil,isl12057.txt
Message-ID: <175789183738.411954.733036125801814924.b4-ty@bootlin.com>
References: <20250807214414.4172910-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250807214414.4172910-1-robh@kernel.org>
X-Last-TLS-Session-Version: TLSv1.3

On Thu, 07 Aug 2025 16:44:13 -0500, Rob Herring (Arm) wrote:
> The "isil,isl12057" compatible is already supported by rtc-ds1307.yaml,
> so remove the old text binding.
> 
> 

Applied, thanks!

[1/1] dt-bindings: rtc: Drop isil,isl12057.txt
      https://git.kernel.org/abelloni/c/5eabddff9168

Best regards,

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

