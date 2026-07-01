Return-Path: <devicetree+bounces-318808-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NPm0MD5FRWo+9woAu9opvQ
	(envelope-from <devicetree+bounces-318808-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 18:50:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7E66EFFA7
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 18:50:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jDAHBjDT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318808-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-318808-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 00C263019115
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 16:43:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6426D242D6B;
	Wed,  1 Jul 2026 16:43:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50156369D45
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 16:43:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782924227; cv=none; b=QRsbMtb20mUibPJjoq8lS/ON3gSJr73mISgQj/2+rijS/VRIWu3X7nnlu6GnD/DpJkX4Wjqx5Ft7iyFLYKwPv2no6NwQwCDhAJNgch0/k7CoIKQmA9KXxg3893D6JKSQjAD8YIm81VlmFT4ShX4EsD3T7UB+1KbX/c+VodYoUPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782924227; c=relaxed/simple;
	bh=pO4ldEloWxlZ+aRYlnQ+pVOJCXWQFAPe3fq0SeehWnc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=iUBc1pmbEBbrXOinMYzYNDbEqLC219G2pXyPJZcO/ANxHiDnsSMgzYyRqdsRLlTFhSRoGeHPQzYB75z2r3lO54gEYK+JrxyjponIePuL+hAoffCuQeV5JLYhoC2kLXCrcJOrNw8O5PPl7q5WVnsKS9LUjv5yR1r60UmO0MjFTx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDAHBjDT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 938751F000E9;
	Wed,  1 Jul 2026 16:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782924226;
	bh=UT7ynAjt4HPCevSjF90eLaSL7DoO/spqHdAKFw5O15Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jDAHBjDTFlsQl4dRPESWjlcwtEok+xvvVMrLlzyEElke9p1mPa2+Nk7tjUsHRDSvB
	 lyYjB2muJyb73dzvvd5GPvvrMQr2IrVM+OuUqBec1scMJTwc19uYcwpq8GBRxQK86W
	 nt34XMXARIAWDCQgtfnIArZAGhHk4Y2oEJGHiIWSX1hPvduECrkTr08fMO2YjagPJx
	 fBdR4ja8CJiXrEhzQ14NepVFd+CrSxyV2ITO23+EC/YDd8NjmDVd9rTY29rsUKnEa+
	 aQS9Q0yxAP5Lg6czyT0jFqrTpGuWsRVsQ9/UKEBnLcPAZ363GAaE+2ldn07GBKc+yb
	 2n/IXRwQl5oUA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 1/3] dt-bindings: soundwire: qcom: Increase max data
 ports to 17
Reply-To: sashiko-reviews@lists.linux.dev
To: "Srinivas Kandagatla" <srinivas.kandagatla@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260701163115.3701298-2-srinivas.kandagatla@oss.qualcomm.com>
References: <20260701163115.3701298-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260701163115.3701298-2-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 16:43:45 +0000
Message-Id: <20260701164345.938751F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318808-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:srinivas.kandagatla@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3A7E66EFFA7

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Incorrect search size in find_first_zero_bit prevents -EBUSY on po=
rt exhaustion and causes silent double-allocation of the highest port.
- [High] The dt-bindings now allow up to 17 SoundWire data ports, but the c=
orresponding driver internal structures have a hardcoded limit of 15 DAIs, =
leading to a buffer overflow.
--

commit bfff7ab83551c0958297b1c39b25931747061203
Author: Sibi Sankar <sibi.sankar@oss.qualcomm.com>

dt-bindings: soundwire: qcom: Increase max data ports to 17

Bump the maxItems from 16 to 17 for all qcom,ports-* properties to
accommodate SoundWire controllers v3.1.0 with 17 data ports.

> diff --git a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.y=
aml b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
> index 9447a2f371b56..8e6973fa229c9 100644
> --- a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
> +++ b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
> @@ -90,7 +90,7 @@ properties:
>        or applicable for the respective data port.
>        More info in MIPI Alliance SoundWire 1.0 Specifications.
>      minItems: 3
> -    maxItems: 16
> +    maxItems: 17

[Severity: High]
This is a pre-existing issue, but does increasing the number of ports to 17
expose an out-of-bounds write in the qcom soundwire driver?

In drivers/soundwire/qcom.c, SWRM_MAX_DAIS is hardcoded to 15:

#define SWRM_MAX_DAIS						0xF

Which bounds the sruntime array in struct qcom_swrm_ctrl:

	struct sdw_stream_runtime *sruntime[SWRM_MAX_DAIS];

If a device is configured with 17 ports, will this lead to an out-of-bounds
write when setting up streams on the 16th or 17th port?

drivers/soundwire/qcom.c:qcom_swrm_set_sdw_stream() {
	...
	ctrl->sruntime[dai->id] =3D stream;
	...
}

[Severity: High]
This is a pre-existing issue, but the port exhaustion check in the driver
appears to have a logic error that could be impacted by changing port count=
s.

In drivers/soundwire/qcom.c:qcom_swrm_stream_alloc_ports():

	pn =3D find_first_zero_bit(port_mask, maxport);

	if (pn > maxport) {
		dev_err(ctrl->dev, "All ports busy\n");
		return -EBUSY;
	}
	set_bit(pn, port_mask);

Since find_first_zero_bit() returns the size parameter (maxport) if no zero
bits are found, the check if (pn > maxport) will be false when all ports
are busy.

Will this cause the driver to bypass the -EBUSY check and repeatedly assign
the highest port instead of handling resource exhaustion properly?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701163115.3701=
298-1-srinivas.kandagatla@oss.qualcomm.com?part=3D1

