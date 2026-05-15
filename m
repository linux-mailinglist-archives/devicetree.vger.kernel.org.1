Return-Path: <devicetree+bounces-297926-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJmpNJnDBmpdngIAu9opvQ
	(envelope-from <devicetree+bounces-297926-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 08:56:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3574B54A326
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 08:56:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2751F300A39D
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 06:51:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 145503932F2;
	Fri, 15 May 2026 06:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtXj7cNE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4D0E388E4D;
	Fri, 15 May 2026 06:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778827878; cv=none; b=mOEI1FCbQSHtZXeHzIVfCq0zq5pFELUre4Ckvn0EgDlef9rJQ+zbtm9feaZ8tOoVW6cvLl2wUS1uhk0zSsVu2qmPCi/VjRMO89fVJolG1Xq59xBB4hc1GPPiQhG5jHCQt45Prb25uP2xIq/BTJ2ZNmp3IVxqevauCoyjqIuWMLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778827878; c=relaxed/simple;
	bh=E/EwGXyxuSs3Lty0ZqKdaGmckUJHhYIkau4tkuPEDzw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nEx1zDtMWA8bxKbt+wKloIXuPRu7m3Ye0tKjKHO5uVQquoREvmCgLLUDGKqLAwCHtuKhTaEcs945J8mRA1OJosdVrIpZeeLX37DA2ToCn010G0ViEjLLhJ7a/up6lzEh5Q2fOvckRqeCg2zjXT45oT44QNqF5hkeH8L1nprV2Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtXj7cNE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31FCCC2BCB0;
	Fri, 15 May 2026 06:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778827877;
	bh=E/EwGXyxuSs3Lty0ZqKdaGmckUJHhYIkau4tkuPEDzw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QtXj7cNEso7W7cF6Ds0KgIInqkrBbGaRZqMvNpeNQh6A/Fe2Zk6PavBtfOZeA0uFn
	 rbujdidNF5yCsMPRULQaOSeNdUO8XsywFzgsa3Q+WO3J2btH2qbZ6VAkrL2OYJcNw8
	 zaRW3zgT+0qsfx00a1JMKKyZZ4QQiBeCr7WIjx8jHElFnc4FcY32Z27itElzBPt1v9
	 R0a7WKKEreCKDRnRLy2CXg9ihiGyyhAfyQlBawYAGPCpn1oJfbZ8+NGht8d3OQFvuA
	 r2DwbnaUZb3O2tDgPTlBg8B+AVjiMKGVUre7Tx9gr1G06YS2685n7doT4BlpqEVy9o
	 qsFdplo3wkMGQ==
Date: Fri, 15 May 2026 08:51:14 +0200
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
Subject: Re: [PATCH v2 03/16] dt-bindings: display: ti,am625-oldi: Add
 optional power-domain for OLDI
Message-ID: <20260515-devious-dragon-of-prowess-abf1a2@quoll>
References: <20260513-beagley-ai-display-v2-0-9e9bcefde6bc@ideasonboard.com>
 <20260513-beagley-ai-display-v2-3-9e9bcefde6bc@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260513-beagley-ai-display-v2-3-9e9bcefde6bc@ideasonboard.com>
X-Rspamd-Queue-Id: 3574B54A326
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297926-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 04:17:25PM +0300, Tomi Valkeinen wrote:
> On some SoCs the OLDI blocks belong to the same power-domain as the main
> DSS block, but on some more recent SoCs the OLDI blocks have a
> controllable power-domain.
> 
> Add the power-domain to the DT binding.
> 
> Tested-by: Swamil Jain <s-jain1@ti.com>

How exactly? You copied YAML to the device and executed some commands
specific to that device? Which commands?

Or you built something, like run 'make zImage' command? So every build
is a test?

Best regards,
Krzysztof


