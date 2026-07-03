Return-Path: <devicetree+bounces-319774-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LvzwNm9FR2pnVAAAu9opvQ
	(envelope-from <devicetree+bounces-319774-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 07:15:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2345D6FE9E2
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 07:15:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="J/2VVo76";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319774-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319774-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE1683006B23
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 05:15:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89F0E3546E9;
	Fri,  3 Jul 2026 05:15:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04011343886
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 05:15:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783055722; cv=none; b=VXIp74V5TzO+f8k9bOnsR39cDAjI1/NfjhfFIHnxG7x7E/IpVX6qmChErRqlclLKdApmYgFjF3SfqV26QHyObx7waYWMcm6Qg+2W+yQmlxUl/aqe8MzQhrK3CgV8/GrDR0xtHD/4eMlExNnGNggpzz/D+Zleaa6Yfme8W6+aSTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783055722; c=relaxed/simple;
	bh=vys3Ey5NYaKs3Yu9IGedfQEs0G5PzsxGqfyWQsHGpQc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bGDuVuEd+Ca8HM6psvibCkiRlipzPcImjoEvWfkXqOE3MiCyBy5zhkU4WQZeqUrfeexgykz3l5F7CqWG781pXlaHZIv3CTl2i9r1oFpdjPPR0IPo2hDgnYEDFcl9C9EBbCVl1fo5GKHqp75ThcVW/fPopav9YGP7+/6jPX/BW0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/2VVo76; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B3AE1F000E9;
	Fri,  3 Jul 2026 05:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783055713;
	bh=lsVyinJDYG0ClkTQYcy5HGFR9pLxoE+sOi0e94RE/IQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=J/2VVo76tYHVupU1fFhYGt35X8w99P1xL4ABWrEQujgyF4eF58qbC3RlFgwTArIui
	 /0mdm67wu6Ne7jejzfPqaMBd/Pq2jZuOXbzhfLAT6XHUs0gh3D+Zi8iCUEHUFipH4K
	 7Djj8U/YHeXSInUtesT5hzHoF8bpH652F90WkiMOb1erdtWp4pBz3iAK8HHjn945N6
	 w4nsc1khnmLvfFGIUGghKnssGXH0Gyb4tutz40zI/cy+FXiWJCG17b+Pe9gBRHzsCm
	 T58MvTIrhHGgPERXXYfDkTH4eF1RWmf+9amWnP0nN/OMa/UBVtXXXD/31p+U93H4v1
	 qb7EFj1iIG4FA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 02/10] dt-bindings: remoteproc: qcom,pas: add
 #cooling-cells property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gaurav Kohli" <gaurav.kohli@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260703-qmi-tmd-v4-2-3882189c1f83@oss.qualcomm.com>
References: <20260703-qmi-tmd-v4-0-3882189c1f83@oss.qualcomm.com>
 <20260703-qmi-tmd-v4-2-3882189c1f83@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 05:15:12 +0000
Message-Id: <20260703051513.6B3AE1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319774-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:gaurav.kohli@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,qualcomm.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2345D6FE9E2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The newly added example fails `dt_binding_check` due to missing req=
uired properties.
--

commit d6d7b5d5f32286193dde6ee3686dfbc725c49024
Author: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>

dt-bindings: remoteproc: qcom,pas: add #cooling-cells property

This commit documents the optional #cooling-cells property for Qualcomm PAS
remoteproc nodes. It allows them to be used as thermal cooling devices via
the QMI Thermal Mitigation Device interface, and adds an example configurat=
ion.

> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common=
.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
> index 4607b459131b4..ef11371058c4f 100644
> --- a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
[ ... ]
> @@ -95,3 +103,34 @@ required:
>    - qcom,smem-state-names
> =20
>  additionalProperties: true
> +
> +examples:
> +  - |
> +    #include <dt-bindings/thermal/thermal.h>
> +    #include <dt-bindings/firmware/qcom,qmi-tmd.h>
> +
> +    remoteproc: remoteproc {
> +      #cooling-cells =3D <3>;
> +    };

[Severity: Low]
Will this new example fail dt_binding_check?

Looking at the required list for this schema document, properties like cloc=
ks,
clock-names, interrupts, interrupt-names, qcom,smem-states, and
qcom,smem-state-names are mandatory. Because they are omitted from this
remoteproc example node, schema validation will likely fail when the build
system validates the examples.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703-qmi-tmd-v4=
-0-3882189c1f83@oss.qualcomm.com?part=3D2

