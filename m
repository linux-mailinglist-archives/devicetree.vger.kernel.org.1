Return-Path: <devicetree+bounces-308736-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id g+q9NBK5J2qU1AIAu9opvQ
	(envelope-from <devicetree+bounces-308736-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 08:56:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3104265CFB8
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 08:56:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=od6E0rY7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308736-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308736-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C2C1F3018ACE
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 06:52:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66B8124BD03;
	Tue,  9 Jun 2026 06:52:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6210D42A82
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 06:52:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780987974; cv=none; b=Wn5JuUX52TpETin0y1p+8nbpSdGLO8sCDLqWC77g4Zi/jbjF+20yDxBWR/DYNiQJfHGtCcKZ/WXckLYeZGaq9us72UfqEXWk0vWSpYDCac1H0LLLDHYJ8LpN/Mt6FW6839ohg4LTmv3BrZujOGUyptCqyINk6mIUkCm2E8qx34k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780987974; c=relaxed/simple;
	bh=uEM8FUvGPaBBi4zVRnM6f03frsSmvY9t2vIJitALyrQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jdEpWf53ZVxAfHzHmc67gbv7xDXePQkVKYRa5q5Fm+GBNEr+PK/MYX1RK8n/tz3RZPNPvrxuhe50rODgqMacgTIAOBT3Ztphag0U3VHzXDP7yjt5N5M93wdkye88Ss7xi9OTDHFEoB70WdDNMgKsIp+EKYEqR42qU/ee3V8ezfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=od6E0rY7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1BC51F00893;
	Tue,  9 Jun 2026 06:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780987973;
	bh=7LB05UuwpcVM8ryrWel6MP469IJsWZQ/Kd/hEnoAOSM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=od6E0rY7az8uJYgLMP6C92xlgu6rUBKlSWUkbSZpAKDkYlc1HxUkkChKU+Wdg5ZXj
	 7gKLCSu2aSkiWbKg1wKeGr1gOmjEI9n+dLvAiIGaErlf8LYaP0f0ujH8laU4fyf8VB
	 CG3t+RwqPxuPi7i6GSqXcqsxFQN4I1g5dfcem+LcUe89NZY75WzH9kN3kMK/E2vNhW
	 3cTyH1btgn14+tKHlmACDp3F7K7Nv4eDAgdfTEnYySAAPUyHWiQQfG4L9aHNf3BVJf
	 bKLx03fXk0TitkMg8cpaEztvpzOllDc0Uy1I5wGuOP+XslopT9edy8eJpe8Lu+lXbh
	 ts+Zz/gJohZFA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 1/3] dt-bindings: sound: qcom,q6apm-dai: add optional
 qcom,vmid
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ajay Kumar Nandam" <ajay.nandam@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260609064038.492641-2-ajay.nandam@oss.qualcomm.com>
References: <20260609064038.492641-2-ajay.nandam@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 06:52:52 +0000
Message-Id: <20260609065252.B1BC51F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
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
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308736-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ajay.nandam@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3104265CFB8

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The device tree binding arbitrarily restricts `qcom,vmid` array =
elements to a maximum of 31, encoding an OS driver bug as a hardware constr=
aint.
--

commit adf539322d2d402e55788f41c212034d7e0a62e8
Author: Ajay Kumar Nandam <ajay.nandam@oss.qualcomm.com>

dt-bindings: sound: qcom,q6apm-dai: add optional qcom,vmid

This commit adds an optional qcom,vmid property to the q6apm-dais node to
describe additional VMIDs that should be granted access to PCM DMA buffers.
It introduces a maximum value of 31 for the VMIDs to match the current SCM
source-permission mask handling.

> diff --git a/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml =
b/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
> index 9e5b30d9c6e62..b767625985a74 100644
> --- a/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
> +++ b/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
> @@ -20,6 +20,16 @@ properties:
>      minItems: 1
>      maxItems: 2
> =20
> +  qcom,vmid:
> +    description: Optional list of destination VMIDs to share PCM DMA buf=
fers with.
> +      HLOS retains RW access as source owner and must not be listed.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    items:
> +      minimum: 1
> +      maximum: 31

[Severity: Medium]
Does this artificially limit the hardware description based on a driver
implementation issue?

The commit message notes this matches current SCM source-permission mask
handling, but include/dt-bindings/firmware/qcom,scm.h defines valid VMIDs
that exceed 31 (e.g., QCOM_SCM_VMID_ADSP_HEAP =3D 37,
QCOM_SCM_VMID_CP_ADSP_SHARED =3D 51).

The limit of 31 seems to stem from the Linux qcom_scm_assign_mem() function
where it uses a 32-bit mask to track the source VMID mask. Should the device
tree binding allow higher VMIDs since bindings are meant to describe the
hardware capabilities rather than software limitations?

> +    minItems: 1
> +    maxItems: 8

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609064038.4926=
41-1-ajay.nandam@oss.qualcomm.com?part=3D1

