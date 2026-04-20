Return-Path: <devicetree+bounces-288756-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKWGIF1X5mlQvAEAu9opvQ
	(envelope-from <devicetree+bounces-288756-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 18:42:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B8242FDB3
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 18:42:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C2203725BCD
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 14:56:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 314AD36CE14;
	Mon, 20 Apr 2026 14:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMPsRUjo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082D92FD1D0;
	Mon, 20 Apr 2026 14:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776694141; cv=none; b=kRVWBN9SLXkOTNnubbfmG6mXpwa8J/lJ06pfsjQTaMIANNvPiQ3Z1+pPiwrXMPWCsR4GrGSGDPD5/NSkILBzbIqdaqSp+F0BjaIJlBWxHTid44KUu3OraWziyBM6Ftq3PxYjMFSZUdt9/VUFC50OPxaApg2eAIF/5U9bHuGCzYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776694141; c=relaxed/simple;
	bh=7AQGntyamDukw6L1++iVmxHHJ+1bq3SywAnLJXWCCh4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JP/AvfVIpTPFT7UAtg42eomYoi5aQcfw+7YVDy7/u4E7pFow63YmQ0ifE+rJvZg87muOk00Zzlu9Wl2KSJPg3+vuFlp/qFWD54wUVZVOKSiGtabICzkzABpJ2NCU3D2qvvVUowTF8MkVs1lnfd430MRQ5F1nWza9C7EQmxgqLDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMPsRUjo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BC13C19425;
	Mon, 20 Apr 2026 14:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776694140;
	bh=7AQGntyamDukw6L1++iVmxHHJ+1bq3SywAnLJXWCCh4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LMPsRUjourZ3xixfCf+nkeeIcokivV4iuouW1vpEM7PR6jzwoKUU8n0A9QY4Huap4
	 l/wlrFUwqalEChdzpmUuR7ugLSzcQmMWNzC6dbSHNGS2HPjV4lzMYP/hCNQVjv55bR
	 xxChwA/p3xxhYcy62HpQI1UyZOFD17PnCGLeOLsS7UDGtdkQD5bw+Bg2MqYoeOFH6q
	 nNi7h3VYxV5IHNZrH68C62h8vvbEhrScGjP9pRZOzGm3qgvgS1tAcCgGCX1GNNCRip
	 +QEi2/1lKMgLge0W6dlaUxtUwFbNZFjOv9uN5f0B8kISaPChC5l0Bn8fh4WRI+zrPk
	 XPgR+7nefo1jg==
Date: Mon, 20 Apr 2026 16:08:58 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hardik Phalet <hardik.phalet@pm.me>
Cc: gregkh@linuxfoundation.org, jic23@kernel.org, andy@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, dlechner@baylibre.com, 
	krzk+dt@kernel.org, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-staging@lists.linux.dev, me@brighamcampbell.com, nuno.sa@analog.com, robh@kernel.org, 
	skhan@linuxfoundation.org, Hardik Phalet <hardik.phalet@gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: vendor-prefixes: Add QST Corporation
Message-ID: <20260420-kind-rampant-macaw-bf1aa6@quoll>
References: <20260420-qmc5883p-driver-v3-0-da1e97088f8b@pm.me>
 <20260420-qmc5883p-driver-v3-1-da1e97088f8b@pm.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260420-qmc5883p-driver-v3-1-da1e97088f8b@pm.me>
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
	TAGGED_FROM(0.00)[bounces-288756-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linuxfoundation.org,kernel.org,vger.kernel.org,baylibre.com,lists.linux.dev,brighamcampbell.com,analog.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 02B8242FDB3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Apr 19, 2026 at 10:32:20PM +0000, Hardik Phalet wrote:
> Add the vendor prefix 'qstcorp' for QST Corporation, a manufacturer of

(and here goes few-word explanation why you have chosen qstcorp or just
the link to the website)

> MEMS sensors.
> 
> Signed-off-by: Hardik Phalet <hardik.phalet@pm.me>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


