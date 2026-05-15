Return-Path: <devicetree+bounces-298194-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LUrCy4DB2qVqgIAu9opvQ
	(envelope-from <devicetree+bounces-298194-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 13:27:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADC054E6C6
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 13:27:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8AD4231052B7
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 11:03:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7BDF4779A9;
	Fri, 15 May 2026 11:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9VkMeLd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83361477993;
	Fri, 15 May 2026 11:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778842984; cv=none; b=jX+f24zDulSzrT2loPmeAxu6sM5vBi9UN/9/RSgzsG3kVRvnZp4jjV/9Ah5sUU4GiyWQ7niUS3dr7bKnAyq04CT++2BCbWKGi+ZpN378upra5nv+GI8b5GdVfgtMD7aWVDLl1U8nquviTFDvHyfbm4eeGyVcpT2aCS9WFaQOo90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778842984; c=relaxed/simple;
	bh=iqvi9Y/GWvrW9fciGmNSpOmk0BoqpWnGIAgMHnaPJUA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fkb6vQfXuZjFiNrQ8ux1nW5C9+z5tWK1t/srgOVDXuAEY9Uz4zajKs6QInwuCMyosa+8GTxj0h5GrYyyNe/1u+a5ox5YJoW06MIUgRyGQBRgjRpSSAUVbtDVVPvclCUbgWb013Gpegm9xmFX1OzTcHppjCasYvuDtSdwGVdPHVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9VkMeLd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 762A9C2BCB0;
	Fri, 15 May 2026 11:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778842984;
	bh=iqvi9Y/GWvrW9fciGmNSpOmk0BoqpWnGIAgMHnaPJUA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U9VkMeLdg7idNmwcldP/7WxFI6CC4J6niGePUREf6je2aPM7xYjMwLKTcLA/wKJF8
	 MNrbQY8mI0a+FyS9648emQ17BTXO31EecJ50+JcPWZLl8aXZr6bzcpgH+bgvA+thr1
	 fiHUuHeNG6avA1ayKjWWdajjaRTlhS+J5ht6HUVCe137vzGsTBSAuEezeofSWZLv8L
	 oe2yl44QlSEjkF2FvtIs2C94JZ9PSYviK95OtMMR5yTds7iUDBEZzolW2LJn+q6X46
	 7d9HEk8/AMqcZ0ya5u/Ncw/xun+0gNO7H4N8I0zFUJt12kTpPNh4PBH06IeJBSiWOY
	 3tCdkUD4TC9gw==
Date: Fri, 15 May 2026 13:03:01 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Pramod Maurya <pramod.nexgen@gmail.com>
Cc: jic23@kernel.org, lars@metafoo.de, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH v4 3/3] dt-bindings: misc: Add binding for Xilinx
 AXI-Stream FIFO
Message-ID: <20260515-crazy-cheerful-teal-af566d@quoll>
References: <20260510083219.70224-1-pramod.nexgen@gmail.com>
 <20260515075736.172172-1-pramod.nexgen@gmail.com>
 <20260515075736.172172-4-pramod.nexgen@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260515075736.172172-4-pramod.nexgen@gmail.com>
X-Rspamd-Queue-Id: 9ADC054E6C6
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
	TAGGED_FROM(0.00)[bounces-298194-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Fri, May 15, 2026 at 03:57:36AM -0400, Pramod Maurya wrote:
> Add a YAML schema for the Xilinx AXI-Stream FIFO IP core (PG080).
> The binding documents the three supported compatible strings and the
> vendor-specific properties that the axis-fifo staging driver reads from
> the device tree.
> 
> This resolves the following checkpatch.pl warnings in
> drivers/staging/axis-fifo/axis-fifo.c:
>   WARNING: DT compatible string "xlnx,axi-fifo-mm-s-4.1" appears un-documented
>   WARNING: DT compatible string "xlnx,axi-fifo-mm-s-4.2" appears un-documented
>   WARNING: DT compatible string "xlnx,axi-fifo-mm-s-4.3" appears un-documented

Do not fix checkpatch warnings blindly. You could have checked the
mailing list before sending this.

Best regards,
Krzysztof


