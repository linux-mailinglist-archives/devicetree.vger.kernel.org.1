Return-Path: <devicetree+bounces-301609-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2AW0DqQNEGpqSwYAu9opvQ
	(envelope-from <devicetree+bounces-301609-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 10:02:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E445B0501
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 10:02:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A26053014C03
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 07:57:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AA29392825;
	Fri, 22 May 2026 07:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrzaqbIZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F87121CFEF
	for <devicetree@vger.kernel.org>; Fri, 22 May 2026 07:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779436673; cv=none; b=D6eRfQGgV+aej8MF96n48tnq19i0SxpQMNU+kkKG4CgOmsch8vpWIMHXuQVrxkrQbHu0rdJbQjthf5Rye6bdtdKnIhiTNRFlKRRB3IUytGpc2hAW8G/sRVuE7j64eYOM7OLKvGeeKSemycrTK0tlexBtofDunN4ypny+a0tcfM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779436673; c=relaxed/simple;
	bh=1A06yKKhCCbuwbNK9I/6uSoyVzPbsjcIkPYx1La5vO0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RtgQ0HzR0b25DdmwZ5gix2xMwLQtmMzvoK0/zXAu0CUnGQ83z+Gwm/8/xQJprvjCkUcP037LectTTaTOqy+gqIdHB56hZj1LGCQx/Y9tmiqbaUzXq81rDEdQgK8ekkW8vcP5hP8DaCf6lpRt7rLVTexJjURoQXdWdLgCOJzYtdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrzaqbIZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81FE61F000E9;
	Fri, 22 May 2026 07:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779436671;
	bh=taoAsK43ZUYOxEz/vv1uzfO3sRCBNaY9Pv8OncjiBvA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WrzaqbIZQHZFaor3FHwVVdvnVZ+I5TbmcbEM0J7JZ2aPwhek4JT1BDVzZOZYxunLR
	 ck506w1yvCbdSMtV9RhvCmCeils9RTxTaMlRL9cmwWMjHcXZTo1YFzuMmGeWmsn8ok
	 BWpSxa1wkZq5FhEzn/G7NQC48drRe7eG3+9zrky9IZjfT9Z+YlcgYv6g8rs75fvJbF
	 z2f1GNU2xt6TDnVycRyvw1raq1DcqcflQ6UHZichyPLJBLn/iEK9C7nEYfXp00tDSC
	 RBFNTelblJ2gWCY2AYkNXpxE78fPoAcyUAtaq8kscjqWUc089RjqQDQXzw+z0LKrMf
	 Ex50HIJlOw8Bg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: qcom: Describe Maili TLMM
 block
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jingyi Wang" <jingyi.wang@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260522-maili-pinctrl-v1-1-0a6636f5c277@oss.qualcomm.com>
References: <20260522-maili-pinctrl-v1-1-0a6636f5c277@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 May 2026 07:57:51 +0000
Message-Id: <20260522075751.81FE61F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-301609-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,f100000:email]
X-Rspamd-Queue-Id: 23E445B0501
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The example's `gpio-ranges` specifies a count of 227, contradicting=
 the hardware's actual pin count of 226.
--

commit 8e1650eabb9fd79edf142e0abd0dc0d09fa8eeb4
Author: Jingyi Wang <jingyi.wang@oss.qualcomm.com>

dt-bindings: pinctrl: qcom: Describe Maili TLMM block

This commit adds a DeviceTree binding to describe the Top Level Mode
Multiplexer (TLMM) on Qualcomm's Maili SoC. The block provides GPIO and
pinctrl functionality for UFS, SDC and 226 GPIO pins.

> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,maili-tlmm.ya=
ml b/Documentation/devicetree/bindings/pinctrl/qcom,maili-tlmm.yaml
> new file mode 100644
> index 0000000000000..64fe90b2391bd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,maili-tlmm.yaml

[ ... ]

> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    tlmm: pinctrl@f100000 {
> +        compatible =3D "qcom,maili-tlmm";
> +        reg =3D <0x0f100000 0x300000>;
> +        interrupts =3D <GIC_ESPI 272 IRQ_TYPE_LEVEL_HIGH>;
> +        gpio-controller;
> +        #gpio-cells =3D <2>;
> +        gpio-ranges =3D <&tlmm 0 0 227>;

[Severity: Low]
The commit message mentions the hardware provides 226 GPIO pins, and the
schema enforces this limit in gpio-line-names and the pins pattern. Should
this example's gpio-ranges specify a count of 226 instead of 227 to avoid
contradicting the hardware pin count?

> +        interrupt-controller;
> +        #interrupt-cells =3D <2>;

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260522-maili-pinc=
trl-v1-0-0a6636f5c277@oss.qualcomm.com?part=3D1

