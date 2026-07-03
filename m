Return-Path: <devicetree+bounces-319781-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XsEzOeFHR2pIVQAAu9opvQ
	(envelope-from <devicetree+bounces-319781-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 07:25:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 226956FEB51
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 07:25:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="m/qgbaSS";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319781-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319781-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D8D0F304DC98
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 05:24:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54B1F359A91;
	Fri,  3 Jul 2026 05:23:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D6834EEF7
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 05:23:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783056236; cv=none; b=nOEBH+LS84tIxnVOTC49fXn/BZJcMBWG/DVMFjYzFUwDqb8FmqWtXMsquDUTcbVmt19AECmJYXJfTW6oNzkSn5sV2X3I69QafdSQhT49GlhSGIP0CgKUG05TfwNtpEo+d/xX7tflBlEFZcOjg1zj5Ai0/sKcHpmH6+Uv4J/rPNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783056236; c=relaxed/simple;
	bh=ZrjK2202G+GfcYFhxLb2Gbqgxf3wdGa8kFBxBLr6m4U=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bvwni9WRaJQvK0uhhK48c9QUz1N5Zcp1Q4TPOyI/cdWbJEFVVTVc0vy9PcINl5VyakSMhhxvUf9a5kCuPTValf1t3ZDKPmRJCTjDTWNruqDQBXye8VoXC91C7a9lBWYTgxf8EPlHO3y7lW6UxC1LUrWHMrmHw2AihgGGwRsl+Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/qgbaSS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01ED81F000E9;
	Fri,  3 Jul 2026 05:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783056228;
	bh=UpduVNAMHNfJwzzJU4q7KolVISMneI2wkIkKKoTlSj4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=m/qgbaSSVmPlKOhy2GzgElu1WCp1+lqHf8Q3I7ynz7zKbM8uRHFGavPnQ3HLpEGq+
	 RZynXqbyY2N8mtW5mj96NIvN84iJvGar98khJzJwd/6Uli5x3ou+knitPUwLmLOa3o
	 gCWW5IOds2K6J0sgG4r900Ye+BWCdjJGdt09i+gPHTtmGiKCiKsluG5MRwPWQwimZn
	 2RXMTCCLS5/pvcUK1y4VYm73U04OU2xKJ/PUP0Y73uWLOUVDPUmPKbCqcvvvothZDE
	 BTIlewAQP4yOwGpBZMCjVWELYQ54zs0Z5JvDe8o70vxqZE0c27Vv9ob7FypasKmjMg
	 xDT5QGXa+Rhcw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 05/10] remoteproc: qcom_q6v5_pas: enable QMI TMD
 cooling support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gaurav Kohli" <gaurav.kohli@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260703-qmi-tmd-v4-5-3882189c1f83@oss.qualcomm.com>
References: <20260703-qmi-tmd-v4-0-3882189c1f83@oss.qualcomm.com>
 <20260703-qmi-tmd-v4-5-3882189c1f83@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 05:23:47 +0000
Message-Id: <20260703052348.01ED81F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319781-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:gaurav.kohli@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,qualcomm.com:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 226956FEB51

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Critical] Incorrect teardown order in `qmi_tmd_exit()` can lead to a Use=
-After-Free if `svc_arrive_work` is queued concurrently.
- [High] Failure in `thermal_of_cooling_device_register()` leaves an `ERR_P=
TR` in `tmd->cdev`, leading to a kernel panic during cleanup in `qmi_tmd_un=
register()`.
--

commit 117e89cf6f52e4949e2dfdf865b41f6db55c4ceb
Author: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>

remoteproc: qcom_q6v5_pas: enable QMI TMD cooling support

Enable Thermal Mitigation Device (TMD) support for PAS-managed CDSP and
modem remote processors on platforms that expose the QMI TMD service.
This provides the mapping between DT cooling indices and QMI TMD names,
allowing remoteproc nodes to act as cooling devices in the thermal
framework.

> diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom=
_q6v5_pas.c
> index a4756a449e64b..e2cce4efec253 100644
> --- a/drivers/remoteproc/qcom_q6v5_pas.c
> +++ b/drivers/remoteproc/qcom_q6v5_pas.c

[ ... ]

> @@ -1141,6 +1150,9 @@ static const struct qcom_pas_data sa8775p_cdsp0_res=
ource =3D {
>  	.ssr_name =3D "cdsp",
>  	.sysmon_name =3D "cdsp",
>  	.ssctl_id =3D 0x17,
> +	.tmd_instance_id =3D 0x43,
> +	.tmd_name =3D cdsp_tmd_name,
> +	.num_tmd =3D ARRAY_SIZE(cdsp_tmd_name),

[Severity: High]
Could enabling TMD here expose a kernel panic during cleanup?

In drivers/soc/qcom/qmi_tmd.c:qmi_tmd_register(), if
thermal_of_cooling_device_register() fails, it returns an ERR_PTR which is
stored in tmd->cdev without being cleared:

qmi_tmd_register()
	tmd->cdev =3D thermal_of_cooling_device_register(dev->of_node, index,
						       label, tmd, &qmi_tmd_cooling_ops);
	if (IS_ERR(tmd->cdev))
		return PTR_ERR(tmd->cdev);

Later during error rollback or driver unbind, qmi_tmd_unregister() bypasses=
 the
NULL check and unconditionally dereferences the error pointer:

qmi_tmd_unregister()
	if (!tmd->cdev)
		continue;

	thermal_cooling_device_unregister(tmd->cdev);

Can passing this ERR_PTR to thermal_cooling_device_unregister() lead to a
panic?

[Severity: Critical]
Is there a use-after-free regression introduced when enabling this feature?

In drivers/soc/qcom/qmi_tmd.c:qmi_tmd_exit(), the teardown order cancels
the work before releasing the QMI handle:

qmi_tmd_exit()
	cancel_work_sync(&qmi_tmd_cli->svc_arrive_work);
	qmi_handle_release(&qmi_tmd_cli->handle);

Since the QMI RX worker thread is not stopped until qmi_handle_release()
executes, a NEW_SERVER message arriving in this window can trigger
qmi_tmd_new_server() and re-queue the work:

qmi_tmd_new_server()
	queue_work(system_highpri_wq, &qmi_tmd_cli->svc_arrive_work);

Once qmi_tmd_exit() returns, the qmi_tmd_cli structure is freed, but the
pending work may execute later. Can this concurrent queueing cause a
use-after-free on qmi_tmd_cli?

>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703-qmi-tmd-v4=
-0-3882189c1f83@oss.qualcomm.com?part=3D5

