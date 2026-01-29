Return-Path: <devicetree+bounces-260961-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oKI2J1SRe2nOGAIAu9opvQ
	(envelope-from <devicetree+bounces-260961-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:56:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD4EB287B
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:56:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1EE0B300ECA4
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 16:56:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2807E346798;
	Thu, 29 Jan 2026 16:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QP7IlsrJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048443446AF;
	Thu, 29 Jan 2026 16:56:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769705810; cv=none; b=QjhV+y6hd87sLBgJFZZbIghkcO6yhF+oVO9aG1kys2zd2vZIMOdWX0CHp9Xw3+DNlr4QK3fNglmAlw8ECT5MNmCMQukSH5pAXzTT8sFSbAc52nffwphsGfMTcY19Lr7Pe7CaCH0jUfPhdXJzzQXqSy/V87pjVJBd0Q3XLfEB83k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769705810; c=relaxed/simple;
	bh=m9r0bV5tm34u19PRjkFevkAscNe7jnYkskW251n5sIY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hi5+gA0WZ38gdrEf44QUZHgGUuYnjOF3cwnRo4dcJsEw/UpmnkGk48aDJJsxdbr9378rRGU3s0PKhLezOwBxl8kgnlzFBxm0J8jp5JWZKQ0EDVHK1QLfICD3s0qFBD/sAWHoOvaRIuWTxCAeUg8RUPN/EXTQEU4Tn99vI1mNc6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QP7IlsrJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90E40C4CEF7;
	Thu, 29 Jan 2026 16:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769705809;
	bh=m9r0bV5tm34u19PRjkFevkAscNe7jnYkskW251n5sIY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QP7IlsrJqnXK7Mc8acLftaX0JPlcSCxuVo3HTmS6OQFbSsRbCD36wcsyGQGa637Gk
	 wOJgfBgh6yk3d1Jtdf2mT7l5zLfkyUCOwGnczCaXCFc6T0VMncyoCqlLbm94G/QXsN
	 +Mkm9/VVYcvfxdZFdY4uQ0UACqEFk3DmBIYii4yaqSPnX3wqdldqwIvbCqpaCugIF8
	 GCn5m+HD9dXQavtq7UlCsl3FAbetoldcdvQDLH7g4Mo6Jz34aIHy2SPmIZtWlhrSM7
	 M1Dd98j92+i2AOp//1EjK9T6TVwpKFwZtH9TBYdyXtp+SvPHTuud8xUUQbsE632LU8
	 xJ5iVrgt45DqQ==
Date: Thu, 29 Jan 2026 10:56:48 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Lukasz Majewski <lukma@nabladev.com>
Cc: imx@lists.linux.dev, Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Michael Turquette <mturquette@baylibre.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Abel Vesa <abelvesa@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v4 2/4] dt-bindings: clock: vf610: Drop VF610_CLK_END
 define
Message-ID: <176970580832.1273597.12768632002684119735.robh@kernel.org>
References: <20260129095442.1646748-1-lukma@nabladev.com>
 <20260129095442.1646748-3-lukma@nabladev.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260129095442.1646748-3-lukma@nabladev.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,kernel.org,vger.kernel.org,gmail.com,nxp.com,lists.infradead.org,baylibre.com,pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260961-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 1BD4EB287B
X-Rspamd-Action: no action


On Thu, 29 Jan 2026 10:54:40 +0100, Lukasz Majewski wrote:
> The VF610_CLK_END should be dropped as it is not part of the ABI.
> 
> Signed-off-by: Lukasz Majewski <lukma@nabladev.com>
> ---
> Changes for v4:
> - New, separate patch
> ---
>  include/dt-bindings/clock/vf610-clock.h | 1 -
>  1 file changed, 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


