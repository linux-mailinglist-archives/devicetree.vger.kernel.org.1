Return-Path: <devicetree+bounces-317796-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8yg+JsvBQ2owgwoAu9opvQ
	(envelope-from <devicetree+bounces-317796-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:16:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB5B6E4BB3
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:16:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HgtrNFP9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317796-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317796-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D05FC3174FF4
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:02:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79C5D331EC6;
	Tue, 30 Jun 2026 13:02:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665E33FBEC1
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 13:02:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782824531; cv=none; b=dWwKkzisEIPRqqLX/C9kVU0PUMbwMma7+xp8Svqnp/cX2GrY61TiVz76Gx3EcsoqqDFHZu1t2Axf3d5l2h8KqCszGHNCVWYem8ZK/lR9QWT7bE1ihL0kH0ccTxzX0lAk0l29nI6y8Cpi1vETzkQmDzIRafSJoAoVTX2VsEwNt+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782824531; c=relaxed/simple;
	bh=uMN1ESj/MlyzpIPTLVeun2E0c5bkn7n0DyR/zru4KcU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=R7jGJZ7uqQkOJU91/EvM+Galtzpbg6SILGxbJSgHn0oidFc75kv2ks488QrLOLa6oovh3kewvG6dCsBHl+jqoIsWd282IOO7P82y990QaK1aToYqcU2dJy4cN09aKa1Kvl1Vevt1ojlMT6nOzF5YsvWS4hxPya3z+/sFc7uPMpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgtrNFP9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F81C1F000E9;
	Tue, 30 Jun 2026 13:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782824530;
	bh=mfg8wTDTUODHNuSmJQGZ7ilzHr5LBTIRyugrF5kbbgo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HgtrNFP9+hGEEHTDtDXe7CYGmdVcXJevGKsyVfEWpk57F5ICBlv9GFgE3fg8m9GPx
	 3OLSaM/I/SiJPizwC4nz9EKKkCknvX3v5NA0WRvsn8tG/Xa7p4CV3PPiX1jiUlq5p5
	 gNf56OBTLB3lX6Hl/TIJ/B4kro9OXNxsmm3q9WkIjua2kEQl1RythoLBQLWZNvOe8W
	 9CTuj4DxfHuiPvM8rn+ojZT06tcqHGre4z7S+Y0uJWmB47WxPxdN2B6XgW5gStSVwj
	 nvwITdcpWWD1dkQOOIyPqLMM6ptOcGMy5g7tY4oYyJTgdMPMgCRPHWj2mGk3Xb22Pn
	 Vin84fBFz3I3Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/6] firmware: qcom: scm: Add support for setting
 Bluetooth power modes
Reply-To: sashiko-reviews@lists.linux.dev
To: "George Moussalem via B4 Relay" <devnull+george.moussalem.outlook.com@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260629-ipq5018-bluetooth-v2-3-02770f03b6bb@outlook.com>
References: <20260629-ipq5018-bluetooth-v2-0-02770f03b6bb@outlook.com>
 <20260629-ipq5018-bluetooth-v2-3-02770f03b6bb@outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 13:02:08 +0000
Message-Id: <20260630130209.0F81C1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317796-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+george.moussalem.outlook.com@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,george.moussalem.outlook.com,dt];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,outlook.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0CB5B6E4BB3

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Command ID collision causing false positive availability check and=
 potential TrustZone memory corruption.
--

commit ad188a38cad8a7f123b53d24cb2303340d519071
Author: George Moussalem <george.moussalem@outlook.com>

firmware: qcom: scm: Add support for setting Bluetooth power modes

This commit adds support for configuring the Bluetooth subsystem power
optimization mode on the IPQ5018 SoC. It introduces a new SCM call to
TrustZone and checks for the call's availability before invoking it.

> diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qco=
m_scm.c
> --- a/drivers/firmware/qcom/qcom_scm.c
> +++ b/drivers/firmware/qcom/qcom_scm.c

[ ... ]

> +static int __qcom_scm_pas_set_bluetooth_power_mode(u32 pas_id, u32 val)
> +{
> +	struct qcom_scm_desc desc =3D {
> +		.svc =3D QCOM_SCM_SVC_PIL,
> +		.cmd =3D QCOM_SCM_PIL_PAS_BT_PWR_MODE,
> +		.arginfo =3D QCOM_SCM_ARGS(2),

[ ... ]

> +int qcom_scm_pas_set_bluetooth_power_mode(u32 pas_id, u32 val)
> +{
> +	if (!__qcom_scm_is_call_available(__scm->dev, QCOM_SCM_SVC_PIL,
> +					  QCOM_SCM_PIL_PAS_BT_PWR_MODE))
> +		return -EOPNOTSUPP;

[ ... ]

> diff --git a/drivers/firmware/qcom/qcom_scm.h b/drivers/firmware/qcom/qco=
m_scm.h
> --- a/drivers/firmware/qcom/qcom_scm.h
> +++ b/drivers/firmware/qcom/qcom_scm.h
> @@ -105,6 +105,7 @@ int qcom_scm_shm_bridge_enable(struct device *scm_dev=
);
>  #define QCOM_SCM_PIL_PAS_SHUTDOWN	0x06
>  #define QCOM_SCM_PIL_PAS_IS_SUPPORTED	0x07
>  #define QCOM_SCM_PIL_PAS_MSS_RESET	0x0a
> +#define QCOM_SCM_PIL_PAS_BT_PWR_MODE	0x21
>  #define QCOM_SCM_PIL_PAS_GET_RSCTABLE	0x21

[Severity: High]
Could this command ID overlap cause a false positive in the availability ch=
eck
and trigger unintended behavior in TrustZone?

Because QCOM_SCM_PIL_PAS_BT_PWR_MODE and QCOM_SCM_PIL_PAS_GET_RSCTABLE are
both defined as 0x21 under the same service (QCOM_SCM_SVC_PIL), the call
to __qcom_scm_is_call_available() in qcom_scm_pas_set_bluetooth_power_mode()
will return true on any platform that supports getting the resource table,
even if it does not actually support the Bluetooth power mode command.

If the function proceeds, it will invoke command 0x21 with only 2 arguments
instead of the 5 expected by the GET_RSCTABLE handler. Since the unprovided
arguments default to 0, might this cause TrustZone to read or write at
physical address 0x0, potentially resulting in a Secure World crash or
memory corruption?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-ipq5018-bl=
uetooth-v2-0-02770f03b6bb@outlook.com?part=3D3

