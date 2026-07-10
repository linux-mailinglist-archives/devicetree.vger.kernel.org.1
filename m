Return-Path: <devicetree+bounces-324626-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /1CzGYM6UWowBAMAu9opvQ
	(envelope-from <devicetree+bounces-324626-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:31:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AA16073D5FD
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:31:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="SSrIhse/";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324626-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324626-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 76990301497C
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:31:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0FAF31E825;
	Fri, 10 Jul 2026 18:31:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 979811D0DEE
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 18:31:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783708288; cv=none; b=blhk30Us6YizEYTK3areiVWD1OfJk0DQIKakAYpxNUeGe2B6t9Pedd1K2nHCKRc6r/wnyhYdtGFshnXXw/BX8nXddnZbvdZHundcngmvamMHkjoRWstqkPUB/bpIFn6TgmCBEiytnye2Wt1C1HX/mEzNAbbiJHy2s/wiEHj9iFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783708288; c=relaxed/simple;
	bh=EIzcENdE75jSJqkvpIMbJIct5CYdJ4qMcW67t4u/Qrk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=I4L9XOWdvFseIXlPv8UgqvOLmICdYyW5J7l1qsv3eVCtCBDoGDqK93Lgr8pIt3R2TSnwCKFKy5QHfRoe6Iuygb6jgi0YpseCIuQNsHrsNbcVYzhs31cYIl1fbxYYhNrBU+dk6wZ6XhEjV9MAWQ7B8ah7x1AQeqNKX1GHFQkD64U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSrIhse/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 126261F000E9;
	Fri, 10 Jul 2026 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783708287;
	bh=XCSeAleDjV43F7HxpREnFP85RPg5OWEPJmCjNv7rc/U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SSrIhse/xQsZv6ezUw5wKzrmzOb5RZ7JmdIdkNgxMZluuRaNdzqWgcCWs3Rf3waUQ
	 YcgDYbscPgkMynRSMNAMaObmLhiVZHumKPCClPlVUcSXGxjuE2TvcCt0S/RjGFvV4x
	 QH1A+PQq427BGQMCvrCI88bF/r7NkBV2DieuYYb6hRhLvC36EEePUBncSaQyFAq+qR
	 Qhv8PVvjK9hM50gNdwRaAtCGapeISkHIBoH/e6fMmMBd1p3cUvQzAf1RLpIKL54+BL
	 BQ/jfpKbGMdxG5H5jG6T3MJrkm7OgC3cu+4o5bXle2i3brxlerBjqcbrMIlpGZocTO
	 qwNxlJBCjOp0Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/7] clk: tests: Add clk_parse_clkspec() Kunit
 testing
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?TWlxdWVsIFJheW5hbCAoU2NobmVpZGVyIEVsZWN0cmljKQ==?= <miquel.raynal@bootlin.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260710-schneider-v7-2-rc1-eip201-upstream-v2-2-b4680787377e@bootlin.com>
References: <20260710-schneider-v7-2-rc1-eip201-upstream-v2-0-b4680787377e@bootlin.com>
 <20260710-schneider-v7-2-rc1-eip201-upstream-v2-2-b4680787377e@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 18:31:26 +0000
Message-Id: <20260710183127.126261F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	TO_EXCESS_BASE64(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324626-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:miquel.raynal@bootlin.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AA16073D5FD

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Ignored return value of `of_clk_add_hw_provider_kunit()`.
--

--- Patch [2]: [PATCH v2 2/7] clk: tests: Add clk_parse_clkspec() Kunit tes=
ting ---
commit 4b569be51db687b32469c5799d300307be42e0b7
Author: Miquel Raynal (Schneider Electric) <miquel.raynal@bootlin.com>

clk: tests: Add clk_parse_clkspec() Kunit testing

This commit introduces a new set of KUnit tests to verify that
clk_parse_clkspec() functions properly. It validates whether valid lookups
by index and name return the correct devices, and checks that out-of-bounds
requests properly result in an error.

> diff --git a/drivers/clk/clk_test.c b/drivers/clk/clk_test.c
> index b1961daac5e22..fddb2bb9618fd 100644
> --- a/drivers/clk/clk_test.c
> +++ b/drivers/clk/clk_test.c
[ ... ]
> @@ -3541,10 +3541,126 @@ static struct kunit_suite clk_hw_get_dev_of_node=
_test_suite =3D {
[ ... ]
> +static int clk_parse_clkspec_init(struct kunit *test)
> +{
> +	struct device_node *prov1_np, *prov2_np;
> +	struct clk_parse_clkspec_ctx *ctx;
> +	struct clk_hw *hw1, *hw2;
> +
> +	ctx =3D kunit_kzalloc(test, sizeof(*ctx), GFP_KERNEL);
> +	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);
> +	test->priv =3D ctx;
> +
> +	KUNIT_ASSERT_EQ(test, 0, of_overlay_apply_kunit(test, kunit_clk_parse_c=
lkspec));
> +
> +	/* Register provider 1 */
> +	hw1 =3D kunit_kzalloc(test, sizeof(*hw1), GFP_KERNEL);
> +	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, hw1);
> +	hw1->init =3D &clk_parse_clkspec_1_init_data;
> +
> +	prov1_np =3D of_find_compatible_node(NULL, NULL, "test,clock-provider1"=
);
> +	KUNIT_ASSERT_NOT_NULL(test, prov1_np);
> +
> +	KUNIT_ASSERT_EQ(test, 0, of_clk_hw_register_kunit(test, prov1_np, hw1));
> +	of_clk_add_hw_provider_kunit(test, prov1_np, of_clk_hw_simple_get, hw1);

[Severity: Medium]
Should the return value of of_clk_add_hw_provider_kunit() be verified here?

If the provider fails to register during setup, test initialization will=20
continue as if it succeeded. This could mask the actual setup failure and
cause downstream tests to fail unpredictably. Adding a KUNIT_ASSERT_EQ check
similar to the of_clk_hw_register_kunit() call right above it might prevent=
=20
this.

> +	of_node_put(prov1_np);
> +
> +	/* Register provider 2 */
> +	hw2 =3D kunit_kzalloc(test, sizeof(*hw2), GFP_KERNEL);
> +	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, hw2);
> +	hw2->init =3D &clk_parse_clkspec_2_init_data;
> +
> +	prov2_np =3D of_find_compatible_node(NULL, NULL, "test,clock-provider2"=
);
> +	KUNIT_ASSERT_NOT_NULL(test, prov2_np);
> +
> +	KUNIT_ASSERT_EQ(test, 0, of_clk_hw_register_kunit(test, prov2_np, hw2));
> +	of_clk_add_hw_provider_kunit(test, prov2_np, of_clk_hw_simple_get, hw2);

[Severity: Medium]
Is it also necessary to check the return value of this second call to
of_clk_add_hw_provider_kunit() for the same reason?

> +	of_node_put(prov2_np);
> +
> +	ctx->cons_np =3D of_find_compatible_node(NULL, NULL, "test,clock-consum=
er");
> +	KUNIT_ASSERT_NOT_NULL(test, ctx->cons_np);
> +
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-schneider-=
v7-2-rc1-eip201-upstream-v2-0-b4680787377e@bootlin.com?part=3D2

