Return-Path: <devicetree+bounces-312245-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xR4AIryWMGohUwUAu9opvQ
	(envelope-from <devicetree+bounces-312245-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 02:20:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9007268AE3A
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 02:20:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=laBnaTZZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312245-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312245-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E25663007AD3
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 00:20:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BE3D2264D6;
	Tue, 16 Jun 2026 00:20:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AFC2223DD4
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 00:20:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781569205; cv=none; b=Rlz7PQPflKLFOfQQTJqTDuPchmaZlKAVGWp3atKumDNWetzMdoGooXQmVWJE38q8YGT77nI+u5W7TgJbnaw2aHbnJDF6ihAr7Z1wnXRc4kTPSq8qdKoK+dem9e9r75ULqg6KaUoKTmg7EuQO3WUW0vzy4oS2BdSmhbs6CO7Mg7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781569205; c=relaxed/simple;
	bh=QyMKO/k9QnuvtPNzKeqFMCdboPoyJs9TQxNtwf3lNO0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=FfG+RT/1qTjimt0LdBg3c7p9Jv9DaQUQrLcQqR/Wk9T5u+tfqdR80raKoUkz6+NnFaaGJGBFeftCIOSHQK0OUUXK1B2hXxxufwEw6A5y2RTmlIu0n7LNhkXQMF8kblxjW3sazFYrc9Eqj85T3+lII92D1SfEHgnsvqDF4BaRVgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=laBnaTZZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97FA61F000E9;
	Tue, 16 Jun 2026 00:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781569203;
	bh=tNcDErE5nKDPzsCzu/nRxhrirAIkQJEuHBzIw9mKZ2o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=laBnaTZZfe42D7yxuqwvsivcXnhTxjFrxsBWA2lHL6IGIqs6hofJaomMQ3MzSq1jM
	 IH2QsSb07J/Mpp3Rv8rOelIoquonNSaa2RT4yEGBsn2yi9Z2kmbzaSUh8afwK4VWwJ
	 CXlTWlsFqlCkQJqjjF9MPZivC0rc3WCuWnJSFSDGzhXKXn3TJ+xdk53CIOrCSJjEJE
	 Clzp+NZTXfsVZNK2jsrTglq00z1Uc/A2GaPtSLUbvNyWcgExAJhC6DsG+kVWCjVBFS
	 wjqS5fYZtAKRiNvca12rQCLdXpfgNSFwJzFp846GyaUzu7JDbYjQZSDxQq/AQUkDVD
	 19hCF8bX8O8Rw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 10/16] media: iris: add minimal GET_PROPERTY
 implementation
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260616-iris-ar50lt-v5-10-583b42770b6a@oss.qualcomm.com>
References: <20260616-iris-ar50lt-v5-10-583b42770b6a@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jun 2026 00:20:02 +0000
Message-Id: <20260616002003.97FA61F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-312245-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,lists.linux.dev:replyto,pkt.data:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9007268AE3A

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [Critical] Use-After-Free due to missing reference counting in instance l=
ookup.
- [High] Unsafe release of instance lock during firmware wait allows concur=
rent IOCTLs to clobber completion state.
--

commit d766418e0dabcbcbb8dc9a3f16b8a80a51ec61f4
Author: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

media: iris: add minimal GET_PROPERTY implementation

This commit adds minimal support for querying properties from the firmware
to satisfy Gen1 firmware requirements for AR50Lt. It implements the
session_get_property operation and handles the resulting property info
messages.

> diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen1_command.c b/d=
rivers/media/platform/qcom/iris/iris_hfi_gen1_command.c
> index 7674b47ad6c49..99e82e5510abe 100644
> --- a/drivers/media/platform/qcom/iris/iris_hfi_gen1_command.c
> +++ b/drivers/media/platform/qcom/iris/iris_hfi_gen1_command.c
> @@ -1117,10 +1117,31 @@ static int iris_hfi_gen1_session_set_config_param=
s(struct iris_inst *inst, u32 p
>  	return 0;
>  }
> =20
> +static int iris_hfi_gen1_session_get_property(struct iris_inst *inst, u3=
2 packet_type)
> +{
> +	struct hfi_session_get_property_pkt pkt;
> +	int ret;
> +
> +	pkt.shdr.hdr.size =3D sizeof(pkt);
> +	pkt.shdr.hdr.pkt_type =3D HFI_CMD_SESSION_GET_PROPERTY;
> +	pkt.shdr.session_id =3D inst->session_id;
> +	pkt.num_properties =3D 1;
> +	pkt.data =3D packet_type;
> +
> +	reinit_completion(&inst->completion);
> +
> +	ret =3D iris_hfi_queue_cmd_write(inst->core, &pkt, pkt.shdr.hdr.size);
> +	if (ret)
> +		return ret;
> +
> +	return iris_wait_for_session_response(inst, false);
> +}

[Severity: High]
This is a pre-existing issue, but the newly added function utilizes a patte=
rn
that might be unsafe.

In iris_wait_for_session_response(), inst->lock is explicitly dropped while
waiting for inst->completion. Because the driver does not appear to use
vdev->lock to serialize V4L2 ioctls, dropping inst->lock could expose the
driver to concurrent ioctls.

Could a second thread acquire inst->lock, issue another firmware command,
and call reinit_completion(&inst->completion), erasing the state the first
thread is waiting on?=20

If so, when the firmware finally responds, complete(&inst->completion) might
arbitrarily wake up the wrong thread and desynchronize the driver state.

> diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen1_response.c b/=
drivers/media/platform/qcom/iris/iris_hfi_gen1_response.c
> index bfd7495bf44f0..23fc7194b1e3a 100644
> --- a/drivers/media/platform/qcom/iris/iris_hfi_gen1_response.c
> +++ b/drivers/media/platform/qcom/iris/iris_hfi_gen1_response.c
[ ... ]
> @@ -652,6 +656,8 @@ static void iris_hfi_gen1_handle_response(struct iris=
_core *core, void *response
>  			iris_hfi_gen1_session_etb_done(inst, hdr);
>  		} else if (hdr->pkt_type =3D=3D HFI_MSG_SESSION_FILL_BUFFER) {
>  			iris_hfi_gen1_session_ftb_done(inst, hdr);
> +		} else if (hdr->pkt_type =3D=3D HFI_MSG_SESSION_PROPERTY_INFO) {
> +			complete(&inst->completion);

[Severity: Critical]
This isn't a bug introduced by this patch, but there appears to be a
critical structural flaw with how the instance is handled here.

Earlier in iris_hfi_gen1_handle_response(), iris_get_instance() looks up an
iris_inst from the core->instances list while holding core->lock, but retur=
ns
the raw pointer without incrementing any reference count, and then drops
core->lock.

The response handler then subsequently attempts to acquire
mutex_lock(&inst->lock). If a concurrent thread executing iris_close()
acquires core->lock via iris_remove_session(), removes the instance from
the list, and then calls kfree(inst), could the IRQ handler end up
executing a locking operation on freed memory?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260616-iris-ar50l=
t-v5-0-583b42770b6a@oss.qualcomm.com?part=3D10

