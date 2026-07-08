Return-Path: <devicetree+bounces-322582-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BFWfFz3+TWphBQIAu9opvQ
	(envelope-from <devicetree+bounces-322582-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:37:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E22722B3D
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:37:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=iUlNdHcr;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322582-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322582-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3CF283059D5B
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 07:28:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AF543E7BA1;
	Wed,  8 Jul 2026 07:28:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824C33ECBD2
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 07:27:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783495679; cv=none; b=I+oi67vgujVafepFP0m9KTFS39Nvnxy/y/9yclUkYJE/ynFPC0RA6rsQSMp/4tzl6mSFgquajS85VS1Noa09SUJPYKADNk4MZ+UXGh3qfCfOEyGttolnKIs5aXjUIZz+ul18f/VjePUuAYyRw1PxiR/3qL7ZNegmWLEQCVGrku4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783495679; c=relaxed/simple;
	bh=cOLdpiEAtzaSryV6o6FyAVatG0tXci1ipsiFtSqcmR4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QV/dSSxIo0qZiAcMP5CktvN8qVQVkb+IjkHuPC9uDHbx2rdd4a7vDw+GM8Y/OWtd+FChQr3iF/uew3N9WZpgFbHFc63RhspYknvvkub/Gu34d2oVqMedYHSTX353RfrsOTGW36ffvDmoeCfUeeq/41vStnPcAkB3zPE0eWSMYVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUlNdHcr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9854A1F000E9;
	Wed,  8 Jul 2026 07:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783495664;
	bh=cOLdpiEAtzaSryV6o6FyAVatG0tXci1ipsiFtSqcmR4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iUlNdHcreiytk9Iz7jOApEy/oc2P63PgHYGb+12kLeJeN7fhWVI5oYphHkZpSuYNq
	 QYRLe0LlFoDtV5mePLjONQPvaAbFl6Sk/8j8DGorAUfXhCBU1ebOfj2dFCcWBnu5W0
	 lI4+Y7ICvxf+YZIB7h1oz/VrwmrwCZaOueWWgXZcUhBZFSHkcJGc0osMbNyklCHX/7
	 +gMSTX6Is9eUt4WefXQoB9i8+23+yGxgMCVrdZSe5ZYMyWT6dedZ6tCQA9xUnKGkBo
	 ae2Ig7q6zXlQ8uip9Y1vC6njg+fsGIPhS4dUF5XRaW4eiLM42dJHvkWgek/DCfRvGl
	 m+Lnspxhq6EQA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/5] dt-bindings: firmware: xilinx: Add missing
 example for ZynqMP
Reply-To: sashiko-reviews@lists.linux.dev
To: "Michal Simek" <michal.simek@amd.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <09439b3fc9dcab12b930113e7a004e94653c970c.1783495122.git.michal.simek@amd.com>
References: <cover.1783495122.git.michal.simek@amd.com>
 <09439b3fc9dcab12b930113e7a004e94653c970c.1783495122.git.michal.simek@amd.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 07:27:44 +0000
Message-Id: <20260708072744.9854A1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322582-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:michal.simek@amd.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,amd.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A0E22722B3D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The commit message incorrectly references `xlnx,zynqmp-clk.yaml` in=
stead of `xlnx,versal-clk.yaml`.
--

--- Patch [1]: [PATCH v4 1/5] dt-bindings: firmware: xilinx: Add missing ex=
ample for ZynqMP ---
commit f76bb0fabd5ddf2fd379360e863c083c04812eff
Author: Michal Simek <michal.simek@amd.com>

dt-bindings: firmware: xilinx: Add missing example for ZynqMP

This commit adds the clock-controller to the zynqmp-firmware example in
the device tree binding. This allows ZynqMP device trees to properly
validate against the clock schema.

> Document clock-controller under zynqmp-firmware in the binding example so
> ZynqMP DTs validate against xlnx,zynqmp-clk.yaml (Versal example already =
did).

[Severity: Low]
This isn't a bug, but the commit message references xlnx,zynqmp-clk.yaml,
which does not appear to exist in the repository. Should the message specify
xlnx,versal-clk.yaml instead, since that is what the hardware actually
validates against?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1783495122.gi=
t.michal.simek@amd.com?part=3D1

