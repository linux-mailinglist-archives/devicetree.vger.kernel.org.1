Return-Path: <devicetree+bounces-286729-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GA/PGBtW2mmk0QgAu9opvQ
	(envelope-from <devicetree+bounces-286729-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 16:09:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A28B83E041A
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 16:09:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B8B44301A3B6
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 14:07:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 956EC32BF41;
	Sat, 11 Apr 2026 14:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHr3q0pD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 723CF32863D;
	Sat, 11 Apr 2026 14:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775916476; cv=none; b=D1LdvLp9SdHlW448OzLO7o+lfRwdHgxFQDYwcaKU50SA0D3kuCrZCYRMOy7KpA6eb8sO1y/93ORCMsv0L3nnGSmmiE6f2XcJ1oXc1EWJpEohE85NgDIBPWGXLgUd8rUXYRZH5fIOIqTSAwroAfJ+G2VJ+k2nOHwH1Mksnw0boj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775916476; c=relaxed/simple;
	bh=0bYMjjn0En5DfzpuYHB1tqDP4Q+5+XNcpFkkSwY7mac=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I0/vHw7ASnfnEVbFFTQRah84DxtKQqdPR2oDILh/ezmkixJaWg4/6XWEq1as1Wf9+2ANdIsySLLiTGkHWV0TInXViRc2tJ4Q4mGZCwA8Kh0/vH13EeGzEntIRavFqqxyghvuPTgPr1oBL0t74ocNyAFAzSYE6OIeVt0aEJVd+wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHr3q0pD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BAD8C4CEF7;
	Sat, 11 Apr 2026 14:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775916476;
	bh=0bYMjjn0En5DfzpuYHB1tqDP4Q+5+XNcpFkkSwY7mac=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qHr3q0pDgM/vByJ013WSTSXsR5+zPzNWkmTisI6+2NuBTexXCXbQZCpzDC1Fp7eM5
	 zQ/z/Mqxv3ivuVAIVcNlqv0rcSMqaCMfQcBtHN4V8FpJuiodxXD7w/JVg4ZeHkCleM
	 QyVZoD6KjWGUb1/0exv0Q4/+fkwTz063t/9mnRPH5kQG3ypgI0Qwj1IuYqYdklxLOU
	 FzAnosySlXnA7avv8qv0Piw5+FyumIDLps5Z5AseRD7j0jnkw9C50pBkNkKhljyHAJ
	 hmC77Os4cntqjudXJO7zdNytsmTKTG9NQhJpkKaIhQZ/ptiF96KY+iV1lbv0NhfHTo
	 mR2sV7zVc7KAA==
Date: Sat, 11 Apr 2026 16:07:53 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Swamil Jain <s-jain1@ti.com>
Cc: jyri.sarha@iki.fi, tomi.valkeinen@ideasonboard.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devarsht@ti.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, praneeth@ti.com, vigneshr@ti.com
Subject: Re: [PATCH v3] dt-bindings: display: ti, am65x-dss: Fix AM62L DSS
 reg and clock constraints
Message-ID: <20260411-resilient-tireless-centipede-cd6fef@quoll>
References: <20260410105955.843868-1-s-jain1@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260410105955.843868-1-s-jain1@ti.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286729-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[iki.fi,ideasonboard.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,ti.com,lists.freedesktop.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A28B83E041A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 10, 2026 at 04:29:55PM +0530, Swamil Jain wrote:
>    clocks:
> +    minItems: 2
>      items:
>        - description: fck DSS functional clock
>        - description: vp1 Video Port 1 pixel clock
>        - description: vp2 Video Port 2 pixel clock
>  
>    clock-names:
> +    minItems: 2
>      items:
>        - const: fck
>        - const: vp1
> @@ -179,6 +195,20 @@ allOf:
>          ports:
>            properties:
>              port@1: false
> +        clock-names:
> +          maxItems: 2
> +        clocks:
> +          maxItems: 2
> +        reg:
> +          maxItems: 5

Also constrain for reg-names,

> +    else:
> +      properties:
> +        clock-names:
> +          minItems: 3
> +        clocks:
> +          minItems: 3
> +        reg:
> +          minItems: 8

Same here, please.

And if you are sending new version: they should be listed in the same
order as in top-level properties, so reg, reg-names, clocks and
clock-names. (juging by the diff)

Best regards,
Krzysztof


