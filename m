Return-Path: <devicetree+bounces-323357-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ui44B2hLT2rgdgIAu9opvQ
	(envelope-from <devicetree+bounces-323357-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 09:19:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC4E72D8A5
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 09:19:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oCJahx5I;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323357-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323357-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CFA21300BCA4
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 07:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6640839936D;
	Thu,  9 Jul 2026 07:18:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5869129DB64;
	Thu,  9 Jul 2026 07:18:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783581513; cv=none; b=dt8oayy8mPhURPY7SsfoFtTAs1jCdoycpozEeW5RmLdsDunpkbwcv0Anm9d5Et8C9ITGHBqocrqOwIPCT1uvvBaE5vqoJ5tmhb1y20NcFZilKFp7Dez625PN0LD9GhF4WYPSMfHpBDUxr81WH61AbxTRd8Y4DR/bS1064PYoAsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783581513; c=relaxed/simple;
	bh=gRKH6yVFOpakanSra/yBAh3iPcHcQ1aQ0Z0Rttpcr/8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ovyg1DSkNzrezv4y5JvEz+2yspgAgCQ1hlcZWBlUGnWgm80uKY6Y6ZKTmXhDDCpFY/r8Q3k1msPxNdB4BudWK3M9mu237EUysSEQDmgK/NNQ7zSO0Jk5Y6971rnobvwrFG6oV2Nj9xfZSSXZlQfEXwHzRejBo5C9+fu+EoLGD7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCJahx5I; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F24271F000E9;
	Thu,  9 Jul 2026 07:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783581512;
	bh=kgCeCn6OahOqO4sDrHaiF/txhFdhW29F03MbnNXOaSU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=oCJahx5Ib5Fv3jXdN775xAah5Yb7crnZNGyNLVjSxmyvfc9saMBUIEtdP/XFLAoPZ
	 PpA7ii9+S1kcC43WPjl9RhXm0rRGCJCmuPC4l7d4/2ZxjICmTtNsKbVv05t86H6Abi
	 KcK5mk/GRRdC/JhL/kDA5AD323UuHvKICaZtJlSv4u5L8sBeCXnByp2Cvgd9PI9WmI
	 yzc2rwvYsJIGFao9cwVIjPeEuszyP8ASlDn+kP85DguHaYva4dCbEwJRrYeaaTRsmd
	 BfKCIcFZVa4VEcAbVoO/ac8iardc9WmIloGAPLm56LgnTiHIg7Wz5GKzGQB5Mo7XEc
	 CHkrgbDjlk8uA==
Date: Thu, 9 Jul 2026 09:18:28 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Md Shofiqul Islam <shofiqtest@gmail.com>
Cc: linux-iio@vger.kernel.org, jic23@kernel.org, 
	devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andriy.shevchenko@intel.com, u.kleine-koenig@baylibre.com, joshua.crofts1@gmail.com
Subject: Re: [PATCH v9 1/2] dt-bindings: iio: health: add adi,max86150
Message-ID: <20260709-nondescript-thoughtful-bull-b08e2a@quoll>
References: <20260707112714.2261727-2-shofiqtest@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260707112714.2261727-2-shofiqtest@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323357-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shofiqtest@gmail.com,m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andriy.shevchenko@intel.com,m:u.kleine-koenig@baylibre.com,m:joshua.crofts1@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:joshuacrofts1@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,intel.com,baylibre.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0CC4E72D8A5

On Tue, Jul 07, 2026 at 02:27:13PM +0300, Md Shofiqul Islam wrote:
> Add Device Tree binding schema for the Analog Devices MAX86150
> integrated ECG and PPG biosensor.
> 
> The device exposes two PPG channels (Red LED and IR LED) and one ECG
> channel over I2C, with a 32-entry hardware FIFO and an active-low
> interrupt.
> 
> Signed-off-by: Md Shofiqul Islam <shofiqtest@gmail.com>
> ---
>  .../bindings/iio/health/adi,max86150.yaml     | 65 +++++++++++++++++++
>  MAINTAINERS                                   |  6 ++

I downloaded entire thread and... it is only patch #1. No user.
Please thread your patches correctly.

Best regards,
Krzysztof


