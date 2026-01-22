Return-Path: <devicetree+bounces-258645-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cIKpDk6xcmnaogAAu9opvQ
	(envelope-from <devicetree+bounces-258645-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 00:22:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 927D06E742
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 00:22:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 280F4302D5FB
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 23:22:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 341E23DB72E;
	Thu, 22 Jan 2026 23:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToH44nn3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9C53DB722;
	Thu, 22 Jan 2026 23:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769124120; cv=none; b=SGgKqjerX+SNQJqgYJQiZwOo2YqVcvwz9Z0HUljNMsPN7KrlEB0b06kpwtx4hblEN0i67mTAZHbhBgt4+XxOR04o+PZScM28QGuPPvOJEhjXnDAycasg+tC1anJOZ4JVZRp9Ec1lKFEkLVnIYx5QwINNVP/AJRp8GPemU0bDM4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769124120; c=relaxed/simple;
	bh=0IUxVmF2NPKqpazQLWHp4Nykdc7shfwJu1ETfcq9Hwk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TBCECnhUPtCzqHarI1SOFadguUZIZQ6lKCD9/7Oz+MLk1ofha/22X+viWA/PdG7OgdvHpbL+I08PWloqCxjJe0CNHFalrRs0ZyJBMHx4jdxF+yVpeQcfFIvuWibNtOmbiGTlnDW8p3Babl1DUxRJB6yk1AzIrFSLq2kG3zZ5mgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToH44nn3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CD40C116C6;
	Thu, 22 Jan 2026 23:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769124120;
	bh=0IUxVmF2NPKqpazQLWHp4Nykdc7shfwJu1ETfcq9Hwk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ToH44nn3h9jLWpKIeZ/udSdD1Q2SrCSVgbdzlnkRQBsibIgRKZToBvVSbiKRt3arg
	 p3L/brphpR6zhKDk2ER0YJyXAf+ea/bu8kDC+lOKr7aIJ4kMzErZik8UyOKO1OgPpj
	 3O6sM3kQFks9cmeZujPW7oaN1v94lKvhFyPVdgzS7yek8gzlX31m8uveWFdHhOKKlE
	 3TZkuD3/x3YveWYg2LNRlnvwEtr+PzpffV9Yk/gH40IyvvyrgG1PcQOZ2V/MzsGbkb
	 awpHNck8L2xo+5+R6IgmaHeqqc/O2UXJGuF1FHYFx1S9lSPzOwOqOI1Or5hSbtT9DA
	 ibtmf25Bjd+tw==
Date: Thu, 22 Jan 2026 17:21:59 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Elad Nachman <enachman@marvell.com>
Cc: chris.packham@alliedtelesis.co.nz, linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org, pali@kernel.org,
	mrkiko.rs@gmail.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
	andrew@lunn.ch, gregory.clement@bootlin.com, conor+dt@kernel.org,
	sebastian.hesselbarth@gmail.com
Subject: Re: [PATCH 1/3] dt-bindings: arm64: add Marvell 7k COMe boards
Message-ID: <176912411877.3721391.1140277184360139715.robh@kernel.org>
References: <20260122165923.2316510-1-enachman@marvell.com>
 <20260122165923.2316510-2-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260122165923.2316510-2-enachman@marvell.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[alliedtelesis.co.nz,vger.kernel.org,linaro.org,lists.infradead.org,kernel.org,gmail.com,lunn.ch,bootlin.com];
	TAGGED_FROM(0.00)[bounces-258645-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,marvell.com:email]
X-Rspamd-Queue-Id: 927D06E742
X-Rspamd-Action: no action


On Thu, 22 Jan 2026 18:59:21 +0200, Elad Nachman wrote:
> From: Elad Nachman <enachman@marvell.com>
> 
> Add dt bindings for:
> Armada 7020 COM Express CPU module
> Falcon DB-98CX85x0 COM Express type 7 Carrier board
> Falcon DB-98CX85x0 COM Express type 7 Carrier board
> with an Armada 7020 COM Express CPU module
> 
> Signed-off-by: Elad Nachman <enachman@marvell.com>
> ---
>  .../devicetree/bindings/arm/marvell/armada-7k-8k.yaml | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


