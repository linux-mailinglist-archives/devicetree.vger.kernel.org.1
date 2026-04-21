Return-Path: <devicetree+bounces-289167-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BTGOnOp52lQ+wEAu9opvQ
	(envelope-from <devicetree+bounces-289167-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 18:44:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 528A743D8C3
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 18:44:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E9403003EDD
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 16:38:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90C1F377EC7;
	Tue, 21 Apr 2026 16:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="RSg0wuXi"
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta1.migadu.com (out-172.mta1.migadu.com [95.215.58.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09CC5263C8F;
	Tue, 21 Apr 2026 16:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776789516; cv=none; b=O6TPEo3QisVZo4KEYY9WT3g05EA6T961lS0KJp48JUtGJldFC/VKrgaiUO5LPqzgJBTCe1h/qLoETAhYv86oW9fsMNvlGVw76g1x5akgT//i4pjOLGBVkrO64brA+Vr8OtpltHmA3X9n/Rw8tziGsfnfCHJ3Qw+v3j/sYOpERPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776789516; c=relaxed/simple;
	bh=O2GMHmhyect/NQH7bp/fBr/n4b8SvwmSezfoglsqxT4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:Message-ID:
	 MIME-Version:Content-Type; b=dRMTDgmHnYdAFopyA54dN3kzqfeLeraOZsgRyMCRc2PmF1bPWp1I7wdVo1uHEyuiWZZA5nhFjyP8fxX0j3YlFSFj3jZz7o1UmvexqvrDezR12i+gi+uzwn5pmKAbaeOyp71vWxJkFKctkRvrZK3OjqBjEMduEmitDDjfvtfoGz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=RSg0wuXi; arc=none smtp.client-ip=95.215.58.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Date: Tue, 21 Apr 2026 16:37:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1776789512;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tYNRr78Bk7kKy8q5PZ8wAhWa1XHOZpv8D1mw9I7KD98=;
	b=RSg0wuXin0pVrh27qZrwL8SFBe6CUFcCoX5mUHmHSVFNgDcpusGKhUDQqcoSnZc8rwLAvx
	WXsEuOz92oH8jypRR5oA6XeD6sqtjH96SMgOVnm9c/z/mNfrQQVJczEj78YcfYMdhiEu7o
	7OC2crjL0ZftcPXXU+i+jGH+xJ+iayi35yjsUenWjQgxfa6H9FX96wLZotJDf9/qqrJ6XS
	rqXg0GrSZMWwWEQt6FO9LXXRi71EKCd3A+ZX0uSuTdAL3gQwObeJY3WlnazDeThfGWvAvD
	cKE3ZI+Jzg7Yp1TamJ3rokhAi7u8MolP3Q0Yzav9VDfNGEgv75TV0LgPakcgtg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Ferass El Hafidi <funderscore@postmarketos.org>
To: linux-amlogic@lists.infradead.org, christian.koever-draxl@student.uibk.ac.at, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, khilman@baylibre.com
Cc: jbrunet@baylibre.com, martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Christian Stefan K=?UTF-8?B?w7Y=?=v=?UTF-8?B?w6k=?=r-Draxl <christian.koever-draxl@student.uibk.ac.at>
Subject: Re: [PATCH v3 0/2] Add support for Amediatech X98Q (Amlogic S905W2)
References: <20260421155328.26359-1-christian.koever-draxl@student.uibk.ac.at>
In-Reply-To: <20260421155328.26359-1-christian.koever-draxl@student.uibk.ac.at>
Message-ID: <tdurk1.2nkwjyfysqjik@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8; format=flowed
X-Migadu-Flow: FLOW_OUT
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[postmarketos.org,quarantine];
	R_DKIM_ALLOW(-0.20)[postmarketos.org:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-289167-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[baylibre.com,googlemail.com,vger.kernel.org,lists.infradead.org,student.uibk.ac.at];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[funderscore@postmarketos.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[postmarketos.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[postmarketos.org:dkim,postmarketos.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,uibk.ac.at:email]
X-Rspamd-Queue-Id: 528A743D8C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 21 Apr 2026 15:53, christian.koever-draxl@student.uibk.ac.at wrote:
>From: Christian Stefan Kövér-Draxl <christian.koever-draxl@student.uibk.ac.at>
>
>Changes in v3:
>- Change position of the entry in the amlogic.yaml.
>- Change formatting of the Amlogic W150S1 Wi-Fi module comment.
>- Fix several formatting issues.
>
>Changes in v2:
>- Split dt-bindings and dts changes into separate patches.
>- Updated model string to match documented vendor prefix.
>- Put vddio_sd states array in a single line.
>- Added a comment for the unsupported Amlogic W150S1 Wi-Fi module.
>

Where did the rest of the cover letter go?

>Christian Stefan Kövér-Draxl (2):
>  dt-bindings: arm: amlogic: add support for Amediatech X98Q
>  arm64: dts: amlogic: add support for X98Q
>
> .../devicetree/bindings/arm/amlogic.yaml      |   7 +
> arch/arm64/boot/dts/amlogic/Makefile          |   1 +
> .../boot/dts/amlogic/meson-s4-s905w2-x98q.dts | 249 ++++++++++++++++++
> 3 files changed, 257 insertions(+)
> create mode 100644 arch/arm64/boot/dts/amlogic/meson-s4-s905w2-x98q.dts
>
>-- 
>2.53.0

--
Best regards,
Ferass

