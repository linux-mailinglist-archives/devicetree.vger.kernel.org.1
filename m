Return-Path: <devicetree+bounces-308947-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bY/dHnHtJ2rd5QIAu9opvQ
	(envelope-from <devicetree+bounces-308947-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 12:39:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF36C65F0C3
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 12:39:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=h1nV5dI7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308947-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308947-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 59C85301FF91
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 10:37:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 907193F4859;
	Tue,  9 Jun 2026 10:37:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C48B3AE6F3
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 10:37:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781001459; cv=none; b=o07AJDFCs6J+STGvwJWl7RmN/YHJCPjHEA+WEdAbahjqFd4EOVhQO7GjUfuMnomE5sHuPy2dZ/6VjMCg03jGqAyf0xJAqNj5ftOFNeN3cTKrMVXMNvdlNlpKG3XDIZbPzZT4q7mNmfk2BFNGve3glDtGZno0xJUv5OBF2rIUicY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781001459; c=relaxed/simple;
	bh=FdoibTqamt5Z5fDFB55A3RIvCUtNuqj2hE0WBSR8T3k=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=a9KZH8/CBB3tc1IyOyvf8rY4jKN8a2ofOMXXBSg9shXy5HnCge2fknODeK4BLJsYsJWYGFqQ3lguImbhRd/QqePcMb48jyAWBBO7KgHCP+LtTbv61E90aV+PXy4xQAT7p32PjCga0MJ1inT3dqkeviQSL8B9tT/mi0XPjdde9RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1nV5dI7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8ECB21F00893;
	Tue,  9 Jun 2026 10:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781001457;
	bh=j9jyYMbF8eO+m9MdVWQa9C27rlS9vJ96FjbB4vE72Dc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=h1nV5dI7T3WtVOwR+VxsJlLCOf0Kcg/8mv4tGZmJU6SVuXs9R6/yHs1Y+XxY7meop
	 72NlKrjzkGvP8JxJPbyfPTCg+93pU6KSz6lALQgL0/8fCewIB4XkQ3x3cSlNlvLWNE
	 sNohMYHlcZwWOX2BMV/H5WYDLf2+le0s5x1zfYHcSkuLHyLyubof7SO42+zr+eSThd
	 ml6A3BNG5OOg0D3jFdZssRykNC3/QxTFcAMGB1d2zzxWNd4LszvwPmZ+D78xP35tJ+
	 HcjI4kns0oY+xeoY0+t5Do3Xb6g4xkCdcXEAMm1ZAawk176zFLF1BGYjRfyhoDtnY3
	 DAqQwRD8U5deg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/8] soc: qcom: Add support for QMI TMD cooling
 devices
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gaurav Kohli" <gaurav.kohli@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260609-qmi-tmd-v3-2-291a2ff4c634@oss.qualcomm.com>
References: <20260609-qmi-tmd-v3-2-291a2ff4c634@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 10:37:37 +0000
Message-Id: <20260609103737.8ECB21F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308947-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:gaurav.kohli@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linaro.org:email,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CF36C65F0C3

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:
- [High] Registration failure leaves an ERR_PTR in tmd->cdev, leading to an=
 invalid pointer dereference during unregistration.
- [High] Incorrect teardown sequence in qmi_tmd_exit() allows Use-After-Fre=
e via concurrent sysfs accesses and re-queued QMI work.
- [Medium] QCOM_QMI_TMD selects QCOM_QMI_HELPERS without inheriting its NET=
 dependency, leading to Kconfig unmet dependency warnings.
- [Medium] Mixing goto-based error handling with scope-based cleanup (__fre=
e).
- [Medium] Unprotected access to `tmd->cur_state` creates a TOCTOU race, ca=
using the device mitigation state to permanently desynchronize from the ker=
nel's state.
--

commit af63888f1125808b48046c97b93e006d9c65c730
Author: Casey Connolly <casey.connolly@linaro.org>

soc: qcom: Add support for QMI TMD cooling devices

Add a Qualcomm QMI Thermal Mitigation Device (TMD) to support thermal
cooling devices backed by remote subsystems.

> diff --git a/drivers/soc/qcom/Kconfig b/drivers/soc/qcom/Kconfig
> index 2caadbbcf8307..a292ce57fd4a4 100644
> --- a/drivers/soc/qcom/Kconfig
> +++ b/drivers/soc/qcom/Kconfig
> @@ -128,6 +128,16 @@ config QCOM_QMI_HELPERS
>  	tristate
>  	depends on NET
> =20
> +config QCOM_QMI_TMD
> +	bool "Qualcomm QMI TMD library" if COMPILE_TEST
> +	depends on ARCH_QCOM
> +	select QCOM_QMI_HELPERS

[Severity: Medium]
Since QCOM_QMI_HELPERS specifies a dependency on NET, does selecting it here
without also inheriting the NET dependency risk unmet direct dependency war=
nings
at build time if CONFIG_NET=3Dn?

> diff --git a/drivers/soc/qcom/qmi_tmd.c b/drivers/soc/qcom/qmi_tmd.c
> new file mode 100644
> index 0000000000000..9d88ae48c8647
> --- /dev/null
> +++ b/drivers/soc/qcom/qmi_tmd.c
[ ... ]
> +static int qmi_tmd_set_cur_state(struct thermal_cooling_device *cdev,
> +				 unsigned long state)
> +{
> +	struct qmi_tmd *tmd =3D cdev->devdata;
> +	int ret;
> +
> +	if (state > tmd->max_state)
> +		return -EINVAL;
> +
> +	if (tmd->cur_state =3D=3D state)
> +		return 0;
> +
> +	ret =3D qmi_tmd_send_state_request(tmd, state);
> +	if (!ret)
> +		tmd->cur_state =3D state;

[Severity: Medium]
Is there a potential TOCTOU race here when updating tmd->cur_state without
holding qmi_tmd_cli->mutex?=20
   =20
If the QMI server restarts concurrently, qmi_tmd_register() might read the =
old
state locklessly to send to the new server before this assignment completes,
permanently desynchronizing the kernel's recorded state from the actual
hardware state.

[ ... ]
> +static int qmi_tmd_register(struct qmi_tmd_client *qmi_tmd_cli,
> +			    const char *label, u8 max_state)
> +{
[ ... ]
> +found:
> +	tmd->max_state =3D max_state;
> +
> +	/*
> +	 * If the cooling device already exists then the QMI service went away =
and
> +	 * came back. So just make sure the current cooling device state is
> +	 * reflected on the remote side and then return.
> +	 */
> +	if (tmd->cdev)
> +		return qmi_tmd_send_state_request(tmd, tmd->cur_state);
> +
> +	tmd->cdev =3D thermal_of_cooling_device_register(dev->of_node, index,
> +						       label, tmd, &qmi_tmd_cooling_ops);
> +	if (IS_ERR(tmd->cdev))
> +		return PTR_ERR(tmd->cdev);
> +
> +	return 0;
> +}

[Severity: High]
If thermal_of_cooling_device_register() fails, could this leave an ERR_PTR
in tmd->cdev?=20
   =20
Later in qmi_tmd_unregister(), the check if (!tmd->cdev) will be bypassed
since an ERR_PTR evaluates to true, potentially causing a crash when
thermal_cooling_device_unregister() attempts to dereference it. Should
tmd->cdev be set back to NULL on failure?

[ ... ]
> +static void qmi_tmd_svc_arrive(struct work_struct *work)
> +{
> +	struct qmi_tmd_client *qmi_tmd_cli =3D
> +		container_of(work, struct qmi_tmd_client, svc_arrive_work);
> +
> +	struct tmd_get_dev_list_req req =3D { 0 };
> +	struct tmd_get_dev_list_resp *resp __free(kfree) =3D NULL;
> +	int ret, i;
> +	struct qmi_txn txn;
> +
> +	resp =3D kzalloc_obj(*resp, GFP_KERNEL);
> +	if (!resp) {
> +		ret =3D -ENOMEM;
> +		goto out;
> +	}
[ ... ]
> +out:
> +	if (ret)
> +		dev_err(qmi_tmd_cli->dev, "Failed to initialize TMD service: %d\n", re=
t);
> +}

[Severity: Medium]
Does mixing the scope-based cleanup macro __free(kfree) with traditional
goto-based error handling (goto out;) in the same function violate the
cleanup subsystem guidelines? This mixture can lead to confusing ownership
semantics.

[ ... ]
> +void qmi_tmd_exit(struct qmi_tmd_client *qmi_tmd_cli)
> +{
> +	if (!qmi_tmd_cli)
> +		return;
> +
> +	cancel_work_sync(&qmi_tmd_cli->svc_arrive_work);
> +	qmi_handle_release(&qmi_tmd_cli->handle);
> +	qmi_tmd_unregister(qmi_tmd_cli);
> +
> +	scoped_guard(mutex, &qmi_tmd_cli->mutex)
> +		qmi_tmd_cli->connection_active =3D false;
> +}

[Severity: High]
Can this teardown sequence cause a use-after-free or kernel crash?=20

Because qmi_handle_release() is called before qmi_tmd_unregister(), the
cooling device remains exposed to sysfs while the QMI handle is being
destroyed. A concurrent sysfs write could trigger qmi_tmd_set_cur_state(),
which would attempt to allocate a transaction ID in the destroyed qmi->txns
IDR because connection_active is still true.
           =20
Additionally, because cancel_work_sync() runs before qmi_handle_release(),
there is a window where incoming QMI events can re-queue svc_arrive_work,
potentially executing after the driver unbinds.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609-qmi-tmd-v3=
-0-291a2ff4c634@oss.qualcomm.com?part=3D2

