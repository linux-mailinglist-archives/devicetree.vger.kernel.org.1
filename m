Return-Path: <devicetree+bounces-304527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEGeKFg1Gmp+2AgAu9opvQ
	(envelope-from <devicetree+bounces-304527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 02:54:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4005B60A7CE
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 02:54:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 83EB43091316
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 00:49:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 904CB2D0603;
	Sat, 30 May 2026 00:49:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5SxNlvr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8607C29B78B
	for <devicetree@vger.kernel.org>; Sat, 30 May 2026 00:49:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780102190; cv=none; b=JxOJVSMPuXck0kleA6wCcq6rzPjhrkSKRsrIDOk2iwoLpjIltLGkDTMzwd+uPdXBZSzHElzSd6gSaueD1RVNyLl+wFjeQnIjrPJVW3Gvw9fid7QzGnJQ0W8KrQB+MUoZRqhNUBeM9hC2k9vPqgfmqUIfVokYnQ4MGmP/g11WGvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780102190; c=relaxed/simple;
	bh=erGcHFRfGfCfRW/oxrlsFwU+AsEK2B3Sm+iXWStpIK4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ukjrkS6KuTzuskUJOu6Vd0UCMsmb1OlLdUvMlJFYb0JM0TEMFPnhMFXm+efoSJyQJPG7W2mxeRNoZmMotl7xHmpJVJ+FamAqq0DmlqI6y1/gr3DIlvXY3ClY9OXicN4r3U9qV+Qvi/Qoyt4LutTaROF/vgvxnzSgxN9zBbwGqd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5SxNlvr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8E531F00898;
	Sat, 30 May 2026 00:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780102189;
	bh=6veM4/+T81xaEwo/WdCoZkG0g7LKMMXi8MXCm0abK10=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=U5SxNlvrahxlg2fOUIt8KTwy8W5QIheMLVnrFbm0kon2pwe7tAsVCXCpM9mHk9Ase
	 dX2ivkZL6UIfPiAATtlmvEKtqxQmx61BzGf9UNELzYH9uXZ0aPZTrRXuQkZrQ9fcHE
	 9EEXZZyN92g4Vl8w90TQ2nOUkq0fz9j+FsvBd9PWErh2LtnBvMGH/OiCudLYOgA9GO
	 mu0jCKWJN8ajTnoABP049Ox4xFhELdRJubfjKuiXuWIcpY/cFN7974s5Soq65yjgl3
	 llaAfWuaDJK+/QIhMy5gxwrP0hjb7qt+T/wfo0Kn2ACmIK3kJ/81WYyJC/eDNSkQmJ
	 +VUAzIxXTSeug==
From: sashiko-bot@kernel.org
Subject: Re: [net-next v5 2/4] dt-bindings: net: starfive,jh7110-dwmac: Add
 jhb100 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Minda Chen" <minda.chen@starfivetech.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260527084108.121416-3-minda.chen@starfivetech.com>
References: <20260527084108.121416-3-minda.chen@starfivetech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 May 2026 00:49:48 +0000
Message-Id: <20260530004948.E8E531F00898@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304527-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[starfivetech.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Queue-Id: 4005B60A7CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Missing conditional constraints for `clocks` and `clock-names` a=
llows invalid clock configurations to silently pass schema validation.
--

commit 20465cf4546f85d0e237ceacdadbcf9c0b47c74b
Author: Minda Chen <minda.chen@starfivetech.com>

dt-bindings: net: starfive,jh7110-dwmac: Add jhb100 support

This commit adds support for the jhb100 GMAC, introducing a new compatible
string and corresponding single reset and interrupt properties. It also add=
s a
new SGMII RX clock to the global clocks list to support the jhb100 hardware.

> diff --git a/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.=
yaml b/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
> index 0d1962980f57f..fdcc61c65f87d 100644
> --- a/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
[ ... ]
>    clocks:
> +    minItems: 5
>      items:
>        - description: GMAC main clock
>        - description: GMAC AHB clock
>        - description: PTP clock
>        - description: TX clock
>        - description: GTX clock
> +      - description: SGMII RX clock
> =20
>    clock-names:
> +    minItems: 5
>      items:
>        - const: stmmaceth
>        - const: pclk
>        - const: ptp_ref
>        - const: tx
>        - const: gtx
> +      - const: sgmii_rx

[Severity: Medium]
Since the global definition of clocks and clock-names now implicitly allows
6 items for the new sgmii_rx clock, do the conditionals for older generatio=
ns
need updates?

Without explicitly adding maxItems: 5 to the existing if-then blocks for
starfive,jh7110-dwmac and starfive,jh7100-dwmac, it appears device trees
for older hardware can now specify 6 clocks and silently pass validation.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260527084108.1214=
16-1-minda.chen@starfivetech.com?part=3D2

