Return-Path: <devicetree+bounces-258057-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 1B6xM/EMcWlEcgAAu9opvQ
	(envelope-from <devicetree+bounces-258057-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 18:29:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB065A89D
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 18:29:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5BC3846C215
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 17:00:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 583263BC4CA;
	Wed, 21 Jan 2026 16:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pxe5dpW0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E979330D36;
	Wed, 21 Jan 2026 16:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769014292; cv=none; b=HVgbesU8MpvxS6gvZD1h15YndJMQgb/zWyBXMdaVGzItfP3eAP9dwl8CDMGE3T4Bt/SYBdN21Xv6mDlycnZZEoP7PtA0Frpon/piKDvTqbbh0XwiggOZJXpMRB+2GnULhB9Rf+qEL2qb73BIOyWFe2cYjifp6FIO8MVpb5DSoRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769014292; c=relaxed/simple;
	bh=OD2weKQVu5afNnnaJHsVFj6sjP31I+KsXAHkql5SBio=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JFxy3kYIViOZOBSaD4JEA+kDqRHcXGaWwXMoKRS5nnCav63s0gljVcXEGVrM5ssbdrwWY13FOijNOdsZeXIm5hWCVXgLO3zORdtJDO5CaKo5eSvbMwLF1DXKCdqn5QjWiTfZLYpRbbyPLybV0w3FYTH9OR7dgKBKeWCyAkwSki0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pxe5dpW0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAEE3C116D0;
	Wed, 21 Jan 2026 16:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769014292;
	bh=OD2weKQVu5afNnnaJHsVFj6sjP31I+KsXAHkql5SBio=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pxe5dpW0oV7Fx/KuG/gqoY+j0avJFpVC5BnGQS2ndGimBq9yonpL9y3R0BBJdjDmd
	 DqIUk375l2m8leReV4e0PWxAf6FnKbdJiKgqEPpcWrqt9TodnFFi4koktffWlY4d35
	 3OGz1/3lYObDwke9GTNIuh97Od70tes/vONMugxRMq+dkFbtAeXAGp8Akha4Cb1WSh
	 WKlhMECAHKPKVHn6ZrTLo6KZzofQzh9dL37iDoDbtslHAvqhZFan/Ktx5J3GCExbjY
	 XGzQ8R2HcMj5RIKvk5YLNK+1QhUG/nZzVjD7LgocOGhND1obOHGl41Fmn3XwShNRA5
	 5n8Xfg/FjNtlw==
Date: Wed, 21 Jan 2026 10:51:31 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Marek Vasut <marex@nabladev.com>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	linux-stm32@st-md-mailman.stormreply.com,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	kernel@dh-electronics.com, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Amelie Delaunay <amelie.delaunay@foss.st.com>,
	Raphael Gallais-Pou <rgallaispou@gmail.com>,
	Christoph Niedermaier <cniedermaier@dh-electronics.com>
Subject: Re: [PATCH 2/3] dt-bindings: display/lvds-codec: Document OnSemi
 FIN3385
Message-ID: <176901428941.3446132.15166576906093812833.robh@kernel.org>
References: <20260121085347.10368-1-marex@nabladev.com>
 <20260121085347.10368-2-marex@nabladev.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260121085347.10368-2-marex@nabladev.com>
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258057-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,gmail.com,st-md-mailman.stormreply.com,foss.st.com,dh-electronics.com,linaro.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 3EB065A89D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Wed, 21 Jan 2026 09:53:20 +0100, Marek Vasut wrote:
> Add compatible string for OnSemi FIN3385, a FlatLink LVDS transmitter.
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
>  Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!


