Return-Path: <devicetree+bounces-272401-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLvnK8//q2neiwEAu9opvQ
	(envelope-from <devicetree+bounces-272401-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 11:37:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F6722B172
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 11:37:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0694B3019060
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 10:36:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A0F03876C6;
	Sat,  7 Mar 2026 10:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmbOJfBU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57090258CD7;
	Sat,  7 Mar 2026 10:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772879815; cv=none; b=SyZPuJT62kPDB376MJpDbFlzrzupxVnVxoej5YYUn/+G84MFK+KtVlrpCcwx3wXIRc2Sgop5oKYMQ6AN3oji3Zhv8+JimF0ePOWl85afpiX6VlytUvnei5tfYL8Or71QZIGzaXVoLp390IaX2a1fMoD5sFpkmlDxJqhgNUcnITM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772879815; c=relaxed/simple;
	bh=U8ypS7Lz2A3tC5dEZwAsW+AZ1FoNqxvk8Ah5X7QXGVg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gAZesJGN8qYp2PAaBXJfvvFJmYaxq2kX4j6Q7NTb+57UdEdExFpqR7Q7ULJO3VJjFPQrgv/TyFisBFPkOW1XjQlntn82m+YusU3tKc3MBU41URdeQ6bcu8WGPlsxk3q9B7uL5mXDdG9FceknG/X+L+tdfK5zx6/uY9XXrlTscwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmbOJfBU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6F02C19422;
	Sat,  7 Mar 2026 10:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772879815;
	bh=U8ypS7Lz2A3tC5dEZwAsW+AZ1FoNqxvk8Ah5X7QXGVg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tmbOJfBUCPobD89sGRuwbCFuAj69GbfCmEKPRfp5Zn3/YpRF9tc3uQqVhMmOkFvMr
	 QLwvggTACy1acK3NT3DDN/Qodf5BBlKdKncfWOZ8c/9p887t4SodPSRq6j0G6b92rP
	 H5oW5BYGdry4S2XdBiZXu2RIGw8neIY6GQ56B5yTX+VfkzwUTMZgY36uHKVPt57sqc
	 Ava69VALn6JyS+68PAy6tDfKRNfcTyrezvRKCTZgByTJyKsbXC8UfrKEPH5YzNG8jJ
	 lHpNXCT3zS92zxUTmcoDpwBFzVGFNxWEmcn1cJ/vg+B0pJBKoQQzQcSxTEqxRY2PE6
	 dMCzai/0xUKNQ==
Date: Sat, 7 Mar 2026 11:36:52 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
Cc: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Abel Vesa <abel.vesa@linaro.org>, Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: mmc: sdhci-msm: Add ICE phandle
Message-ID: <20260307-llama-of-massive-downpour-2e512a@quoll>
References: <20260306093332.4193993-1-neeraj.soni@oss.qualcomm.com>
 <20260306093332.4193993-2-neeraj.soni@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260306093332.4193993-2-neeraj.soni@oss.qualcomm.com>
X-Rspamd-Queue-Id: 28F6722B172
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272401-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.929];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Fri, Mar 06, 2026 at 03:03:30PM +0530, Neeraj Soni wrote:
> Starting with sc7280(kodiak), the ICE will have its own device-tree node.
> So add the qcom,ice property to reference it.
> 
> To avoid double-modeling, when qcom,ice is present, disallow an embedded ICE

Can you finally fix checkpatch warning? I have impression you ignore
checkpatch in each posting.

Please wrap commit message according to Linux coding style / submission
process (neither too early nor over the limit):
https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597

> register region in the SDHCI node. Older SoCs without ICE remain valid as
> no additional requirement is imposed.

With this fixed

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


