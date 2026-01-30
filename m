Return-Path: <devicetree+bounces-261253-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OORnMHvOfGlbOwIAu9opvQ
	(envelope-from <devicetree+bounces-261253-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 16:30:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 00939BC070
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 16:30:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 868D73007A74
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 15:29:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C7A3338925;
	Fri, 30 Jan 2026 15:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+dTt1u1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D3428D8F1;
	Fri, 30 Jan 2026 15:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769786995; cv=none; b=d+wG0Ke7PvMXNNkQ4S7MKtj8RNtZKaUz0Ei+U6i1SUCtp7jLJ90ttNuxpTNUUK3qbp1xfVMpHL75sRCVoHWCyzFz9nehfWOiljck3AgqND5OqJsK70ayWJ3ZNF/7kRHmWDCXImzDay7bGyD9uCspoghMTECqtjd8+SlDqbdpkVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769786995; c=relaxed/simple;
	bh=RVb5B2Qm+twV/gWtxvQsqWcbkIOjRUwdRe5YYSFo+eg=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=MJyoOuQ2c2UxvXUy5Lzmjz8Tl6vsxACoI1iTBXJNP7yJk1kNuI3IAbSIf0IRFgtqXZrwmpODIg7CM9drvB2Y8OiUmPdre2qnpPgmTDX5CjV6JAlj/q41uO6iTJgd8rZQMN7UbtQMKyjUZYpWK9Ve0gBgkNgADwsgQZXaxT/ql4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+dTt1u1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D683C4CEF7;
	Fri, 30 Jan 2026 15:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769786994;
	bh=RVb5B2Qm+twV/gWtxvQsqWcbkIOjRUwdRe5YYSFo+eg=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=N+dTt1u1oDZL+UmyxabeqUu6PjePAQNDUKjQj7Lyl5ttPd3hMYn2KkqbhxlNFax6B
	 24VH+PxpUuWhWIiUYG85pYn4FLes+yZ2LQCMek79ct4sQcVJHkvlSqos7G5vbhIhSy
	 spjEkhq3lKUMVgAWTrk6XIQ+4Luh5AdrYY8+WPhpj5b6zUXeNyd8ZlxS1VgQ/tsSyP
	 uan+KWTrP5l/JSFVVjyHKEN/wx227ijGhnTlFxBIyEnbS/SQrnm6nP1Wy6k6NzPvZ9
	 HrOU+CY36XAR0zPvooYLOQy0qbvWTO7QSIJK8vi1HfjgBZSWImgyg0Q8d9r8Rb4gW2
	 QF71+Eb4zSGgg==
Date: Fri, 30 Jan 2026 09:29:53 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: conor+dt@kernel.org, christian.gromm@microchip.com, 
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
 krzk+dt@kernel.org, gregkh@linuxfoundation.org, devicetree@vger.kernel.org, 
 parthiban.veerasooran@microchip.com
To: harshdaniel66356@gmail.com
In-Reply-To: <20260130141442.139640-1-harshdaniel66356@gmail.com>
References: <20260130141442.139640-1-harshdaniel66356@gmail.com>
Message-Id: <176978699376.4172747.3522600940240866939.robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: media: Add bindings for dim2 compatible
 strings.
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261253-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 00939BC070
X-Rspamd-Action: no action


On Fri, 30 Jan 2026 19:44:42 +0530, harshdaniel66356@gmail.com wrote:
> From: Harsh Daniel <harshdaniel66356@gmail.com>
> 
> Add device tree bindings for the compatible strings used in the
> staging/most/dim2 driver to resolve checkpatch warnings:
> - fsl,imx6q-mlb150
> - renesas,mlp and renesas,rcar-gen3-mlp
> - xlnx,axi4-os62420_3pin-1.00.a and xlnx,axi4-os62420_6pin-1.00.a
> 
> These bindings document the MediaLB DIM2 module found in Freescale
> i.MX6Q, Renesas R-Car, and Xilinx FPGA platforms.
> 
> Signed-off-by: Harsh Daniel <harshdaniel66356@gmail.com>
> ---
>  .../bindings/media/fsl,imx6q-mlb150.yaml      | 73 +++++++++++++++++++
>  .../bindings/media/renesas,mlp.yaml           | 65 +++++++++++++++++
>  .../media/xilinx/xlnx,axi4-os62420.yaml       | 60 +++++++++++++++
>  MAINTAINERS                                   |  3 +
>  4 files changed, 201 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/fsl,imx6q-mlb150.yaml
>  create mode 100644 Documentation/devicetree/bindings/media/renesas,mlp.yaml
>  create mode 100644 Documentation/devicetree/bindings/media/xilinx/xlnx,axi4-os62420.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/fsl,imx6q-mlb150.yaml: properties:clock-names: {'minItems': 1, 'maxItems': 2, 'items': [{'const': 'mlb'}, {'const': 'pll8_mlb'}]} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260130141442.139640-1-harshdaniel66356@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


