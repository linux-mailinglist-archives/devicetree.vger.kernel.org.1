Return-Path: <devicetree+bounces-283664-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLvlIkKnzWmvfgYAu9opvQ
	(envelope-from <devicetree+bounces-283664-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 01:16:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 132113818D7
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 01:16:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A08FB30D6CD0
	for <lists+devicetree@lfdr.de>; Wed,  1 Apr 2026 23:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9D943EF66B;
	Wed,  1 Apr 2026 23:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnEOStUu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8910B3E63B5;
	Wed,  1 Apr 2026 23:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775084850; cv=none; b=up9zUUQ0pF7bOgDFWq0dTJrFZSkSQteZm9jtViyuEpjCl4EnYT7Srw5hBJmgLqsmbg/q8t+FT9ORRh/MD9rcIjhxH74Mi1FnRu+u0q/hLwQt7kiCLPKGkdAUw8zdtLsNz0S0So+c3KWy6gJvqay2/O00HhuwD0oiGwil2hERNzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775084850; c=relaxed/simple;
	bh=GJGxNd27t4qfUN+zztohBucOSFYzC2YEFe1sFsuSnog=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jOA86C5IRyLGEVJFy+xhsqE4FPPFqOh05or2M72Eo+teRgQIvdhwCS/A3wHzP/BGZ0oJVTE3gbftGSGMKDpB/G16XZW8ODeAwJe2ek2kedV6SyyOnNDJzmPPqKxTWC/HWOO47UEdYKPdYS5XYd9Tm3VTbNGZWg74CVYIcetaSlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnEOStUu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B20AC4CEF7;
	Wed,  1 Apr 2026 23:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775084850;
	bh=GJGxNd27t4qfUN+zztohBucOSFYzC2YEFe1sFsuSnog=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mnEOStUuH9A5A+uADk9xLdsZHxK68/fhFd165erKu5V/WdxtOApdMw9kJuQkPgMvM
	 7elTbok5HrEdfnszQaBywP5WsZIYBeIS6qAp6N3yQ12NXIIry/JVpy6Z64YJKEK+M9
	 v1MTgKtWUVa/qQXMAkoCaB6vVr9lRfZXkaRjkrdnqSWJMfwVBJ59tixqMHD7kUxKFg
	 anfmWb8lnz1wS+MgDNzOu/Xwhk3b7bgm7365V5RtIP579r59dfeWVBEACYLilDIFjD
	 yIqSdvigcx8xqM0z8Ef8/37IjTTf7bHEUG3YeEekhGKyaVDAr4zT7Jp2tUBlPZk2yR
	 v7kYFlf21FtDQ==
Date: Thu, 2 Apr 2026 01:07:26 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Rustam Adilov <adilov@disroot.org>
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 0/8] i2c: rtl9300: support for RTL9607C I2C controller
Message-ID: <ac2lF06QTokpq0-B@zenone.zhora.eu>
References: <20260401180648.337834-1-adilov@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260401180648.337834-1-adilov@disroot.org>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-283664-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,zenone.zhora.eu:mid]
X-Rspamd-Queue-Id: 132113818D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Rustam,

> Rustam Adilov (8):
>   i2c: rtl9300: split data_reg into read and write reg
>   i2c: rtl9300: introduce max length property to driver data
>   i2c: rtl9300: introduce F_BUSY to the reg_fields struct
>   i2c: rtl9300: introduce a property for 8 bit width reg address
>   dt-bindings: i2c: realtek,rtl9301-i2c: extend for clocks and RTL9607C
>     support
>   i2c: rtl9300: introduce clk struct for upcoming rtl9607 support
>   i2c: rtl9300: introduce new function properties to driver data
>   i2c: rtl9300: add RTL9607C i2c controller support

merged to i2c/i2c-host.

Thanks,
Andi

