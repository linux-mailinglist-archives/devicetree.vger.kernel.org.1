Return-Path: <devicetree+bounces-317693-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id o6WVId6pQ2ofegoAu9opvQ
	(envelope-from <devicetree+bounces-317693-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:34:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E56506E3A9C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:34:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HKd46WIF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317693-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317693-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A132530A9BE0
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 367E03FD139;
	Tue, 30 Jun 2026 11:31:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD723F1AA8
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 11:31:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782819101; cv=none; b=M0esEKFNTP7jH7RnqcxRk40obAL2EgLY9lVAI8XoVmb4GFTGQWSUflC3rVnFYJ69burOVR6KQyNSZp6sfEUXOXy8/q+ZrzbkNq3OuIV8i8Jr7FwYwfIHVDAdMONphoro2yueibFv1aGhV6nzyl4JXuTriEvD5QipUzHL1wjEUzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782819101; c=relaxed/simple;
	bh=o7Ih0Y5o9Or1v4TeOfPMfSwhCKw6R91cMfMXJ8cmCC8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dhT/DqPmsvrEjs/Dg04oOpW06EZg9JPjzsvn+R2qgG4S5H9aWZKWjRvgrm9qB7WKOjiPelNsr/Pl207U253fZ+qddj1qyX3aVTdgIpeCTvwNg1vou3H0vr/qQCGeY9HF22nKp+FCgB5+WSocVk5wD+970qJKi9kuxSeUluttdLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKd46WIF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A553C1F000E9;
	Tue, 30 Jun 2026 11:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782819099;
	bh=ajGNcOoPzKhMJ5aucWgLJh9gWgDQzOyYHnXmzw12Pg8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HKd46WIFCvO/dJVSprSe9RpTD/+SiHCeK0ioGgsIIukDs+BdmoBMCkZy4KhFehmZQ
	 pnn46OQ9EjDMesJ/rF/foFo3VuwYLucFcH7NBWoR1BF+f9nvA84ya3fyZ6Obwut0nk
	 evZ+7QpSr8vFbFMpK5Vd4Q9Z+bC0TVqA+yGrC3luKBoaY5YzD1czsjZpDhOZxvWkWS
	 CdjRl/OF+RVoWWSxKOjynzOzKNNrEKjirxfcj5KDPR7znC4hCGlgO+na7/aA3ATcJM
	 zskQv0baunJ5Zhr+d78d7acKCtozIrTRjoxmxZ6xsBdBzBeVns0w309LREnLu/O7W6
	 C8y7UTZ3izcYA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: glymur: use Aggregator TNOC
 compatible
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jie Gan" <jie.gan@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260630-fix-tracenoc-probe-issue-v3-5-7201e1841e94@oss.qualcomm.com>
References: <20260630-fix-tracenoc-probe-issue-v3-0-7201e1841e94@oss.qualcomm.com>
 <20260630-fix-tracenoc-probe-issue-v3-5-7201e1841e94@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 11:31:38 +0000
Message-Id: <20260630113139.A553C1F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317693-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jie.gan@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp,qualcomm.com:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E56506E3A9C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] System trace ID leak on device unbind or module removal for Aggreg=
ator TNOC platform devices because `tnoc_platform_remove` fails to free the=
 allocated ID.
--

commit e1acaab1b46a7af95def9021d30728ac2de6b44a
Author: Jie Gan <jie.gan@oss.qualcomm.com>

arm64: dts: qcom: glymur: use Aggregator TNOC compatible

This commit updates the traceNoC node in the glymur device tree to use the
qcom,coresight-agtnoc compatible. This ensures the node probes as an=20
Aggregator TNOC and properly allocates a system trace ID.

> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/q=
com/glymur.dtsi
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> @@ -6038,12 +6038,12 @@ qm_tpdm_out: endpoint {
[ ... ]
> -		itnoc@11200000  {
> -			compatible =3D "qcom,coresight-itnoc";
> +		tn@11200000 {
> +			compatible =3D "qcom,coresight-agtnoc";

[Severity: High]
This is a pre-existing issue, but by switching this node to the
qcom,coresight-agtnoc compatible, does this expose a system trace ID leak on
device unbind?

When a platform device matching this compatible is bound, it allocates a
system trace ID. However, if the device is subsequently unbound via sysfs or
module unload, the current cleanup path fails to free the ID:

drivers/hwtracing/coresight/coresight-tnoc.c:tnoc_platform_remove() {
	struct trace_noc_drvdata *drvdata =3D platform_get_drvdata(pdev);

	coresight_unregister(drvdata->csdev);
	pm_runtime_disable(&pdev->dev);
}

Unlike the AMBA counterpart trace_noc_remove(), this platform removal funct=
ion
lacks a call to coresight_trace_id_put_system_id(drvdata->atid).=20

Since the global trace ID pool is strictly limited, could unbinding this ne=
wly
converted device repeatedly exhaust the system trace IDs and prevent further
CoreSight trace sessions from succeeding?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630-fix-tracen=
oc-probe-issue-v3-0-7201e1841e94@oss.qualcomm.com?part=3D5

