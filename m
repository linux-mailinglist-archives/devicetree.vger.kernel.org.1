Return-Path: <devicetree+bounces-287431-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OL35OC7A3mmLIAAAu9opvQ
	(envelope-from <devicetree+bounces-287431-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 00:31:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 788713FED90
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 00:31:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9EEF93034DC7
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 22:31:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05428336881;
	Tue, 14 Apr 2026 22:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gt56wbkj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B8326159E;
	Tue, 14 Apr 2026 22:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776205866; cv=none; b=YojvMPIFSQsPEmf7zogJc9WjtX6nrvt/E6B86Y8NUwnFXc8FxujtR4vOsp7pdyxVrgtV5tKAD5QFc7eY2yVWl0eeKsAzHCDyTs9Cqx9xRYid9Dlge3GHoIt1GQqzG0q25O00zbPmugURpM2lZhhxBdh36VlyYN1h68kEEKRXA4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776205866; c=relaxed/simple;
	bh=AkRX6lFvw+vBbWM+Ue7xbI60L8oEbK8fmEUWgjj7nGw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cprW06adlwbrVoDk65INQgRZ0ohci0J3AbK7VzqOO9Sv9k9sZN8pbQIFYA/snZ2y3Dk4hK8IuWil0Oc8cKdtWlJwQEFUGxgkwxqlHTY7SHLuem0Gox311Gz58Wa6O5Ddskwn7STFNhtWjCTN/2GPbAss5AlCEcPqlX295EXTxu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gt56wbkj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1430C19425;
	Tue, 14 Apr 2026 22:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776205866;
	bh=AkRX6lFvw+vBbWM+Ue7xbI60L8oEbK8fmEUWgjj7nGw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Gt56wbkjnHSZqxV2hfGHifPQAp5RV9SbIlLrZo+8c3syYMaP9W1xCPrPXZX4UEAoK
	 kzvNRa6oAKsLN55uVq8eJ69ENsqq2SfxVdAqkrXdna+R4SYWYcKl7WdCsQsMpaeNnT
	 A16eDlEyffeBlrmEsk2r0NwKdrMwgc31f2Q3pDWTWi8AjegATFnLCPIPWk/POv35n6
	 zLAGwahTO4Vq5MrfrR00g9CuYTsiznD0aoFJeXDy7TL5iq5Hcu/0Fd3ACYLskhJ50v
	 N42ssAVaPddtoUv400O9JwUHlr5i5q/1tWkuRMvBQvGE4hDUPKcpC2n656/zOtyZS2
	 zx+Tvfwz8FsOg==
Date: Wed, 15 Apr 2026 00:31:03 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, 
	Huacai Chen <chenhuacai@loongson.cn>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Andy Shevchenko <andy@kernel.org>, linux-i2c@vger.kernel.org, 
	Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v8 0/2] i2c: Add Loongson-2K0300 I2C controller support
Message-ID: <ad6_-5NQv_Q6vxAE@zenone.zhora.eu>
References: <cover.1776135865.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1776135865.git.zhoubinbin@loongson.cn>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287431-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,loongson.cn,kernel.org,sang-engineering.com,vger.kernel.org,xen0n.name,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,zenone.zhora.eu:mid]
X-Rspamd-Queue-Id: 788713FED90
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Binbin,

> Binbin Zhou (2):
>   dt-bindings: i2c: loongson,ls2x: Add ls2k0300-i2c compatible
>   i2c: ls2x-v2: Add driver for Loongson-2K0300 I2C controller

merged to i2c/i2c-host-v7.1

Thanks,
Andi

