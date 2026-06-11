Return-Path: <devicetree+bounces-310372-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aQD0ISSYKmrTtAMAu9opvQ
	(envelope-from <devicetree+bounces-310372-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 13:12:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 249E2671318
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 13:12:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TrxOlRpe;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310372-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-310372-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9192B3010905
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:12:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 971873DA5B9;
	Thu, 11 Jun 2026 11:12:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87DF03CC310
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 11:12:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781176354; cv=none; b=VxfG6byhhe0kkn6liB9v3Xp5nEA5bin+fJtypcp663CJNGe9HCQ34wTTfAX5qD98hw+zZrgbjP3+OdiEDv7vABfBxpk/T4v82qA13eCWHhXsNq2XYXXWcEK0hLEumHeNh5jlFZt+o3TEwrNvHH3D6FCZoZu7iZ/5Qr5/iNS4Ck8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781176354; c=relaxed/simple;
	bh=6Q8XEYowDamKhZEJl1jMbYPm2S4QcVljOltNzK66F3o=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=NgzRXxtKPxi8C/G4emvvdg831uuUr+AOkiNfwvbQZZYhJX2bU7aLbIOJiHoh9VQZIuu4CTTTcSqOf8S9j9pDU4DC7syp4ibdBEinNnEcDyGu2TkwHD3sNwk3Ai/ap43JC7/iOs2bSgBy2BmUiA3Xj/y1xHBz0xSjHmBoPKQYRCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrxOlRpe; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF6541F00893;
	Thu, 11 Jun 2026 11:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781176353;
	bh=+Jwtc9egn3Vbr52qdphzeoow9rIKy5nNtZ/ihusrREg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TrxOlRpeIdRngj1JyKErAXp1JK4crs3KNnW1TGT7geIJQSCsw41DuNJVket6PoKTu
	 3UDcn0gXOtK8VN8DEEcu0Fpda7sFdhVs7JiyYJjCOQRSADEfyxD7SxTREu+5TPCeLt
	 52omDYsKeJER0Yu1TWcV4CbUht3P0OzJJEBvDq1Eumx1uXG0drZgxUXtDBjkBRiyk/
	 j+dCi6s24fRjs4zkoELW2TvCRTi/g0uYPvZIHLujZo7p7Tt1Neg0ohp+dP3vv6wlwn
	 jgnV6PWjLW7V5pe6ltc/Wwd34RIAftBQW0ZrRUDmfn5LruenQmVKWogGJsF3KQc9L/
	 Z+2RS0goy3oxw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] dt-bindings: pinctrl: qcom,pmic-gpio: Add Qualcomm
 PMK7750
Reply-To: sashiko-reviews@lists.linux.dev
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260611110708.69234-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260611110708.69234-2-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 11:12:32 +0000
Message-Id: <20260611111232.EF6541F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-310372-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,qualcomm.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 249E2671318

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Adding `qcom,pmk7750-gpio` to the standalone enum list without u=
pdating the corresponding `allOf` conditional blocks causes a schema valida=
tion hole. When used standalone, the compatible string bypasses generation-=
specific constraints (such as `gpio-line-names` and `gpio-reserved-ranges`)=
 that apply to the PMK8550 generation it claims to be compatible with.
--

commit c696fcf54d49ee1cd5093d304f55dcf2aa2358e3
Author: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

dt-bindings: pinctrl: qcom,pmic-gpio: Add Qualcomm PMK7750

Document Qualcomm PMK7750 GPIO used with Eliza SoC.  PMIC is almost the
same as PMK8550, thus compatible with it.

> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yam=
l b/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml
> index 386c31e9c52b8..f656c836896f5 100644
> --- a/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml
> @@ -15,79 +15,85 @@ description:
> =20
>  properties:
>    compatible:
> -    items:
> -      - enum:
[ ... ]
> +    oneOf:
> +      - items:
> +          - enum:
[ ... ]
> +              - qcom,pmiv0104-gpio
> +              - qcom,pmk8350-gpio
> +              - qcom,pmk7750-gpio

[Severity: Medium]
Since qcom,pmk7750-gpio is added here to the standalone enum list, won't
standalone usage bypass the generation-specific constraints (such as the
gpio-line-names limit) defined in the allOf conditional block for the
PMK8550 generation?

Should qcom,pmk7750-gpio also be added to the allOf conditional block
containing qcom,pmk8550-gpio, or should it be removed from this standalone
enum list if the fallback is always expected?

> +              - qcom,pmk8550-gpio
> +              - qcom,pmk8850-gpio
[ ... ]
> +      - items:
> +          - enum:
> +              - qcom,pmk7750-gpio
> +          - const: qcom,pmk8550-gpio
> +          - const: qcom,spmi-gpio
> =20
>    reg:
>      maxItems: 1

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611110708.6923=
4-2-krzysztof.kozlowski@oss.qualcomm.com?part=3D1

