Return-Path: <devicetree+bounces-262378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLorDw4+gmmVQgMAu9opvQ
	(envelope-from <devicetree+bounces-262378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 19:27:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFE5DD912
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 19:27:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AC8FB3167C42
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 18:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE84A3E9F8D;
	Tue,  3 Feb 2026 18:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwsvFpLG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 894D13E9F81;
	Tue,  3 Feb 2026 18:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770142670; cv=none; b=FjA8TqnVwkLVNHM/nhLUAVmnw4xx03AdUZz98RJVB++kaDa3h9YIrOLVbgYodFgR75Nx7KYz0jp5o6GTxGjriawNhmJHNqTPrLko3X9Mf4DDNTarI7M37GKhGF2rPtI3nDvLc9MwISPBFRyo3HRTJknQMTKJBXyaQipwzwsh0S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770142670; c=relaxed/simple;
	bh=yPbmCtjy6RRylpFsKwUc0hReC0VToT5DsbjLiVbR0qg=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=beIxbp/UADgn/+aY16jk5P4cWOPls4IrQuOwcs/FuqgezZaWhpeVvhRoc6sPyrZr4x4+MIImtIS5YL+aYxV/5meAb7hwKwik/P3kRJPIFvFbtb42U6U3q6UFbpf0+bPplvd5fVoXP9mxDNsQM4OCVo+wi8A9/1h8PwTMgYsT4wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwsvFpLG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F318FC116D0;
	Tue,  3 Feb 2026 18:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770142670;
	bh=yPbmCtjy6RRylpFsKwUc0hReC0VToT5DsbjLiVbR0qg=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=BwsvFpLGVD4frwinqDluGdWKa0Fqkl4GAxDq+tXKhGV2Pa+EtR6gKES8V5sRCx9Fd
	 VxqeiCuwG1XlWqvD57XEn9fglsyci9zjWDRGI5PDX+CtZXDH+dAqYGrnvEv3KWsDSF
	 GuYg+Z2eYB0jy+AuafP5iSDfsqvNMDuXocNO0Iwd1x/PUdsosVOhsn4slCirp1+ks1
	 TEvGchrwU14EkEilUQh/U94NpuPTJzlt42S2ctqTNdYxlptt8QHhoMVXnPlW1Xnhd+
	 bNWFcvq969S4Lt3Cl85IvH2DD0NIJlywu6pnpUlHe37YQ9gpLxNqZzJQKEzsEy7o98
	 os6P7ABIBB9sQ==
Date: Tue, 03 Feb 2026 12:17:49 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, dmitry.torokhov@gmail.com, 
 conor+dt@kernel.org, devicetree@vger.kernel.org, hvilleneuve@dimonoff.com, 
 linux-input@vger.kernel.org, krzk+dt@kernel.org
To: Hugo Villeneuve <hugo@hugovil.com>
In-Reply-To: <20260203155023.536103-2-hugo@hugovil.com>
References: <20260203155023.536103-1-hugo@hugovil.com>
 <20260203155023.536103-2-hugo@hugovil.com>
Message-Id: <177014266917.3376127.756776677952580015.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: input: add GPIO charlieplex keypad
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,kernel.org,dimonoff.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-262378-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dimonoff.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BDFE5DD912
X-Rspamd-Action: no action


On Tue, 03 Feb 2026 10:49:47 -0500, Hugo Villeneuve wrote:
> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> 
> Add DT bindings for GPIO charlieplex keypad.
> 
> Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> ---
>  .../input/gpio-charlieplex-keypad.yaml        | 88 +++++++++++++++++++
>  1 file changed, 88 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Lexical error: Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.example.dts:30.17-27 Unexpected 'MATRIX_KEY'
Error: Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.example.dts:30.29-30 syntax error
FATAL ERROR: Unable to parse input tree
make[2]: *** [scripts/Makefile.dtbs:132: Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1525: dt_binding_check] Error 2
make: *** [Makefile:248: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260203155023.536103-2-hugo@hugovil.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


