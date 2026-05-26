Return-Path: <devicetree+bounces-302962-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBg7BRJrFWoBVAcAu9opvQ
	(envelope-from <devicetree+bounces-302962-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 11:42:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F33F45D3895
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 11:42:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6471F300683F
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 09:42:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABBC33D8909;
	Tue, 26 May 2026 09:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6yin3Kx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97CAA3D8101;
	Tue, 26 May 2026 09:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779788558; cv=none; b=OpcxWce+uDoz7Cs5cYKMJDp6jg6t8rGEJu0XUDxTPr1aKpftzNT1fPLCfY/rankn+D1q4zO505K8IgieMABjzLYu3ML/MBxytcoQu558Jaax7TOfRfByczVE4dfqC6kCQbiiRZAd43PNP3yebWF8PFmdxLJh4la2Zg9B983xBgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779788558; c=relaxed/simple;
	bh=rKNgA79MMeQk+bwc28f395YxJbYOZxdMNnULJfDhld4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TK6aegtlMXOVfF2+oSKsUqXfrZKR9m5udFELQ8vlIvBbPD9kp1U4CksGmf337TY/v1HBrnt6VhzSN67L2Gkao2MuFarw0eDGivI4WliM0XIPx9uQl1CJGa1CVDaM7j1AYiAoID0CxB2aYl/OD8O2lgMZTtXwgUPW0CI6fnF+R5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6yin3Kx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A75D1F000E9;
	Tue, 26 May 2026 09:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779788557;
	bh=69ANfIB+mPawv6oMTVRw25TJh4t4UGQi6U/dIsBgm28=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=f6yin3KxVaJ1jBemQnvmFo5AGKVub33e0kYifkfPT5EaW9nitTxB49akxonXsG8xR
	 PNe1OnsbXuGzS81XpSTVuYv0RK6twW7ryXfLJ+yAQ6stTyUfGrzXMPt5rq+PRY/QTX
	 0G3Af0VrE//lZh5p6pK20KeUN4qA3EaDNJCEHy2N9jfALuc7dB+uExNnL5KN8DfT1f
	 yhAtRTsh3W9THd1vqjwo6XYR58cbStkIAwXWO6SkfUMejByHUpM+jvAcXtKnbK5uFE
	 qvxyXLCfbmdgbE6hGJNuJnzQJJU8h1YLd6cr8eNo+/OB5F843RFOsV4H3CJDQ7eS3h
	 dG0gXfnRmzHyQ==
Date: Tue, 26 May 2026 11:42:34 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	=?utf-8?B?QW5kcsOp?= Draszik <andre.draszik@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, jyescas@google.com, 
	linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-hardening@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 5/5] arm64: defconfig: enable Exynos ACPM thermal
 support
Message-ID: <20260526-laughing-hissing-starling-7e088e@quoll>
References: <20260525-acpm-tmu-v5-0-85fde739752e@linaro.org>
 <20260525-acpm-tmu-v5-5-85fde739752e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260525-acpm-tmu-v5-5-85fde739752e@linaro.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-302962-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,arm.com,gmail.com,linaro.org,samsung.com,google.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Queue-Id: F33F45D3895
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 25, 2026 at 12:50:25PM +0000, Tudor Ambarus wrote:
> Enable the Exynos ACPM thermal driver (CONFIG_EXYNOS_ACPM_THERMAL)
> to allow temperature monitoring and thermal management on Samsung
> Exynos SoCs 

"on Samsung Exynos foobar SoCs" or "on Samsung Exynos SoCs (like
Google GS101)", used on "faz baz boards".


Best regards,
Krzysztof


