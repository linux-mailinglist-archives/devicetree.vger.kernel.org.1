Return-Path: <devicetree+bounces-319780-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1vhFDhRHR2r8VAAAu9opvQ
	(envelope-from <devicetree+bounces-319780-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 07:22:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A3F6FEAAF
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 07:22:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kTkORTKd;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319780-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-319780-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1B96830094C4
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 05:22:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A67E330E859;
	Fri,  3 Jul 2026 05:22:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E429B33BBBD
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 05:22:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783056134; cv=none; b=FuzCx4BAgJeehXqwCeUGI6BBxrTjjq6vTLVOTldsmBSbJK+1q1ZsW48iENkvs8cBWItIdaQb6TlaDQbLo26MdNv4ffkaKdKc0TiIQaEV+KLe6Dp4XWn7B0/V3QozWoOUANdbkqS2VnJnTFRgIRPP9i3sib+2ECnMGLopS7ceW20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783056134; c=relaxed/simple;
	bh=Vf/yWxHFgfILzATmdSbQD89k07s6iOcYOVYdP32lsNw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JoMQ+P8igl9qUIIzS4CU493j3mPdrb2VkJfeo2cil+ctapwtrBvY8aUrcFrPafmhfzCSaBs9gWwBljldVzBHgeBy8Nm7RhQwQ3QoTceIh3npxqjkJc5F5Yh75qnYRcdZdhoP1bw9Dw7K0hoFrireuR1NhT0OgH4zxMJ27DlVSbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTkORTKd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A7A61F000E9;
	Fri,  3 Jul 2026 05:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783056125;
	bh=uedIfobgUAQY4ZrHsjkShZ5MztEETbzy8+yGGaUkFKs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kTkORTKdq17tgy941uK52qUjhOsmGveyNB0sFo2Yc4ft92bYefmG1VG10OY5DywU0
	 SDkXTCNsII7fI8jpeZsSAEqhCSDXfSZtmBf80l0rtOYFuKUbTfpmen9cZeadX8ahnl
	 FVCSIasUtVfWRInP69Xp/PQoRWsCobTjGTQ8a3J5JiEliSiDBesKxEq/hUv/l9MTOY
	 QdWSZvR7z4FLdPK+/fMx9qOBPF7GnckSryuKSlgOFhSmUAq+pbaUVg9qVQR2JI13Tj
	 he8rxAy37n2iwwyzYgjXrX8FJoJofMA4ZMpKYXQ338/21r02h8OxvVDbaRSgNbfMag
	 EQ1VO1FHAmO4g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 04/10] remoteproc: qcom: pas: add support for TMD
 thermal cooling devices
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gaurav Kohli" <gaurav.kohli@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260703-qmi-tmd-v4-4-3882189c1f83@oss.qualcomm.com>
References: <20260703-qmi-tmd-v4-0-3882189c1f83@oss.qualcomm.com>
 <20260703-qmi-tmd-v4-4-3882189c1f83@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 05:22:04 +0000
Message-Id: <20260703052205.2A7A61F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319780-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:gaurav.kohli@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 99A3F6FEAAF

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] A race condition between `qmi_tmd_exit` and `qmi_tmd_new_server` c=
an lead to a use-after-free of `qmi_tmd_cli`.
- [High] TMD sysfs cooling device callbacks can race with teardown, leading=
 to use-after-free on the QMI transaction IDR.
- [High] Data race on `tmd->cur_state` during QMI server reconnect can resu=
lt in the remote processor receiving an outdated cooling state.
- [Medium] QCOM_Q6V5_PAS unconditionally selects QCOM_QMI_TMD, which lacks =
a COMPILE_TEST dependency and indirectly depends on NET, leading to Kconfig=
 unmet dependency warnings and potential build failures.
--

commit 770900471517951fb204f7c5cc18bd57f37681a8
Author: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>

remoteproc: qcom: pas: add support for TMD thermal cooling devices

This commit registers Thermal Mitigation Devices (TMDs) for PAS-managed
remote processors to enable thermal throttling through QMI. It allows
the thermal framework to request mitigation when remote subsystems
contribute to thermal pressure.

> diff --git a/drivers/remoteproc/Kconfig b/drivers/remoteproc/Kconfig
> index c521c744e7dbe..4fb2163c06556 100644
> --- a/drivers/remoteproc/Kconfig
> +++ b/drivers/remoteproc/Kconfig
> @@ -228,6 +228,7 @@ config QCOM_Q6V5_PAS
>  	select QCOM_PIL_INFO
>  	select QCOM_MDT_LOADER
>  	select QCOM_Q6V5_COMMON
> +	select QCOM_QMI_TMD

[Severity: Medium]
Does this unconditionally select QCOM_QMI_TMD without fulfilling its
underlying ARCH_QCOM and NET dependencies?

According to Kconfig subsystem guidelines, selecting a config symbol without
inheriting its dependencies can cause Kconfig unmet dependency warnings and
potential build failures on architectures missing networking infrastructure
or ARCH_QCOM.

>  	select QCOM_RPROC_COMMON
>  	select QCOM_SCM
>  	help
> diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom=
_q6v5_pas.c
> index 808e9609988d3..a4756a449e64b 100644
> --- a/drivers/remoteproc/qcom_q6v5_pas.c
> +++ b/drivers/remoteproc/qcom_q6v5_pas.c
[ ... ]
> @@ -730,6 +749,66 @@ static void qcom_pas_unassign_memory_region(struct q=
com_pas *pas)
[ ... ]
> +static int qcom_pas_setup_tmd(struct qcom_pas *pas, const struct qcom_pa=
s_data *desc)
> +{
[ ... ]
> +	tmd_inst =3D qmi_tmd_init(pas->dev, desc->tmd_instance_id, tmd_names, d=
esc->num_tmd);

[Severity: High]
Can a data race on tmd->cur_state during a QMI server reconnect result in t=
he
remote processor receiving an outdated cooling state?

Looking at qmi_tmd_register() in drivers/soc/qcom/qmi_tmd.c:

	if (tmd->cdev)
		return qmi_tmd_send_state_request(tmd, tmd->cur_state);

The current state is read locklessly without holding cdev->lock. This
introduces a data race with concurrent sysfs updates to the cooling device's
state, which could result in sending an outdated mitigation state over QMI.

> +	if (IS_ERR(tmd_inst)) {
> +		ret =3D PTR_ERR(tmd_inst);
[ ... ]
> @@ -852,12 +931,21 @@ static int qcom_pas_probe(struct platform_device *p=
dev)
[ ... ]
> +remove_setup_tmd:
> +	if (pas->tmd_inst)
> +		qmi_tmd_exit(pas->tmd_inst);

[Severity: High]
Could a race condition between qmi_tmd_exit() and qmi_tmd_new_server() lead
to a use-after-free of qmi_tmd_cli?

Looking at qmi_tmd_exit() in drivers/soc/qcom/qmi_tmd.c:

	cancel_work_sync(&qmi_tmd_cli->svc_arrive_work);
	qmi_handle_release(&qmi_tmd_cli->handle);

The work queue is canceled before shutting down incoming QMI notifications =
via
qmi_handle_release(). If qmi_tmd_new_server() is invoked concurrently, it
could re-queue svc_arrive_work on the global system_highpri_wq, which then
executes after qmi_tmd_cli has been freed.

[Severity: High]
Can TMD sysfs cooling device callbacks race with teardown, leading to a
use-after-free on the QMI transaction IDR?

In qmi_tmd_exit():

	qmi_handle_release(&qmi_tmd_cli->handle);
	qmi_tmd_unregister(qmi_tmd_cli);

The QMI handle (and its IDR) is released before qmi_tmd_unregister() removes
the thermal cooling devices from sysfs. Meanwhile, connection_active is sti=
ll
left as true. A concurrent sysfs write to the cur_state file exactly when t=
he
driver is being removed would attempt to call idr_alloc_cyclic() on the
destroyed IDR.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703-qmi-tmd-v4=
-0-3882189c1f83@oss.qualcomm.com?part=3D4

