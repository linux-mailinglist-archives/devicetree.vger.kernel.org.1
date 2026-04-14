Return-Path: <devicetree+bounces-287430-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGh3FSe+3mlLIAAAu9opvQ
	(envelope-from <devicetree+bounces-287430-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 00:22:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A80F43FED30
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 00:22:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C317C302F907
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 22:22:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B053389E03;
	Tue, 14 Apr 2026 22:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WORzXweE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA95313E07;
	Tue, 14 Apr 2026 22:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776205327; cv=none; b=r9toD0AsCopFgRyl9SYS86IzhzV03SGxCKZm9t313yuZnwizTbTSQyQVL5s2talhMvvhDgKngFxcd/oWirY0ZW3+bzn6dXMXYhfBTYJ6A6pSFojyBcT26eAFfYcdlIh2rPKAzTfoPpd1ti+XssbyfMmve1/lE9UDet2at6/yLSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776205327; c=relaxed/simple;
	bh=rP50wr1iygdgpL8hOtcvf3yxxmjcY4v8NkFlLqjuF94=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aP1ZkS3byg8hfMNj74yqCnivjO+wsYxxziKuWEqO0gWE0aiWv83J4qT4u9MzpzrLWuDiAo+ksu9FYXChy3P6wXyS0ukX9HmKkmzkcp9d026MNgfmm76ytm1ChSn9rQZfm+239vwYlVIleHZFXC/Fx9MyViCEwkw4WWDkbIo2rvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WORzXweE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBDB2C19425;
	Tue, 14 Apr 2026 22:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776205327;
	bh=rP50wr1iygdgpL8hOtcvf3yxxmjcY4v8NkFlLqjuF94=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WORzXweEB8SIndl7zyiRWY5bPmU5oyYXDJQex9jSXQzvEgeLgSiXlPFUB0+6fioGt
	 HF82aSYnO1Cw5nz602oDWBUR4C8mKrCpf28aZ1Jk4USL2UPBCZQrXwah0ucpYzuLNH
	 8n4q10fdcjijp0P1nI4CiODUSrPAB3cJz3Kiqj1KB/eiT8cdMomrY9KGLET4Oycvkl
	 v3JXKjGlAeKXC9ji6CuOsMNQWkddaNjXYOrX2oBltxQvrjvHrefFN/yk9+pedo9JbZ
	 m5kohNykLyoL1CA0vmjxVhTE2RgI4hRBCetGPa68CHWvZZU/lc14vdA+BrqPcv0P9s
	 cQYNW2QA2BUSw==
Date: Wed, 15 Apr 2026 00:22:04 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Shi Hao <i.shihao.999@gmail.com>
Cc: krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, 
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: i2c: cnxt,cx92755-i2c: Convert to DT
 schema
Message-ID: <ad698Xxe0y1xo-GJ@zenone.zhora.eu>
References: <20260411112451.35095-1-i.shihao.999@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260411112451.35095-1-i.shihao.999@gmail.com>
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287430-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,zenone.zhora.eu:mid]
X-Rspamd-Queue-Id: A80F43FED30
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Shi,

On Sat, Apr 11, 2026 at 04:54:51PM +0530, Shi Hao wrote:
> Convert the Conexant Digicolor I2C bindings to DT schema.
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Shi Hao <i.shihao.999@gmail.com>

merged to i2c/i2c-host-2.

Thanks,
Andi

