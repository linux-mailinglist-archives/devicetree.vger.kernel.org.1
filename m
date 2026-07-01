Return-Path: <devicetree+bounces-318872-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TOVSLKlzRWoLAgsAu9opvQ
	(envelope-from <devicetree+bounces-318872-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 22:08:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0039B6F148D
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 22:08:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YKQziBTF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318872-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318872-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 483CB309D207
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 19:54:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C85AA348C5A;
	Wed,  1 Jul 2026 19:54:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6DB13033E1;
	Wed,  1 Jul 2026 19:54:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782935674; cv=none; b=UcrEO5pqVOXT2BnQOtoZhsPR6i8AJnAf8Z/PlbW14LWMqiLu81EgF7WOp355gnb1uijC6x3GjNPVMzRf50y8VkscTS77xJtUSk4C4pDCnUsDTBs+CHMSdA9Cakz7CEaBECWDMBGa1IBDyA2n+flvVBbWszIOe1fk+gG2kTK11KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782935674; c=relaxed/simple;
	bh=Yl6EC9dGPdSCFCMfLW8JXrzWtHOvXcAjqFjox09q+Hs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nM6c+Kf6itaJwGH0F8grQm5/SvpDWkDrDTgOb+fF/qY2a9MtI1zmAvO4SFuU57ffd/Z3bRsCko7+AX2TZGtC2XcPN9Ulvn72JiiR89J7DIqtSXHRZYCkMxPL/x8GA3PPB8uO2/CIDG5EsvSVmBWsBEcXPoNTrevsRZ15g2k6Q/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKQziBTF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50D371F000E9;
	Wed,  1 Jul 2026 19:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782935673;
	bh=IWUhXsk0B9/BYVLkjf7VHJm5st7qtTRGbplOV534x0k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YKQziBTFRdQ2SLFHPosHeK1iyWwPXO7ExHX8Ro001uOLEyU9UBtvol1iP/s22bYlO
	 uE2VRHaTZUnsGCSJ8UMdTdWFTxv0/gD7seoSLd4qkShxjyL94uyzbWV0QuOAHuQ4LG
	 SF3CyxQ5WMT0SjA8YxNG2mUjHpsI1C1/IqQ5bdpT1NqyN9JtixuhU/psCJVz8ERDNr
	 mSRqp0acL47oOTatLWUrC7WjQScgIHc2/x9VOrt+q4bQb5LkSCsntf0n5SqOZSlQ3O
	 c1shARwrfWfpE2k4OlnF8uAWYUx3Y4d+Va3KdpMImardukJMwXt2Vf80ADcKoTJQ+V
	 ywVtlPR/yxf7Q==
Date: Wed, 1 Jul 2026 14:54:32 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-pm@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Sebastian Reichel <sre@kernel.org>
Subject: Re: [PATCH] dt-bindings: power: reset: qcom,pon: Narrow allowed
 reboot modes
Message-ID: <178293567196.1622659.10991863325336166808.robh@kernel.org>
References: <20260701105907.197150-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260701105907.197150-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-318872-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk+dt@kernel.org,m:linux-pm@vger.kernel.org,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:sre@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0039B6F148D


On Wed, 01 Jul 2026 12:59:08 +0200, Krzysztof Kozlowski wrote:
> reboot-mode schema allows arbitrary "mode-.* properties but only a
> subset actually makes sense and is valid.  Provide negative look-ahead
> pattern to disallow any modes not supported by the device, which
> tightens the binding.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/power/reset/qcom,pon.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


