Return-Path: <devicetree+bounces-275651-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id LA3FLf0wtWn1xQAAu9opvQ
	(envelope-from <devicetree+bounces-275651-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 10:57:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 046AE28C8F2
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 10:57:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 151FA3031324
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 09:57:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9D7E2F28EA;
	Sat, 14 Mar 2026 09:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVSSodaN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 952C61C3BEB;
	Sat, 14 Mar 2026 09:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773482233; cv=none; b=hakzcYGK6B+pjfDROBO9KpnSQDMnIKpwIVn1iaNG56ZIRPy9UK+rTCghSE9/+5ZJJe308cVS5Kai6hMRtFXX2YObFlr+Xm8lX8zeebYKkv2kEL7D9Z2tiKudfMzXK8H4pS0PW8mVJQmZO01zZzyNf8RGu8XzwCC8QDmhuTZPoCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773482233; c=relaxed/simple;
	bh=09501woOjD4eRvQIVfFayJgg97/evg9zfkOZpWm9MNE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Whu5yxtHqbvErheT+Xwn0wANU7gfY53C5XccchAeWCQzoEjBycuqhrtF7jbw7CHt9Vd3YMBAlRBe2SPthzbH4tlWMVV8K3KHQY3SkqrAMJ78aVnHWZL7++DtkQ/c/JXLxtjj18T92iq/hDIx5j/+h8hu/0nslakBUuBENHp0brQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVSSodaN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7CB7C116C6;
	Sat, 14 Mar 2026 09:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773482233;
	bh=09501woOjD4eRvQIVfFayJgg97/evg9zfkOZpWm9MNE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oVSSodaNypOctz3Mvmnd4m3SlYGxQE/t7pz2EmL+ekBbsI8GAUgRk/hRn3ByvAs5h
	 z96k502Vg26VrEEjdeLNXzFpsFaVtw+cPF/ee/0TB4DnKCBLzWsofCPZCQDocZjw2i
	 aAzw5IGMS31SQ/YpxVEWoBlNI2u/fi6bUfzd8JbDQC44gw8GQvkmEdRTTjFRbBOCOV
	 ROSCW8bRdrJFoQU63HvNxr9Fs/isKEgTtxuOS9iAgpkr987lhafcYjrM7N9gPtCu/y
	 FLDyZxl7iYBXOmUywr7KkkXsqAEFhVN8h4rVsuiAkq/61mdQvIMikddfjxx/4PkzKg
	 pbz9bDnElBTNQ==
Date: Sat, 14 Mar 2026 10:57:10 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jian Hu <jian.hu@amlogic.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Stephen Boyd <sboyd@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, robh+dt <robh+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree <devicetree@vger.kernel.org>, linux-clk <linux-clk@vger.kernel.org>, 
	linux-amlogic <linux-amlogic@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, Ronald Claveau <linux-kernel-dev@aliel.fr>, 
	Ferass El Hafidi <funderscore@postmarketos.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: clock: amlogic: t7: Add missing
 mpll3 parent clock
Message-ID: <20260314-splendid-thoughtful-ostrich-c211dc@quoll>
References: <20260313070022.700437-1-jian.hu@amlogic.com>
 <20260313070022.700437-3-jian.hu@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260313070022.700437-3-jian.hu@amlogic.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-275651-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[baylibre.com,linaro.org,googlemail.com,kernel.org,vger.kernel.org,lists.infradead.org,aliel.fr,postmarketos.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,amlogic.com:email,qualcomm.com:email]
X-Rspamd-Queue-Id: 046AE28C8F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 03:00:21PM +0800, Jian Hu wrote:
> The mpll3 clock is one parent clock of the sd_emmc and mipi_isp clocks
> on the Amlogic T7 SoC, but was missing from t7-peripherals-clkc.yaml
> bindings. Add the mpll3 clock source to the T7 peripherals clock
> controller input clock list, so that sd_emmc and mipi_isp can use it.
> 
> For logical consistency, place the required mpll3 entry before the
> optional entry.
> 
> This change breaks the ABI, but while the amlogic,t7-peripherals-clkc
> bindings have been merged upstream, the corresponding DT has not been
> merged yet. Thus, no real users or systems are affected.
> 
> Fixes: b4156204e0f5 ("dt-bindings: clock: add Amlogic T7 peripherals clock controller")
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  .../bindings/clock/amlogic,t7-peripherals-clkc.yaml  | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)

This should go for current fixes cycle and your cover letter is silent
about it, while patchset combines fixes and non-fixes. You clearly don't
care about maintainers time for deciphering all this.

Well, not my problem.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


