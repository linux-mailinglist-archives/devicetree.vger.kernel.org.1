Return-Path: <devicetree+bounces-288164-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GP9lI3UC4mna0QAAu9opvQ
	(envelope-from <devicetree+bounces-288164-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 11:50:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBC0419937
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 11:50:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5DF5431A8CFA
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 09:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A183B370D56;
	Fri, 17 Apr 2026 09:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNSUxjUB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E162339870;
	Fri, 17 Apr 2026 09:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776418500; cv=none; b=cB8GZxLhDsDLYNWVOWoxgsYT8RQi1YjD0mGXI6KfpaJ2ERQfp5ZFl74+LbGo7WgHQJHVxL2WqXaZ0FXtD3QNHh4MuI7WPopRIHkjRw6zHDLZGa0oxVjviHCTR16vLHohg/5mHNiIEaOLhOP9mMNlsjU4x86FNfMbBZUybXeRWpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776418500; c=relaxed/simple;
	bh=CiICIPaQkVU+7oY+tYHdDg4ZGOkotaeNHwMDysE51rU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YwqwtGjqBL71OyGdgiTtPJnyDE7RPq6NDOi+JBTANRgoYjv99TgpsW3VO9FWd/zQdXAIWUzdqGCGLUqVHS6fC9m0++U1RCXZY9LgZNeXrTEKyc6d0mJa6EP98z00V1eQeZ8dV3CzI3rZyCWkmb+gyPGY8tln1k4byUMOO+jJhHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNSUxjUB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA8B7C19425;
	Fri, 17 Apr 2026 09:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776418500;
	bh=CiICIPaQkVU+7oY+tYHdDg4ZGOkotaeNHwMDysE51rU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mNSUxjUBCUWujUex2wdDVw9ACcYal2ZL0DRKKASNk+0ePLcvLQIfIcsRmZDUZeBQN
	 oX9ovkI3NajERsDJGeokPNRfbn9KTvKgJv18sk8g0izbiPZiHATiNJzvq6Qaqh3OLH
	 1Kj5m1a6wlR1NVo2PiHqm4FGOBtqfLYu2IQ8O/E2oI51UWQtYM95mH5YuaKFO29Fw7
	 EKdFHS5BilEX2Ni9pqRlV+2SQ1W9+aTgyMmNaD2SUNELbwwrTQO6ScY/3nXw1lhv/h
	 LcuxhW4Vg91dyuPW+MSgCouPhsrC713pLb6vKQvTzGCaCaXanJEK49HxOzrDzPwK+i
	 B1Vgo/flnVqVg==
Date: Fri, 17 Apr 2026 11:34:57 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Harpreet Saini <sainiharpreet29@yahoo.com>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, David Lechner <david@lechnology.com>, devicetree@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: input: Add PixArt PAJ7620 gesture
 sensor
Message-ID: <20260417-mustard-nuthatch-of-vastness-3fbf4a@quoll>
References: <20260417052527.62535-1-sainiharpreet29@yahoo.com>
 <20260417052527.62535-2-sainiharpreet29@yahoo.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260417052527.62535-2-sainiharpreet29@yahoo.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[yahoo.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-288164-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lechnology.com,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0CBC0419937
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 17, 2026 at 01:25:26AM -0400, Harpreet Saini wrote:
> Signed-off-by: Harpreet Saini <sainiharpreet29@yahoo.com>
> ---
>  .../bindings/input/pixart,paj7620.yaml        | 70 +++++++++++++++++++
>  .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
>  2 files changed, 72 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/pixart,paj7620.yaml
> 

Comments from v1 apply. Respond to the instead of ignoring.

> diff --git a/Documentation/devicetree/bindings/input/pixart,paj7620.yaml b/Documentation/devicetree/bindings/input/pixart,paj7620.yaml
> new file mode 100644
> index 000000000000..d4f58b712810
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/pixart,paj7620.yaml
> @@ -0,0 +1,70 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org
> +$schema: http://devicetree.org

There is no such syntax. Don't invent own coding style.

Best regards,
Krzysztof


