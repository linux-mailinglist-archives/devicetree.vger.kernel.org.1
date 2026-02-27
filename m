Return-Path: <devicetree+bounces-269188-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBmeLeR7oWnStgQAu9opvQ
	(envelope-from <devicetree+bounces-269188-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 12:11:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B0A1B6648
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 12:11:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 14B7430A2588
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:11:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C490F3EDAA9;
	Fri, 27 Feb 2026 11:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JD01ltOB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0C0C3ED139;
	Fri, 27 Feb 2026 11:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772190673; cv=none; b=BnupHvbJdmrRLfgE5LOi4iMOz5NSl56U9Ul78SOSmG39k5dc8NUbOm9EJ/sf4b8mWJoloTNyDURegQZcwumLW0CMl7s7XlM9jKp9IgTJLNWq76I1YmvZG3ijc+AGNV27rhpkagnyvKV8XIOf7Ivjdxxv0A1MLeZjAb9j2evunT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772190673; c=relaxed/simple;
	bh=ByJSXbskKVlYJWktT/uQ+86yUeVd1GJTKkqgRLkI2nk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hz5LVYLHqhiq8dAIUKYE4Nus9rSWda1pVaf077yJRz9nsKOWgJjT6tmz3wTHqgcBNQDrXOxHFRAnyqUBScPPcLnBUSSsN1ZOHuBB4J7gknBsGaZ8cXB2GtrQp93Znx7QbxW6Q4jXh378IN+PFO2xJXOWOKDLiivlp+dsdbznAxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JD01ltOB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD222C19423;
	Fri, 27 Feb 2026 11:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772190673;
	bh=ByJSXbskKVlYJWktT/uQ+86yUeVd1GJTKkqgRLkI2nk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JD01ltOBCcN5lg69PbPA49+0fl3lUbNOnqs9RVH/O6FIRavhh6bJ4WqcuTpYZpdNR
	 7hg5c+ZLf9MxfMFSTgBs/myeSzU0FD7nbcBQCxvitGzjC0UL5oD2naMJVsyXjWiwnZ
	 rBRVk2yqD/SZvH7BQdbU+E5E1kzMdcghteJIIOygQ1NBUaY4G693Zc3QrsXX4p7qDX
	 b5EH2ImkB/mnRLGRoEYykG2q4rzzRTYY9oOWe0swLEm7cSnBWjumOSNGWbM2V0kQlb
	 k8lOwLjwhI+k90fKtkAs06PK1IEIFvhF2TFts/vIwLnUXud/DZqA9J+gXyoV6gHucv
	 YrQB7mAXhIDsw==
Date: Fri, 27 Feb 2026 12:11:10 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Add Tianma TM050RDH03
 panel
Message-ID: <20260227-illustrious-industrious-hare-1bd971@quoll>
References: <20260227-tianma-tm050rdh03-v1-0-cab78a0d765d@nxp.com>
 <20260227-tianma-tm050rdh03-v1-1-cab78a0d765d@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260227-tianma-tm050rdh03-v1-1-cab78a0d765d@nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269188-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,ravnborg.org,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Queue-Id: 36B0A1B6648
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 05:31:35PM +0800, Liu Ying wrote:
> Add the Tianma Micro-electronics TM050RDH03 5.0" WVGA TFT LCD panel.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
>  Documentation/devicetree/bindings/display/panel/panel-simple.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


