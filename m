Return-Path: <devicetree+bounces-287082-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WN8TKC8i3WndaAkAu9opvQ
	(envelope-from <devicetree+bounces-287082-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 19:04:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CA63F0A87
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 19:04:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 74D82304F8AA
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 17:00:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41DE13290A1;
	Mon, 13 Apr 2026 16:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxxWbo1h"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA42318ED2;
	Mon, 13 Apr 2026 16:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776099599; cv=none; b=G0X1OlW3+9xdqpObt/MurSks/Wo9tQK9skdc6hX+sy5El7B5VmAcHwRQREEc8TV2+U+WQYIYsI6S0PN79sB7CrtYO1ddHi6xx/wtdfWpwejNzmaBKW7GDdAWVAxQifmdQe1zx4tIEiVytfHYZ0+mA2Wz4VuJ9uxCEbKbgR/Ttrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776099599; c=relaxed/simple;
	bh=cTQReQImvyeuWaK1qjnXEVUagwItLVR7BkRCx1K8Z0g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pVQhAM19v2s5lsTzdzyb2Z70e/SLsB0fPv8H60FvPHUi6snIWK/B1oPKEixRsbUureSzjNmHsBWWmA50uo0Xrrp7kyswHVFkUwrWa4lS+Bt5DJ2XX2trEGMPebIMUjsTkGh73pS3LvkJW0j3pYKcTTqpyN9Hm1kxI6k0b0YY03M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxxWbo1h; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCC1BC2BCB6;
	Mon, 13 Apr 2026 16:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776099598;
	bh=cTQReQImvyeuWaK1qjnXEVUagwItLVR7BkRCx1K8Z0g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pxxWbo1h+w9Fju9gEfnEUdemH5COr9NdD51/FjP9KR1cZ0q+C4LLHgyhRLbBjVPjV
	 O1nhmZdQkZbnkVjkXP5M+wNiWPUlpf+wEbRM/NjCFyU15kP0AnGpfIBft7BrCoZ0TX
	 0OasZPDSsmErqIjNxqjOPLhwSyWgk+h85mrexC4bUIjf+/9TWT9c5+xNNU2zyo+n1F
	 zaQrx5Vrd0+p3XrhgyQRzOiWGQRWjEWumh7LrxXqEPaq95OUW0R0PZcdgk+x4M1Zqk
	 bZvv9fLdqgZjD//WrMQuYfiNj1mgqy5JX5vdTRtSXuU0Su9Q4tr+UDPhSw+Uk3QtJQ
	 nEz8suvZq1lug==
Date: Mon, 13 Apr 2026 11:59:57 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Pengpeng Hou <pengpeng@iscas.ac.cn>
Cc: Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2] drivers/of: fdt: validate flat DT string properties
 before string use
Message-ID: <177609959360.2991413.1621235298021161008.robh@kernel.org>
References: <20260403164501.1-drivers-of-fdt-v2-pengpeng@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260403164501.1-drivers-of-fdt-v2-pengpeng@iscas.ac.cn>
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-287082-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,iscas.ac.cn:email]
X-Rspamd-Queue-Id: 35CA63F0A87
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Fri, 03 Apr 2026 13:59:47 +0800, Pengpeng Hou wrote:
> Firmware-supplied flat DT properties are raw byte sequences. Several
> early FDT helpers fetch properties such as status, model, compatible,
> and device_type and then use them as C strings with strcmp(), strlen(),
> or pr_info() without first proving that the property is NUL-terminated
> within its declared length.
> 
> Use fdt_stringlist_get() for these string properties instead. That
> preserves the existing behavior for valid DTBs while rejecting malformed
> unterminated properties before they are passed to C string helpers.
> 
> Signed-off-by: Pengpeng Hou <pengpeng@iscas.ac.cn>
> ---
> Changes since v1:
> - also validate raw compatible string-list walks in `of_fdt_is_compatible()`
> 
>  drivers/of/fdt.c | 38 ++++++++++++++------------------------
>  1 file changed, 14 insertions(+), 24 deletions(-)
> 

Applied, thanks!


