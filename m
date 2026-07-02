Return-Path: <devicetree+bounces-319285-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jvAnCUtCRmonNAsAu9opvQ
	(envelope-from <devicetree+bounces-319285-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:49:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C53B06F62FC
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:49:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=C1ABDGro;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319285-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319285-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0F0B932F3830
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 10:10:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61975480346;
	Thu,  2 Jul 2026 10:02:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C992480340
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 10:02:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782986528; cv=none; b=q1AVBSJHm5SlquZ+WRTcA5sLBxtvkhy06knEszINSelc8wRCtfHlGG0Lt1NWTmH7O7OpZlahQeMuAbjln3u74vnDV2kM6XusCa9V7pWlOzTqyi0vxEnH2KTS/flHKNkKfbExbC+Tk1z/XGctz448+H6L9dIuuTh7rDFpeqQwRv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782986528; c=relaxed/simple;
	bh=oHsT66r4irgiz4I5DzzQpBo3Nz+hVkDfm4ANgfDp1Xs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=rjC8HbU0BCFAo/ZlxSVUaQksAvmOIBn2QYHwTtkEKgY7C+5CuFd19jPQpSDrGtdMlP14KE9UsZnfsHrU8pEQouHuIpHZ4jax6MTyrs53SCY9uo6rvM7kDgcf3twpIzK5nIFQ1tsmCDDg7EtF3rEAMZM58z9KVHh/XepygSZJ5Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1ABDGro; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC1931F000E9;
	Thu,  2 Jul 2026 10:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782986527;
	bh=sSBYrb2wBa7cP7bYcdIEJ8iHAzSekDcyv0g6261Bp3Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=C1ABDGroO28HN3G18j9Lhu/Ut9xOLQ59Xf7cdDLbnn0VNPIh+qXrOhl1Wxw9Z83fc
	 0TJgEhwtfGdBz7/CkTF1K1kRHFDqdMvGzjXZzaDiKiNBN7PLyXD8GcYkDnLyLJ1zty
	 q28CbUQ0kIhVi398zZ6Oi6gYmEVBNmOHO216zF8jz4XWR/EfD5tL/gI0nGJYwbv3qa
	 nYS+8otVXHguUW8thgB90yXKGy1OfV497eQjD4rQvfViWci2uNB3NF3IveyftYcziu
	 NMbfBIwhkmKpFUrpOUz/15K9cNdq99eQkKvL+Q0YQ7HTJC+F+8gIuaLOPw7xteJbYm
	 iK8yo+NvyyMig==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/5] arm64: dts: qcom: pmk8550: add VADC node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Neil Armstrong" <neil.armstrong@linaro.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260702-topic-sm8x50-adc5-gen3-v5-1-8169953634ad@linaro.org>
References: <20260702-topic-sm8x50-adc5-gen3-v5-0-8169953634ad@linaro.org>
 <20260702-topic-sm8x50-adc5-gen3-v5-1-8169953634ad@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 10:02:06 +0000
Message-Id: <20260702100206.DC1931F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319285-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,linaro.org:email,smtp.kernel.org:mid,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C53B06F62FC

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The devicetree header file `qcom-adc5-gen3.h` is missing from the p=
atch and the repository, causing a fatal build failure.
--

commit f729ded8a3dc9a334b27b383ee9e5744b3564db8
Author: Neil Armstrong <neil.armstrong@linaro.org>

arm64: dts: qcom: pmk8550: add VADC node

This commit adds the VADC node and the initial pmk8550 adc channels.

> diff --git a/arch/arm64/boot/dts/qcom/pmk8550.dtsi b/arch/arm64/boot/dts/=
qcom/pmk8550.dtsi
> index 3049eb6b46d7a..3a9d9f7c37426 100644
> --- a/arch/arm64/boot/dts/qcom/pmk8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pmk8550.dtsi
> @@ -7,6 +7,7 @@
>  #include <dt-bindings/input/linux-event-codes.h>
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/spmi/spmi.h>
> +#include "qcom-adc5-gen3.h"

[Severity: Low]
Is the qcom-adc5-gen3.h header missing from this patch series? It doesn't
appear to be present in the repository, which causes a build failure when
the device tree compiler preprocessor tries to include it.

[ ... ]

> +		pmk8550_vadc: adc@9000 {
> +			compatible =3D "qcom,spmi-adc5-gen3";

[ ... ]

> +			channel@0 {
> +				reg =3D <ADC5_GEN3_REF_GND(0)>;

[Severity: Low]
Are the ADC5_GEN3_REF_GND and related parameterized macros expected to be
defined in the missing qcom-adc5-gen3.h header? Without the header, these
channel definitions won't compile.

> +				label =3D "pmk8550_offset_ref";
> +				qcom,pre-scaling =3D <1 1>;
> +			};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702-topic-sm8x=
50-adc5-gen3-v5-0-8169953634ad@linaro.org?part=3D1

