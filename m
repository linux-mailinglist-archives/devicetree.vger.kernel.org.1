Return-Path: <devicetree+bounces-289612-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJnjDg3k6WkGmwIAu9opvQ
	(envelope-from <devicetree+bounces-289612-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 11:19:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5DF44F387
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 11:19:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6677D3013FED
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 09:18:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7731F35DA60;
	Thu, 23 Apr 2026 09:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssixCe85"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79F23E3C4C;
	Thu, 23 Apr 2026 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776935897; cv=none; b=Vda1ySdxWFh0dJNjHB7b2OwLY03aHW3SXEU0LUjvjrGfJj2lMNAiyOATpBCzkijwftWURS+z8rRrmGm/Uay4E+9bIIybT+d3Hqx7bI5xty35TugBbd2jqnWJsK864kevPwWjx/T1zsPS5gqdDVtS2i3lFXsTh00fsd+ar/autOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776935897; c=relaxed/simple;
	bh=Y6/lNXH3C4HQbpKDWa0YwXaIA3OBZvjg8EbWb10xWK4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hy+B7mCQlYRLlQm7BiwBCfwm+kqwbB074HCMTAfc20hN4Z7u5i/LaPgr6sNO4istdtApC+I4sh4E81fwz6ziCvQ5mD+zXdH9TiG0a4SvPmp067CrARZAt6X4pl6qcZDv7ljEAjxma0CXPkZMCMd/YEkwDRsgV7BiMto90n1pePY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssixCe85; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 888BEC2BCAF;
	Thu, 23 Apr 2026 09:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776935895;
	bh=Y6/lNXH3C4HQbpKDWa0YwXaIA3OBZvjg8EbWb10xWK4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ssixCe85SjUCd04FcVKLIRgHxFUg4eHYb4pMARdhoZfYbnMRQuleK8Fvtjd/MKcjw
	 gUWHQmaiiRzHaVlVs4thUppefIzR7Jqemuorh/hYb5Z9gSPhBdsjuacksfeqhuWXM4
	 NdL6bZ08gNHAyDzIpjUVJNDH+IoHDVVklrHz0onuM9X+IhNIUmnSwE+GsA2aSjJQmL
	 aR1m9Wy9OVL21O6+pZ6avYYn9Ncun71+y1ImlVKdnZGt8YEt619OHo/VQKfvUGCZNU
	 IYp0huftnALJiN3IqsfFz7pw9SktEItuZHkVwioeIN3pUKYNgO4IAvrtP39XoJO1VL
	 jSlZGm85rhHkA==
Date: Thu, 23 Apr 2026 11:18:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: phucduc.bui@gmail.com
Cc: Lee Jones <lee@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Joseph Chen <chenjh@rock-chips.com>, 
	Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>, 
	David Rau <David.Rau.opensource@dm.renesas.com>, Animesh Agarwal <animeshagarwal28@gmail.com>, 
	devicetree@vger.kernel.org, linux-sound@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: mfd: rockchip: drop redundant
 wakeup-source definitions
Message-ID: <20260423-elegant-camel-of-might-a3afda@quoll>
References: <20260423042831.21114-1-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260423042831.21114-1-phucduc.bui@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-289612-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sntech.de,rock-chips.com,dm.renesas.com,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6F5DF44F387
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 23, 2026 at 11:28:30AM +0700, phucduc.bui@gmail.com wrote:
> From: bui duc phuc <phucduc.bui@gmail.com>
> 
> The 'wakeup-source' property already has its type defined in the core
> schema. The Rockchip MFD bindings redundantly specify 'type: boolean'

No, core schema has TWO types.

Defining it as type boolean is not redundant, because
of_property_read_bool() on non-bool is deprecated.

This must be explained somehow - are these device drivers expecting bool
or not?

Best regards,
Krzysztof


