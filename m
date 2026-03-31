Return-Path: <devicetree+bounces-282792-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDF6CS9zy2k3HwYAu9opvQ
	(envelope-from <devicetree+bounces-282792-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 09:09:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 86139364CEC
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 09:09:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 955993078C37
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 07:05:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54A803B7767;
	Tue, 31 Mar 2026 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUA6qHvD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D503B6C11;
	Tue, 31 Mar 2026 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774940753; cv=none; b=iQsvj3edFlgeQWykvIEOFvR4ZQ+sWIO9ZUPo/jMS9Dze2rWUyn4AOAGxeD7l4i+lflWc05hQj+M1N61Iq0Ld5vDn7NYsHBEGFvEv7vFyz2wdpauK+g82BQJ1ZYB3EX5L2mGx+hQ+y9hGCtwlo8E6+pleyxU6vyQhqJj6tPKY3TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774940753; c=relaxed/simple;
	bh=KFUGUbZlt5y+7LRJYgMDfqipV4WSv3ujjJvVX13vUJU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DhNeWrq+MAtfRVCrCMqcAXyhJINfqD/ke/AH09WhiYD301r2LCAvf3ilZQCLhEo5R6BXvKlemZE7kHG4VaJHgL28h1p911atEti/7m91Bq73/xLkInsWZpAMdZO2xtYvAGj3B/NeTDXSN1iww9j5+lbF2HlsHWUO9b1z54c1Y7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUA6qHvD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D92AC19424;
	Tue, 31 Mar 2026 07:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774940753;
	bh=KFUGUbZlt5y+7LRJYgMDfqipV4WSv3ujjJvVX13vUJU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GUA6qHvDM2laEodb0eD4IOrmcC3rZGCMCM+flk+jlLkIo2VcLP64tcx3DMHoHWtmJ
	 CC1bkoskwUw1Cm0ybVon5qZ5tfIncaSAThvmvHVEjnnb/X4aGqEJKGT1545OcdBLEG
	 LKM8yAtGiBzfhbRZNJ85XRdPRiv2y7KC/GHcbldSppKo6CucsuCECVUU0zp9zG314Y
	 43CLIl7g4FQ07ksYyhk/Hs06lBZ2k2bJsNlqowS6IKIpUeWFHpZPhdrROYeqGI3/Ji
	 s8C/dH9e+Z8RPiwXetH7vb0vYu0/M+3EobUMONuVVG4jjxNdW1Tq/vyHy3Gx/l9Z62
	 pAKhM3o8jw/rQ==
Date: Tue, 31 Mar 2026 09:05:50 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chancel Liu <chancel.liu@nxp.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, Frank.Li@nxp.com, shengjiu.wang@gmail.com, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] ASoC: dt-bindings: imx-card: Complete the full list
 of supported DAI formats
Message-ID: <20260331-notorious-messy-salmon-1acc76@quoll>
References: <20260331012450.1298115-1-chancel.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260331012450.1298115-1-chancel.liu@nxp.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-282792-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,nxp.com,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,i.mx:url,nxp.com:email]
X-Rspamd-Queue-Id: 86139364CEC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 31, 2026 at 10:24:50AM +0900, Chancel Liu wrote:
> Currently this binding only lists i2s and dsp_b formats that are used
> by existing sound cards. However, DT bindings should describe the full
> hardware capabilities rather than only the formats of current usage.
> 
> The SAI audio controller of i.MX audio sound card supports multiple DAI
> formats, including:
>   - i2s
>   - left_j
>   - right_j
>   - dsp_a
>   - dsp_b
>   - pdm
>   - msb
>   - lsb
> 
> Complete the full list of formats supported by i.MX audio sound card to
> ensure the binding correctly describes hardware.
> 
> Signed-off-by: Chancel Liu <chancel.liu@nxp.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


