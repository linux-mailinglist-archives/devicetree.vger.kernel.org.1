Return-Path: <devicetree+bounces-299836-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MOpkNe0TDGoZVQUAu9opvQ
	(envelope-from <devicetree+bounces-299836-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 09:40:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 39720579427
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 09:40:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C5673081306
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 07:34:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C528E3DA5DB;
	Tue, 19 May 2026 07:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4i0QHY8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1A8C3DA5D5
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 07:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779176048; cv=none; b=Vscd8eq5M6HgEjNwlyl4Ae5w3yfyWawoQExJSB+yhzwhKb33bivEg9JVaHGtDJLcT1JkQNv8Cmbb7rrXtDGd9UexA8v8582AFkQeGQcdlv/3wFF7UQB0vLAx4u0n0jcHzsCUDSLWdUAud2Zed5Mh2DbT43quxwWM6kEr54gYzG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779176048; c=relaxed/simple;
	bh=7G2K4eikcxZEbF//HWEAFPLA64oOQ233tczsvBbyO+g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=AbuOBCx9ftGh6Yk7tvqg5SrAowk/amDx6pPBHQ9em/4MLv/bMmEPfCDLv6cOaB3gbXcgAInp4mKiqbeQTKE6aFq64ile2rOlxhbyRI7A/ojwVrpQtKok9TkdrWSYzNxBXsWP3JYf1PahSpxwV90/3Us8bWe1dALRYFeekmUMh0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4i0QHY8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19739C2BCB3;
	Tue, 19 May 2026 07:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779176048;
	bh=7G2K4eikcxZEbF//HWEAFPLA64oOQ233tczsvBbyO+g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=u4i0QHY8necApVnvlEYb33ULi4BFQ3lvKgz/Bc/eHZ+G2nLFPLz2Y4sze+iOC1cuI
	 z+VuJJ5qczGiWz06Q8rS8GpRhzLCMbZWWqSYyBfz1RRzL6OmIyv+Nb4ZD4jX4COEil
	 qFwEQTca43BknVpM9cvbZZTD4Cwa+LuBfNVRaDCboixDCqPTJPzUiZypIJSYrcss7U
	 DcecacjU4JlUUDjbEx24ooebhodY1NUV7lDlngS/9hQTF976g1t4Gso2OReH0bNYWi
	 KfXmBzy4udJg6PBsPAiVU8djKo0uIKchNYNN6lNBbUsDBSR/cenkLGO9nAlZTa3Jd5
	 I2F6QCtL3eFoA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 12/16] media: qcom: Pass proper PAS ID to
 set_remote_state API
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sumit Garg" <sumit.garg@kernel.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260518072856.22790-13-sumit.garg@kernel.org>
References: <20260518072856.22790-13-sumit.garg@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 07:34:07 +0000
Message-Id: <20260519073408.19739C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299836-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,qualcomm.com:email,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 39720579427
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Critical] Missing cancellation of the `sys_error_handler` delayed work i=
n `iris_remove` leads to Use-After-Free and locking a destroyed mutex.
- [High] Missing memory barrier (`smp_load_acquire` or `READ_ONCE`) when re=
ading `ops_ptr` in PAS API wrappers creates a TOCTOU race and potential NUL=
L pointer dereference or uninitialized memory access.
--

commit dc3a6dd9cf1f9278b9e5d984b574b26cf894a4e9
Author: Sumit Garg <sumit.garg@oss.qualcomm.com>

media: qcom: Pass proper PAS ID to set_remote_state API

This commit modifies the set_hw_state functions for both iris and venus
drivers to pass a specific PAS ID instead of 0 to qcom_pas_set_remote_state.
This change allows the OP-TEE backend to utilize the PAS ID for proper
bookkeeping.

> diff --git a/drivers/media/platform/qcom/iris/iris_firmware.c b/drivers/m=
edia/platform/qcom/iris/iris_firmware.c
> index b3c5281aea919..856fa6a79064c 100644
> --- a/drivers/media/platform/qcom/iris/iris_firmware.c
> +++ b/drivers/media/platform/qcom/iris/iris_firmware.c
> @@ -109,5 +109,5 @@ int iris_fw_unload(struct iris_core *core)
> =20
>  int iris_set_hw_state(struct iris_core *core, bool resume)
>  {
> -	return qcom_pas_set_remote_state(resume, 0);
> +	return qcom_pas_set_remote_state(resume, core->iris_platform_data->pas_=
id);

This isn't a bug in this commit, but since we are modifying the state
management for iris_core, there is a pre-existing issue with the
sys_error_handler delayed work.

Looking at iris_remove(), we explicitly destroy the core->lock and allow
the core memory to be freed via devres:

drivers/media/platform/qcom/iris/iris_probe.c:iris_remove() {
	...
	mutex_destroy(&core->lock);
}

Could the delayed work execute after the module is unloaded or the device
unbinds? If so, would iris_sys_error_handler() attempt to acquire the
destroyed core->lock and access the freed core memory?

Should we add cancel_delayed_work_sync(&core->sys_error_handler) before
destroying the lock?


This isn't a bug in this commit either, but since this function calls
qcom_pas_set_remote_state(), I noticed a potential race condition in how
the global ops_ptr is read in the API wrapper.

Looking at qcom_pas_set_remote_state(), it performs lockless plain reads:

drivers/firmware/qcom/qcom_pas.c:qcom_pas_set_remote_state() {
	if (!ops_ptr)
		return -ENODEV;

	return ops_ptr->set_remote_state(ops_ptr->dev, state, pas_id);
}

Because ops_ptr is read without READ_ONCE() or smp_load_acquire(), could
the compiler reload the pointer?

If qcom_pas_ops_unregister() clears ops_ptr concurrently, could the second
read evaluate to NULL, causing a NULL pointer dereference? Furthermore,
without a barrier, could the CPU reorder reads and observe uninitialized
contents of the qcom_pas_ops structure?

>  }

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518072856.2279=
0-1-sumit.garg@kernel.org?part=3D12

