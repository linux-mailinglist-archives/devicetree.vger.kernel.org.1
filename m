Return-Path: <devicetree+bounces-322405-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Pl5pCMyCTWqy1QEAu9opvQ
	(envelope-from <devicetree+bounces-322405-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 00:50:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA4072048D
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 00:50:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="L/1Vmj8y";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322405-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-322405-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 15618301859E
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 22:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CB2A346771;
	Tue,  7 Jul 2026 22:50:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AB6331EC7
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 22:50:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783464619; cv=none; b=kep9ngy4bnDzobd5V9hdRprtLm2jP477oLfXShevHVdmqCoyOBWxn6V62B6gzICuIq4cSNsAhY+5KV69q4XCeaXi7HARzltdIOEP6dOF67yEXbbiY8IZl3MsjrjqZvIU43IxrNAmXkZNBRFWesTlywWlBWDjQAMXubkwVPundF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783464619; c=relaxed/simple;
	bh=ac5FBlsSJfyvglWqx/eaCxHzVCFaFC2DpJcbUnXET0I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jy1CgO4vB/TpDhc9dsuHWNZ9L9gelk2qHuJMgZ0CnKlsNq+yDs36aQvgq9We7NHTjSGrCMRbaBklwCo8wCHqbiuzTciYUl8c5Wpxwe205pdkXhtSTs07VO0fBRIPYR+w+rSokSVcm0fjkRHFC2qfNfniBUpVfabqCWIJThKTSBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/1Vmj8y; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A95D11F000E9;
	Tue,  7 Jul 2026 22:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783464618;
	bh=1YGg1ZhxPSg5atzOqUnhvVVKPjnaio+rOCI58xQdfLQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=L/1Vmj8yrR2tpPWgLOc4kMUzC9KVI+bi5iYartbpsPLlxk81rstoHrF2AWerzoA3Z
	 uHQA+wtBEuquQnQtyEo9MJrWUUwfjAgy+XImTAanUurpCeiE61G9wOVuecKyh/zPbK
	 Yox88eybqDYBsn+R3wHiBDv7OMhaNTy77TeqXVVjRcyQgJVN+f+0p77CsBIQtGSsu2
	 vF37gi/MyLCOASX1dS2yFoYqfOlp0jhjPKSNStdm2m3oSr+dFmTRHdZ1JmUYmjcp2A
	 5LX6I4mJhEV6MGI2eP8TnhWL/8eivPSJzClsxRLkhCn/cpg+cjVx5yDrQfMT/xJt8K
	 ROD6S670xqN8Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 12/18] media: iris: add minimal GET_PROPERTY
 implementation
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260708-iris-ar50lt-v6-12-374f0a46c23b@oss.qualcomm.com>
References: <20260708-iris-ar50lt-v6-0-374f0a46c23b@oss.qualcomm.com>
 <20260708-iris-ar50lt-v6-12-374f0a46c23b@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 22:50:17 +0000
Message-Id: <20260707225017.A95D11F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-322405-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,pkt.data:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7FA4072048D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Concurrent V4L2 ioctls can wipe out unconsumed completion tokens v=
ia `reinit_completion()`, causing threads to timeout or wake up on the wron=
g firmware response.
--

--- Patch [12]: [PATCH v6 12/18] media: iris: add minimal GET_PROPERTY impl=
ementation ---
commit ef2e1b5777ca6613617c7857a2dbbf08d615a9fa
Author: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

media: iris: add minimal GET_PROPERTY implementation

AR50Lt with the Gen1 firmware requires host to read
HFI_PROPERTY_CONFIG_BUFFER_REQUIREMENTS property, otherwise it doesn't
update internal data and fails the HFI_CMD_SESSION_LOAD_RESOURCES
command. Implement minimal support for querying the properties from the
firmware.

[ ... ]

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

[Severity: High]
This is a pre-existing issue, but does calling reinit_completion() here
risk wiping out an unconsumed completion token from a concurrent V4L2
ioctl?

When thread A sends a command and enters iris_wait_for_session_response(),
it drops the instance lock during the wait:

drivers/media/platform/qcom/iris/iris_utils.c:iris_wait_for_session_respons=
e() {
    ...
	mutex_unlock(&inst->lock);
	ret =3D wait_for_completion_timeout(done, msecs_to_jiffies(HW_RESPONSE_TIM=
EOUT_VALUE));
	mutex_lock(&inst->lock);
    ...
}

If thread B handles a concurrent ioctl and sends its own command, it will
acquire the freed lock and call reinit_completion() on the same shared
inst->completion token.

If the firmware response for thread A's command arrives just before thread
B calls reinit_completion(), thread B will reset the completion state and
leave thread A waiting, eventually causing it to spuriously time out and
transition the instance state to IRIS_INST_ERROR.

Could this lead to incorrectly pairing firmware responses with commands or
a permanent denial of service for the V4L2 instance?

> +
> +	ret =3D iris_hfi_queue_cmd_write(inst->core, &pkt, pkt.shdr.hdr.size);
> +	if (ret)
> +		return ret;
> +
> +	return iris_wait_for_session_response(inst, false);
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-iris-ar50l=
t-v6-0-374f0a46c23b@oss.qualcomm.com?part=3D12

