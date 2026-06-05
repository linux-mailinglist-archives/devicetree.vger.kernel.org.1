Return-Path: <devicetree+bounces-307367-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hXJQH2S4ImrPcgEAu9opvQ
	(envelope-from <devicetree+bounces-307367-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 13:52:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B05647DEE
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 13:52:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=DzbUAQVN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307367-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307367-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 78D8A3052E7F
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 11:45:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FAA74D90BA;
	Fri,  5 Jun 2026 11:45:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6FF4D90A2
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 11:45:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780659905; cv=none; b=bQkjfvIRx1q51vASX74+d4KEt8kgFieyfiD9bGEb+2NsfT+3xfPHcjj+s85qMAY3+yCRJEjLe+oRwg4WJdPP47kyKVhs0dWIH4M/SUPDePHFK9Ou2gusKFghBEGGbwXhtlDxiL242WXs1h9UuhLP0TVpDlXcvMLuHzxpgG1F4y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780659905; c=relaxed/simple;
	bh=pU4u0D6fVF0sXYC6qcD06jppJxeSJE2ClobGrsYB/Jw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kBS43pPynH1RyPytnCC7GppxXDv1O7u6gmg7qRk06tzViPQEsuM6yJwe7PA6nAwP8PYGcy8JIlp5uWlFIngUylC0qlvYlMznzDtj5sGaIRQ6ks8cU84n+yf91eORFeRujrJ/PKIEl763leXr7JRO796cOniKA3bDZidJyFjG7aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzbUAQVN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 782A21F00893;
	Fri,  5 Jun 2026 11:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780659903;
	bh=MSDcRDyhzWgul1N0J0VLBc8ql6ypLfaMwDBgDWa1HnU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DzbUAQVNn9RYl3s2qgHLnB05z7xTLi/9UJLk8j8WYhSrC+GTvZtHHyyohKW91nBbz
	 qJJipYC9Tn+awUrADkwvczzj7LWQ2IwZhb8bEHUTGI8NZf/z1MCqj7m2MUTjW77YnU
	 izbvkVcu6UwPNZD6OlDZzLEXI8fHw/xgOO/Knxc2OMjmhVkYZLKFSgQaazBod0DYSh
	 XmfpR8uyQoXQMmnolWGmWFxXkjpIAkKaNSN7ZgmG2fYA7VryvBCmzm2EgJZwFrDe1q
	 cc2tONsEehUpa95Gvm+wUGzZY+0ZdSvSC0MyK44LCD+OcdJ2kYI/gme5jQsjHHoX+6
	 3ov1lnKB0k+Dg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/13] dt-bindings: sound: Add Qualcomm QAIF binding
Reply-To: sashiko-reviews@lists.linux.dev
To: "Harendra Gautam" <harendra.gautam@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260605103739.3557573-3-harendra.gautam@oss.qualcomm.com>
References: <20260605103739.3557573-3-harendra.gautam@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 11:45:03 +0000
Message-Id: <20260605114503.782A21F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-307367-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:harendra.gautam@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C1B05647DEE

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The property `qcom,qaif-aif-bits-per-lane` directly contradicts =
its own description and example, creating severe ambiguity for device tree =
authors and driver implementations.
--

commit 156362ec3cefdde2ab7850355d1276f1ccef3348
Author: Harendra Gautam <harendra.gautam@oss.qualcomm.com>

dt-bindings: sound: Add Qualcomm QAIF binding

This commit adds a DeviceTree binding for the Qualcomm Audio Interface (QAI=
F)
CPU DAI controller used on the Shikra audio platform. It describes the MMIO
region, clocks, interrupts, DMA IOMMU mapping, and per-interface AIF child
nodes.

> diff --git a/Documentation/devicetree/bindings/sound/qcom,qaif.yaml b/Doc=
umentation/devicetree/bindings/sound/qcom,qaif.yaml
> new file mode 100644
> index 0000000000000..9c4371f13ff3b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/qcom,qaif.yaml

[ ... ]

> +      qcom,qaif-aif-full-cycle-en:
> +        type: boolean
> +        description: Enable full-cycle sync (effective in sync master mo=
de).
> +      qcom,qaif-aif-bits-per-lane:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          Number of slots per lane. The frame length is computed as
> +          slot-width multiplied by bits-per-lane.

[Severity: Medium]
Does the property name qcom,qaif-aif-bits-per-lane contradict its intended
meaning?

The description defines it as the number of slots per lane and explains that
the frame length is computed by multiplying the slot-width (which is in bit=
s)
by this value.=20

If this property actually represents a dimensionless slot count, would it be
clearer to name it qcom,qaif-aif-slots-per-lane?

Naming a slot count property bits-per-lane might lead authors to incorrectly
configure it as a bit count instead of a slot count.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605103739.3557=
573-1-harendra.gautam@oss.qualcomm.com?part=3D2

