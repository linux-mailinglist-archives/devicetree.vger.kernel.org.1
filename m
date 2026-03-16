Return-Path: <devicetree+bounces-275990-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFTAAiG4t2mpUgEAu9opvQ
	(envelope-from <devicetree+bounces-275990-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:58:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADC1295E8D
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:58:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C8E183001D7F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6CCD355020;
	Mon, 16 Mar 2026 07:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdybh4Hq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83137354AC7;
	Mon, 16 Mar 2026 07:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773647901; cv=none; b=j6vLFDJp1eF6S0gb+7wnHV1DBjTb9wznI06FhLA+mypoqMWzu3AcuDPqP+tG0Sm2WLE0PSZiFlzGmFIpuBMjZQJ7NWkHN+AveQHA3O46xl1UOEQUdW0hr8RxAgOkfoVUFpdJ5z6jMlun2PzCPAAGmxyl6WiqIan8NBgcNDX948c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773647901; c=relaxed/simple;
	bh=W5qypavaJSjGBqasdncSy4lCP1C/9qcnoNGubiK7ais=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bxm8zegwbgxPnpkc4dWiJWal99JzE2l9zFky5Bf22ZnceHG7YUsacMHTrOod6jw0DLmYiaDoLMunkWfJF08HsUiELNVdqN+vKrTvY381lw8NywBgFhLl+dKpXsJ4ubcFPg7amlGFwRlYe+EL21a4/BZfjDQzYnqxrFZ3eXgf170=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdybh4Hq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92E1FC19421;
	Mon, 16 Mar 2026 07:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773647901;
	bh=W5qypavaJSjGBqasdncSy4lCP1C/9qcnoNGubiK7ais=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kdybh4Hqa+K1KqcE7sP8tYhMRB1ZTbMp/91JZzSNZhl5dPn5rFGFCE8gFO3Bbe3tx
	 b9aejC6KGJCOuIzaYxYQP5YyPVKTVL60N7+u7pMZ7bfzdH9/AtudZFOA4ylRcHVtHo
	 441RuJi4r3VSYWkSL9e0aXcDitn9MQDhAXRfEv9IR8Z0c3N1l/057OSnTseCm/vj+P
	 E0DkdI8axZ/cVNwrpPOkpUoJYdLVKn5GihwYBD6wqBBFDBpqLsfZUx3Y4vyUVAXuES
	 ojgggoHqRKsHEw6got79h3gJiOQIla94PoRSVks016A4v3DoGSUKHG9/pSVjSclCX1
	 5x2YHaZGHtC5w==
Date: Mon, 16 Mar 2026 08:58:18 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, 
	Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: sound: adi,ssm2305: Convert to DT schema
Message-ID: <20260316-macho-vole-of-security-e549d9@quoll>
References: <20260315215447.276886-1-piyushpatle228@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260315215447.276886-1-piyushpatle228@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-275990-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[metafoo.de,analog.com,kernel.org,gmail.com,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9ADC1295E8D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 03:24:47AM +0530, Piyush Patle wrote:
> Convert the SSM2305 speaker amplifier binding from text format to
> YAML schema to enable dtbs_check validation.
> 
> Remove the legacy text binding.

Drop, irrelevant. "Convert" means that already.

Please use subject prefixes matching the subsystem. You can get them for
example with 'git log --oneline -- DIRECTORY_OR_FILE' on the directory
your patch is touching. For bindings, the preferred subjects are
explained here:
https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters

With these fixed:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


