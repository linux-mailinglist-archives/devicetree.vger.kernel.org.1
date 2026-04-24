Return-Path: <devicetree+bounces-289905-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HPCMO8q62keJgAAu9opvQ
	(envelope-from <devicetree+bounces-289905-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 10:33:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 268AD45B8AB
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 10:33:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5719E300CBFE
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 08:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E88127144B;
	Fri, 24 Apr 2026 08:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtDCK8hm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABD5E555;
	Fri, 24 Apr 2026 08:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777019438; cv=none; b=JgjVBFacHsmryUQhJkenuMhzkD6O544rYAMv1v71UpdLO6o/xlUvSfo/Zfe70A3T5MrL6SDZOlpaSQTBQF5aFcIdRgatwtmuUfE4OYXHdD+0tnVTedEFokTL2QLAmhSnSyQdgwJQpE8cBQcErNW3haVdWPmsx2GWqavVJ3IQGmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777019438; c=relaxed/simple;
	bh=tPnhUsYoS7/RKLDJqyEPEoKzn9OTaYLzTkXCTVyG2PM=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=IKPfWrI3aJ682dH6R0MsLfGkxOENsl+l26/yGGXcIHxI2PVOudGnuzKEy5uf+RfTI8EtvrzAiTg20dqGGvo2gdzDf4wNew6ZNa5IvjObnhW2CSk5yj5dSM6zoUTqYScrrvFyO/Oc+6gyrpg4hYVQ0umBuhoO7d6+oQY9oSlT8vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtDCK8hm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5E44C19425;
	Fri, 24 Apr 2026 08:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777019438;
	bh=tPnhUsYoS7/RKLDJqyEPEoKzn9OTaYLzTkXCTVyG2PM=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=AtDCK8hmjx5ohyGBBcRANZY75sqO1XV3yoRLy6Ij/zFuvbRri2k/CiMd/mx0qzZGb
	 Cs9O5Es+zm7t82HYrJIC1V6eWcWokHEruYt21duVflTNlHxMV+CHhjHs7OIdR0yXNs
	 3WaM7m5+4XVS3kRBk7s89YiVq+YolPAvlLcr8dmW9Fn6VzVlPvrMeOKBFMptAFG5kp
	 VSonbjF7/8N+45DRYLdAY49ghDKq601tpdmofkNfMBNL4VDCpklXCJstut+MeiBpE+
	 7jqDqU1XRjX2JRYxpCIkwkETYMmKV7rZXtgRATasCkrsJs7ho7PXp1s42IpmcnSIfD
	 VboyILAFjOOJQ==
Date: Fri, 24 Apr 2026 03:30:34 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-input@vger.kernel.org, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, devicetree@vger.kernel.org, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linusw@kernel.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
In-Reply-To: <20260424071305.89503-2-clamor95@gmail.com>
References: <20260424071305.89503-1-clamor95@gmail.com>
 <20260424071305.89503-2-clamor95@gmail.com>
Message-Id: <177701943440.2848156.923810545023102522.robh@kernel.org>
Subject: Re: [PATCH v1 1/2] dt-bindings: input: Document Imagis ISA1200
 haptic motor driver
X-Rspamd-Queue-Id: 268AD45B8AB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-289905-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.49:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url]


On Fri, 24 Apr 2026 10:13:04 +0300, Svyatoslav Ryhel wrote:
> Document the Imagis ISA1200 haptic motor driver, used primarily in mobile
> handheld devices and capable of supporting up to two motors.
> 
> The exact datasheet for the ISA1200 is not available; all data was modeled
> based on available downstream kernel sources for various devices and
> fragments of information scattered across the internet.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  .../bindings/input/imagis,isa1200.yaml        | 145 ++++++++++++++++++
>  include/dt-bindings/input/isa1200.h           |  16 ++
>  2 files changed, 161 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/imagis,isa1200.yaml
>  create mode 100644 include/dt-bindings/input/isa1200.h
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/input/imagis,isa1200.example.dtb: haptic-engine@49 (imagis,isa1200): enable-gpios: [[4294967295, 22, 0], [4294967295, 23, 0]] is too long
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer-common.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260424071305.89503-2-clamor95@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


