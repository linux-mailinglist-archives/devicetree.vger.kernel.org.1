Return-Path: <devicetree+bounces-268636-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6zNgMYD2n2nkfAQAu9opvQ
	(envelope-from <devicetree+bounces-268636-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:30:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 605D91A1DAE
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:30:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 90161301C164
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:30:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 757CA38E5E6;
	Thu, 26 Feb 2026 07:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uq4NlNEI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495C338A29A;
	Thu, 26 Feb 2026 07:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772091006; cv=none; b=NPr4hCoBo6DRz8364XvdhJwSzBiJNqIWr17qk+TrhKHmlIbQTAadcBcBJ31gcpBSOB3kCi/axxqeL13Iz2g85zLnc7Phmv85gFk4XPZlv0xIsxZaIGfFbHBB849s/kFu9+54cLrapmW6/lG+CvguX0xAET3Q2I4phdBO2hFhDP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772091006; c=relaxed/simple;
	bh=MPbAjJKSs5gD69qI3R+WXWGKmDGEvrA+lfg2L8YTLm0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=SCopI5x6bcJVGtZHij0RBvBbiHk/B2ozc/sRcMPFcg8QkXdP8yAUnFM0HT8TuKw7M7GA4G9tYE+IhMHC3hRrnW+YXxt7j6Wlv8OoOr7pE1L6OgMYRaF2+XowValUMe150tCQz3CuJ+uoo0b2tFdNH1TkZImxMIlbRAekQaZEdeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uq4NlNEI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DBD4C19422;
	Thu, 26 Feb 2026 07:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772091005;
	bh=MPbAjJKSs5gD69qI3R+WXWGKmDGEvrA+lfg2L8YTLm0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Uq4NlNEIiRY+KTw7DdkvSpkQYcuc5e2SJ8FwovLDyGsK8vTaj1wHhT/Flg8mRAZLT
	 0Rj1ft38RZLMPJGEZH9/fycGYs0R5SXBOxM3lKpg/lUwhqw7uglPsWS+Ae3dX75ORx
	 GNzfUB6Na7EP/wqS9qi+SNJYX3fZLdA6PMOLxsWkoIlKSLIby6ztNjjdeg2Vr78BOw
	 IWO6O7iHZ5WBkqKK/zLEZ2XWsQ1RtbQEFze7O4Yd+QQO+JfiVCO/hbrB220hhVjM1v
	 TNEbCnxlZhr1C7KsErqViZ++xYYXwLSp4v7NKQg+gY0vpZkhFcOFxRgMo1FAySeE19
	 EN99loFSnTR+A==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Conor Dooley <conor@kernel.org>, 
 Jonathan Cameron <jonathan.cameron@huawei.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
In-Reply-To: <20260225173930.3819351-1-andriy.shevchenko@linux.intel.com>
References: <20260225173930.3819351-1-andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v3 0/2] memory: Drop Baikal SoC code and bindings
Message-Id: <177209100398.15256.1580511983897104091.b4-ty@kernel.org>
Date: Thu, 26 Feb 2026 08:30:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268636-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 605D91A1DAE
X-Rspamd-Action: no action


On Wed, 25 Feb 2026 18:37:19 +0100, Andy Shevchenko wrote:
> The platform is not going to be supported, remove stale code and bindings.
> 
> In v3:
> - combined patches in a series (Krzysztof)
> - collected tags
> 
> In v2:
> - split bindings removal to a separate patch (Krzysztof)
> 
> [...]

Applied, thanks!

[1/2] memory: bt1-l2-ctl: Remove not-going-to-be-supported code for Baikal SoC
      https://git.kernel.org/krzk/linux-mem-ctrl/c/d455e0f602d7e4d4ba709418009c39be48fc2149
[2/2] dt-bindings: cache: bt1-l2-ctl: Remove unused bindings
      https://git.kernel.org/krzk/linux-mem-ctrl/c/9983d51d1a68520ce74663920929e27b191cf43a

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>


