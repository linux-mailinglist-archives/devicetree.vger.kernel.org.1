Return-Path: <devicetree+bounces-322882-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id esBGAB5fTmrMLQIAu9opvQ
	(envelope-from <devicetree+bounces-322882-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 16:30:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4347275E6
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 16:30:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kgfZs63F;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322882-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-322882-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0648830CC8E0
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 14:21:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF33F478869;
	Wed,  8 Jul 2026 14:20:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E831E44CAFC;
	Wed,  8 Jul 2026 14:20:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783520419; cv=none; b=HiiScKVfunrq1rlbMtWv5M3w/zrr9snIsPVOieB7mFA5EZaplbx00AgsgbUP1Y2VSL+LWZJoEugUD3rvLlcyu6Gti5pUCuGSgkk6Jcu/V5TNI/wRJvdcs4YA3HkDOxkn57Pfi5ZX6zFaeBRnw7VW5gfPTON1OuicxQpi++xu5wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783520419; c=relaxed/simple;
	bh=/dWJyZdeb50M1UWbA6nA/Mq52oSFBMfJGmOoam2Mm0s=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=IfOL4DQNZrNLM9A6BNClbAWmjdGH2++C3eptUpL0o8rcGc5yMrHldailjoYnoMnQKin1jyrLrjvIXFgSIFhMvFoZcjIMZXw09F/ZKSBhCFHBTgKxBkJjxxWwMxN7fc8RxWFrC9SDJCsAEaPv+sf9r/DCRocOqo9fnZ+y7//eYyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgfZs63F; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C359B1F00ACA;
	Wed,  8 Jul 2026 14:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783520417;
	bh=/dWJyZdeb50M1UWbA6nA/Mq52oSFBMfJGmOoam2Mm0s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kgfZs63FUc/rltU5zlEfHlFiekJlV4W2tr9nu1q9GJWfuJu8HjLbW/nmugC9APOKB
	 qym2XlidwIG6WsAaFmzptTbE5TUNXuJ8fz2SfHTxeSQJlIetBfHS2sUW+7GI4xLo+C
	 /YfZZqp1O+pj5q7hjwH7YoDdiZa4sMy8cSGUZWteLGXCnBfppSN2quFApeHXxA3IPL
	 fj8KhG+kmezQjO7Ym8HHydY5Zjpqpnkys4N6xdFJfwxzAtFJ2+TDhN0GydRF4/lR4P
	 COBeFGHlqNcvbe+L1lrvEosnBYiy+thOP+d+TzxlqCvZFyYX/L9JQVYgjXooj58kk8
	 o3AXKwDeeDmxQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 09/10] dt-bindings: firmware: add arm,ras-cper
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ahmed Tiba" <ahmed.tiba@arm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, conor+dt@kernel.org, linux-cxl@vger.kernel.org
In-Reply-To: <20260708-topics-ahmtib01-ras_ffh_arm_internal_review-v7-9-8b3a85216cef@arm.com>
References: <20260708-topics-ahmtib01-ras_ffh_arm_internal_review-v7-0-8b3a85216cef@arm.com>
 <20260708-topics-ahmtib01-ras_ffh_arm_internal_review-v7-9-8b3a85216cef@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 14:20:16 +0000
Message-Id: <20260708142016.C359B1F00ACA@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322882-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ahmed.tiba@arm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-pci@vger.kernel.org,m:conor+dt@kernel.org,m:linux-cxl@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5A4347275E6

> Describe the DeviceTree node that exposes the Arm firmware-first CPER
> provider and hook the file into MAINTAINERS so the binding has an
> owner.
>=20
> The initial user is the upstream zena-css platform, validated so far
> on FVP.
>=20
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Ahmed Tiba <ahmed.tiba@arm.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-topics-ahm=
tib01-ras_ffh_arm_internal_review-v7-0-8b3a85216cef@arm.com?part=3D9


