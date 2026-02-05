Return-Path: <devicetree+bounces-263021-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLinOWubhGmh3gMAu9opvQ
	(envelope-from <devicetree+bounces-263021-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:30:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A619F3439
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:30:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8F63E3017F8B
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 13:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 400281F461D;
	Thu,  5 Feb 2026 13:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8v8P79m"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4E71DDC37;
	Thu,  5 Feb 2026 13:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770298217; cv=none; b=LY+BIgrZ+XXgymb9Z7aoQda7vwIIjt+qXsNt50CvSwbUSNsqfc6U7a5iWrCndR7//WO+0ci3bcj0mnhQUZn0434ysBtMiT90MAzwrCamZDyF6u3t0vX17Ew4hPnulcazhOb1XA4T0tPdGep8LRYX28J27HKZ5wslEeani0mtbcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770298217; c=relaxed/simple;
	bh=cJba1mli2q1+jcQYu/I/4HRAGv3bYDmJY4Jz/e97T9Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ar1f04Thk5r0vsVJXDaHnSHTUOayodjPOduGxUhEjJo+GdrwjjHqeS2n6xq4/5XFqYFaU74tFDCp9HFja+ci9pXffm/n8moWvEdA24QwiMqFAhyxhhiI5wtXFgKZK7gGhmE1Zl6pBM/+exrXhu/wFR1ckxZ6akx552CWQDwrfgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8v8P79m; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23A47C4CEF7;
	Thu,  5 Feb 2026 13:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770298216;
	bh=cJba1mli2q1+jcQYu/I/4HRAGv3bYDmJY4Jz/e97T9Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k8v8P79mU0oECkFPhTO3QmFTXwx6/gN9KV0Lydg8G97lgUuuqLleDEVh+hmio5W/f
	 55dbZSx2DeLAZCeBHyY1i321JX/YOxcRb+P+fI9cWTAsk90wYivP6KFXt6P7DNNVI5
	 YKnvI5K4zYMHQe0FeNUQ77DVjFkkRyS5fEFBEOVNkRjEAUmQmOVZYRSFCrMMcgm4zj
	 0csMARCPPIyAG2YbOYpHIS1UE/8OtpSCabPqU5hb+q03nzXImQjlZHHfofT02Ua6HI
	 etHjvhb51+Ua/K8Yu6wSUt/IV4DTJSQeFu9ne7MKE0P8rBCaTImAw7FACksmO96LmP
	 /GriRIRgpd5lQ==
Date: Thu, 5 Feb 2026 14:30:14 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: harshdaniel66356@gmail.com
Cc: parthiban.veerasooran@microchip.com, christian.gromm@microchip.com, 
	gregkh@linuxfoundation.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-staging@lists.linux.dev, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] media: dt-bindings: fsl,imx6q-mlb150: Fix clock-names
 schema
Message-ID: <20260205-ambrosial-wooden-mammoth-51fc1e@quoll>
References: <20260130173302.281984-1-harshdaniel66356@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260130173302.281984-1-harshdaniel66356@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263021-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8A619F3439
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 11:03:02PM +0530, harshdaniel66356@gmail.com wrote:
> From: Harsh Daniel <harshdaniel66356@gmail.com>
> 
> The error was due to minItems and maxItems defined twice 
> in file fsl,imx6q-mlb150.yaml. It was defined both in clocks and
> clock-names.

Huh? You claim you fix something but you just added three files.

Please open `git log` and check what you are doing before you post it.

Best regards,
Krzysztof


