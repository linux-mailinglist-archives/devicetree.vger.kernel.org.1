Return-Path: <devicetree+bounces-308421-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f964LAnsJmrenAIAu9opvQ
	(envelope-from <devicetree+bounces-308421-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 18:21:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B01E658A52
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 18:21:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Bdc7zB/i";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308421-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308421-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 78AED30848E5
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 16:15:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E479436C9CC;
	Mon,  8 Jun 2026 16:14:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CC1346E47;
	Mon,  8 Jun 2026 16:14:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780935291; cv=none; b=ivTVHSkWM9FnsD62g5x/RuwO7d3JOqFjctnRts6kwd3TOMWDAzYLr0PYP9vIy9LOXDZhmwjgb/wJhL9fZ1gU3oP3OEqdX1IEX2iQKzibsC4s4JlTOinOT/OzkPO7qOf4/v6ZTqc1zP13p8MKNceKCR4gihiJiAqtJLpAgiS9NQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780935291; c=relaxed/simple;
	bh=B8hgE4M7eXI7kSmC4eghMQkY6CackfUHmBQthp3sLAo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FKZeIISErhOqTrySn7JBbkqvgf3lk6W+wWkz+LU02xdArZqYGucsSIFmdy6Ij1lHcI6+TNd668rLOq8YhhvAXqM/Eki+6vSiVugIWy0/DnGh4jayNCK+pKHfTircdNPsg7ACHelvdUiWTbtuXxe3rp+Qjbrs4QKYrNopb10+YBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bdc7zB/i; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 692741F00898;
	Mon,  8 Jun 2026 16:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780935290;
	bh=mklMJSdWkBcjZ9kQWelFLY3RhwE/PmXneAVMlDoJGOM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Bdc7zB/ixMQZL1yv7wGg9roiG0FPPLJzvP/rh8NIqMr55fATCURLYg//nWUrfflZC
	 LYA6qaqMCc6ILAfxwZTX5JQWFC+ACEaVl5RrJfLS99XAiJkO26Uu6ojkuunaHE/Y3x
	 K45/+8w994ziUNie/F6cuVl1vbdRdZ0zu60SvCCNfDlupR2JkEg84p9KN3dJSiT5IR
	 Z2bQ3B33POGNdbHweroy+Z3Rh34/Av7f44RvzCxeleNAP7NBvyedN7NIYCD/+xVDKh
	 X64oGMtDm6Bh3FVQ/G9iwOyXykgysmS0cD2tQYq34h2c9FPPk+2W8TYvG5BI+qGInd
	 NNAearBd3Fcfg==
From: William Breathitt Gray <wbg@kernel.org>
To: Wadim Mueller <wafgo01@gmail.com>
Cc: William Breathitt Gray <wbg@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/3] counter: add GPIO-based counter driver
Date: Tue,  9 Jun 2026 01:14:39 +0900
Message-ID: <20260608161440.1172602-1-wbg@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260608-gpio-counter-v5-ping-wafgo01@gmail.com>
References: 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=649; i=wbg@kernel.org; h=from:subject; bh=B8hgE4M7eXI7kSmC4eghMQkY6CackfUHmBQthp3sLAo=; b=owGbwMvMwCW21SPs1D4hZW3G02pJDFlqrxyLdZ+vq66q/rPC60TAhs+H4vfdDPzjHP9k25J6j r67qZOTO0pZGMS4GGTFFFl6zc/efXBJVePHi/nbYOawMoEMYeDiFICJ2Fgx/C+dpRufGOUyO6Xt 8QaV/zs5vvTqXFi360/yn91dgmsEi/4y/GZzPXRKoVpQNcFRKyXuwa8Nxs0zTwYqTHh96yTHNW7 5JUwA
X-Developer-Key: i=wbg@kernel.org; a=openpgp; fpr=8D37CDDDE0D22528F8E89FB6B54856CABE12232B
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-308421-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:wafgo01@gmail.com,m:wbg@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[wbg@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wbg@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5B01E658A52

On Mon, Jun 08, 2026 at 02:19:32PM +0200, Wadim Mueller wrote:
> On Sun, 24 May 2026 21:38:43 +0200
> Wadim Mueller <wafgo01@gmail.com> wrote:
> 
> > Add a binding for a generic GPIO-based counter.
> 
> Hi William,
> 
> gentle ping on v5 - it should address all your v4 feedback, and Conor has
> acked the binding [1]. Anything still open?
> 
> Thanks,
> Wadim
> 
> [1] https://lore.kernel.org/all/20260525-register-bogus-b198545b69a8@spud/

Hi Wadim,

Sorry to keep you waiting. I'm still working on the review for v5, but I
should have it complete by the end of this weekend if not sooner.

Thanks,

William Breathitt Gray

