Return-Path: <devicetree+bounces-325081-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PCeQIUuuU2rtdQMAu9opvQ
	(envelope-from <devicetree+bounces-325081-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 17:10:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3B97451DB
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 17:10:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kslMz+NK;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325081-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325081-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91FC730234E0
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 15:07:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 377D833F5B8;
	Sun, 12 Jul 2026 15:07:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEF5338936
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 15:07:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783868829; cv=none; b=OYr1Timvv0CtSkHePXR9bfaX7DawWNO/lrUO8h0CEFmz9EtqFG56UHYN355+f2f3B9/WtRfLRjAxIPDeHCAZFt5Mjlyl5HHJHQv4ErqsL6qfs+hxcfUOX//uPH1oR5sNPDF3UcE7XjWSQZfWk/t1TtqxsuspJFHmhutoy04IyH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783868829; c=relaxed/simple;
	bh=MpwmTm9lpYiSebNgqs15AcemjrEKdUu/uHtzGTc1WZM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pkYpbA1TM7HTc606fwnsd+AbORTjAsAuaxE1h7hBoy2RdqaqAPrS2EMpUtE1mjoluNGEZglTSCKk/m7Rf9iXHyDEUWxdcyC/zPVtt1nGyOXIXi24sv2kVSUHG6tLbzqw/eNXSwwWedrcKSmfBNteXIgwPcKIsJ2zkw2j1hP61Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kslMz+NK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83A411F000E9;
	Sun, 12 Jul 2026 15:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783868827;
	bh=PexZsrIw8yZcaT2J/RBRrQI4KwQuXyWhnitzYNjbA4g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kslMz+NKm64orvSxs3RVhWXXix9rcN/tW8jWNNr/RYPidf1MsiyDT0EH1eO6CPfls
	 fX2FLfV78IMY8k7cY/8MxhblpBYmzzTPAoK/gyNUY0xTNfmXPyAcz1jewvmcroiERo
	 q5ST49vxNsck825c5OKU/r5AwTBnlT8os+aXCcIaRYz0ZvuxSo09bz5lnThQ73Nza1
	 3refVksGL3d78HFunp1SyPunwKlKUrvj2GvEzgRQNvSFjW9Rj6EMTnZ6NlkBArzfmf
	 T6Ju6YxN+aPagB22vAGJwAz85arkKLi2L5JkxVOkDJ98acVRW+DvxugKqEtk5QzLaH
	 L8/mF+O3dPiWw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: soc: qcom,wcnss: Drop redundant $ref of
 firmware-name property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260712145654.126171-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260712145654.126171-2-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Jul 2026 15:07:06 +0000
Message-Id: <20260712150707.83A411F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_HAS_CURRENCY(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325081-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6E3B97451DB

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Schema validation error: `default` value for `firmware-name` is a s=
calar string but should be a string array.
--

--- Patch [1]: [PATCH] dt-bindings: soc: qcom,wcnss: Drop redundant $ref of=
 firmware-name property ---
commit ee3e2676da46575844622ab43164871fd3c8d4ab
Author: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

dt-bindings: soc: qcom,wcnss: Drop redundant $ref of firmware-name property

This commit removes the explicit string reference for the firmware-name
property and replaces it with maxItems: 1, implicitly adopting the
string-array type from the core schema.

> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,wcnss.yaml b=
/Documentation/devicetree/bindings/soc/qcom/qcom,wcnss.yaml
> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,wcnss.yaml
> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,wcnss.yaml
> @@ -19,7 +19,7 @@ properties:
>      const: qcom,wcnss
> =20
>    firmware-name:
> -    $ref: /schemas/types.yaml#/definitions/string
> +    maxItems: 1
>      default: wlan/prima/WCNSS_qcom_wlan_nv.bin

[Severity: Low]
Will this cause dt_binding_check to fail? Since the property type is now
implicitly a string-array due to maxItems, should the default value be
updated to an array format like [ wlan/prima/WCNSS_qcom_wlan_nv.bin ] to
avoid a JSON schema validation error?

>      description:
>        Relative firmware image path for the WLAN NV blob.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260712145654.1261=
71-2-krzysztof.kozlowski@oss.qualcomm.com?part=3D1

