Return-Path: <devicetree+bounces-279680-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INRyDI1XwmmGbwQAu9opvQ
	(envelope-from <devicetree+bounces-279680-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 10:21:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D1B3057C3
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 10:21:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 19BE930E9B26
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 09:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 634113DC4A0;
	Tue, 24 Mar 2026 09:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOK+ptvA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA863DBD57;
	Tue, 24 Mar 2026 09:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774343482; cv=none; b=QQ1R3K+LZFt77EzFeNRfy254ZoTfL7HnCYA0uoW5GaQ1HFk5HAcTDYngWFkJiCANw+NHypaa4HETS+wvhTeYfo+HrDFICgF4g5sHt/ivyyiHy42SLlXyVGatFQUcepjwZ7RHHe9fnltNHEb6vqk2EqIPODBq5/qL01DU1S5bh44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774343482; c=relaxed/simple;
	bh=cZG8DBYIiaHe/buOYngWs4iCpUQlV84Vyl9E/F2AttA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rwitjT1FrEwHdxyE0VsbioRTRAJ+hJyWWS+jWo8caAOOzLdsBeQ+zpemRed8Rde1CMamwoOWB/np6P1XtJ15ct8MVpLTznRz3nG3F4o7C2ry1W1h5/yczVi+9ICqzXjkTyx1WlmVpCqXgu3ZOoY1B4hs4SKqk+4PxQ3W+iy/TQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOK+ptvA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8684C19424;
	Tue, 24 Mar 2026 09:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774343482;
	bh=cZG8DBYIiaHe/buOYngWs4iCpUQlV84Vyl9E/F2AttA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GOK+ptvAw1kwAETet0dE0NfrIiDj9ffvR8FbiWKHvqBPG4O+PeUtPmPbo7e4pfWkS
	 /yP/vkVLd4Z2JYx0cU3Bj/N1ymISfqwtDNbmCkjBT9Jp6wkZbPSFmejXUpWPsGqn2g
	 8tNzCVzmp9aRbN6Pf3q6/LS26CBOsC76gFnSGRoCe+jXgpIEcg+RyFdi2xcWqY2P4L
	 EXph8vum8oGgrfwIz3B7t6hwCvxbBe6/mctPQc+mMczi/CRpYAHQhMCpfN9XonxsH9
	 aoz6DkonzdFK9juqg9nDtV2SsjYPD8sTtg8DJFy7w5NrHS8qom92/wiBuo59xPfATi
	 bPPvcvXSYLE2g==
Date: Tue, 24 Mar 2026 10:11:19 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Udaya Kiran Challa <challauday369@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, skhan@linuxfoundation.org
Subject: Re: [PATCH v2] dt-bindings: arm: mediatek: mediatek,g3dsys: Convert
 to DT schema
Message-ID: <20260324-positive-fractal-moose-7b439e@quoll>
References: <20260323180616.23333-1-challauday369@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260323180616.23333-1-challauday369@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279680-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B6D1B3057C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 23, 2026 at 11:36:16PM +0530, Udaya Kiran Challa wrote:
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,g3dsys.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,g3dsys.yaml
> new file mode 100644
> index 000000000000..4eea36632e63
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,g3dsys.yaml

Apologies for not noticing it earlier, but still two things:

1. Place it in Documentation/devicetree/bindings/soc/mediatek/

2. Filename based on fallback, so mediatek,mt2701-g3dsys.yaml


Best regards,
Krzysztof


