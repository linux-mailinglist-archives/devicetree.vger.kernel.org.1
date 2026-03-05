Return-Path: <devicetree+bounces-271343-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HjoLSn9qGmD0AAAu9opvQ
	(envelope-from <devicetree+bounces-271343-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 04:48:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5748A20AA88
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 04:48:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 30F3B3020A4F
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 03:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5E5E282F2E;
	Thu,  5 Mar 2026 03:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gjkivRK4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB6326738C
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 03:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772682534; cv=none; b=MYjnAlQHh/W0WmrVP6vp/zshoCPTnAehbdLZQ1KyxfNiK1DDh5ovpzi1kw4dCaZWj4NNMTfNMLzLp6Mus9XGrVdLhF9t0tJ4+LvYB6umK/RViks8GcNxofgJqceZfWizNrRiQiw9kEsQTIl/ZEHa7B4wiOj2LWLdMz2wkhOqveM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772682534; c=relaxed/simple;
	bh=jx3lwOAjNIKx1JbYIv0BtRGFivcMlAcPGHDzLTlQtjI=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=SCgMOryzPdeX2uavFQg20bZ7oxYybpEvRLrWz+KnKsojd46r2fbg0f3saBRMdr0PZoiw0fIwQak6VAz6m1vYyW1c6X2sff2EfuYnBgiCzGIolkFMhS1qbm0MFPAo1pJFVD7y27JdA36yDpKnZE5UjTAhz9+4nuWOPq6EbrD6ulI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gjkivRK4; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4836e3288cdso50670385e9.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 19:48:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772682532; x=1773287332; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m/oY6Lj6y92CrkHBsRn24dqJ3yooac2+GrQjHYegtCQ=;
        b=gjkivRK45AnC9Igxx9p4UKj/JvRH2NABuOGwO1JRqKryKPTFUtSe3GgBRfcXfto3xz
         vtV9e/gYP+mfUsoxeRJHCHinrSINtxgicTgnExJLvP74okQV22U3K3HQETHR/nT7F2xc
         5Wfm+Nj+DMFqTAzAY1qgRwunnQOJKwPeaJ3K60xRu5bqIEodp5P8hLfuYsoYJP98PhA/
         eSxevyb6su59LR9lQtRKwH2OpTVNREfzXDo9sPI2qBbNLXITFFxEl5m+3FfMqMPiA/3C
         InYubynMqSHsoiDH7lti6q9DvCX0yg5VLOkvf9nLQQCI0kJhW72GVzgpwCEldzW4DwJI
         QX/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772682532; x=1773287332;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m/oY6Lj6y92CrkHBsRn24dqJ3yooac2+GrQjHYegtCQ=;
        b=DKwYRrxdhwGznPyWworjtC9Sb2adYq7RleYhv9TrZnoETjbYj6KGPnVGeuSy1Y4IDP
         H18lIpnjhIS8Z5HdDjIW/C3uDb34ScASNiRYiOIqFz3fCTNyM5JBz1FdE2tpE8cvJgLy
         /b4QOHCPzrZj1dq5xaDpxahUEtH8WURzNK9Q9+B/CrV3IUkcK/3RxU8kmW4L310GHBJx
         rOr618siKrmyb+Ozzwhf23x7GU4Oszos5AzYukc6XvF9nhUZBQSva+VZL60VDJB2czhW
         YcdCshr1DMwUtxOxiNefEiYQAt8LxH7xFEZ/OB1ZJntrEUyACIlbVi0aWRojKhomIdB1
         hyRg==
X-Forwarded-Encrypted: i=1; AJvYcCU80hN0VPUanfMl+GXuWbgYVko/YT2P1eKQ6gIcEfYDScZW1Jr3ee6yy5vbssdpoBDDbV79sNiVANXN@vger.kernel.org
X-Gm-Message-State: AOJu0YzVtL6y5fUAjKgRK5mvyjTpGko66CvvCZmxqzHhdN4O2Ec/LRFT
	oGwvfFQLbaaIcc88SLdVIdRM2SmFUqszWgT0jk8lFG01LqYLopOZ4AX2Fm8VyieVfjg=
X-Gm-Gg: ATEYQzx/jnxLSgUOdo1fAAko4cPNYxvavdQNqhk6dsrfHkBXfkO8my6+QxeIGGBcfCC
	kH+PD8BVHu9vHZGW6gclTIys2QmjuPYD3gkUM6mEaxEpv34mTkniqemyeKFrSpKcOrmZ9ZrLLqn
	JmED8p8zklOLYh0jwOScHYxMUfREHDnUn0umApV6KwZNkECLVHTZAIV6Wdwq2pHLYAmoCfF56Sz
	FKPsQtW1yJaE9fkolg7YwDzsdeE81KaSBt3XqeFDY0gfw2qzZ0P5LbweqKjb52X/vgFEFrz9kfd
	SRiwTgAFkNlazbMZcypekvEyg4q+TqIVlnKE29uF5CYCP7sb9B7bZCfskyI6X6mF1ixoO4KeEOR
	ISzbbuTBLQ0zNwu/7jY26wuNbdf7RV4nELGg5/Z1r8r0z6/tz217zNWbJdJGPRUVDuFletbCqg2
	lrjud7XO5Hbh62/7J3N/5Kd6Ber2/ksoNkscJ0egIaOxgmLBt/hP9xz6VwywZ1/sRIhARJEMvUV
	qqdkvqUOcttMMaIcA==
X-Received: by 2002:a05:600c:a08b:b0:479:13e9:3d64 with SMTP id 5b1f17b1804b1-4851eea3fd6mr10898135e9.15.1772682531768;
        Wed, 04 Mar 2026 19:48:51 -0800 (PST)
Received: from localhost ([2a02:c7c:5e34:8000:7406:79df:b00c:2c64])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851fae02a8sm16711195e9.5.2026.03.04.19.48.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 19:48:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 05 Mar 2026 03:48:49 +0000
Message-Id: <DGUJIFLIOK7Y.1Q4PZQU3MOWTT@linaro.org>
Cc: <willmcvicker@google.com>, <jyescas@google.com>, <shin.son@samsung.com>,
 <linux-samsung-soc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-pm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-hardening@vger.kernel.org>
Subject: Re: [PATCH v2 1/7] dt-bindings: thermal: Add Google GS101 TMU
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Tudor Ambarus" <tudor.ambarus@linaro.org>, "Rafael J. Wysocki"
 <rafael@kernel.org>, "Daniel Lezcano" <daniel.lezcano@linaro.org>, "Zhang
 Rui" <rui.zhang@intel.com>, "Lukasz Luba" <lukasz.luba@arm.com>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzk@kernel.org>, "Alim Akhtar" <alim.akhtar@samsung.com>, "Bartlomiej
 Zolnierkiewicz" <bzolnier@gmail.com>, "Kees Cook" <kees@kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, "Peter Griffin"
 <peter.griffin@linaro.org>, =?utf-8?q?Andr=C3=A9_Draszik?=
 <andre.draszik@linaro.org>
X-Mailer: aerc 0.20.0
References: <20260119-acpm-tmu-v2-0-e02a834f04c6@linaro.org>
 <20260119-acpm-tmu-v2-1-e02a834f04c6@linaro.org>
In-Reply-To: <20260119-acpm-tmu-v2-1-e02a834f04c6@linaro.org>
X-Rspamd-Queue-Id: 5748A20AA88
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271343-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,intel.com,arm.com,samsung.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexey.klimov@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,linaro.org:dkim,linaro.org:email,linaro.org:mid,devicetree.org:url]
X-Rspamd-Action: no action

Hi Tudor,

On Mon Jan 19, 2026 at 12:08 PM GMT, Tudor Ambarus wrote:
> Document the Thermal Management Unit (TMU) found on the Google GS101 SoC.
>
> The GS101 TMU utilizes a hybrid control model shared between the
> Application Processor (AP) and the ACPM (Alive Clock and Power Manager)
> firmware.
>
> While the TMU is a standard memory-mapped IP block, on this platform

this ^^

> the AP's direct register access is restricted to the interrupt pending
> (INTPEND) registers for event identification. High-level functional
> tasks, such as sensor initialization, threshold programming, and
> temperature reads, are delegated to the ACPM firmware.
>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
>  .../bindings/thermal/google,gs101-tmu-top.yaml     | 67 ++++++++++++++++=
++++++
>  1 file changed, 67 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/thermal/google,gs101-tmu-t=
op.yaml b/Documentation/devicetree/bindings/thermal/google,gs101-tmu-top.ya=
ml
> new file mode 100644
> index 0000000000000000000000000000000000000000..b09e1ff5d89194b570810a042=
c75836ca2e53950
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/google,gs101-tmu-top.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/google,gs101-tmu-top.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Google GS101 Thermal Management Unit (TMU)
> +
> +maintainers:
> +  - Tudor Ambarus <tudor.ambarus@linaro.org>
> +
> +description:
> +  The Google GS101 TMU is a thermal sensor block that supports both dire=
ct
> +  register-level access and firmware-mediated management via the ACPM
> +  (Alive Clock and Power Manager) firmware.
> +
> +  On this platform, the hardware is managed in a hybrid fashion. The
> +  Application Processor (AP) maintains direct memory-mapped access
> +  exclusively to the interrupt pending registers to identify thermal
> +  events. All other functional aspects - including sensor
> +  initialization, threshold configuration, and temperature acquisition
> +  - are handled by the ACPM firmware. The AP coordinates these
> +  operations through the ACPM IPC protocol.

Is it Google TMU hardware block or Exynos/Samsung TMU block?

My understanding at this point is that ACPM interface, ACPM protocols, etc
appeared on Samsung SoCs before gs101 (maybe even before initial SCMI
prototyping). It looks like ACPM firmware, communication via mailboxes,
TMU channel, dealing with TMU behing ACPM, etc are actually a standard
Samsung Exynos architectural feature, rather than a Google-specific
implementation. I can't say though what was the first chipset where it
was implemented.

Given that this is a Samsung design that predates the gs101, would it
make sense to use more generic name for this binding to reflect that
it is Exynos-derived? That would save us from generalizing things later
(if it happens, and I hope it happens).
I was thinking that name for this schema could be smth like:
samsung,acpm-tmu.yaml or samsung,exynos-acpm-tmu.yaml or whatever works.

Thanks,
Alexey


