Return-Path: <devicetree+bounces-269406-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oKSgOCDxoWnYxQQAu9opvQ
	(envelope-from <devicetree+bounces-269406-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 20:31:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBCD1BCD28
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 20:31:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 282553036EF8
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 19:27:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 386CE36EA82;
	Fri, 27 Feb 2026 19:27:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwCNJcHo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EBB361DD9;
	Fri, 27 Feb 2026 19:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772220477; cv=none; b=j/mzY/XlJsBdWueE4gUAqSZZra/SuoMvB4EGok764+pFpfUkIGNXGF8DQpX5ayJy850UnpOmb5tS0lrK23WHB8MIDdgugVbsLpLjYY1jIFTg+SXG/p4iKZzeqQ6yPJLetT4kYN+BRLJiDG+JPbQGAZ9JXoYayyHQjnkcyj0YPoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772220477; c=relaxed/simple;
	bh=W4D4p9NWvx9jyvMdo1vNz2X3jg1f1y9y30c0oRkDVBI=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=kBJuRfYpZkuxLjI/mnnTWFijDMeMY3iQTTeesbEoScSQqz7YQ2qqdSDMKNJo5RDRVbvymiMk2M+jddf3ZmhHfiB33rijayw9W6PA+P5rg/vRY4Q2JOFxC0jZkOy9VFJEkS0KMg8kEO7AWG6ePph1Sj/OIQGI5LjuTZsHAEk4gdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwCNJcHo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 901CAC116C6;
	Fri, 27 Feb 2026 19:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772220476;
	bh=W4D4p9NWvx9jyvMdo1vNz2X3jg1f1y9y30c0oRkDVBI=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=GwCNJcHoQGjmfXEVOkDtddjkPTcBbrYJQXB93d5tO+jZ/knBJ+I8JxBTdl4teeKlr
	 dqtE7msWihjTjTzJHkKozroxWElWXjJuFWh1CzMMAjTjHjRuYGYoBmor4Zr6rAAxoh
	 Ho1SyFQD1iEqI0wT3W/IysGFFHcDJS7DW6KDEwcgEccTo2hwdOElAt9k7xc2LCL1V7
	 cxHg04A80dVj3pr28RaCJQ1GW7fK58l4n4EFQLzv7gRl/1JVAa62KCsfJOLU6/uIDd
	 ZqmMDXy1liNWQZEEzBNESQ/pMxKQ6fv8rL+HQacOit7RzLI/VjnOiZgoMo1vEXrae7
	 sE5raX+M6Fvcw==
Date: Fri, 27 Feb 2026 13:27:55 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: gregkh@linuxfoundation.org, conor+dt@kernel.org, 
 ovidiu.panait.oss@gmail.com, krzk+dt@kernel.org, 
 linux-staging@lists.linux.dev, devicetree@vger.kernel.org
To: Lucas Faria Mendes <lucas.fariamo08@gmail.com>
In-Reply-To: <20260227181051.36207-3-lucas.fariamo08@gmail.com>
References: <20260227-unboxed-customary-7ce6eda1858c@spud>
 <20260227181051.36207-1-lucas.fariamo08@gmail.com>
 <20260227181051.36207-3-lucas.fariamo08@gmail.com>
Message-Id: <177222047565.651365.761450168412110181.robh@kernel.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: misc: xlnx,axi-fifo-mm-s: convert
 to json-schema
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[linuxfoundation.org,kernel.org,gmail.com,lists.linux.dev,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-269406-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,43c00000:email]
X-Rspamd-Queue-Id: 4FBCD1BCD28
X-Rspamd-Action: no action


On Fri, 27 Feb 2026 15:10:44 -0300, Lucas Faria Mendes wrote:
> ---
>  .../bindings/misc/xlnx,axi-fifo-mm-s.yaml     | 91 ++++++++++++++++++
>  drivers/staging/axis-fifo/axis-fifo.txt       | 96 -------------------
>  2 files changed, 91 insertions(+), 96 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
>  delete mode 100644 drivers/staging/axis-fifo/axis-fifo.txt
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.example.dtb: dma-controller@43c00000 (xlnx,axi-fifo-mm-s-4.1): '#dma-cells' is a required property
	from schema $id: http://devicetree.org/schemas/dma/dma-controller.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260227181051.36207-3-lucas.fariamo08@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


