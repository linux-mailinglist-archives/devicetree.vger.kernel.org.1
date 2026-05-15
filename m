Return-Path: <devicetree+bounces-298093-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFBkG1rvBmrOowIAu9opvQ
	(envelope-from <devicetree+bounces-298093-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 12:03:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0518254CF45
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 12:03:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 88E7C3039721
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 09:45:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE7CD43CEEB;
	Fri, 15 May 2026 09:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1oa36Qv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBE4A43CEE4
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 09:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778838350; cv=none; b=I5GbiaPFyPSSN8hRyR87eANQ64rEpXO1Vj9NRyuecoEFhqjlam7oJ6OPsL/zOhoCuPgyHx8oo1KYJ5pggjTyQlCxZ0P0fggG3Gpuau/6smrVzBoJQRB9VysKUtxROLIUTMYu5dLl+KKKgrhddOIjuKs07ydOjyr5b1Qy+dxcQPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778838350; c=relaxed/simple;
	bh=FSWuoEUnf/U7vfjcCt1mGd3m3B90XdS5/2Wpn7JR6/E=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=U/iDi4BEl+S1GM25xsBUYLofc8Ongj95ThPIKwa40e7esa3xB5tRaWCoZoz6kf0EQuUXyatdla1ARYvyzrWPV0Vs5kkJWuOS0LmcXV+RgaMx1ev4zLLbivU5CLsWOHCnTGKNYFqksMwW+/GkQ26Z+Sds/Ti8UvDnndmscBXajyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1oa36Qv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4527CC2BCB0;
	Fri, 15 May 2026 09:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778838350;
	bh=FSWuoEUnf/U7vfjcCt1mGd3m3B90XdS5/2Wpn7JR6/E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=k1oa36Qvdz3xOe9mre8zAaBFy1t8BQoI+bIxC1gGU5m/ufWDo58gniRlMALaMYNhv
	 ZKYMedu1fxnRVakjWKAS7Q5Cyka47Lh8Slt/DVmC3wV6TvPgpvUFRhW+IHtIHmtoTj
	 cHP5RyoCJdUYpgHUTf6rvsM8pOY+5L3ubLCYpG8u9Eg5JKW9Mi0/+jlB6Z/diw9whK
	 Op9+0JvqbOlvqOMJhjZu6OJMThTdqoDBXte6jbQTQCNGdSzdo29fVnokSpXPJGTqTt
	 fGntovIIP6EEuTbPlvYF1SHqxpTou7vU+XxMpvEjbgZV1O5OVA13EWkrHWrS4sEQKe
	 vVG5JRittwK3A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: thermal: tsens: add ipq5210 & ipq9650
 compatible
Reply-To: sashiko-reviews@lists.linux.dev
To: "Varadarajan Narayanan" <varadarajan.narayanan@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260515-tsens-yaml-v1-1-8039c62cc249@oss.qualcomm.com>
References: <20260515-tsens-yaml-v1-1-8039c62cc249@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 09:45:49 +0000
Message-Id: <20260515094550.4527CC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 0518254CF45
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298093-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The newly added compatible strings `qcom,ipq5210-tsens` and `qco=
m,ipq9650-tsens` were omitted from the `allOf` conditional blocks that enfo=
rce constraints for 'v2 of TSENS with combined interrupt' variants.
--

commit 57dc4c24572b04937194d0201464e792021ddf2d
Author: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>

dt-bindings: thermal: tsens: add ipq5210 & ipq9650 compatible

This commit adds the compatible strings for the thermal sensors on the
ipq5210 and ipq9650.

> diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/=
Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> index 7d34ba00e684f..fd8031f7f6add 100644
> --- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> +++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> @@ -89,9 +89,11 @@ properties:
> =20
>        - description: v2 of TSENS with combined interrupt
>          enum:
> +          - qcom,ipq5210-tsens
>            - qcom,ipq5332-tsens
>            - qcom,ipq5424-tsens
>            - qcom,ipq8074-tsens
> +          - qcom,ipq9650-tsens

Should these new compatible strings also be added to the allOf conditional
blocks later in the file that enforce constraints for the v2 TSENS variants
with combined interrupts?

If they are omitted from the if-then blocks that match the existing
compatibles, device trees using the new compatible strings might bypass
these rules and allow invalid configurations to silently pass schema
validation.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515-tsens-yaml=
-v1-1-8039c62cc249@oss.qualcomm.com?part=3D1

