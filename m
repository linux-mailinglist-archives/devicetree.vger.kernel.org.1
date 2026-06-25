Return-Path: <devicetree+bounces-315819-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zNE/Cl9qPWqK2wgAu9opvQ
	(envelope-from <devicetree+bounces-315819-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 19:50:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B29E36C8033
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 19:50:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MmJy1Y6+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315819-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-315819-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 20519300AEC9
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 17:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F17B3ED135;
	Thu, 25 Jun 2026 17:50:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C3903ECBDD;
	Thu, 25 Jun 2026 17:50:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782409817; cv=none; b=QER1s0gLsCgp2fXHJr/V6JkFg4zM6g0P/o1M8z4KumkQsyfL7voThtSLzXUBZl62fu11vNA6qOKNHK8yHXjJnwRAviphDMpMy4/s36R5XMw/Q4O4TD7+Gb7AV+zZ8/a43yt97zMGVmmMFmi7UxuwSPy5ojd00F6Il/jbc6rLMs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782409817; c=relaxed/simple;
	bh=D+kt955t7AM1TA307DOmIvmXHBacueSXEI1jmVLOE5g=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=OnPpfGcKB3zamfz8asvsnhDCd4nkizrJ4nv3AXIDD0XbaJb490qF2nEa2XHOoTkYjP4p27JK7qE2JolmDUwUF2nIB61Z4rHTuEyofD0zFCIyweOmkaHyN96gOSBxtkQKHkme4S4F7zNRUqRIufV+EBweCwuAEI86xbKgaiF1ITg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmJy1Y6+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03D851F000E9;
	Thu, 25 Jun 2026 17:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782409816;
	bh=h8OhrhsqQ2Miacsjs8uP266A7aQYd0mZ+To0MUYPgzo=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=MmJy1Y6+0EZEpLyEQTMDhevN9H1VEyVnXlGgShE70KPCi5pPUpkB/ELpllzE/9Pxp
	 MoH+pWMWGcGL00r6mRdX+lu5rkgJC2m1xPdld9HylVPf9VfkTxBsYOrZjzz07YKXKo
	 TZjQ0eSYkoTgsY6zrz8VmvUytiDaJTHqWrX5LDXHC4kKoOnRxJdob3uSLOXOsNjfyX
	 gGygGa7qWR3lfnPI4hd50AohreCZZLGM2at0DII1KVrhnQmibgUUy31GtCjIuM3kJz
	 cTxO/EIVJtIe92y2VJFsWiUrLN62zf7fY9gKUnGnwo5i7H3eBSycVMta1+qZMH6eIj
	 2GHDT+msWpWBg==
Date: Thu, 25 Jun 2026 12:50:15 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, upstream@lists.phytec.de, 
 conor+dt@kernel.org, krzk+dt@kernel.org, nm@ti.com, 
 devicetree@vger.kernel.org, kristo@kernel.org, linux-kernel@vger.kernel.org, 
 vigneshr@ti.com
To: Nathan Morrisson <nmorrisson@phytec.com>
In-Reply-To: <20260625160214.4001298-1-nmorrisson@phytec.com>
References: <20260625160214.4001298-1-nmorrisson@phytec.com>
Message-Id: <178240981517.3450987.4497389495200583534.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: arm: ti: Add bindings for PHYTEC
 AM67x based hardware
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315819-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-arm-kernel@lists.infradead.org,m:upstream@lists.phytec.de,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:nm@ti.com,m:devicetree@vger.kernel.org,m:kristo@kernel.org,m:linux-kernel@vger.kernel.org,m:vigneshr@ti.com,m:nmorrisson@phytec.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B29E36C8033


On Thu, 25 Jun 2026 09:02:13 -0700, Nathan Morrisson wrote:
> Add device tree bindings for the AM67x based phyCORE-AM67x SoM and
> phyBOARD-Rigel.
> 
> Signed-off-by: Nathan Morrisson <nmorrisson@phytec.com>
> ---
>  Documentation/devicetree/bindings/arm/ti/k3.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/arm/ti/k3.yaml:228:1: [error] syntax error: found character '\t' that cannot start any token (syntax)

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/arm/ti/k3.yaml: ignoring, error parsing file
./Documentation/devicetree/bindings/arm/ti/k3.yaml: error loading YAML: while scanning for the next token
found character '\t' that cannot start any token
  in "./Documentation/devicetree/bindings/arm/ti/k3.yaml", line 228, column 1
./Documentation/devicetree/bindings/arm/ti/k3.yaml:228:1: found character '\t' that cannot start any token

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260625160214.4001298-1-nmorrisson@phytec.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


