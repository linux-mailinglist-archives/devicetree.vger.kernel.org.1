Return-Path: <devicetree+bounces-259447-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NhlFGVCd2mMdQEAu9opvQ
	(envelope-from <devicetree+bounces-259447-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:31:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E126486F35
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:31:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4540C3003D1F
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06CE830E847;
	Mon, 26 Jan 2026 10:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKmY1k3M"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78CC301024;
	Mon, 26 Jan 2026 10:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769423457; cv=none; b=INZNqXmYuMaivEOK6WZI1LQi9tL4v8bVOkJ3wdX5ierOa87+HkC0iI/UHgZNvL7GKlwcDdMoR6sHtim3gfQSRHOY6L9cV1IMNYJ0dBuyyLE22Ovc6RxzBeF0ZOqiVJl6O2H1IqlPjwdBGL7jbU0eXx/ev9Ky1R1vvIsv57294oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769423457; c=relaxed/simple;
	bh=y8YlnBBYdukWkLM4gI4CeIjxBlYWDFXvVo4EZdvNX/w=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=goB9s7sm/IhALWGuNaoQBF6xbHOXtYO5dQ6GlohW1b9ffeBafhbCix0SgHrH1L1cegZcMjNCejri1FuTK7nADVjm/qbR3vsYaUlJlNezax8Oe7kYo1ztlzPEAzkmyCpV9HY7mGtruoSFb/F2NBV8JRB6rhIk6r2EBM7aYUU1Fxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKmY1k3M; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61B8AC19421;
	Mon, 26 Jan 2026 10:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769423457;
	bh=y8YlnBBYdukWkLM4gI4CeIjxBlYWDFXvVo4EZdvNX/w=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=HKmY1k3MJihWWPe6EOHqv0VHZKWuHc8NR7drsAPmiVG7wW9FtIMMVtU9M6LRVaRCU
	 14zoiljY30Ynrg//ohr8DUocHiyaCL4blvI1BWec0uPmjNeMK/tXlhR65kyx/2Btus
	 Z89yNcyZ2scUAgBTaoB+UwloBP/mMFloIeGonn/FG0GNg87FSZAl9S29XTyOdwHWO4
	 2fxJ3bWaF/64oqIU94r1y0IQ/2Lc9fYgb1u2zxgLCGdop7tMLIE/VGWQYAbG3oybNI
	 +lACoMAC4W3RwH3VhRbp0+EeFk3LPoSUyqZl1xF+IhLlZb3RRZFW/Aj4ciS0DPq3oy
	 mYOO2f2Y1b5Vg==
Date: Mon, 26 Jan 2026 04:30:56 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, schung@nuvoton.com, tzimmermann@suse.de, 
 devicetree@vger.kernel.org, conor+dt@kernel.org, ychuang3@nuvoton.com, 
 linux-arm-kernel@lists.infradead.org, maarten.lankhorst@linux.intel.com, 
 yclu4@nuvoton.com, airlied@gmail.com, dri-devel@lists.freedesktop.org, 
 mripard@kernel.org, simona@ffwll.ch, krzk+dt@kernel.org
To: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <20260126085727.2568958-2-a0987203069@gmail.com>
References: <20260126085727.2568958-1-a0987203069@gmail.com>
 <20260126085727.2568958-2-a0987203069@gmail.com>
Message-Id: <176942345650.1493690.6680592088886642042.robh@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: display: nuvoton: add MA35D1 DCU
 binding
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259447-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,nuvoton.com,suse.de,kernel.org,lists.infradead.org,linux.intel.com,gmail.com,lists.freedesktop.org,ffwll.ch];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[2.102.81.160:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E126486F35
X-Rspamd-Action: no action


On Mon, 26 Jan 2026 16:57:25 +0800, Joey Lu wrote:
> Add Device Tree binding documentation for the Display Control
> Unit (DCU) found in Nuvoton MA35D1 SoCs.
> 
> The DCU is a DPI-based display controller supporting RGB output
> with optional external bridges or panels.
> 
> Signed-off-by: Joey Lu <a0987203069@gmail.com>
> ---
>  .../bindings/display/nuvoton,ma35d1-dcu.yaml  | 74 +++++++++++++++++++
>  1 file changed, 74 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/nuvoton,ma35d1-dcu.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/display/nuvoton,ma35d1-dcu.example.dtb: /example-0/display@40260000: failed to match any schema with compatible: ['nuvoton,ma35d1-drm']

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260126085727.2568958-2-a0987203069@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


