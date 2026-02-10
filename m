Return-Path: <devicetree+bounces-264162-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDeyAiZ1immmKgAAu9opvQ
	(envelope-from <devicetree+bounces-264162-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 01:00:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 881FB115809
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 01:00:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8F2BC301BF5B
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 00:00:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B92E22DC76F;
	Tue, 10 Feb 2026 00:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hH0JF4jU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 949271CEADB;
	Tue, 10 Feb 2026 00:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770681621; cv=none; b=AHcrGANydhgq6923ETBbgM6f6II3qro866J4kSdgKKdMbqR1n9KpKJgbnnEytiw9kSQa4DzEQqJhiw2ah4wwWNnCfqHlsN9ze863V6+V1DaRdD6eO52S8EuwA3frAom1qYYNXJClMPGTLJmAx+SWI8LkD4N85+KvSCJIm09iR98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770681621; c=relaxed/simple;
	bh=uMgpi+a8Ehx2IQNF4rOY7mPLVQjEiDq/6CJvkzuLMhE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pWxpJIX30qg9x5hUKK8bcNy5cP7gVZpvb1Zp28sEE6yzQMRfx3wyse731ezlVPg6ZRFy0M82SQaAxFb9GN9yvmEuqDIwtAN9J/IgIPEN2ED8xLWU0Y8prlF7+JBJ6CCGtl/Cf7hG5q3vXn3glT64x1zK+DS5OEqHwdEnJinnBVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hH0JF4jU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2107C116C6;
	Tue, 10 Feb 2026 00:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770681621;
	bh=uMgpi+a8Ehx2IQNF4rOY7mPLVQjEiDq/6CJvkzuLMhE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hH0JF4jUTLWIcSHwtceFVr9ogwlQk+9wHdTHyocO2W4y6J4SPtt4c6Lg1uQdiE/hs
	 bHltNiRoWkYUlgyGQRAffaKjcwXFEvgv5JCPaesWm/Oe4x5zXgGoQo5BnZZNbvkBxT
	 IgiQu0hgP6LHgoangHZxKQoiTI/WE+FLErZ1ur1muXb1WYenv9aiD3UWTI6S7tYDqq
	 uUdyFWgpDKy+WDPKxfiplNQztAjXwlFQmMPxHiWwdbAMZ2shvSqg/KHRxBZOGN8P2A
	 JvEwr/7WrUtnMcyxLZ+kmmx8vnseLZY/jgBc+JBu6ENradUgBoaDMstbW9BJKHo/W7
	 xzKCIFEOZAjig==
Date: Mon, 9 Feb 2026 18:00:20 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: ASHISH YADAV <ashishyadav78@gmail.com>
Cc: Ashish Yadav <ashish.yadav@infineon.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>, linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: trivial-devices: Add support for
 XDPE1A2G5B/7B
Message-ID: <177068161948.2149314.17475588662985513176.robh@kernel.org>
References: <20260202080355.53061-1-Ashish.Yadav@infineon.com>
 <20260202080355.53061-2-Ashish.Yadav@infineon.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260202080355.53061-2-Ashish.Yadav@infineon.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264162-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,infineon.com:email]
X-Rspamd-Queue-Id: 881FB115809
X-Rspamd-Action: no action


On Mon, 02 Feb 2026 13:33:54 +0530, ASHISH YADAV wrote:
> From: Ashish Yadav <ashish.yadav@infineon.com>
> 
> Add Infineon Digital Multi-phase XDPE1A2G5B and XDPE1A2G7B
> Controllers to trivial devices.
> 
> Signed-off-by: Ashish Yadav <ashish.yadav@infineon.com>
> ---
>  Documentation/devicetree/bindings/trivial-devices.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


