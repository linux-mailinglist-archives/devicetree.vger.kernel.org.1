Return-Path: <devicetree+bounces-325223-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RQDmITiVVGpnnwMAu9opvQ
	(envelope-from <devicetree+bounces-325223-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 09:35:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E092B748351
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 09:35:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WSNCksPf;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325223-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325223-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B72C6305D363
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 07:29:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4756371D13;
	Mon, 13 Jul 2026 07:29:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 873642DC32C;
	Mon, 13 Jul 2026 07:29:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783927748; cv=none; b=lIWsCghrDQ/OrNKLvYk0/lKFp1ujjNQu+ErDdrVdL5bV+AKgZ9tRwogO5kE3KV0K29j2Vkt5tYZXpY09bKCwVLOtu4VdPI4vhEGxoLxKxc+Ai+SKzoD3h10nx1g6lUwndobPAS0kXj5cVrMuBqpaWmfRW5qLQia1w3KX93pivCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783927748; c=relaxed/simple;
	bh=QZryj75baiRfBnWWWhy/q/bDFrIOd6fvuO2IJHZefNI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=imb5tLhnSGztUO95xMP8nZ7HQOJZMhHYA1ySLMfvrgueLbez2E9KzFaGbP3BEyiK1Zg7m/o6a/GmP8wnuakj1WRtPyOlDd5UHx8d/1FA9kOwhbx0AASPxAcQtHvBKRXhqhiH70RK135Tz6JP4HEWSqGvSLsDMqVQKoTL61a4rJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSNCksPf; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 338851F000E9;
	Mon, 13 Jul 2026 07:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783927747;
	bh=q1A9eF+k7sM0DhedSIhGHmF2na9e3afM7t2StqoDgjg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=WSNCksPffc72LeGiYWYJ5h8jlyuGi28/AgqtGJaxw/JzVRYkwsZhGyThTKq2xvLf2
	 II7+wxPobG9kNz/f1vVReib1wFu0Jfj2lXkZXgg+MLu7F01ZNjsmjuPDHHWJus+2qa
	 d0/SFBh6nxnOfSU/Ahitextzxyad1fOI/Edwq0PZyjB6nhH/5H/6S2Axme1vahGgIu
	 VYvinLy99dbhvnUEEDVHJXpN9uLGWDORShVyo+kqK25IO8VpguDBEvxrpnOLJv8v80
	 2OLlI0wyycsD5YCuFmNJXox3Ytk/gpdQnmCAUnNGtm9SUesQAG+uAKNvs257yP2x+O
	 Rm5H0WU3o8I+Q==
Date: Mon, 13 Jul 2026 09:29:03 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Frank.Li@oss.nxp.com
Cc: Peter Chen <peter.chen@kernel.org>, 
	Pawel Laszczak <pawell@cadence.com>, Roger Quadros <rogerq@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:CADENCE USB3 DRD IP DRIVER" <linux-usb@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev, 
	Frank Li <Frank.Li@nxp.com>
Subject: Re: [PATCH 1/1] dt-bindings: usb: cdns3: allow iommus property
Message-ID: <20260713-chubby-honeybee-of-excitement-1af4a0@quoll>
References: <20260709205331.636449-1-Frank.Li@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260709205331.636449-1-Frank.Li@oss.nxp.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:peter.chen@kernel.org,m:pawell@cadence.com,m:rogerq@kernel.org,m:gregkh@linuxfoundation.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:imx@lists.linux.dev,m:Frank.Li@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-325223-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E092B748351

On Thu, Jul 09, 2026 at 04:53:30PM -0400, Frank.Li@oss.nxp.com wrote:
> From: Frank Li <Frank.Li@nxp.com>
> 
> Some SoC such as i.MX8QM have iommu support. Add optional property iommus.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


