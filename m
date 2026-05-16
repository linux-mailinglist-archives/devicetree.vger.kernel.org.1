Return-Path: <devicetree+bounces-298634-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id D9NOB2c9CGqnfwMAu9opvQ
	(envelope-from <devicetree+bounces-298634-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 11:48:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A532E55AF68
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 11:48:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EF9F53007890
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 09:48:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFC35405C47;
	Sat, 16 May 2026 09:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkgF1hvT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CA86405C31;
	Sat, 16 May 2026 09:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778924899; cv=none; b=eD1GfAbVpQzda0LljumYYVzG3zXi4hIVc8w1mpe2bJgvmgwXRdwoPZUTol+YNJBMf7dQPzXrpZ0CsJTG0XXnVb4VR34SUSp6wq155gJizYaocYXgiBhtDc6L9RS4VMshAclD4pybltHaFcHYNUJuePPgdyzI9gNUqV3Yu5ao7/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778924899; c=relaxed/simple;
	bh=GMEbDAIzdQ2hXeXKUawK2V5xvfKIsnx6HU6ur9Via9I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lazFjmi4N5lpiYQVGJ55u9RYOcd3kzZmxj2/rnu04O3DypZNEKGMBYDff6qqS4W6zUCE4JG6/qhgUYTNHGE4ryTL7/qZDpMhhdwqAWw80dtDo7rzkwEyhBLaPm4Otc5XLz61Tyk6Qxgc3vRBCLMGAUoNI40zNxGyYsaJ8sBD0p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkgF1hvT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A0BFC19425;
	Sat, 16 May 2026 09:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778924899;
	bh=GMEbDAIzdQ2hXeXKUawK2V5xvfKIsnx6HU6ur9Via9I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IkgF1hvTkzoyAWuWIWAL1wbwTbgwLjH+7Fw1mq/PSCKgeuE6+JhAmjxhqKLF4Xmhb
	 /nTKxFm9OX4bCMSjjKRgp6F1Plykj08xGLImrDUcIYcmYeIa1n+ZfgWqGUCyW5z0Tr
	 eDfPVmysmCZS4Bwb1nvgVwXToNV07smkb9jMyYAjKMvp3NLhI0s7vOoywBFR9mP/Up
	 +MlW4sr1bSrFuMHUBqTO/IJ6V6wcVcBiIXRhN3CtCoeQbQ0i9Il9ds3aBgJAI0U/k9
	 87tNKbb33j1McFl1LrMwlXx0W9+kCNoIq4quDIyKwy4PYxFiyUdF+jHqmC1Yw8i9aC
	 jLb5/wjiO3mIA==
Date: Sat, 16 May 2026 11:48:16 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Frank.Li@oss.nxp.com
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	"open list:VOLTAGE AND CURRENT REGULATOR FRAMEWORK" <linux-kernel@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH v2 1/1] regulator: dt-bindings: convert ltc3589 to yaml
 format
Message-ID: <20260516-fascinating-tapir-from-lemuria-7ac5ba@quoll>
References: <20260515150657.1731008-1-Frank.Li@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260515150657.1731008-1-Frank.Li@oss.nxp.com>
X-Rspamd-Queue-Id: A532E55AF68
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-298634-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,nxp.com,vger.kernel.org,lists.linux.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Action: no action

On Fri, May 15, 2026 at 11:06:54AM -0400, Frank.Li@oss.nxp.com wrote:
> From: Frank Li <Frank.Li@nxp.com>
> 
> Convert the Linear Technology LTC3589/LTC3589-1/LTC3589-2 regulator
> binding from text to yaml format.
> 
> Additional changes:
> - Add existing optional interrupt (drivers/regulator/ltc3589.c).
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


