Return-Path: <devicetree+bounces-279710-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMvmLRhfwmmecAQAu9opvQ
	(envelope-from <devicetree+bounces-279710-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 10:53:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2DE305F54
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 10:53:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A922C3140A14
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 09:42:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD3BA3DDDBF;
	Tue, 24 Mar 2026 09:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzEyOhdw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 887803C9424;
	Tue, 24 Mar 2026 09:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774345327; cv=none; b=K/CoKVv+W1d4buZ+l1mAHjk4mOuprm6MtIttsv+WvHXmeh8alW6566cyZhXgEKEqlOIGnHkdreQVam9mBzKMzHqWUPpr2JAuV2i9UQuRU2zzWFU4mofFTILhcMiHMB6pXuGuEQZoEms2jMd3GxJMHuzxWYdgAtDjELCRVK2e9uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774345327; c=relaxed/simple;
	bh=w1b6t/WZFJinFZolBARj9oLa4QRP/BXtqXTJ/gXtkSI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HqZ8kusY5/lfWxlKY5eUPfJlBdjeOtW361x95QTvpVJJYxeXgi98Np8gin7czFVlm8G0isBxDcTO/6G11b+q15VVscCSJ3Qy6ACYzVHKA5DWm9VPPaZ85bfmx6nHWvnIFOfSDtHOABVKJ8xyWin0gS/dE53RnfF0OK/jRvzNgYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzEyOhdw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A3AEC19424;
	Tue, 24 Mar 2026 09:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774345327;
	bh=w1b6t/WZFJinFZolBARj9oLa4QRP/BXtqXTJ/gXtkSI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WzEyOhdwxgQz/aZB83aAAqtgug/qNEdW48kuM+517X+KGio6CfBkWpfWU59DdffkC
	 le0xmNP4iHOLh+mhqpdvtgQgXt0ULpkEb2mxjpdgEQ2OT+kj7JKQAHnFLagLbukRBf
	 iAck0oix3Z4AM5lGloysyfA4OSIGCR75xyoScmYYrEmiwSxXJyAZPqVNRmxSblu+D3
	 WOAovnvACHyh6hViLEzVgTPC/zhini8LawFJvprnoL4HMHYP6Z+w2kgK0HUVvdqYE+
	 jgNX3Cn0F11C0HQfXC5WEkRFk56RqeRmbEcao7rI8r0s7KHy3MUV1HqRZWTSL8s3T7
	 M6av+VJZY62yg==
Date: Tue, 24 Mar 2026 10:42:04 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Bhargav Joshi <rougueprince47@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	xuwei5@hisilicon.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	ulf.hansson@linaro.org, zhangfei.gao@linaro.org, linux-mmc@vger.kernel.org, 
	daniel.baluta@nxp.com, simona.toaca@nxp.com, d-gole@ti.com, m-chawdhry@ti.com
Subject: Re: [PATCH 2/2] arm64: dts: hisilicon: Rename dwmmc nodes to mmc
Message-ID: <20260324-jovial-ruddy-oarfish-5dc8d8@quoll>
References: <20260323194400.22886-1-rougueprince47@gmail.com>
 <20260323194400.22886-3-rougueprince47@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260323194400.22886-3-rougueprince47@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279710-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1C2DE305F54
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 24, 2026 at 01:14:00AM +0530, Bhargav Joshi wrote:
> The core mmc devicetree schema expects mmc controller nodes to be named
> using '^mmc(@.*)?$' pattern.
> 
> The legacy Hisilicon SoC files (hi3660, hi3670, and hi6220) previously
> used the 'dwmmc' prefix for their nodes. This caused warnings during
> dtbs_check.
> 
> Rename the 'dwmmc' nodes to 'mmc' to comply with the standard schema and
> dtbs_check warnings. The legacy phandle labels are kept intact.
> 
> Signed-off-by: Bhargav Joshi <rougueprince47@gmail.com>
> ---
>  arch/arm64/boot/dts/hisilicon/hi3660.dtsi | 4 ++--
>  arch/arm64/boot/dts/hisilicon/hi3670.dtsi | 4 ++--
>  arch/arm64/boot/dts/hisilicon/hi6220.dtsi | 6 +++---
>  3 files changed, 7 insertions(+), 7 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


