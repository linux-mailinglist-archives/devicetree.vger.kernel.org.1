Return-Path: <devicetree+bounces-258056-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFnkCVYicWkPegAAu9opvQ
	(envelope-from <devicetree+bounces-258056-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 20:00:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C005BB3B
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 20:00:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 03E6662CB3E
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 16:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7E06340279;
	Wed, 21 Jan 2026 16:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubIr1egX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 868C533506C;
	Wed, 21 Jan 2026 16:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769014121; cv=none; b=epVablOlmp8+gKWgI+MQArCav8k0Rq1czi+I8BSqrnXKmrVwTMPwmtHoz+Bw84Mx9Qk/9ptlRG2m3TSnxRI2mii2Q2hdvX62PQib/2sqK8Ufow/URzet0SdR5RMQHMO6pL58L2R2i5H4XDFK9Zo74Vmnqso91DKC5HpGnxie+as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769014121; c=relaxed/simple;
	bh=viQ/ZjRt2/nAfrGtn9g7M0a5Fvjd270JBciUGtEbosg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uPEt4SNBhvHg5gjg9ho8lDvUUGlGkBQ8X9Ejq5PX7dN3Q4VvKKU6t0Toy3o5QksvN3USoTlpSUxIHMzqgtBEtWDk3lZBkKi1yFM946bY3zUNUEKsOBzHmw7ybOj48RSUlbw0OxBOvtr0qC5NNEUr/xQbiD0yJmerx1402HepPJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubIr1egX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB832C4CEF1;
	Wed, 21 Jan 2026 16:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769014121;
	bh=viQ/ZjRt2/nAfrGtn9g7M0a5Fvjd270JBciUGtEbosg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ubIr1egXRauYdq4ec44596HfpRg5ku9y1x9TzbovE2AagaVSENR+ncZr1bA1UhFdC
	 3p7yYIKSC+ad4KTO+u+obOZxKQJ5wNb44iBPwbNCuR0T2WRaSVOzEQHQhKdNe4FsdT
	 skmfH1rZgTgTpuZBgE852h/QsplWhnnBoGHd2AwY7m/JjVhcWtV6FhrIdadtA+oK/s
	 0pBNmdaywpsBdU7IlxX2N9GFEXzsPTKoD40EKD+unUyV2rfJQB1Gk3vp1hh6GtGO9y
	 LFK+mjqKybMyiyGjm8zZWfdVk6Tqp0p0KbeaVIglfRX3VhXRKR51fBA1wK25/tEgK4
	 kBYOCdhYNU5+A==
Date: Wed, 21 Jan 2026 10:48:40 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Marek Vasut <marex@nabladev.com>
Cc: kernel@dh-electronics.com,
	Christoph Niedermaier <cniedermaier@dh-electronics.com>,
	linux-stm32@st-md-mailman.stormreply.com,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Raphael Gallais-Pou <rgallaispou@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Amelie Delaunay <amelie.delaunay@foss.st.com>
Subject: Re: [PATCH 1/3] dt-bindings: eeprom: at25: Document Microchip
 25AA010A
Message-ID: <176901406635.3440858.3601461880570246394.robh@kernel.org>
References: <20260121085347.10368-1-marex@nabladev.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260121085347.10368-1-marex@nabladev.com>
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258056-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[dh-electronics.com,st-md-mailman.stormreply.com,gmail.com,kernel.org,vger.kernel.org,lists.infradead.org,foss.st.com,linaro.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: C5C005BB3B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Wed, 21 Jan 2026 09:53:19 +0100, Marek Vasut wrote:
> The Microchip 25AA010A is a 1 Kbit SPI EEPROM with 16 Byte page.
> Product page is at https://www.microchip.com/en-us/product/25AA010A
> 
> Signed-off-by: Marek Vasut <marex@nabladev.com>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Amelie Delaunay <amelie.delaunay@foss.st.com>
> Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Raphael Gallais-Pou <rgallaispou@gmail.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
>  Documentation/devicetree/bindings/eeprom/at25.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>

