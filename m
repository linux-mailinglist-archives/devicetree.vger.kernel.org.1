Return-Path: <devicetree+bounces-298314-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CB/lOboXB2qQrgIAu9opvQ
	(envelope-from <devicetree+bounces-298314-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 14:55:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 468A554FFC8
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 14:55:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DA0C03114E91
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 12:25:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29D9C47D94F;
	Fri, 15 May 2026 12:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjs/fQ6S"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0752C47D948
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 12:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778847915; cv=none; b=EcsBINyMrZOfxsSmwwdClz0vnyYMZNa9mc+B7k1BateegeXFixvoLNR6V4ZcR3bfu8rds6pswkYUbJwjNTXOpUwlI3ttCskbdOvuECQoIN2vp0qq0qRiRZctYGaV2DjXVPBGtqKhjme3doRkuhfN4cLgXdkdOWPKLuvQYBUX0Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778847915; c=relaxed/simple;
	bh=PZPMn/djKWImejyDhj4EKz7YCUnzlPSj2yuLgRXqT4A=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=CbuiW9cB/en96Tmt2IloHKfRsOw5MmBTSZkngYJHX/m9VIxSJMvhrfVxmYjpv/AOU8cOgf2h/2zEphtwitz27CcyMPU53c4Vp8S1k9yERYdtxGj2kxte2+eCWI/skYzOd/Rm4TZcWGG7kJQfxaGtFzCaSaixjI+LiCK2G3sBQOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjs/fQ6S; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67724C2BCB0;
	Fri, 15 May 2026 12:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778847914;
	bh=PZPMn/djKWImejyDhj4EKz7YCUnzlPSj2yuLgRXqT4A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=tjs/fQ6Se+hILMX6+O1F3lOHTfHkU3yU1Y+f7YALVH/SD3Kn69LeshITnEFEPtbAk
	 Rt/qrPQ4R2uwYtq8j3+sDJOE3o2fHerzV2BEr5R8RuRTDTCPYE0IgO62d0vafP/+g5
	 sQxpsxorWLB0EnNjfI3A7vBfbzShQDWouLq19vez/5pGUrpcm3J5OP+VWvTg59qnaC
	 ozbbVJYbBylsnvx4Mzh96GRsHWiS9kw0VR2L1PUcbp9HkuFrS7hF11NiX3kn8rp5WW
	 1BM4ZTSJLERylhtPuPktXjveGFX24VTbfsAYIx3fBUpaanO6OP4XDM6WG6Aus377tk
	 Lu3+RcROQu4bA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/4] media: dt-bindings: qcom,qcm2290-venus: add
 Venus on SM6115
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260515-iris-sm6115-v2-2-2ab75229de61@oss.qualcomm.com>
References: <20260515-iris-sm6115-v2-2-2ab75229de61@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 12:25:13 +0000
Message-Id: <20260515122514.67724C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 468A554FFC8
X-Rspamd-Server: lfdr
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
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298314-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The sequence under `items:` is incorrectly indented, which will cau=
se a `dt_binding_check` failure due to `yamllint` strict indentation rules.
--

commit 43193b8fcb4051c6ff00308477a91cbef91be80b
Author: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

media: dt-bindings: qcom,qcm2290-venus: add Venus on SM6115

This commit adds a new compatible string for the Venus core on the Qualcomm
SM6115 platform, using QCM2290 as a fallback.

> diff --git a/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.y=
aml b/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
> --- a/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
> @@ -18,7 +18,11 @@ allOf:
> =20
>  properties:
>    compatible:
> -    const: qcom,qcm2290-venus
> +    oneOf:
> +      - items:
> +        - const: qcom,sm6115-venus
> +        - const: qcom,qcm2290-venus

Will this pass the yamllint checks during make dt_binding_check?

The sequence under the items: key appears to be incorrectly indented.
The file Documentation/devicetree/bindings/.yamllint configures yamllint wi=
th
indent-sequences: true. This configuration requires the sequence indicators=
 (-)
to be indented further than the parent items: key.

> +      - const: qcom,qcm2290-venus
> =20
>    power-domains:
>      maxItems: 3

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515-iris-sm611=
5-v2-0-2ab75229de61@oss.qualcomm.com?part=3D2

