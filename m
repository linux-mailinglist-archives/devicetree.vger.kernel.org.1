Return-Path: <devicetree+bounces-267129-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qGbWM3sFmmnhXwMAu9opvQ
	(envelope-from <devicetree+bounces-267129-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 20:20:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5EE16DA7B
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 20:20:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2731C3032670
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 19:20:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8AC4307AF0;
	Sat, 21 Feb 2026 19:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUSCwxRo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B438523BCE3;
	Sat, 21 Feb 2026 19:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771701621; cv=none; b=TkpZCj08Kmru9PoLlkL7Hlp+vs8hs8Bx+ZNZP8Bc3VQQGOFHI8VzeYw2s4pWq31T0hjXoOhJ8AFD2Lcow1S6QEXjGwohnS/MXmoXPrXYERtrup83yqZ5rjunGwKrJUiv/fhIG0+dzc8IH+vpKwtrYlTHoDc1JdXyVR31x/Ip1mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771701621; c=relaxed/simple;
	bh=nvibUprlO0MIF/zL344m7/dwsQPKA8o6ALXiWOkfUlE=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=CkjsVxXRD8blEBrEaqhn2qv2IOnB65BRbh5cxmVDB4LPkE6aTTpyfL2QQ7l63qTmTcJr8hqAKa6Zir9T71aveQzVtU2Tf9nNHAjHaFVm0hxO4sQT0Vvx9xGOknG2dAD8qc3bR64nGA0FxHRSLyP6SuS2yrPgYy4E1E2PIhL/jrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUSCwxRo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28C6DC4CEF7;
	Sat, 21 Feb 2026 19:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771701621;
	bh=nvibUprlO0MIF/zL344m7/dwsQPKA8o6ALXiWOkfUlE=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=gUSCwxRoa/0BxBCYCwjEDmr7evQSke0efUWN9t7wnZes4+jUGYKILsZu0dMmtDjb0
	 39OMq3mU4Lz6LXHNc3vUdHe4hWGtuOqpnzyNTgwD4IWj/Cgoy4ziK1H9lacxm3N7dN
	 u34Nm1dDMOmmkqkvHkj6ectljS8tttSrWCyTiY1ugkBzNYQcFtHXdKoiZTDMn1en6c
	 9daFMy1D09CnSGZQWVC0/i55XkS2BeNDpgLMScnCl1r/PUf3Lm6SOG5tBEOyoPv6UN
	 8jOTAV8s/oLOB/Y+kG0zU3uF0p4EGfopgwwnI/59xaVvfqnV5HgQ5nXV3WzmlI9Qd0
	 sIy7AKXxL7q3w==
Date: Sat, 21 Feb 2026 13:20:20 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 =?utf-8?q?Marek_Beh=C3=BAn?= <kabel@kernel.org>, 
 Andrew Lunn <andrew@lunn.ch>, Conor Dooley <conor+dt@kernel.org>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
To: Gabor Juhos <j4g8y7@gmail.com>
In-Reply-To: <20260221-mox-rwtm-yaml-v1-1-25dec4a0228b@gmail.com>
References: <20260221-mox-rwtm-yaml-v1-1-25dec4a0228b@gmail.com>
Message-Id: <177170162022.3445020.12700109367328062121.robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: firmware: cznic,turris-mox-rwtm: convert
 to DT schema
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,lists.infradead.org,bootlin.com,lunn.ch,gmail.com];
	TAGGED_FROM(0.00)[bounces-267129-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1F5EE16DA7B
X-Rspamd-Action: no action


On Sat, 21 Feb 2026 19:21:34 +0100, Gabor Juhos wrote:
> Convert the Turris Mox rWTM firmware binding to YAML format. Both the
> compatibles and the examples were adjusted to match with the ones used
> by the existing device trees to avoid new dtb check warnings.
> 
> Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>
> ---
>  .../bindings/firmware/cznic,turris-mox-rwtm.txt    | 19 ----------
>  .../bindings/firmware/cznic,turris-mox-rwtm.yaml   | 44 ++++++++++++++++++++++
>  MAINTAINERS                                        |  2 +-
>  3 files changed, 45 insertions(+), 20 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.yaml:24:9: [warning] wrong indentation: expected 10 but found 8 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260221-mox-rwtm-yaml-v1-1-25dec4a0228b@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


