Return-Path: <devicetree+bounces-300048-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4I8aNNpFDGrQcQUAu9opvQ
	(envelope-from <devicetree+bounces-300048-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 13:13:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 410E757D4B4
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 13:13:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B3572308543F
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:57:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 266DF3A960F;
	Tue, 19 May 2026 10:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrCOAbGZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 837463BCD15
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 10:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779188241; cv=none; b=tkBykLL6nmgXjWgVgfvbepIOk37l9QB0FCcmoeNGGi5hYknRsPxR0MDYwM74xVKjwnf0i8lUpjpp+aEPL/uog5+rJvOZ/tDfLLlu/pYUIJx7FTgQnBuIJUJm0se5hI+C2CBedxKXe9fus1vDb6ft6LW/i392z/oYWxHv7wC2i+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779188241; c=relaxed/simple;
	bh=ItnJAZqt4m3pPdUFVH9i93Qs4rlloiblcj2y2L34PbI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Nlj46Idu22ntO+38GUYTFTpgnmoI7vyQjD5rsTy9RujKbWYUjYDvbV5CXwtMByjOZhtrYvss+rK+yfancuwixKm/kynGYvA4ixU3wNCJ0tBoF91Z4ViDfcQwizhg8FAsuevELMZQ1Mf4vEFPdMxyFBrK8AbZTN1cwd+DIV0hmoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrCOAbGZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DABCC2BCB8;
	Tue, 19 May 2026 10:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779188241;
	bh=ItnJAZqt4m3pPdUFVH9i93Qs4rlloiblcj2y2L34PbI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=QrCOAbGZCHq02qh3/RHYwjH8kfbxoAcTqp0A7D7bA/4PDiXaccdyFNvyO93mTaRcn
	 Rs/9NCzjk8iUdd5A5ZL2XPZ+NLy5u4/WE7fmGIfoP0TE4l18Ca/AjUUBWnUY+tg+Rx
	 SYaIvmed8q6GL0PAh79qkS+Nikw7Kri+n72Zt46rEtEMxEOomYbRLAem73WOUu6Ou+
	 MLWetweTsphmUYzkUdTEx2mqxOpqMG1GaeF6n9Bcagj5+L9JHniOtPXCH+umhEvKTP
	 IR9bS6kUlLzFptEKLJ/SsBK/l2ZurxS6tvJJGCnz6799rTi9krwa+ChhHhyGumb2CK
	 VNQE7w1duaBnQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: power: limits: Describe Qualcomm SPEL
 hardware
Reply-To: sashiko-reviews@lists.linux.dev
To: "Manaf Meethalavalappu Pallikunhi" <manaf.pallikunhi@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260519-qcom_spel_driver_upstream-v1-1-75356d1b7f94@oss.qualcomm.com>
References: <20260519-qcom_spel_driver_upstream-v1-1-75356d1b7f94@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 10:57:20 +0000
Message-Id: <20260519105721.0DABCC2BCB8@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-300048-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ef3b000:email]
X-Rspamd-Queue-Id: 410E757D4B4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The unit-address in the example node name does not match the first =
address in the `reg` property.
--

commit f3971a9e10b2466608195c2613f6957464048b20
Author: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>

dt-bindings: power: limits: Describe Qualcomm SPEL hardware

This commit adds a DeviceTree binding to describe the SoC Power and Electri=
cal
Limits (SPEL) block on Qualcomm SoCs.

> diff --git a/Documentation/devicetree/bindings/power/limits/qcom,spel.yam=
l b/Documentation/devicetree/bindings/power/limits/qcom,spel.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/limits/qcom,spel.yaml

[ ... ]

> +examples:
> +  - |
> +    power-controller@ef3b000 {
> +        compatible =3D "qcom,spel";
> +        reg =3D <0x0ef3e000 0x1000>,

This isn't a bug, but does the unit-address in the example node name match
the first address in the reg property?=20

It looks like the node is named power-controller@ef3b000, but the first
address in the reg property is 0x0ef3e000. This mismatch will likely trigger
a dtc warning during dt_binding_check.

> +              <0x0ef3d000 0x1000>,
> +              <0x0ef3b000 0x1000>;
> +        reg-names =3D "nodes",
> +                    "constraints",
> +                    "config";
> +    };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519-qcom_spel_=
driver_upstream-v1-0-75356d1b7f94@oss.qualcomm.com?part=3D1

