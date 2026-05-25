Return-Path: <devicetree+bounces-302706-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kISKOAtHFGrzLwcAu9opvQ
	(envelope-from <devicetree+bounces-302706-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 14:56:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9EA5CACF3
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 14:56:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4DE0C30078C3
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 12:54:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6123A37FF53;
	Mon, 25 May 2026 12:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJVgJwfi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9ED3112AD
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 12:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779713697; cv=none; b=V0OOXvIEgDwagCD1m8FjNrY7E61RJ2KgBn3774somUDqMVVCsoEuUTi5omRWuG7YRoFV87PbdaruoOOO7UNChb3AxTgsJq74DZTA4XQZjXhBWRt1/tamV6pSUeiRvv1jVcRNJN1cPWZA7nhRy1XIhxSlGHsBZV6+FA19kqhoYL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779713697; c=relaxed/simple;
	bh=vsR4UbnCI9AGZDnX38TlL40KFTg9AVrmRGfDTPvz2/w=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YilYVCFWF8vk7RbLLkJ2cs6WqSqQ6x89T0CHQ5xDyUxnMFvYeRxlmVeXN0LtB6lwSq25uDZA9d0atsFCSIJWQeYmsjyXbfsFejTXxflOYPHKjdjtfgh/O2ufdbE4h8/7tCAwosj/NlFtp2AHNgJjUq450wYq5SkL8Xuj8jv3jFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJVgJwfi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF31A1F000E9;
	Mon, 25 May 2026 12:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779713695;
	bh=pZHyJhIzowN9JQ+wjodL1pcq9SPVb2WzACuS54STROE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lJVgJwfiIwgLJqHhamveNjHmHXTpTcPRhsbCVlHQItSWTurocr/Om7xVQmmE/LATz
	 tXa4l5ZDGNfCFpjidCmT0k8GDH/teYolSX/Hm9JMQT61/3Ly/uG9Dq4fcQIQ+ISbt6
	 ZW+ijsTny2A4aCOlFw+kptS6nzupjN/Ar4t3lvh+F0BOn0f5wQcDAVYq4w1DGro2UT
	 6HXiefyA3GnQaVmDBxiaXxUZL7jR5wtOpIVQqui1y8hF2IuNeTiL57cF4foDP6COFu
	 ik8vTFJll+VRjjMjyune7yzjz7tKssZP7XWlvb3kDI+a3JKgehfVvsuDRlMTQqNJ4+
	 TT2X/a9fealtw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/5] dt-bindings: thermal: Add Google GS101 TMU
Reply-To: sashiko-reviews@lists.linux.dev
To: "Tudor Ambarus" <tudor.ambarus@linaro.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260525-acpm-tmu-v5-1-85fde739752e@linaro.org>
References: <20260525-acpm-tmu-v5-1-85fde739752e@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 12:54:54 +0000
Message-Id: <20260525125455.AF31A1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-302706-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto,linaro.org:email]
X-Rspamd-Queue-Id: 3D9EA5CACF3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `samsung,acpm-ipc` property is missing from the `required` l=
ist despite being functionally mandatory for device operation.
--

commit f4129715b1366153f8c291ba713ab0836fdf5768
Author: Tudor Ambarus <tudor.ambarus@linaro.org>

dt-bindings: thermal: Add Google GS101 TMU

Document the Thermal Management Unit found on the Google GS101 SoC.
This hardware uses a hybrid control model where the Application Processor
delegates high-level functional tasks to the ACPM firmware via IPC.

> diff --git a/Documentation/devicetree/bindings/thermal/google,gs101-tmu-t=
op.yaml b/Documentation/devicetree/bindings/thermal/google,gs101-tmu-top.ya=
ml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/google,gs101-tmu-top.yaml

[ ... ]

> +  samsung,acpm-ipc:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: Phandle to the ACPM IPC node.
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +  - "#thermal-sensor-cells"

[Severity: Medium]
Since the commit message and binding description indicate that the
Application Processor relies entirely on the ACPM firmware for all
functional TMU tasks, shouldn't samsung,acpm-ipc be included in this
required list?

Without it, incomplete device tree nodes might silently pass schema
validation.

> +
> +additionalProperties: false

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260525-acpm-tmu-v=
5-0-85fde739752e@linaro.org?part=3D1

