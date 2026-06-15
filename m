Return-Path: <devicetree+bounces-312170-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pt/EOmRMMGomRAUAu9opvQ
	(envelope-from <devicetree+bounces-312170-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 21:03:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA4B689597
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 21:03:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CKohpoMz;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312170-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-312170-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DF71831071C8
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 19:02:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD1C830E84F;
	Mon, 15 Jun 2026 19:02:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97C5338D3E3
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 19:02:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781550158; cv=none; b=rL1FRNDcBmLe3PVxiEhiYDsseQSAo7hGPdOZh3dTRpwi/WdhjHCQcHw43Tol++ksBL0oA4oGGGmUobZfG9guB7SyNscM1DiHfdMnTuamqRP/ZtgzgynpZKDR1q93BXNNAaXlDhVu/iHdCctjOg/l6AEzLWNxLql3mwKnqmg5LYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781550158; c=relaxed/simple;
	bh=9m0van6LUr60zVEd+QnaGzCY8fGv2OtcQzGnCuUf0gw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pn+bJ79fvQPjboWSYexsmJSbR98Rs+nWfRyeY7bZCjPrZQDLr1y32ecGaj/0vLNIkKp307yyXPTnnSrLr4HEusu84Aihtq6kSRu6VE1vZvba2RW/M3AABwxJXm3YBfOfPNsKU2C+ntIT5O8Rq3iaFs/q2RnrJvB5JwqCojGjd6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKohpoMz; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0ACED1F000E9;
	Mon, 15 Jun 2026 19:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781550157;
	bh=5tUGSeRM5tJn3vtS00caH64Omrgvt6Wk0SXtxlhrNOI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CKohpoMzUl7EKZpZ6euIPNw5+GYwyuHQaeGlLKe1eLFt3EtHojATxNPOWj00Jf93b
	 EbHyQuCw9h1ASyKj3dAjPbvayNmObL+WdQHx6DBvgPT3Sp+2VZoBcxiPS5LsGgkhIz
	 PnxaoMOSqhvx60uz36g5FB+RizhlFWguzmvXnTSTEyXqiWwfDJbNut8Ar4geL5AEuE
	 jDDpOEqEI9n/v9w8J0PLL9+w9G5LZYVIyCWEutHZ17fVlc1TupYy+hzn1kdvGftFsN
	 v5Q/WxFOAPP/vwqWGLIumPNaTFelBjq8Z8SfstgsIR5FEsiHFOCSehMkj8nUGEChx5
	 CD7Mvgz4FMT9A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/6] dt-bindings: clock: qcom: gcc-sm8450: Add
 missing power-domains property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Neil Armstrong" <neil.armstrong@linaro.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260615-topic-sm8x50-tie-gcc-to-cx-v2-1-6b5752dd4747@linaro.org>
References: <20260615-topic-sm8x50-tie-gcc-to-cx-v2-1-6b5752dd4747@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 19:02:36 +0000
Message-Id: <20260615190237.0ACED1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-312170-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,linaro.org:email,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3AA4B689597

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing `#include <dt-bindings/power/qcom,rpmhpd.h>` in the DT bind=
ing example block leads to `make dt_binding_check` syntax error.
--

commit d4a5f7a86b8e17c69572dda7a1449210ed6871bc
Author: Neil Armstrong <neil.armstrong@linaro.org>

dt-bindings: clock: qcom: gcc-sm8450: Add missing power-domains property

This commit adds the missing power-domains property to the SM8450 GCC clock
binding schema. It declares CX as a power domain of the GCC so that votes on
provided GDSCs can be correctly propagated to CX.

> diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-sm8450.yaml=
 b/Documentation/devicetree/bindings/clock/qcom,gcc-sm8450.yaml
> index 3169ac05e1d8a..7e3713cfd4985 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,gcc-sm8450.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,gcc-sm8450.yaml

[ ... ]

> @@ -66,6 +71,7 @@ examples:
>        reg =3D <0x00100000 0x001f4200>;
>        clocks =3D <&rpmhcc RPMH_CXO_CLK>, <&sleep_clk>;
>        clock-names =3D "bi_tcxo", "sleep_clk";
> +      power-domains =3D <&rpmhpd RPMHPD_CX>;

[Severity: Low]
Does this example need an include for dt-bindings/power/qcom,rpmhpd.h added
to the file so the RPMHPD_CX macro is properly defined?

Without the header, the C preprocessor cannot expand the macro. When the
generated device tree source is passed to dtc during make dt_binding_check,
the unexpanded token will cause a syntax error and break the validation bui=
ld.

>        #clock-cells =3D <1>;
>        #reset-cells =3D <1>;
>        #power-domain-cells =3D <1>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615-topic-sm8x=
50-tie-gcc-to-cx-v2-0-6b5752dd4747@linaro.org?part=3D1

