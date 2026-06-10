Return-Path: <devicetree+bounces-309623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bUhqIFMpKWoeRwMAu9opvQ
	(envelope-from <devicetree+bounces-309623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:07:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA32667A30
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:07:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=C5gp53iB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309623-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309623-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F30723062C66
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:04:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12DE4392824;
	Wed, 10 Jun 2026 09:04:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09271AA7A6
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 09:04:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781082281; cv=none; b=eDuIG3o/DOVUFd8KB+kKeC+PzHmmXal0chiPkgiM98DebdmW4or3ik2Pey3Np7mjn2GtJd+33vd2U/ZJ8t6UA35+PHmEftyLYCsB1og1hVeHhGL+iuI5M1zwSP3/y9QbY3pw304qe++JeCazdVhWdNOF5ot/NkST2PsMM3vG1Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781082281; c=relaxed/simple;
	bh=k0T3999ggklzTU6itovAfOi0PQuyWK4DWjrxIiQAbHQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mxAOGeMusGGnohdZKMpDAEwNxMBPaTJHDmpDV41NutWis+R+uYFSZJLMRVJG5vO6YeCdIBXxX8PRtgW/ksLirwCBMzryxf/TVtD46NIsbeAn1UozZGKXqzaCTZDlebF+WJtpgE5qu1NNS7k4PFtXtxAiL10w5oA0LKnC9BiEmHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5gp53iB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 472EC1F00893;
	Wed, 10 Jun 2026 09:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781082279;
	bh=khIaL72+2dMxFjBLyE/sIicfs8UiGpIER880zCUUzEA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=C5gp53iBbAwx4XWVhbGEtmtzPGrKZV8omHrncBzo3FYJ3YjAE8DsRlnRUsjRXVN2q
	 +OKlMtzVMua05VBlHPkGJBqzCcsbF/Rxc+Mtqx/R7yxeohx7cWfg207uL/e4QgV+8/
	 24lOkPRTNUlavnAdUVJTSLYOLIa1S4B1n5ruLuwthT2ADxjz0M2zZH4it1/cEdq/Cx
	 OuVTx1+zBnUHhIaKc+XsQOyPqr7Qv5dL0MRWF7rIBfNMCuoABvtKogOMmKaE48TZ2s
	 aWe7nYp4f6tlE+UA4TO+w8tKWmpnixZVs7ZgAux4RW0hP7min1Y2i8fbPEub7noCCJ
	 sWKhQpZ3l04wQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v7 3/9] firmware: arm_scmi: vendors: Add QCOM SCMI
 Generic Extensions
Reply-To: sashiko-reviews@lists.linux.dev
To: "Pragnesh Papaniya" <pragnesh.papaniya@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260610-rfc_v7_scmi_memlat-v7-3-f3f68c608f25@oss.qualcomm.com>
References: <20260610-rfc_v7_scmi_memlat-v7-3-f3f68c608f25@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 09:04:38 +0000
Message-Id: <20260610090439.472EC1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309623-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:pragnesh.papaniya@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1EA32667A30

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Critical] Missing bounds check on firmware response length causes potent=
ial stack buffer overflow or uninitialized memory read.
- [Medium] Undefined behavior in `memcpy` when passed a NULL buffer for a z=
ero-length payload.
--

commit 66dbf88ec6a6058435ff2cd14122285e5de5a740
Author: Sibi Sankar <sibi.sankar@oss.qualcomm.com>

firmware: arm_scmi: vendors: Add QCOM SCMI Generic Extensions

This commit introduces the QCOM SCMI Generic Extensions Protocol, providing
a generic way to expose Qualcomm SoC specific features via the SCMI control=
ler.

> diff --git a/drivers/firmware/arm_scmi/vendors/qcom/qcom-generic-ext.c b/=
drivers/firmware/arm_scmi/vendors/qcom/qcom-generic-ext.c
> new file mode 100644
> index 0000000000000..77c07272c09d6
> --- /dev/null
> +++ b/drivers/firmware/arm_scmi/vendors/qcom/qcom-generic-ext.c

[ ... ]

> +static int qcom_scmi_common_xfer(const struct scmi_protocol_handle *ph,
> +				 enum qcom_generic_ext_protocol_cmd cmd_id, void *buf,
> +				 size_t buf_len, u64 algo_str, u32 param_id, size_t rx_size)
> +{
> +	struct scmi_xfer *t;
> +	struct qcom_scmi_msg *msg;
> +	int ret;
> +
> +	/* Reject calls where rx_size exceeds buf_len. */
> +	if (rx_size > buf_len)
> +		return -EINVAL;
> +
> +	ret =3D ph->xops->xfer_get_init(ph, cmd_id, buf_len + sizeof(*msg), rx_=
size, &t);
> +	if (ret)
> +		return ret;
> +
> +	msg =3D t->tx.buf;
> +	msg->ext_id =3D 0;
> +	msg->algo_low =3D cpu_to_le32(lower_32_bits(algo_str));
> +	msg->algo_high =3D cpu_to_le32(upper_32_bits(algo_str));
> +	msg->param_id =3D cpu_to_le32(param_id);
> +	memcpy(msg->buf, buf, buf_len);

[Severity: Medium]
Is it possible for this memcpy() to receive a NULL buffer?

If a caller invokes a start or stop activity command with a zero-length pay=
load
(passing NULL for buf and 0 for buf_len), this will result in memcpy() being
called with a NULL source pointer.

Calling memcpy() with a NULL pointer is undefined behavior in standard C,
even if the length is zero, and can trigger warnings when Fortify Source
or UBSAN are enabled.

Should this copy be guarded by a check for buf_len > 0?

> +
> +	ret =3D ph->xops->do_xfer(ph, t);
> +	if (!ret && rx_size)
> +		/*
> +		 * Response is returned into the caller's @buf, replacing the
> +		 * tx payload. Callers using the same on-stack struct for both
> +		 * directions must not rely on tx contents after this point.
> +		 */
> +		memcpy(buf, t->rx.buf, t->rx.len);

[Severity: Critical]
Does this memcpy() need bounds checking on the received length?

The length t->rx.len is controlled by firmware. If the firmware returns a
payload larger than the caller's allocated buffer (buf_len), this copy could
overflow the caller's stack or buffer.

Conversely, if the firmware returns a truncated response (t->rx.len < rx_si=
ze),
fewer bytes will be copied. Since the function returns 0 on success without
reporting the actual received length, the caller might unknowingly read lef=
tover
TX payload as valid RX data.

Would it be safer to validate t->rx.len against buf_len or rx_size, and ret=
urn
an error if the length does not match expectations?

> +	ph->xops->xfer_put(ph, t);
> +
> +	return ret;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610-rfc_v7_scm=
i_memlat-v7-0-f3f68c608f25@oss.qualcomm.com?part=3D3

