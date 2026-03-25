Return-Path: <devicetree+bounces-280436-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLNSON3Ow2nuuAQAu9opvQ
	(envelope-from <devicetree+bounces-280436-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 13:02:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 22420324646
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 13:02:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6708D30F441E
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 11:43:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5233C3CF056;
	Wed, 25 Mar 2026 11:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkoQgin9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9C83CF023;
	Wed, 25 Mar 2026 11:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774438990; cv=none; b=lt78uDioNDSsDImFknERl7teNHyXSyNrbyRMkXjNQZmXLVFcjE7Blo87fOkeS+w9zIEhNHoBixO2GsYT5xmyGGqnreR5M6/YkE8B0R3l9oBRUDDsxJ11owXIwVg0WqN9RLr3lGu6IwYsYni+CyvabMGV0+DgcX97+Ewf4wpNhPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774438990; c=relaxed/simple;
	bh=4wmF7myeA8vMbLkW+h2JPB1tAB5Myywhca3tyqiYPts=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G3J3HaGOHmvw++/xwynKW8QRinECxQpo3SosQRxN3bTUaLEEpls4LUVo365Y9yIZxnoZBz9irCloaOkOrbJHjTE7NKfXuBDdDjoDrXLjFwm7npIf7yNXreh3SylwCVXLAPhDV520tQu+YXp3GM/GJOt8OKL/xSAqz1N28bJK7pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkoQgin9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49DECC4CEF7;
	Wed, 25 Mar 2026 11:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774438989;
	bh=4wmF7myeA8vMbLkW+h2JPB1tAB5Myywhca3tyqiYPts=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IkoQgin9TMhDAEG1vgXLf2akVN9fslufMOuNL0wPM6eA2CK5nfRdzZFY9in+IEG2G
	 shyxZvdnsO5d82sdKzwOsr3up3jIwDSs2klvKiy1V/rv9E75OAdDStX1mS+1y30pss
	 8IrkS/4CRaLl41ub6DJLuMrIgAAEfcriTjg+h6t1X4/5tiUN6RCmq2o5CfAEwYtc18
	 H0usobCWE7e51/zUsY4LPgJJ/hVF6xZZrlNrsM5oYUHElgWFKpxKQTnvQrGAwDROMK
	 LD5SNNXBKRDt29YOoQRmnH44914WhTLPqyvjWptiICTQT2h8J8bnUS3qZjlUD7q4Ko
	 ioeXvvbnU5CXw==
Date: Wed, 25 Mar 2026 12:43:07 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hongliang Wang <wanghongliang@loongson.cn>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, loongarch@lists.linux.dev
Subject: Re: [PATCH v1 1/2] dt-bindings: i2c: ls2x-i2c: Add clock- related
 properties
Message-ID: <20260325-outstanding-weasel-of-fruition-89db37@quoll>
References: <20260325011852.19079-1-wanghongliang@loongson.cn>
 <20260325011852.19079-2-wanghongliang@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260325011852.19079-2-wanghongliang@loongson.cn>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-280436-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 22420324646
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 09:18:51AM +0800, Hongliang Wang wrote:
> From: wanghongliang <wanghongliang@loongson.cn>
> 
> Add clock-input and clock-div properties.
> 
> clock-input describes the input clock of i2c controller.
> clock-div describes the clock divisor of the input clock
> of i2c controller.
> 
> Prcescale = (clock-input * 10) / (clock-div * t->bus_freq_hz) - 1
> 
> Signed-off-by: wanghongliang <wanghongliang@loongson.cn>

Also, why are you using inconsistent identities?

Best regards,
Krzysztof


