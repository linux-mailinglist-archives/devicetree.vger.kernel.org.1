Return-Path: <devicetree+bounces-297928-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFO3I4LCBmpdngIAu9opvQ
	(envelope-from <devicetree+bounces-297928-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 08:51:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEB254A230
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 08:51:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5C098301F492
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 06:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26BC439A068;
	Fri, 15 May 2026 06:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krXJuO9n"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D59388E4D;
	Fri, 15 May 2026 06:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778827904; cv=none; b=f3h2wjewkdPslx4Ta/Dyg2AvioJqlcwddr9lKakja9HaPc281POUIUNmQwdfIYpfpkveic4CC1P4nTfWi5rJfAcW7gv23e6avAyZQSYEFw2ipqtiXVblW2kZvZ3fQvhx/boUdGX9KwfEJrwAXx/DTSNDKVeaL3pjNdAV08Qmi74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778827904; c=relaxed/simple;
	bh=xetCbQQicxOnxA/cAWCBNjO1sljv2AqnFgNenly9yms=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lKRyrPezksswldCkyhcfmO8iWsPvTBbfQwzpZ/4yBZIFRBTj5u6epssPHmbSViXcPLypo75gW3gdU2bd2Cye6MzGTWmWorlBhSt/5h7QGh0Up+WJ4e/J3MNtKuog6Q+vrWWBiHvNo3H+5pF1ofLEuaquH5j6nZgYyAFGJhHAF0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krXJuO9n; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B52DC2BCB0;
	Fri, 15 May 2026 06:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778827903;
	bh=xetCbQQicxOnxA/cAWCBNjO1sljv2AqnFgNenly9yms=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=krXJuO9ndCrzCUWxfwt6siUoaECBWzO7J6x035a9dcURhIVBefNNnH4pZUv2aKhf3
	 80KyKhGxol1OUXWU4jwiqFj6ZfRQ+21TaszZO/xevTwbwbrrOYL0tpcTfVlTOAH/wx
	 V7/j2I8tIZ1Ifxi/wzYtObXtCHRVF9OUrkkMJCteQ9FDsltRuESAIMQdPY5BWlBeec
	 a60j3O88yB6W3BoAmEcmsyostQgj9CfXIXUg/RpSeb2FzK2Tq4HYBRiHDCEpTdqzJg
	 WeEZouBq5ijvovq6UCrDlC+eH+qPOjS9M0BFRZU+jqjdJxQ6ENrZsgh30yLaqFwkz3
	 Y22hpb8m1qeWg==
Date: Fri, 15 May 2026 08:51:41 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
	Aradhya Bhatia <aradhya.bhatia@linux.dev>, Nishanth Menon <nm@ti.com>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Swamil Jain <s-jain1@ti.com>, Devarsh Thakkar <devarsht@ti.com>, 
	Louis Chauvet <louis.chauvet@bootlin.com>, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 02/16] dt-bindings: display: ti,am65x-dss: Simplify
 binding
Message-ID: <20260515-hidden-devout-numbat-dc6c9e@quoll>
References: <20260513-beagley-ai-display-v2-0-9e9bcefde6bc@ideasonboard.com>
 <20260513-beagley-ai-display-v2-2-9e9bcefde6bc@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260513-beagley-ai-display-v2-2-9e9bcefde6bc@ideasonboard.com>
X-Rspamd-Queue-Id: 2AEB254A230
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297928-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linux.dev,ti.com,bootlin.com,vger.kernel.org,lists.freedesktop.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 04:17:24PM +0300, Tomi Valkeinen wrote:
> In principle the DT binding for the DSS IP should mainly cover the DSS
> IP. The current binding also covers the SoC integration topics outside
> the DSS, mainly via the endpoint related rules and descriptions.
> 
> A more recent SoC, AM62P, has two instances of the DSS IP, and while
> both DSS IPs are identical, they are integrated slightly differently
> (e.g. which DSS output goes to an in-SoC DSI bridge, which goes to
> DPI pins, etc.).
> 
> To make the bindings usable for both DSS instances, relax the binding
> slightly: remove the explicit endpoint rules, and generalize the
> descriptions.
> 
> Reviewed-by: "Rob Herring (Arm)" <robh@kernel.org>
> Tested-by: Swamil Jain <s-jain1@ti.com>

Same comments.

Best regards,
Krzysztof


