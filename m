Return-Path: <devicetree+bounces-267403-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGJEKx9HnGk7CgQAu9opvQ
	(envelope-from <devicetree+bounces-267403-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:25:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CB825176145
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:25:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5BFC93025677
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:25:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A906A3659E0;
	Mon, 23 Feb 2026 12:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKo6/zgu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86746358D3D;
	Mon, 23 Feb 2026 12:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771849496; cv=none; b=jySCPYOz71uqL8J8Z7KLF3+RLmIm35G3aoJUQSGDliY4Vy+gbzDGwrbr0iPFdKCiTB//ecZkn7La4vKkvGwLG+3hjMJcauNhdfBeGYetbzEn5UDrxro/geWLrFhVo2nlAZIrHJDRU12g5kELgexBtxqIo0kKLJ08d9jt9CB9jD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771849496; c=relaxed/simple;
	bh=EiW0Z+t0RcDcPdpVej3j7y+vuld++Y/zuPUbN7UI5q4=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=sfH29DbmdWR1vJgp9WMVZEEKVEHMinvzulJVAo79/h+mNuVrD2xIWyEs/+mJO+9EaQGCDmRiJ4a4JiIcCcJ3b3jHsXrILWN2pEGOno37Svj2HccoY2wl++wWqDmMNV71UmUIAed2TZqCZL6XeV0pCpuqAnD/q9Yxl8+Vp5MRJ4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKo6/zgu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1811AC116C6;
	Mon, 23 Feb 2026 12:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771849496;
	bh=EiW0Z+t0RcDcPdpVej3j7y+vuld++Y/zuPUbN7UI5q4=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=OKo6/zgumo8713SC6HGgLQebfdc2ogmVl8cGP5nssz9bA9mrkX4aXHCfgVym9/wsL
	 GA/jqLpVEJhmIi8OZQASW5H2/6IQGIpon+Ef4g+Fysj113eSU5sK8a10iDmKj5s6gj
	 2KNO3LUeZ0LkghPXeGnLff1qJdrGLdyfvdVRQzLgVMR3PfbNEGSnqHETHgi0hB7nke
	 Ree/fycRcj13wOgVs8pbeDNinSGYYtF/g3dPMQuxksegMwaN/XpwtvsH3TB5U6i3FP
	 Sozs0P75cdkN6Qo51jIvdDHHi5/lUQaXWnYGOyGZZ4dZjNIascaThUA3Av6pmfqgEH
	 KdkuJOXNLg5Ug==
Date: Mon, 23 Feb 2026 06:24:55 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 linux-input@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Marc Paolo Sosa <marcpaolo.sosa@analog.com>
In-Reply-To: <20260223-max16150-v1-1-38e2a4f0d0f1@analog.com>
References: <20260223-max16150-v1-0-38e2a4f0d0f1@analog.com>
 <20260223-max16150-v1-1-38e2a4f0d0f1@analog.com>
Message-Id: <177184949524.3256996.10057873509160996630.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: input: add adi,max16150.yaml
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267403-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,devicetree.org:url,analog.com:email]
X-Rspamd-Queue-Id: CB825176145
X-Rspamd-Action: no action


On Mon, 23 Feb 2026 19:03:39 +0800, Marc Paolo Sosa wrote:
> Add documentation for device tree bindings for MAX16150/MAX16169
> 
> Signed-off-by: Marc Paolo Sosa <marcpaolo.sosa@analog.com>
> ---
>  .../devicetree/bindings/input/adi,max16150.yaml    | 57 ++++++++++++++++++++++
>  1 file changed, 57 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/input/adi,max16150.example.dtb: power-button (adi,max16150a): 'interrupt-gpios' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/input/adi,max16150.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260223-max16150-v1-1-38e2a4f0d0f1@analog.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


