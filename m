Return-Path: <devicetree+bounces-262323-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICsfIl4fgmmhPQMAu9opvQ
	(envelope-from <devicetree+bounces-262323-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 17:16:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB98DBC56
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 17:16:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1C509303E81D
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 16:16:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C5163B8D6C;
	Tue,  3 Feb 2026 16:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9wI+BAH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79C401C28E;
	Tue,  3 Feb 2026 16:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770135363; cv=none; b=rx4CdY0KITyw2h7sWyfEm/ALAhrorCK4S7SoxeY8Q+rmbMPbeSfQc73+eOUfT2oxCJhE6EwcjqzK3VoiwhxZqKpuX17zuIig3bwK6XVYMESIG834rz0I13UywxNE63AkJlEAl8eLhnqxd29rv3nDfLY8foO9s723m4FPKVe2S1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770135363; c=relaxed/simple;
	bh=bhdGtd4WmowAH58NVum4rBSvvaM86Nvk07AmQZKvsvk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fBNuiFFgnlq6iHvh5h8g84xAwC0m9AcGl2fdQAfVYpT/a58/lTNg+SHgUOsSvb0ePKuXIAHx99FbWOf/cbWAI5deS2Nu8IiL7pNqglz8uFJ7JJNk+THtpkniKuwEWkx64zP74N64+XVxFoo02xj1wq8JPjrWoXk/AgxejfB3Ahw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9wI+BAH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF397C116D0;
	Tue,  3 Feb 2026 16:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770135363;
	bh=bhdGtd4WmowAH58NVum4rBSvvaM86Nvk07AmQZKvsvk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B9wI+BAHK2mSETzQpb7XvsMA4hAJWj3U4owCD37kw1JDVYNRasFl6bSgRntwgUI0g
	 +Ic3VbzTJgdEtgapWruosnipSDHqVow7/Bk0YrMxcda/SGvYdTosuHgPUQ0L2mfPPT
	 J82lQ5a4t8EZrl2+nLzY0EzzHVxcZEKZ9GKh10LMIYn66y0IbZbdWNXTwAGMM/8Vm+
	 66txt0lMT06fykGlkF0kClb+4zGD86Vi2e3as34Z7W39tgkzy1tjr6LcvxcKX7/STL
	 iDylwZSkmCdvgmqq8wA67O8QGojnardZ4rco77qzn2UKrIV1vG5drhK8I7jQdLbx2j
	 5HxeJ0jDUW65A==
Date: Tue, 3 Feb 2026 16:15:57 +0000
From: Lee Jones <lee@kernel.org>
To: Gary Yang <gary.yang@cixtech.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	p.zabel@pengutronix.de, peter.chen@cixtech.com,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	cix-kernel-upstream@cixtech.com
Subject: Re: [PATCH v6 0/3] Add support for Cix Sky1 resets
Message-ID: <20260203161557.GA7629@google.com>
References: <20260203021053.4073258-1-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260203021053.4073258-1-gary.yang@cixtech.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262323-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3EB98DBC56
X-Rspamd-Action: no action

On Tue, 03 Feb 2026, Gary Yang wrote:

> Patch 1: Add yaml file for Cix Sky1 resets
> Patch 2: Add driver codes for Cix Sky1 resets
> Patch 3: Add dts nodes for Cix Sky1 resets
> 
> v6 changes:
> - Pass dts build check with below commands:
> make O=$OUTKNL dt_binding_check
> make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=cix,sky1-system-control.yaml
> make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-orion-o6.dtb
> scripts/checkpatch.pl 000*.patch
> - refine reset driver
> - fix dt-bindings style
> 
> v5 changes:
> - Pass dts build check with below commands:
> make O=$OUTKNL dt_binding_check
> make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=cix,sky1-rst.yaml
> make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=cix,sky1-system-controller.yaml
> make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-orion-o6.dtb
> scripts/checkpatch.pl 000*.patch
> - refine reset driver
> - fix dt-bindings style
> 
> v4 changes:
> - Pass dts build check with below commands:
> make O=$OUTKNL dt_binding_check
> make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=cix,sky1-rst.yaml
> make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-orion-o6.dtb
> scripts/checkpatch.pl 000*.patch
> - add syscon
> - refine reset driver
> - fix dt-bindings style
> 
> v3 changes:
> - Pass dts build check with below commands:
> make O=$OUTKNL dt_binding_check
> make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=cix,sky1-rst.yaml
> make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-orion-o6.dtb
> scripts/checkpatch.pl 000*.patch
> - remove syscon
> 
> v2 changes:
> - Pass dts build check with below commands:
> make O=$OUTKNL dt_binding_check
> make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=cix,sky1-rst.yaml
> make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-orion-o6.dtb
> scripts/checkpatch.pl 000*.patch
> - fix dt-bindings style
> - refine reset driver
> 
> Gary Yang (3):
>   dt-bindings: soc: cix: document the simple-mfd syscon on Sky1 SoC
>   reset: add Sky1 soc reset support
>   arm64: dts: cix: add support for cix sky1 resets
> 
>  .../soc/cix/cix,sky1-system-control.yaml      |  49 +++++
>  arch/arm64/boot/dts/cix/sky1.dtsi             |  14 ++
>  drivers/reset/Kconfig                         |   7 +
>  drivers/reset/Makefile                        |   1 +
>  drivers/reset/reset-sky1-base.c               | 125 +++++++++++
>  drivers/reset/reset-sky1-fch.c                |  78 +++++++
>  drivers/reset/reset-sky1.c                    | 204 ++++++++++++++++++
>  drivers/soc/Kconfig                           |   1 +
>  drivers/soc/Makefile                          |   1 +
>  drivers/soc/cix/Kconfig                       |  11 +
>  drivers/soc/cix/Makefile                      |   1 +
>  drivers/soc/cix/sky1-system-control.c         |  47 ++++
>  include/dt-bindings/reset/cix,sky1-rst-fch.h  |  42 ++++
>  include/dt-bindings/reset/cix,sky1-rst.h      | 164 ++++++++++++++
>  include/linux/reset/sky1.h                    |  18 ++

This is in my inbox because ...

>  15 files changed, 763 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml
>  create mode 100644 drivers/reset/reset-sky1-base.c
>  create mode 100644 drivers/reset/reset-sky1-fch.c
>  create mode 100644 drivers/reset/reset-sky1.c
>  create mode 100644 drivers/soc/cix/Kconfig
>  create mode 100644 drivers/soc/cix/Makefile
>  create mode 100644 drivers/soc/cix/sky1-system-control.c
>  create mode 100644 include/dt-bindings/reset/cix,sky1-rst-fch.h
>  create mode 100644 include/dt-bindings/reset/cix,sky1-rst.h
>  create mode 100644 include/linux/reset/sky1.h

-- 
Lee Jones [李琼斯]

