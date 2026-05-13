Return-Path: <devicetree+bounces-296599-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GorcDr//A2oHCAIAu9opvQ
	(envelope-from <devicetree+bounces-296599-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 06:36:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C62DA52D2CB
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 06:36:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D4DE0304A641
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 04:36:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A96CF306766;
	Wed, 13 May 2026 04:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3/ycbN3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8615442A9D
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 04:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778646971; cv=none; b=LD8qtzmJ+HwEFDIc64+BD3WGOxM0FytZLkNQAS+9smLhw3PtAz8vp2ddhAjHlFjg+J9a4WlA66GNivoaAFcy1PQ79as4rj05R7t8ttTAYOJPj4v8pfZuNY7/qLYO5JAWVjhWggW2O2tb9QWDf8CgzB0veM3DS6YHiWzVhtiEP64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778646971; c=relaxed/simple;
	bh=PYps/v4nWQ//yqjCHqoUKHnHNRlEdYHZoVUhEIrd0E0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=p6vOiYFScLGFrLz87B4lReEMXT5w5Gq8B9aI7g77Cn2uVRbwY3uWV7WFFvZWHmqqnPanlOuYx3pdpj0FZXxOIMFqF0c0SVp/7uUxppjsZWcRi4R2JgFHm+ig4Vybh8Pq9COLCbwQjQsq9xS0nIbSwHUcnwF+3HguI5/7mbYL1oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3/ycbN3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D11F6C2BCB7;
	Wed, 13 May 2026 04:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778646971;
	bh=PYps/v4nWQ//yqjCHqoUKHnHNRlEdYHZoVUhEIrd0E0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=e3/ycbN3cBNpB/mnCaz+4aJNtED5Ol4OnCDYGiImmaI1LiR+/w0egA6pIt275PMCs
	 rE8IEeEGSoO7jS/OT3gpXzCLDnbzyilE8ZVRe1mvCuX9mGhwDBmBF5zADjf5aBgCsk
	 D2bsU9OVCt/D23lOcgnS6UobriVYAPx/SLaPSUAE57/21Zfei/Jzu+aQ2osymZXPnd
	 ojX5FV4V4a7OZNQnNDwxvyUYr+kyR8KfnfX7FCozMT9G/diS103/N3xsX6nFlmTPRH
	 eQfFBaP+IuBi+2sJaX0u5PD0J89sskPw7yxixhXo54y//UB9+fwvNFOH1dgBU4kd8G
	 xRDAqTneztwvg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/4] dt-bindings: clock: add Qualcomm IPQ9650 GCC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kathiravan Thirumoorthy" <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260512-ipq9650_boot_to_shell-v4-1-1e87c8326e59@oss.qualcomm.com>
References: <20260512-ipq9650_boot_to_shell-v4-1-1e87c8326e59@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 May 2026 04:36:10 +0000
Message-Id: <20260513043610.D11F6C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: C62DA52D2CB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-296599-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,smtp.kernel.org:mid,sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,lists.linux.dev:replyto];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The binding description claims the module provides power domains, b=
ut the schema explicitly disables this capability.
--

commit 4db89a6dba2bb07dd7133c52ce96e3e38a472691
Author: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>

dt-bindings: clock: add Qualcomm IPQ9650 GCC

This commit adds the device tree binding for the Qualcomm IPQ9650 Global
Clock Controller. It includes the YAML schema and header files for the=20
clocks and resets provided by the module.

> diff --git a/Documentation/devicetree/bindings/clock/qcom,ipq9650-gcc.yam=
l b/Documentation/devicetree/bindings/clock/qcom,ipq9650-gcc.yaml
> new file mode 100644
> index 0000000000000..f33105217a062
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/qcom,ipq9650-gcc.yaml
[ ... ]
> +description: |
> +  Qualcomm global clock control module provides the clocks, resets and p=
ower
> +  domains on IPQ9650

This isn't a bug, but the description mentions that the module provides pow=
er
domains.

[ ... ]
> +  '#power-domain-cells': false

Does this controller actually provide power domains? The schema explicitly
disables them here, which suggests the mention of power domains in the
description might be a leftover from copying another binding.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512-ipq9650_bo=
ot_to_shell-v4-0-1e87c8326e59@oss.qualcomm.com?part=3D1

