Return-Path: <devicetree+bounces-268659-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2DW8NWoCoGl/fQQAu9opvQ
	(envelope-from <devicetree+bounces-268659-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:20:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7031A2749
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:20:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 51B48303FF39
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:20:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD6493815E1;
	Thu, 26 Feb 2026 08:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeYIqiOe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AABCE21257F
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 08:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772094010; cv=none; b=rqaDWFECjvEfYu8INhn+8uJE3dYogBqaIrE6pKWs1C6KDyCqECVeR0LSCczG9gbhrNtj697rc9lPnVjl1Z/+2Cn2PYJkeLohx0/7/ZI4o8zOrI/QsafY5NqluDDoqklhlDAIL+zRT77oqoRFgTcrZE5hweSnGS94rXOxk601+m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772094010; c=relaxed/simple;
	bh=V2CAV5sniCTybcKY95jhkj2YiziYR7leZiE8p0ijnDs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jluwFTWIvc8NDUYfC+8oMbheSMkHUh2DJOEDlUknQXqM49wUdzJMRVygwSwQZMM4QD8F/iR6Tvxme0MkYA72bMpMqZNmJBrV33qFbvLgtv9FJua09kbZKC7Cq/SZEOni+qZ9SSrP6yx+hGle3psMTH7l6SYDBRk1709asuWEDcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeYIqiOe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8224C19422;
	Thu, 26 Feb 2026 08:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772094010;
	bh=V2CAV5sniCTybcKY95jhkj2YiziYR7leZiE8p0ijnDs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XeYIqiOeOpc7/l9BcED46CnkoYkt/zVxMr4tFpWC217cimsulyrlmbYdHq2feUdkB
	 KdP562rOMNQxk6aprRdlTbxeupRC+7Lewyprk/yXEXLiZ1tVYk19QDxwFs93c9JmhE
	 f58ke8JzIef4wnnSAUcUZEUA/flJ7Zs/zMgYTxXKAK3ZlkjCHiFkN5G5nzLn1RBryQ
	 LlsPgXFvBlEkSP+/ohxR7ZWRX5OGeTVIyVwmQqSJ/ZZRH1U+JBc41m4mBkZh0kg+Y9
	 k5W9j7qHWmHE9eLBO5sK3tUyCZvGgIv17/I8A9krIWzP6kS2sAYWEnH3I9EWBVkFJL
	 IrpNmt5GWdkAA==
Date: Thu, 26 Feb 2026 09:20:07 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
Subject: Re: [PATCH] dt-bindings: intel: Add Agilex5 SoCFPGA modular board
Message-ID: <20260226-fascinating-vicugna-of-typhoon-ffd29c@quoll>
References: <20260226052145.75639-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260226052145.75639-1-dinguyen@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268659-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6F7031A2749
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 11:21:45PM -0600, Dinh Nguyen wrote:
> Add compatible for Agilex5 SoCFPGA modular board.

Which is what?

And why do we want it? There is no user of it here or you forgot to
explain WHY you are doing things.

... and why you did not include my tags?

Best regards,
Krzysztof


