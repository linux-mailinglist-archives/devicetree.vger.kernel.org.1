Return-Path: <devicetree+bounces-304670-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Fo8DPLwGmre9wgAu9opvQ
	(envelope-from <devicetree+bounces-304670-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 16:15:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E0B60D5F2
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 16:15:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C70F1304B6AA
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 14:08:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 611B82E62B7;
	Sat, 30 May 2026 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hugb+Ve+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC6923E25B
	for <devicetree@vger.kernel.org>; Sat, 30 May 2026 14:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780150096; cv=none; b=fTFXx5qnVrt3uohaEXBkeyTFop6b/gJAA2bjdnSer4z9n7PUjd3wN5Nq1M/mOh98V03UC+WeLhrMUm33u56FXjdht0v+uuID9InqAiJd0/+tKHSCmILYOyQs07FUhOhRx45NNu7bQTun22J1l4GZuxpan7dxzi5HYuZAnKK5+s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780150096; c=relaxed/simple;
	bh=PqU0dHBfpRyevf0qXgjjvl9Un3UEUqqYcrWsm2LkXfg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ir9sDU81OYqiHkfe/pRo+zJ4klsIErs2/6u8/sqPSsT+381we1n0x79EUh6D+xtiuqJk6YHOtUchxREC2J8Q88X/mF2mchaKmtT7gFOD+es82THyGmJeSFDI6ko4VLaZd0f+cjyaQlH+xw/BYhmJ8lF79kgV1ngeT0NBr5HbvHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hugb+Ve+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F33E1F00893;
	Sat, 30 May 2026 14:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780150094;
	bh=dQ7Hc1u1JyD0DwKK0uz+ZjKCvh8u75Apy68uikOp0pM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hugb+Ve+bHb7yTQrqY0vn4alakEAasPjAYWM0rm6ZysAkKTOfMvHWjXmx6CK39KuH
	 9Rd0oDxU4vkUo43VKLUYecBVBNOpYuhBlAHIHm1D68TBeRYjAM7Q1mIjk34L1COw1c
	 ooIjWcc4+OSXs5+M8+028UemMivaiCQpfwr9YSlmpMHWexnqiokjd48KIVUjclUaKM
	 SuOThqddUiu48ddX0eUTfFsoirqh8xVkzjhjPlWyhSWP4/Go1jYiT990PKxaDc0vDM
	 9BjMtU42hrSnyqljyVmHmtwhg55Ya3wcI+Gnmc6cHfuikjNJbyhtm8CzpFuYX4xTPY
	 CKa320lNrRZaQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: thermal: qcom: add pm8901-temp-alarm
Reply-To: sashiko-reviews@lists.linux.dev
To: "Herman van Hazendonk" <github.com@herrie.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <386f3cef9d50d61f588f99706d9f979c56f8bab8.1780148149.git.github.com@herrie.org>
References: <386f3cef9d50d61f588f99706d9f979c56f8bab8.1780148149.git.github.com@herrie.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 May 2026 14:08:13 +0000
Message-Id: <20260530140814.2F33E1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304670-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[herrie.org:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.23:email]
X-Rspamd-Queue-Id: 51E0B60D5F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] The binding introduces a child node without updating the parent =
MFD schema to allow it, and the provided device tree example violates paren=
t requirements.
- [Medium] Meaningful mismatch between the commit message and the actual bi=
nding implementation regarding interrupts and parent references.
- [Low] The binding defines a thermal sensor provider but fails to referenc=
e the core `thermal-sensor.yaml` schema.
--

commit 547082ca486fab0b441c0b967105187e700c4d9c
Author: Herman van Hazendonk <github.com@herrie.org>

dt-bindings: thermal: qcom: add pm8901-temp-alarm

This commit adds a device tree binding for the temperature-alarm block
inside the Qualcomm PM8901 PMIC. The driver exposes the PM8901
die-temperature trip stages to the thermal framework via a thermal-zone.

> The binding describes the SSBI sub-node address, the GIC interrupt
> the alarm raises on a stage transition, and the parent PMIC
> reference.

[Severity: Medium]
Does the commit message match the binding implementation? The message
states it describes the GIC interrupt and parent PMIC reference, but the
schema actually defines PMIC-internal interrupts (indices 52 and 53), and
relies purely on the standard device tree parent-child hierarchy rather
than a parent PMIC reference property.

> diff --git a/Documentation/devicetree/bindings/thermal/qcom,pm8901-temp-a=
larm.yaml b/Documentation/devicetree/bindings/thermal/qcom,pm8901-temp-alar=
m.yaml
> new file mode 100644
> index 0000000000000..569943b4aedc5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/qcom,pm8901-temp-alarm.ya=
ml
[ ... ]
> +properties:
> +  compatible:
> +    const: qcom,pm8901-temp-alarm

[Severity: Low]
Should this binding include an allOf block containing a $ref to
/schemas/thermal/thermal-sensor.yaml#?

Standard device tree bindings for thermal sensors usually include this
reference to inherit core schema definitions. By omitting it and defining
additionalProperties: false, the schema will reject future common thermal
sensor properties.

[ ... ]
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    ssbi {
> +      pmic {
> +        compatible =3D "qcom,pm8901";
> +        #interrupt-cells =3D <2>;
> +        interrupt-controller;
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        pm8901_temp: temp-alarm@23 {

[Severity: Medium]
Will this pass dtbs_check and dt_binding_check?

The qcom,pm8901 parent schema in qcom-pm8xxx.yaml strictly prohibits
undocumented child nodes via additionalProperties: false and requires an
interrupts property on the pmic node.

It seems the qcom,pm8901-temp-alarm node was added without adding a
corresponding temp-alarm@[0-9a-f]+$ pattern to the parent schema.
Additionally, the pmic node in this example lacks the mandatory
interrupts property.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1780148149.gi=
t.github.com@herrie.org?part=3D1

