Return-Path: <devicetree+bounces-297028-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AI6lJrC/BGoeNgIAu9opvQ
	(envelope-from <devicetree+bounces-297028-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 20:15:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 85858538B6D
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 20:15:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 84D1C3004426
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 18:10:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26D753A6F03;
	Wed, 13 May 2026 18:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ln6ZLe3K"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0161530BB97;
	Wed, 13 May 2026 18:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778695821; cv=none; b=MlYonlqNiEYTHFb3x1TDjJ2+kW83ttgqJDQF2xS+mArEluMeerXA1KZHglYWRYT5N2neAXgy+YxTX3NNhtkY+NLpJW0X6PP5vi8lbz0Ks0+oDlORTvhsUMi9ku+tPnnNSpX2BXIG97kz8RIDr+eJ2uc9nfgQ4dBk/uQaOHzNrnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778695821; c=relaxed/simple;
	bh=rjptUTlU6uw4Q7UJWj4oLaAslV1IKlStqAiRz3zNv5M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XVh70PJpk4KfZZeE3OPVJQmY8d26vsN1ONKTEJQ13z7Dn0iZczL10Wpmf9te++5p/CmdQiqf9a36LaBAQ7c9CUBmz5gSL/YNcTEzi5tJT0l7a2DTc9ys8GMr+ek0kUdmoB/6ovScTLWGi8vh/o8xqP2jzOdu958saLAuy14KZFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ln6ZLe3K; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24D52C19425;
	Wed, 13 May 2026 18:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778695820;
	bh=rjptUTlU6uw4Q7UJWj4oLaAslV1IKlStqAiRz3zNv5M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ln6ZLe3K9Twb2LuzMfGvBjWH37oQkOUDFKNSaxnCbj/2CRgQDY1l+F/EB6QRGDs5e
	 62hFuqrs+isRBzq/vpR+CBm5EEfMKUMEjHWv8dgafeY0Y2TBfi1SpYwhkSlmQ89PLN
	 +1pCSph0OmCqoTV1TQ62KoaMk0yrNLAf9uyfrfzQSGSDOTi8DsIHKQut7msZVyZUnD
	 FawpmSzd8mfHHM4ILuP7Jo9yxbRjdOlDH9FjDZjs0yQ8cFC5bKHaYuFUUYUGYOaDtS
	 iUEmdtRAfrRIAUQcfducLlZsMrM87v+/BxkC0PDMH1aHXjQj3aafD3XyObicWGJdwC
	 T0yglm9BsV0xQ==
Date: Wed, 13 May 2026 13:10:17 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
	KancyJoe <kancy2333@outlook.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Subject: Re: [PATCH v4 1/2] regulator: dt-bindings: document the SGM3804 Dual
 Output regulator
Message-ID: <177869581639.1513411.6444118271420082730.robh@kernel.org>
References: <20260506-topic-sm8650-ayaneo-pocket-s2-sgm3804-v4-0-7495e7905693@linaro.org>
 <20260506-topic-sm8650-ayaneo-pocket-s2-sgm3804-v4-1-7495e7905693@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260506-topic-sm8650-ayaneo-pocket-s2-sgm3804-v4-1-7495e7905693@linaro.org>
X-Rspamd-Queue-Id: 85858538B6D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,outlook.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-297028-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:email]
X-Rspamd-Action: no action


On Wed, 06 May 2026 09:34:06 +0200, Neil Armstrong wrote:
> Document the SG Micro SGM3804 Single Inductor Dual Output Buck/Boost
> Converter used to power LCD panels a provide positive and negative
> power rails with configurable voltage and active discharge function
> for each output.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../bindings/regulator/sgmicro,sgm3804.yaml        | 77 ++++++++++++++++++++++
>  1 file changed, 77 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


