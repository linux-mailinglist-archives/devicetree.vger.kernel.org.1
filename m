Return-Path: <devicetree+bounces-285437-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJ4/KNhD1WmE3wcAu9opvQ
	(envelope-from <devicetree+bounces-285437-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 19:50:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 482003B2948
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 19:50:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 79F063004D12
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 17:50:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E04993A6B60;
	Tue,  7 Apr 2026 17:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrOmdQNY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360DC39EF10;
	Tue,  7 Apr 2026 17:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775584211; cv=none; b=ZkWgT+184Uo/L473kbA3bkdOkgDXIswqiyyTF8TX4ctUrDgq3aNJHneyLA68VHjlKxVT4FENVIQI8Njk6/x0K4oagH3Ie36Vj9cYtQ5Ca82SGgfUytYsbBjD5+Pe9hB5NLT7g4/leaLtZZyWpYcRyEyDussKvbRHm11GA3loG0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775584211; c=relaxed/simple;
	bh=bk0t9JxzLqimVaNqYIGraaIcJm28+bUHxoQt8DKwcns=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mXyK5xPd2UaHDgm828wSy/QIH0p+wMJ7WJNK4iA+vppu2s7K5RB7pVre3G2YPtyMQYSwYMSt2j6FQZbnMxhiJ1G64wRnOHJZKBTG6dvdsuCx4outYhqhStcYagk2cnzU9InjWoodVMaNANL912dnM28sMnape0afMkYJQMG63Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrOmdQNY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A1ABC116C6;
	Tue,  7 Apr 2026 17:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775584210;
	bh=bk0t9JxzLqimVaNqYIGraaIcJm28+bUHxoQt8DKwcns=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PrOmdQNYO53qMjFtef+XyTituPTiiHQwEslqk4MDJDPSCyNKJxCq4LBvL1fVBeVeP
	 0iiVTlFF2BfKL9g/MVZ3SNgAVkYJ7PNZtNxvhGff7VzyKIvJGCXAKAp7OBqZXvg3Bk
	 a0msLbwpVJJB5thd22ZLzQ33LUdW2E88LqF5HEAb6xzmYj0anyDe5Nnde1kDDXMY3n
	 jZe39fXIftfiruB/yPIY0D1wr7fguQxtXsUIv+b2PSq/J/ym4P++pp6IL41/JNSEVM
	 DjgMaf3kn2ycx/GDaIhnP8866v9/kQ4jVabNVHSWlVq/d3R5DbQeNi7UpbYYx4IMa7
	 xrJPO8ninRv+Q==
Date: Tue, 7 Apr 2026 12:49:53 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Jernej Skrabec <jernej@kernel.org>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Samuel Holland <samuel@sholland.org>, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH 2/7] dt-bindings: sram: sunxi-sram: Add H616 SRAM regions
Message-ID: <177558419254.3168496.8723941339416449025.robh@kernel.org>
References: <20260324164357.1607247-1-wens@kernel.org>
 <20260324164357.1607247-3-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260324164357.1607247-3-wens@kernel.org>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-285437-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 482003B2948
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Wed, 25 Mar 2026 00:43:50 +0800, Chen-Yu Tsai wrote:
> The Allwinner H616 has two switchable peripheral SRAM regions:
> 
> - The VE SRAM is a 2 MB dedicated SRAM for the Video Engine. CPU access
>   to this region is enabled by default. CPU access can be disabled,
>   after which reads will show the same stale value for all addresses,
>   while writes are ignored.
> 
>   The mux value for this region is different from previous generations.
> 
> - The SRAM C region is an alias of the first 128 KB of VE SRAM, plus 64
>   KB of DE SRAM. The latter is otherwise unaccessible from the CPU. When
>   CPU access is disabled, the whole region reads as zero, while writes
>   are ignored.
> 
>   The mux value for this region is the same as on the A64 and H6.
> 
> Add compatible strings for both of them.
> 
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
> ---
>  .../bindings/sram/allwinner,sun4i-a10-system-control.yaml    | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


