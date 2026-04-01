Return-Path: <devicetree+bounces-283449-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJoZCkf6zGnRYgYAu9opvQ
	(envelope-from <devicetree+bounces-283449-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 12:58:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B05DF378F19
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 12:58:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6F2693074AF4
	for <lists+devicetree@lfdr.de>; Wed,  1 Apr 2026 10:54:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4E44361DCA;
	Wed,  1 Apr 2026 10:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5Usy8QC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E673F54C6;
	Wed,  1 Apr 2026 10:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775040859; cv=none; b=gNcGtnMBPOHCD/CjhSSRCx0JEPr+HAsT8G7/pUrr7vMriIUBCEPw4TSBHAYHepsr3wkcx1yMNO77ZMNK9ScdIE6V7RCy9YZqqh2pPPYYSezU2sjnqWG+2+pjSTNYLs2CdlO4Djdw5dDEx6uiPX3qsQUJ8KbuGs4cNN+uGfUqWOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775040859; c=relaxed/simple;
	bh=c/LwPMidMXeGEgBeIhcANAS95jIz+lAK2IfRQE/D1Ao=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q9MhKd2p9/ZoaRNl8f4+4qc6GKhcIbafSV89r1FwTGXPSG6qLW5VEx2AnLnbkXpXva3bN3LMSIUJZrSNimI/efG71MRjTxabXr9LENpOY9WSxUVbYhbt68IntfKtrpQ0+RoEHcGwvJkRivBlcXe++quth+qyFWnS00fUAXreqK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5Usy8QC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93B2BC4CEF7;
	Wed,  1 Apr 2026 10:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775040859;
	bh=c/LwPMidMXeGEgBeIhcANAS95jIz+lAK2IfRQE/D1Ao=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=j5Usy8QCOvsTwa9tnSOE71kUJJvTwCL0PV93foukgmCWeYAKj8KeLuXRAgM5DdIrZ
	 Hc4yZ3LWbCs6TYLUsa0iDXKMUW/mrE+KK+jUueZP/d7mel0sP4b/w95/AqqxwHmfUY
	 ImVm0zQ9UBet+ZGEICa4+Opd43FC7hZgSlImoxXS95gcaITnV1D0hlorTjfUvcL9Hf
	 dfDstJTCQqU1j7ONexbGbl4JV2SK3fVAtmwByjy1eFsMocHsfYDebypYMpSpBC8F+E
	 Zf2Zj22Va9Cc6uIh50PTAu9dOBx3+Yu8hUhH4cvjVsCOT4bYO7PFDVw4ETel1GImZ5
	 oob/6SFK0/qxg==
Date: Wed, 1 Apr 2026 12:54:16 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Daniel Palmer <daniel@thingy.jp>
Cc: robh@kernel.org, saravanak@kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] of/platform: Don't include reserved memory compatibles
 that aren't needed
Message-ID: <20260401-rousing-stylish-toucan-44bddf@quoll>
References: <20260331215735.2783770-1-daniel@thingy.jp>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260331215735.2783770-1-daniel@thingy.jp>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-283449-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B05DF378F19
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 01, 2026 at 06:57:35AM +0900, Daniel Palmer wrote:
> There are a number of very platform specific compatibles for reserved
> memory that the vast majority of people don't need and they waste
> 196/200 bytes each.

We don't want #ifdefs in the code because they are more difficult to
maintain and review. Following your approach we would need to add such
ifdefs in multiple other places, so I am not convinced it is worth.

And this file should not be having different rules than rest of drivers.

Best regards,
Krzysztof


