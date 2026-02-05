Return-Path: <devicetree+bounces-263035-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHxmNZGfhGmI3wMAu9opvQ
	(envelope-from <devicetree+bounces-263035-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:48:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 37ADBF3848
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:48:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 23B67302834C
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 13:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDE2B27BF6C;
	Thu,  5 Feb 2026 13:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0MuPVnN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABA8427B327;
	Thu,  5 Feb 2026 13:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770298907; cv=none; b=Opfn7ELJ/2kSZU0xkON7M/tPpe95qAqwgWJKJlZWRR8FFg7U2s9RjzizuneKWisGgc+o0bieRnZHGDXW99ydGPk0Be84dl0/8VJDSOq+TVaOazhzXsFK6lqugw1uNRtZjZiSijfLUJadnqWXoJBdMg/RATstD+TC+GYY2PLaEYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770298907; c=relaxed/simple;
	bh=h/0f6IHIRl3KzkE+VibV3iXdj0Ot3OIt2aNCM9AKpCs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eB8PQKLY4QOfnNnEHucAsd01M29q8xeFwZ80zMDD9i+PHXnycKtSCLNKccJrtfU4zKpVfQg52cUM/RukadIUAx8gOw4+/yNfBdelLSEL56SMbPg/O3Ls4dBbWOxdnnySKwsxM0lrMqQnH+969opRj0iXFKvbw3WFDC4+zHuVa7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0MuPVnN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B07F9C4CEF7;
	Thu,  5 Feb 2026 13:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770298907;
	bh=h/0f6IHIRl3KzkE+VibV3iXdj0Ot3OIt2aNCM9AKpCs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m0MuPVnNrqg/2+MvKDBgb63TgThWKBU+/xjrf1fcjI4cjGwQgiEe/lpswS+sf9yAW
	 ywCg90rvw5WN1vzqQz/I2IS/7dAjZomAsT6LTAFjkulU9t2q+lAjrIjSqN4l8syPFr
	 DypZ+QiSTtFb/EvP3nN9NaYtJR6WSeyr2quuJ+zhAKXq5pL67oT4Q4FZM2rDWX1FQB
	 swBJUWuyU69OKHVc0oXkKSF8vaCFtirPcouqluRCgvYvWyYuzlDwddGPiMNtrRaoYy
	 MCFEU8VmpHiuibTZZ6sd/hrr3F4HnxlxZ6RIuZayb2huEClqEW1E0OTr2GnH1KHrHi
	 lGPD26whhHhMw==
Date: Thu, 5 Feb 2026 14:41:44 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yulin Lu <luyulin@eswincomputing.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	ningyu@eswincomputing.com, linmin@eswincomputing.com, fenglin@eswincomputing.com
Subject: Re: [PATCH v9 1/2] dt-bindings: phy: eswin: Document the EIC7700 SoC
 SATA PHY
Message-ID: <20260205-pretty-pheasant-of-focus-64c1ea@quoll>
References: <20260205082009.1780-1-luyulin@eswincomputing.com>
 <20260205082129.1482-1-luyulin@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260205082129.1482-1-luyulin@eswincomputing.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263035-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[eswincomputing.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 37ADBF3848
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 04:21:29PM +0800, Yulin Lu wrote:
> Document the SATA PHY on the EIC7700 SoC platform,
> describing its usage.
> 
> Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
> ---
>  .../bindings/phy/eswin,eic7700-sata-phy.yaml  | 92 +++++++++++++++++++
>  1 file changed, 92 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


