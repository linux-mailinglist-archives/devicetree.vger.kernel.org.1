Return-Path: <devicetree+bounces-292579-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCPNL6Jz+GlCvAIAu9opvQ
	(envelope-from <devicetree+bounces-292579-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 12:23:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3CF4BBA76
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 12:23:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD5A1305777C
	for <lists+devicetree@lfdr.de>; Mon,  4 May 2026 10:18:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8006439B49E;
	Mon,  4 May 2026 10:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzpCTpPr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A905399356;
	Mon,  4 May 2026 10:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777889925; cv=none; b=RGhEtWKbRi5BYKk116g21/ZRDgLNqJMnL+pS63K5Yov/9gsyQgH5hASc7aOp2nSEOysy/bR25y4gkwhdbhq4KxU5rrmUXaGEZbAczO4DzqzUZ4JLmD62MksgJAGQhl/+bNWXH6T1P4EO+9kqMeUrnEOtX4qa7Qcl779ceSsNpkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777889925; c=relaxed/simple;
	bh=iTf7A919EfkWk9helc4UbhGI96LKBoYsGAAsbdPvufk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HO/gRwcIJI6/cy03SrstGO1uIepi/EFS+U8NIHsSC+N37vy0f9kaaJDE8MOS+SFnS3FpI5NMg+HyybscfEUWsEljU7SoPu10tcWKMuPXUOB0b2ISjdjUtvseOJyLASlg7WczHNDgyeFgauWMuC8LBeoh77Tp/ENT1QzPQwQiow4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzpCTpPr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06A7EC2BCF4;
	Mon,  4 May 2026 10:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777889924;
	bh=iTf7A919EfkWk9helc4UbhGI96LKBoYsGAAsbdPvufk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EzpCTpPrKoPtROZOxYw1Sod9uFtmO0Yksc8O6pQu34LkM/bGgA9+XXXO28FZONZLz
	 ZPv1Fcw7nMZSbuVOwmPfko6YGunADHOKmE10yfUMajffgLYPxslMN1cfTIFqktCSbg
	 KT/ymIG2BtyEg/MytZyhjOK3jAhfs2Uyy+gMnWb+1OoziIGlgT0ltgaCv7vOTQ6vR5
	 OM1bXaJZIH13gAxoNUQoJBx+ZOH0sLGEhdDoxtMSn2PjjrZlGODJJ+WOuAypAeXobY
	 Jww5gmFniwFIMtwX8m++d4lW7RXeO9ewtXXlSPC99MP8oni5K+Hi7iqAyf5i4i/XjN
	 y2to9bucxnWcw==
Date: Mon, 4 May 2026 12:18:42 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Devarsh Thakkar <devarsht@ti.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	praneeth@ti.com, vigneshr@ti.com, s-jain1@ti.com, s-wang12@ti.com, 
	r-donadkar@ti.com, r-sharma3@ti.com, afd@ti.com
Subject: Re: [PATCH 1/6] dt-bindings: vendor-prefixes: Add Dalian Good
 Display Co., Ltd.
Message-ID: <20260504-imported-bullfinch-of-drama-4bc7b1@quoll>
References: <20260430183311.2978142-1-devarsht@ti.com>
 <20260430183311.2978142-2-devarsht@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260430183311.2978142-2-devarsht@ti.com>
X-Rspamd-Queue-Id: 1F3CF4BBA76
X-Rspamd-Action: no action
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
	TAGGED_FROM(0.00)[bounces-292579-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,linaro.org,oss.qualcomm.com,lists.freedesktop.org,vger.kernel.org,ti.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

On Fri, May 01, 2026 at 12:03:06AM +0530, Devarsh Thakkar wrote:
> Add vendor prefix 'gooddisplay' for Dalian Good Display Co., Ltd., a
> manufacturer of e-paper display panels and modules.
> 
> This prefix will be used for the GDEY042T81 e-paper display panel in
> the solomon,ssd16xx binding.
> 
> Signed-off-by: Devarsh Thakkar <devarsht@ti.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


