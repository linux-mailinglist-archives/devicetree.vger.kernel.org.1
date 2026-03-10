Return-Path: <devicetree+bounces-273528-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kF2WA30hsGmCgAIAu9opvQ
	(envelope-from <devicetree+bounces-273528-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:49:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C77CE250D98
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:49:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 31C903177E19
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:20:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52B6D3A3838;
	Tue, 10 Mar 2026 13:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+FZv+gC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E69F2DC332;
	Tue, 10 Mar 2026 13:07:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773148050; cv=none; b=QZU1iWwJpjeCqiozkvTkE05hnSXXXGyNZBW1LrnyV0mE49CyVGymljl22yUKLhMzQpB8PpcRtsfqXVoeymb8tho8M3TZdNzZkEBSUg+fiImtyLQthZW/LfllVuM1UYtbN6MCR4MS7egxKjkmfjmGXpj/97rLE/9OdVzp/bouD9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773148050; c=relaxed/simple;
	bh=4+SaNib3pUJYCNJtfv1dZilBc3fNPAJeQ2G0ugxTdBg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Met2Y39WzNExB9JfxAcrBolHAxxQRw6xknJVcfOFttQ4Y+MdW+OPwHKDQhHiX2EkbiaUepaWD2h0mO+teAjmwju2HLF6FqJH2yUF092HMiuJ2TyAnbPRpEG0+ohbCZrAbJdJC7zoUWr5qudsw7Jviq5V/ZameVbu4MhZ7ASO4s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+FZv+gC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08F4DC19425;
	Tue, 10 Mar 2026 13:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773148049;
	bh=4+SaNib3pUJYCNJtfv1dZilBc3fNPAJeQ2G0ugxTdBg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c+FZv+gCD13AGNkW3GRgoA7FEcMmiy/BUvJeuVCN6OpKCzLAQtOq1Q2RNuDokRGpX
	 TlAgH8y4b5HTYywpoQbR7RDnuAOGnHbLAY+tTVU8h96nTWVikH2z1UVQQAg/TGEbYe
	 fTn1wwynm1nlFlq4VCAONqpS6xpTF2XYyxqeezPTeRAvpNrm2XRj+GC0Rpoxe6sEK3
	 vnZ8hw6iALMOjBd2mE6dH2ggEi8GFTS6oYuyjS451VAedkzZZEEdn9iRtulwJ1Ko6f
	 F1fsyZV8Tj8zx3UY4VWW83WYA1fy7OdjVh5fgd5dHZSDzmUoCm4IXKxXXTC6btczY6
	 JB8kJxNHEXC2A==
Date: Tue, 10 Mar 2026 13:07:25 +0000
From: Lee Jones <lee@kernel.org>
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
	Matti Vaittinen <matti.vaittinen@linux.dev>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: bd72720: Add ROHM BD73900
Message-ID: <20260310130725.GL183676@google.com>
References: <6eaa9f08848c27c462e156e31ae5bdfd33bf2fe7.1771938507.git.mazziesaccount@gmail.com>
 <00f4efa9-bdc2-4f10-a3a1-88bd16ac38ad@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <00f4efa9-bdc2-4f10-a3a1-88bd16ac38ad@gmail.com>
X-Rspamd-Queue-Id: C77CE250D98
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-273528-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Tue, 10 Mar 2026, Matti Vaittinen wrote:

> On 24/02/2026 15:11, Matti Vaittinen wrote:
> > From: Matti Vaittinen <mazziesaccount@gmail.com>
> > 
> > The ROHM BD79300 is almost identical to the BD72720. Main differences
> > are the initial values for some of the registers. Thus, it appears the
> > BD79300 can be handled with same software as BD72720.
> > 
> > Adding the compatible for the BD79300 enables people to use the real IC
> > type in the device-tree instead of claiming it is BD72720. This does
> > also help differentiating the ICs if appears it is needed.
> > 
> > Add own compatible for the BD73900 and mark BD72720 as a fall-back.
> > 
> > Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
> Hi dee Ho peeps,
> 
> I wonder if this should go via MFD tree?

It was missed because of a malformed subject line.

If fixed this up and apply the patch.

-- 
Lee Jones [李琼斯]

