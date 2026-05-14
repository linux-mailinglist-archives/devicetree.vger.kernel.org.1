Return-Path: <devicetree+bounces-297514-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UD7zMoW9BWpZaAIAu9opvQ
	(envelope-from <devicetree+bounces-297514-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 14:18:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 311B85417F1
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 14:18:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B32AB3021724
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 12:18:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5F763D890B;
	Thu, 14 May 2026 12:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEd74yD8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FED3C2BBE;
	Thu, 14 May 2026 12:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778761079; cv=none; b=pBCboPpFUXJUJ5dBZaF2X4+y63Zys3I1/oeMyiYoZHzrbVjAha/HYuD+8DjwY9xniBwGUS0B7pj+/32BQdGLzYm/zXJZC/IzlCn0e1Nhy8dzo1s27GUlQqwK1mU0iWWAOBkuZV9GwOXfDsE8iENp7cuP/sopsdK1EH+gUzCpxXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778761079; c=relaxed/simple;
	bh=87+aO5p1bNGRBRmNNQEI8+KVqy308WQ65fW8y2LIPgU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PALPN+wmyOjpUS3MWjFuKw5+8oEqnE/tVKOTKf1NSuGWLnHczvGWmBURwon92bE0PE4T3qhDtf597QC/9YBSc81dG6oc5XcrThpqTY7cJOf1wJ8v6TJfCAvmtFhQd6TRzqaxamLpsXV/C9DFVbkEhD8rhdmhHUgYjUPMdMcAZ8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEd74yD8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E50F9C2BCB3;
	Thu, 14 May 2026 12:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778761078;
	bh=87+aO5p1bNGRBRmNNQEI8+KVqy308WQ65fW8y2LIPgU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WEd74yD8e32sOy+/u6cjwDptdso45Sz2uIDhAc3L1/CNE0QF/70BLrgB5xN6fAIb3
	 mYJG0s1xxiMKC1uY63zsEjm8g+OXbKMop+wKc9xumvN8Vma1KI5DbLcQTTDUB537Z9
	 72Z+90MN2yZ2OzAXcmqRoYeDmEepX+psEpysCD3/ChGYDh3Cguno+1rq5WEfH6wnNB
	 F+ccoM9/ZwCnjf9sfTfLlJhamUxDxrfQ2ZCnlRIT/ZQJVarV+MstOA+RAR9816QQ8R
	 c71jF9alClI/ih8ZzUMXWBI0cnnAhEE5nlkZzp7ysoS0gKpjnTyLp/5OInD+iTyQoU
	 LtmzkQYBL0AZQ==
Date: Thu, 14 May 2026 14:17:55 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Jisheng Zhang <jszhang@kernel.org>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Frank Li <Frank.Li@nxp.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-i3c@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: i3c: dw: Add apb reset
Message-ID: <20260514-fat-unyielding-jaguarundi-a5ddc6@quoll>
References: <20260511031945.3228-1-jszhang@kernel.org>
 <20260511031945.3228-3-jszhang@kernel.org>
 <20260511-amnesty-afoot-84537aafc02c@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260511-amnesty-afoot-84537aafc02c@spud>
X-Rspamd-Queue-Id: 311B85417F1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297514-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Mon, May 11, 2026 at 05:02:18PM +0100, Conor Dooley wrote:
> On Mon, May 11, 2026 at 11:19:44AM +0800, Jisheng Zhang wrote:
> > Add dt-binding for support of apb reset which is to reset the APB
> > interface.
> > 
> > Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> 
> Please squash both dt-binding patches.

I think this should stay separate, because first commit is trying to fix
undocumented existing ABI. It will have different rationale and could be
chosen for backports.

Best regards,
Krzysztof


