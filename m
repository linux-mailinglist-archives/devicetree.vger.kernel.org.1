Return-Path: <devicetree+bounces-321137-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UtMcFwW0S2o1YwEAu9opvQ
	(envelope-from <devicetree+bounces-321137-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 15:56:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D08C871190A
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 15:56:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=blCV9upD;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321137-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-321137-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 241ED34BC231
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 12:17:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F4020424665;
	Mon,  6 Jul 2026 12:17:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E98C241F7CD;
	Mon,  6 Jul 2026 12:17:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783340250; cv=none; b=mc7n1KyrhaLRtbGzlKCnQLT10kVIw0PWQzNEPRhUWO7rqmaOiX626Ud7pUXAHkoSSVHrzUKPxh33Ol3l0f/82GM9k9CQnUqzYgZafsa1+etc4H0Upd3xkY2azG/ho3kDhEWK5MI5+foH0dSbaDI16lvLpzeuUT/Ypl3JJBGvHgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783340250; c=relaxed/simple;
	bh=0nskR7GDIgxvdgeUxgmYubgNNNCP30wq9nwJyf5IBds=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Rx437pyhwp2DKFhxRkuQlxCqJBBt/JK/r6ZTL7mpR2DVTyLGGgFbyS9HwfpUrdAD+IoMGanmo4w62T54FTeM+ZaoL4FeZ7ZetGbDVsH7EygNREwXJp+s5UuI3dt34TqkNDBhAg3oTv0jWRCP5QN1CyMEw9AhSwY8JgMRhirTp4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blCV9upD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F1241F00A3A;
	Mon,  6 Jul 2026 12:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783340249;
	bh=57LMw+CKpYgHb0dlcpXBJ814pjZ9QY7mvbPGM3p69pY=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=blCV9upDdpZjnrvTCKuy5ZYx9VuMfq+iO/JzlE+4EvsIbF8oG3WeoLYKdz08I/TpF
	 puGLsdzlmrg/XFY4lHVDPXsq4/+H7fRIhgzTeEdBtaFfIltyXlZDai0oSMCy6szbfh
	 7NLZoh2oVFMYz5bfdF12CJLZeCgHrDled4kMaxK+JXDS2t1T1TrAvPvQtNb7sQxx+P
	 M8gcTI3AdCYRn8Xb/8Owv4TZwhQtn2A2E6ogdq7kAwPGrxQ7cGrOzxS0CDCUKN1VHK
	 bjQDrPYm6/X5qYq1XwTzZwUIFgO70qYbIew/QtXrmgOjFLcs9s3Iu5HbJtKIIAK1vg
	 wati4ooOwa0Yg==
Message-ID: <76e21440-6ac8-4484-bada-da8e89ab086a@kernel.org>
Date: Mon, 6 Jul 2026 07:17:28 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: intel: arria10: Correct indentation
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260706101913.341540-2-krzysztof.kozlowski@oss.qualcomm.com>
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20260706101913.341540-2-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-321137-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D08C871190A



On 7/6/26 05:19, Krzysztof Kozlowski wrote:
> Correct spaces or mix of tabs+spaces into proper tab-indented lines.
> No functional impact (same DTB).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> Ongoing bigger work for all bindings and DTS with built-in checker (dt-check-style).
> ---
>   arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied!

Thanks,
Dinh

