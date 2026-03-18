Return-Path: <devicetree+bounces-277448-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ePIZOg3+uml2eAIAu9opvQ
	(envelope-from <devicetree+bounces-277448-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:33:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id ABEF92C20AF
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:33:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DF8FE300A30C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:33:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B10E13E1CFB;
	Wed, 18 Mar 2026 19:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReZsv8aD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CA1A38F9C;
	Wed, 18 Mar 2026 19:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773862408; cv=none; b=QCjOjzUMvQ7iHpbazyuFCYYvqJu5konGnKHwX+LiE56QnlZRqw+td5WvneibkTnRHcsU2i/oSpfFnAuy6qOcsup7JyRjZQsEvIfh1qiBkmafyFK00cAK+Q2luQlXmxqkcOpFLnKxXaQVVTAtJcXWmhiP4K5RP3ccKlg0qSxhYKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773862408; c=relaxed/simple;
	bh=DKwmLj7ND65DBAHN0CJDebSbMwzS0B4x/PyZj6skfFg=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=ijoyJdNgqSlWgnfbPgMiqWYtJn4PDj5RsYHJN8qwSlKJO0NyfSSfYvP94izoyXygaMe63a2rAjAvKtbIyMYCelA35jNFiCScqkBj4PuVYCPDD9Yx+gMh4PDrGOqVTvknrIMjiNT7RedoGZTxiwmtYdsqa9omBsswgIbZzGGvyJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReZsv8aD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED5C3C19421;
	Wed, 18 Mar 2026 19:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773862408;
	bh=DKwmLj7ND65DBAHN0CJDebSbMwzS0B4x/PyZj6skfFg=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=ReZsv8aD6a0k5rLEN6z39B2n/QYDUIWT7vyhNhs9EeibcpvVMG0WEGiUEdBEzhh45
	 hI5GiY7VE4Pf1gS9qy/nQ8TOU+AsUTqP5ihOGYfwy/e0I4uraqYj9CUHKfFx+QPL/8
	 adRfzOBe1C1Eb/VXJclX69k32cPCjy7i4t0LzjqDBunZU9PrJZxa9GNuFp499K1HsT
	 e+Rd0/oTXreatQjsoRjmt6/PW+wK5WAdww6MW6VPrWu8o9CBwcASPuncBYhIRZSi0X
	 JM3R4fdecUgfaXUC8zG4T3vPKAyuS9iIpc9/L+rB5ms6+SYi1zD2F/O62XC4sTXlI6
	 Tk8lcL87ggJVA==
Date: Wed, 18 Mar 2026 14:33:27 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org, 
 Stephen Boyd <sboyd@kernel.org>, Vyacheslav Yurkov <uvv.mail@gmail.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
To: Vyacheslav Yurkov <V.Yurkov.EXT@bruker.com>
In-Reply-To: <20260318-feature-clock-guard-v1-2-6137cb4084b7@bruker.com>
References: <20260318-feature-clock-guard-v1-0-6137cb4084b7@bruker.com>
 <20260318-feature-clock-guard-v1-2-6137cb4084b7@bruker.com>
Message-Id: <177386240712.300579.9310156446534562139.robh@kernel.org>
Subject: Re: [PATCH 2/2] dt-bindings: Add clock guard DT description
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[baylibre.com,vger.kernel.org,kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-277448-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.938];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: ABEF92C20AF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Wed, 18 Mar 2026 17:43:40 +0000, Vyacheslav Yurkov wrote:
> Describe device tree binding for virtual clock controller guard.
> 
> Signed-off-by: Vyacheslav Yurkov <uvv.mail@gmail.com>
> Signed-off-by: Vyacheslav Yurkov <V.Yurkov.EXT@bruker.com>
> ---
>  .../bindings/clock/clock-controller-guard.yaml     | 79 ++++++++++++++++++++++
>  1 file changed, 79 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/clock/clock-controller-guard.yaml:4:6: [error] string value is redundantly quoted with any quotes (quoted-strings)
./Documentation/devicetree/bindings/clock/clock-controller-guard.yaml:5:10: [error] string value is redundantly quoted with any quotes (quoted-strings)
./Documentation/devicetree/bindings/clock/clock-controller-guard.yaml:28:13: [error] syntax error: mapping values are not allowed here (syntax)

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/clock/clock-controller-guard.yaml: ignoring, error parsing file
./Documentation/devicetree/bindings/clock/clock-controller-guard.yaml:28:13: mapping values are not allowed here
make[2]: *** Deleting file 'Documentation/devicetree/bindings/clock/clock-controller-guard.example.dts'
Documentation/devicetree/bindings/clock/clock-controller-guard.yaml:28:13: mapping values are not allowed here
make[2]: *** [Documentation/devicetree/bindings/Makefile:26: Documentation/devicetree/bindings/clock/clock-controller-guard.example.dts] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1601: dt_binding_check] Error 2
make: *** [Makefile:248: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260318-feature-clock-guard-v1-2-6137cb4084b7@bruker.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


