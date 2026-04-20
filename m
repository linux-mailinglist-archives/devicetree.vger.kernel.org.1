Return-Path: <devicetree+bounces-288759-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAk8MAdC5mlutgEAu9opvQ
	(envelope-from <devicetree+bounces-288759-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 17:11:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6186842DE1F
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 17:11:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 152AC303954F
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 14:58:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B84C3988E4;
	Mon, 20 Apr 2026 14:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ij+/00HH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586AF3859FF;
	Mon, 20 Apr 2026 14:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776694530; cv=none; b=ZTgg0BoqdYpTsUeD3XvTK++YWvSp5L63UDRVQPwvjc/hplFg2dNHEIWVlnSE5XQbHJhXNWRNU5HJVW5NrpvmRz5dDGf1DKL3rN4krsEgFd9izLqLBSOPbE6RghIRW/FiAYwHSWNgAnUjVMPHnd0RamIST4PTMnE4Fgf5xEpsY1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776694530; c=relaxed/simple;
	bh=UZz/y334XGeR52ybtu8Bh/e06bVGnVdZ5lU3egC/qCk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LYGQ7NQm7i+vY6OZl6KLRXzut7k8kIGn2TyTk3QPY9EA91q5hoNwifBuvd7yrFPCHvzJBf8cjhNMpIAE6bBxalGeUbFk0X80F0dHxeDrMgoeaLPyjdqi6+wh7V3eEpnwFul77TxvM7H5AzlgdC8paNiWNWv2nmCHShxtzDJUK0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ij+/00HH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7538EC2BCB6;
	Mon, 20 Apr 2026 14:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776694530;
	bh=UZz/y334XGeR52ybtu8Bh/e06bVGnVdZ5lU3egC/qCk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ij+/00HHLQhajGcWMlHx3cvr5gnQ2NMSErKPwAmw2K6pknz/yR79u74U3L4sUIdzD
	 8UT6tp1eBLuYaciXi5rGtF265tq2uma5Hfm+/irG9o9sT7Y45MnZWaU3lM6MD9sCps
	 ey5G5DIX8cVDsWJPPm4J2+sz5Ow9jzpazO0SCcrbj2wN1KNm7yBJu1rQmv54wMONQF
	 62r4aqIEYOp4x7Mn8Ym1Cog6DqE85goRZDHSaUh4SymHEd9V9I1AHkpjYpwkPm0xOV
	 oGdJ1gVEDEdtTf5xHJ9klDROg3DzqB+Qzi0kab07MaLk+X7a+BUOForB8JbUmhVdhc
	 0pnH3xQ/gbQ+Q==
Date: Mon, 20 Apr 2026 16:15:27 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: syyang@lontium.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	dmitry.baryshkov@oss.qualcomm.com, maarten.lankhorst@linux.intel.com, rfoss@kernel.org, 
	mripard@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, tzimmermann@ideasonboard.com, 
	jonas@kwiboo.se, jernej.skrabec@gmail.com, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, yangsunyun1993@gmail.com, 
	xmzhu@lontium.corp-partner.google.com
Subject: Re: [PATCH v3 1/2] dt-bindings: bridge: This patch adds new content
 to the lontium,lt9611.yaml binding file
Message-ID: <20260420-sophisticated-scorpion-from-camelot-b9f326@quoll>
References: <20260420061644.1251070-1-syyang@lontium.com>
 <20260420061644.1251070-2-syyang@lontium.com>
 <192f1948-bb9a-4831-a1cd-5ef500cfb413@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <192f1948-bb9a-4831-a1cd-5ef500cfb413@kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-288759-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,vger.kernel.org,lists.freedesktop.org,lontium.corp-partner.google.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[19];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6186842DE1F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 20, 2026 at 01:33:46PM +0200, Krzysztof Kozlowski wrote:
> > -audio
> >  1.sample rates of 32~192 KHz and sample sizes
> >    of 16~24 bits
> >  2.SPDIF interface supports PCM, Dolbydigital, DTS digital audio
> >    at up to 192KHz frame rate
> > 
> > -Miscellaneous
> >  1.CSC:RGB<->YUV444<->YUV422
> 
> Commit msg is not a datasheet introduction chapter. What does this all
> mean for compatibility? What is the benefit of listing all this?
> 
> You did not even explain the differences between C, UX and EXD, so all
> above is pointless. Explain the differences and why devices are not
> compatible.
>

Also, you have checkpatch errors.

Best regards,
Krzysztof


