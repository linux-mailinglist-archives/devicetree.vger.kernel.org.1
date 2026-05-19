Return-Path: <devicetree+bounces-299860-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOK+CrwZDGrrVwUAu9opvQ
	(envelope-from <devicetree+bounces-299860-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:05:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADBA579A53
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:05:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8766301AA5B
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 07:57:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70C123DCD91;
	Tue, 19 May 2026 07:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0/xRvlK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5682BD5B9
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 07:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779177472; cv=none; b=hpzUCQ9SVawKp/2XjrzeIBcmuiqLX8/zK6AugxsXOj7XMllYZMlGG2eoK7z2rvtqIcwogy7RdPJhuaj04bV0LlotghAB0dX7PATxWaOC05DGeB/c9+uLJJPrnyPaW/oLoMdOK3k3rgU4OEEKHwkLeZE0H2drC4CW1d1IYo7ahqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779177472; c=relaxed/simple;
	bh=QkV4HW6jsZIjjiEEZr72+3vT43WoQ+ucVmQY7zMNG5k=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fjDIcKaVb9GpNC8Nc4do1RXHNcXE1IVoHMZitN7y01vS6uWc/+jSz+X/3uJfmj+UYmHxdUWO50mMKOwyQ64qbvHTMU2HVbVC2VRquwuONryXn1nJt1V2NRHg/ALulW4UFyOSPD+h8NgZ5h1aozj75qLU8UeKmZCekY1BG+IFy9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0/xRvlK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDA9EC2BCB3;
	Tue, 19 May 2026 07:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779177471;
	bh=QkV4HW6jsZIjjiEEZr72+3vT43WoQ+ucVmQY7zMNG5k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=t0/xRvlKgLZCb/o1gYXZZ0AvaM5eQdZjL7gvD+dVgg+DNvNuIQrz88WfspoyVUhNh
	 rRVRdl12TySRkyupmqHOsoR7Ls/FkolQ9ZapzqydmR6uFUfnBOeWDgmOqPERxiuT8d
	 1FBwgCCBVdqlnWGnoWBMKgP+46oIHsvVkOIprSvfzI+7ckH0merxNysYyHaCtIRzA/
	 rvS8Yt4jTrdKpEEiDkb+qVLTYG3l71lR+dsCuCYJbLf1YhiXj6NjdzPz1MPmZBPE2r
	 P7raMqKTur9VQ8W65g9GRc5dr2UeoKgwAqMccJEZylDKTgpW2F8l1CAOhSoLuQ4bSK
	 hjF2RCMu4ILPA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] dt-bindings: arm-smmu: Constrain clocks for newer
 Qualcomm variants
Reply-To: sashiko-reviews@lists.linux.dev
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260519074059.61405-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260519074059.61405-2-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 07:57:49 +0000
Message-Id: <20260519075750.CDA9EC2BCB3@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-299860-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 7ADBA579A53
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The new conditional block disallowing clocks for Application Pro=
cessor SMMUs omits `qcom,qcm2290-smmu-500`, `qcom,sar2130p-smmu-500`, `qcom=
,sc7280-smmu-500`, `qcom,sc8180x-smmu-500`, and `qcom,sc8280xp-smmu-500`.
- [Low] Redundant schema constraints for `qcom,sm6350-smmu-500` and `qcom,s=
m6375-smmu-500`.
--

commit 29d4ea0f08c145039e07f22d38052f086bbd9138
Author: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

dt-bindings: arm-smmu: Constrain clocks for newer Qualcomm variants

This commit adds missing constraints for the glymur variant and several
other qualcomm application processor variants to restrict the clocks
property.

> diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Docu=
mentation/devicetree/bindings/iommu/arm,smmu.yaml
> index 06fb5c8e7547c..ed0d10157bd61 100644
> --- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> +++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
[ ... ]
> @@ -595,6 +597,7 @@ allOf:
>                - qcom,sdm845-smmu-500
>                - qcom,sdx55-smmu-500
>                - qcom,sdx65-smmu-500
> +              - qcom,sdx75-smmu-500
>                - qcom,sm6350-smmu-500
>                - qcom,sm6375-smmu-500
>      then:
> @@ -602,6 +605,39 @@ allOf:
>          clock-names: false
>          clocks: false
> =20
> +  # Disallow clocks for all other platforms where specific compatible is=
 used
> +  # with different fallbacks and only one combination has no clocks
> +  - if:
> +      properties:
> +        compatible:
> +          items:
> +            - enum:
> +                - qcom,eliza-smmu-500
> +                - qcom,glymur-smmu-500
> +                - qcom,kaanapali-smmu-500

Are there a few application processor variants missing from this new block?

It looks like qcom,qcm2290-smmu-500, qcom,sar2130p-smmu-500,
qcom,sc7280-smmu-500, qcom,sc8180x-smmu-500, and qcom,sc8280xp-smmu-500
also share this two-flavor pattern.

Without them included here, will device tree nodes specifying clocks for
these variants silently pass schema validation?

> +                - qcom,milos-smmu-500
> +                - qcom,qcs615-smmu-500
> +                - qcom,qcs8300-smmu-500
> +                - qcom,sa8775p-smmu-500
> +                - qcom,sm6115-smmu-500
> +                - qcom,sm6125-smmu-500
> +                - qcom,sm6350-smmu-500
> +                - qcom,sm6375-smmu-500

This isn't a bug, but are these two variants redundant here?

Since qcom,sm6350-smmu-500 and qcom,sm6375-smmu-500 are already listed
in the previous block to unconditionally enforce clocks as false, does
adding them to this more specific fallback block have any additional effect?

> +                - qcom,sm8150-smmu-500
> +                - qcom,sm8250-smmu-500
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519074059.6140=
5-2-krzysztof.kozlowski@oss.qualcomm.com?part=3D1

