Return-Path: <devicetree+bounces-272726-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDQbIS94rmlwFAIAu9opvQ
	(envelope-from <devicetree+bounces-272726-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 08:35:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E299234D6E
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 08:35:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 962CE300372E
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 07:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB175363C56;
	Mon,  9 Mar 2026 07:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcjFjqSX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8DFE35838C;
	Mon,  9 Mar 2026 07:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773041705; cv=none; b=P1Mwnt28YSwkjcwnsZmEaVa33wHSB/zQmqPB5xYa6eEtNAVyu+gBwnhYe7vER1S9UW68JyX3heLnDPFYvp3kTdizy3Yxziu/vtazLULwNN3F6ekZbPaZHRch3brw9wLrTHVDHOtDELMsz++wzx9WtgFJ4ROO3/Zdpexfmn4zA4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773041705; c=relaxed/simple;
	bh=5VeOzXca6/kjHrEIF1cdtKl5a2Gl4a0YxWY3vzaZEwM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TWs21OHifPpmdv+V/cFOx05uj7vHH4qx5DV0dWGlppjgpjgLi8omgCBqpSqWesoWDPML2D93NesmVzWnOo6CBL0Bw89Y6iiUQmITConoVnWr5qn1bRNCL0ug/y2zBCfizyh1boOvU9dhjBz3zhpKmCbJ0imBcJe81Fjr1LHtAkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcjFjqSX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9331C4CEF7;
	Mon,  9 Mar 2026 07:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773041705;
	bh=5VeOzXca6/kjHrEIF1cdtKl5a2Gl4a0YxWY3vzaZEwM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hcjFjqSXK4b8wlyWQWtjlht8cavALF7zg67IK+0i21wdaVlqctXyga/xS+q3Kwm1z
	 WS5I1KQ69T0dFkRfQZzYrSBrfQwu6BW3rj0W5MtsbOUCZO6AaEifNSQo2dx3+4vp3x
	 YiQbRdk80W3gTHYAScTWuSToZt+dQ3q3r2bXqKOkfQx+IkM0u8iH+fnSjO62E8juKL
	 pSOqewwvXyn/lFLsrp4HGwEJckw9ZP4t46EELENHak0l4MZkMlO68dnL4Q6uGDaN2U
	 WP0FSlzTMezsV5w9nXrr3+rkxL/i5IQIIrh0LPxNgy67xDPaBeXUSuA+V6o26fp1Gg
	 ubf0+Fbs5i9wQ==
Date: Mon, 9 Mar 2026 08:35:02 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Alexander Koskovich <AKoskovich@pm.me>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel: Document Tianma
 TA066VVHM03
Message-ID: <20260309-idealistic-dingo-from-venus-c443af@quoll>
References: <20260308-tianma-ta066vvhm03-v2-0-5f2344685133@pm.me>
 <20260308-tianma-ta066vvhm03-v2-1-5f2344685133@pm.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260308-tianma-ta066vvhm03-v2-1-5f2344685133@pm.me>
X-Rspamd-Queue-Id: 7E299234D6E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272726-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org,oss.qualcomm.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Action: no action

On Sun, Mar 08, 2026 at 09:09:00PM +0000, Alexander Koskovich wrote:
> Add bindings for the Tianma TA066VVHM03 6.59" 1080x2340 AMOLED DSI
> panel with DSC compression, found in the ASUS ROG Phone 3.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Alexander Koskovich <akoskovich@pm.me>

BTW, all of your patches have mismatched From and SoB cases. It passes
the checks but I do not see reason why different case should be used.
Especially that it is manual process to achieve that - none of the
standard ways of using git produce such result, because SoB is added
automatically based on From name. Unless your mail server is changing
these, but that's also odd.

This should be fixed in all of your patches, IMO.

Best regards,
Krzysztof


