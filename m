Return-Path: <devicetree+bounces-325347-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Y8lADcWyVGq7pgMAu9opvQ
	(envelope-from <devicetree+bounces-325347-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:41:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE7474968E
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:41:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=iQhJJar9;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325347-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325347-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2ACD13011C4F
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 09:41:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C11D13B14B5;
	Mon, 13 Jul 2026 09:41:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A312C2AD3C;
	Mon, 13 Jul 2026 09:41:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783935674; cv=none; b=Uz1WxHhYMMKQEf1lI3d8+KzP2URCEJ4q6CHtFS0dQR6ZCsIo/cWoqmDxTPVeTFVBNPAV87DVAWLc4gkaHO93oyis+/CwghtnB8u8I7SLjbDDmUgrPZmbqNcqg+FFY0m0RFW60HwhMD4mDGofLVDjYY4zS7BoTSeoQw5mWdyDDCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783935674; c=relaxed/simple;
	bh=hJQ1ziTW2JI09ZxZcoU9nNprmRwrz6JnyxTyNxt/O/A=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=EBQidKanmxT48J/KbMT6t2bbaTqiE/DezMsrmtHdEUVAkWcVhFFs1uCaSbEFOtlZB3CigeJWbCCiOSt3xQsHv6IRAFmyzkg7EFQKff5nAX4Gd47ayZzGPAhvf2pnBooGZb3Pe4Gc6YZWTgIosQwITT3UPd+29iFLqcV00QDbl94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQhJJar9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF9AD1F000E9;
	Mon, 13 Jul 2026 09:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783935673;
	bh=JOiqyyOIGH5pzpK5RIgRBrgElun3fjrf7x0O+jBl87k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iQhJJar9f8Vnzwkv/ETtK01NLtId+xxuCp72bWCJWBGDNZ2ZWjnj7R9TiFtSNWyEp
	 gzwgAPGB+pVceul5pEZaj91u5EI3F6lROGdKhEe6Js3qrQozyG+DP72Sh2OVDK6A8X
	 PGhl44Y7DdedtN+YI5V8QK7yo3TXE6Bex/3lA0bGRmbeHpvEeuszmwNaprf5KkRd9D
	 2uAPiazkKsknDR8foNCE04i9l8ItFij4yW50y8HclmDzI4lJ4D7V6JA6TlMd5J1f4m
	 X1VGLm5PlM5Ej6rD+y1t0M3fwQ4vHp48TpQcuWr2/YFUqRijX3jJdnpHdg9ds1QGmx
	 RnerrqC5Onqtg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/6] dt-bindings: media: qcom: Add Shikra CAMSS
 compatible
Reply-To: sashiko-reviews@lists.linux.dev
To: "Nihal Kumar Gupta" <nihal.gupta@oss.qualcomm.com>
Cc: imx@lists.linux.dev, robh@kernel.org, conor+dt@kernel.org, Frank.Li@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260713-shikra-camss-review-v5-1-db53be15dc4f@oss.qualcomm.com>
References: <20260713-shikra-camss-review-v5-0-db53be15dc4f@oss.qualcomm.com>
 <20260713-shikra-camss-review-v5-1-db53be15dc4f@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 09:41:12 +0000
Message-Id: <20260713094112.DF9AD1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-325347-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:nihal.gupta@oss.qualcomm.com,m:imx@lists.linux.dev,m:robh@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7CE7474968E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The schema uses a global `oneOf` for `iommus` instead of conditi=
onally restricting the number of items per compatible string, allowing inva=
lid configurations to silently pass validation.
--

--- Patch [1]: [PATCH v5 1/6] dt-bindings: media: qcom: Add Shikra CAMSS co=
mpatible ---
commit fc0a6e2efaafe1932112e71e5a72e67dfe8ffb3f
Author: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>

dt-bindings: media: qcom: Add Shikra CAMSS compatible

This commit documents the Shikra Camera Subsystem IP, using qcm2290-camss
as a fallback. It updates the compatible string list and changes the iommus
property to allow either 1 or 4 items depending on whether the CDM and OPE
blocks are present.

> diff --git a/Documentation/devicetree/bindings/media/qcom,qcm2290-camss.y=
aml b/Documentation/devicetree/bindings/media/qcom,qcm2290-camss.yaml
> index 391d0f6f67ef5..490a7f3a8c5ff 100644
> --- a/Documentation/devicetree/bindings/media/qcom,qcm2290-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,qcm2290-camss.yaml

[ ... ]

> @@ -76,7 +80,14 @@ properties:
>        - const: sf_mnoc
> =20
>    iommus:
> -    maxItems: 4
> +    oneOf:
> +      - items:
> +          - description: S1 HLOS VFE non-protected (VFE only)
> +      - items:
> +          - description: S1 HLOS VFE non-protected
> +          - description: S1 HLOS CDM non-protected
> +          - description: S1 HLOS OPE read non-protected
> +          - description: S1 HLOS OPE write non-protected

[Severity: Medium]
By using a global oneOf for the iommus property, doesn't this allow invalid
configurations to pass schema validation?

Without an allOf block containing if-then conditional constraints tying the
specific compatible string to its corresponding number of IOMMUs, a device
tree configuring a QCM2290 device with only 1 IOMMU, or a Shikra device with
4 IOMMUs, will silently pass validation.

Should this constraint be enforced conditionally based on the compatible
string?

> =20
>    power-domains:
>      items:

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713-shikra-cam=
ss-review-v5-0-db53be15dc4f@oss.qualcomm.com?part=3D1

