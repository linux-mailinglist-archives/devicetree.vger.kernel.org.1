Return-Path: <devicetree+bounces-307856-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3QNNDJ25JWrSKwIAu9opvQ
	(envelope-from <devicetree+bounces-307856-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 20:34:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 738AB6513D9
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 20:34:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WJx3nq4m;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307856-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307856-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D3FAF300C582
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 18:33:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D9F730C360;
	Sun,  7 Jun 2026 18:33:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 932D9224D6;
	Sun,  7 Jun 2026 18:33:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780857188; cv=none; b=iubpEtjO/Mpkf+DPaQdgOVzh0YoEEbJLr+MJiIU5Tnei4XgfCzU8u1uV+zhcwNqv2mmJvyjpirJQpzEHgbgtLzmG3itlcRWjI3hOEpLJvNEX7rIuM+qDhpPYfvcJCv5dMuR6pMltZyxSZWxXD8wyI+bzqgGasMUaAZRJD03V/qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780857188; c=relaxed/simple;
	bh=X/5om6HkYhW7mPvTmTrOWA5QHz5YZ+eLYbvUEduIo8w=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=T/orR1YFFp437oTkL0xdk8myHjMO9lQLJEMQSmjyQJjTsTQnXt2PHraRz+o4qkBqFWl0XEvVbZh9r2zeKHLFKXfqWb4VriKAeeGtpiR6C9jXuae/5Sw1FLGJirEpJBthcGPy/hNqG/WkpSn+khkBWZ9ej6qEVHFyHM0Is5iJkXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJx3nq4m; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4A711F00893;
	Sun,  7 Jun 2026 18:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780857187;
	bh=uU69zeuZlkcAkD3EIcqqhVPgOcO8cs/QtnDl9YzXe3c=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=WJx3nq4mnicd5pPpZxIaCqpREUWEfJ669+yElZgjvTgtrp/Sm0feR1ZqTGkQEUqW2
	 G0ADy/Ew7iti+oiM4LzJXZbssmydYSJ4pMWi2giz5t5e2fDuwx0iZu9lzTvb4cZTj8
	 CCdko9DtVRmho06iXWNJLCIRMRPNF77Na11JnidtxW2ha/jO6LLA4ZLCe2SfNfk3cR
	 IXXvOS0zvq1OrLYEP/9Dznrqf5F6fLlAWYC5Sron6i3UVE/9xRjex5FwOAeLvTkuCm
	 KfZ6LNPuk/IVhb8MYbgmQX9Tm2xmYlQqRSzqtDYpaxlG7mWzhXJ0E45lDRkGz/Mwy4
	 TJMQ7EsYZWDFA==
Date: Sun, 07 Jun 2026 13:33:06 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: me@brighamcampbell.com, linux-kernel-mentees@lists.linux.dev, 
 linux-spi@vger.kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, broonie@kernel.org, skhan@linuxfoundation.org, 
 conor+dt@kernel.org
To: Ninad Naik <ninadnaik07@gmail.com>
In-Reply-To: <20260607142356.2844008-1-ninadnaik07@gmail.com>
References: <20260607142356.2844008-1-ninadnaik07@gmail.com>
Message-Id: <178085718604.176000.18209557583521606291.robh@kernel.org>
Subject: Re: [PATCH] spi: dt-bindings: octeon: Convert to DT schema
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307856-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:me@brighamcampbell.com,m:linux-kernel-mentees@lists.linux.dev,m:linux-spi@vger.kernel.org,m:krzk+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:broonie@kernel.org,m:skhan@linuxfoundation.org,m:conor+dt@kernel.org,m:ninadnaik07@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 738AB6513D9


On Sun, 07 Jun 2026 19:53:56 +0530, Ninad Naik wrote:
> Convert octeon-3010 to DT schema
> 
> Signed-off-by: Ninad Naik <ninadnaik07@gmail.com>
> ---
>  .../bindings/spi/cavium,octeon-3010-spi.yaml  | 67 +++++++++++++++++++
>  .../devicetree/bindings/spi/spi-octeon.txt    | 33 ---------
>  2 files changed, 67 insertions(+), 33 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/spi/cavium,octeon-3010-spi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/spi/spi-octeon.txt
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/spi/cavium,octeon-3010-spi.example.dtb: /: 'compatible' is a required property
	from schema $id: http://devicetree.org/schemas/root-node.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/spi/cavium,octeon-3010-spi.example.dtb: /: 'model' is a required property
	from schema $id: http://devicetree.org/schemas/root-node.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260607142356.2844008-1-ninadnaik07@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


