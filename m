Return-Path: <devicetree+bounces-312244-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gbHXE7eWMGofUwUAu9opvQ
	(envelope-from <devicetree+bounces-312244-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 02:20:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEA668AE30
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 02:20:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TLlbwK4f;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312244-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312244-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 595EF3010664
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 00:20:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F80220E702;
	Tue, 16 Jun 2026 00:20:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F54212564
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 00:20:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781569203; cv=none; b=OXwRI7rNcNDpzZ7mr42K9PBWW4HDlTWNLgv27r0cc5oPEcBmzcIFCmclvTJ4vwi1f36Y8tuTKRyi7GFgYa/52QLiZS6ys99rkupRBkCGrQ1LIAiGLLs7HaCm82eMWzOXwHCAQpOHrbKGvYelDpd2gQM63JqpWYKvqvO51Mrr94w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781569203; c=relaxed/simple;
	bh=wb7O4df0oqWa0Bsace+VEfV94jK/pXeEaDXwSufKzXQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=csQz0LxJsJjV586yurSIAXy1E6ivsVDeMBKZBnJudRg9zTpy5WHBQhideAUtImij8eLy7F4GYj187TokmSa734jFbuGPoR4hDi8aCBUJQp5YI3pq1lN/7CRrMOCC4fRptgGoJvLAsEkcRM2aEQEZvNQjwYYImtaxrpJSI4nlOXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLlbwK4f; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6F641F00A3E;
	Tue, 16 Jun 2026 00:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781569202;
	bh=DKR9Y3ROAfhtV5WIdfGHG2Sujh8a4EQYdiEEtyvekXw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TLlbwK4fKeiMVud5CrUdTyM/gg2lB/SolZgQJXLnmHF/+YtdfSawwiq280pXPR3wG
	 UKcZhUVsYiV2Em2SK2wCsnMcLQlVq6L3/cHdIz5/b9tOU4g16xew4CmdzSN660Smn4
	 XdP9LTrgCjwEbPNB4LRaruddBT5OCfbgiB/Rjg1tu/zarEafGFYwDOe3rjg4SPj9fa
	 LxyzhKWJjG2G17v/z5seO7aAZE5FsZWh/bGEFYXjZBBi4V0K0jO02LyI044wxu0Al5
	 a4IeX2u5NUOFrr/xvQ92BRRAs2J5q4f/uvagfMosAGJjSfhcbEB3t/LuAbxLm3OF0Y
	 qPRUyIEBrA5Kg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 11/16] media: iris: update buffer requirements based
 on received info
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260616-iris-ar50lt-v5-11-583b42770b6a@oss.qualcomm.com>
References: <20260616-iris-ar50lt-v5-11-583b42770b6a@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jun 2026 00:20:01 +0000
Message-Id: <20260616002001.E6F641F00A3E@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-312244-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,qualcomm.com:email,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DFEA668AE30

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Concurrent handling of HFI response packets and instance teardown =
can result in a Use-After-Free (UAF) of `inst`.
--

commit 39194b5e5ad26925b8c03d02889401ec6e1fa21d
Author: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

media: iris: update buffer requirements based on received info
   =20
Upon receiving data for HFI_PROPERTY_CONFIG_BUFFER_REQUIREMENTS the
driver should update buffer sizes and counts from the received data.
This will be used for upcoming support of AR50Lt platforms.

> diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen1_response.c b/=
drivers/media/platform/qcom/iris/iris_hfi_gen1_response.c
> index 23fc7194b1e3a..896953ea62ea4 100644
> --- a/drivers/media/platform/qcom/iris/iris_hfi_gen1_response.c
> +++ b/drivers/media/platform/qcom/iris/iris_hfi_gen1_response.c
[ ... ]
> @@ -657,7 +730,7 @@ static void iris_hfi_gen1_handle_response(struct iris=
_core *core, void *response
>  		} else if (hdr->pkt_type =3D=3D HFI_MSG_SESSION_FILL_BUFFER) {
>  			iris_hfi_gen1_session_ftb_done(inst, hdr);
>  		} else if (hdr->pkt_type =3D=3D HFI_MSG_SESSION_PROPERTY_INFO) {
> -			complete(&inst->completion);
> +			iris_hfi_gen1_session_property_info(inst, hdr);
>  		} else {
>  			struct hfi_msg_session_hdr_pkt *shdr;

[Severity: High]
This is a pre-existing issue, but can concurrent handling of HFI response
packets and instance teardown result in a use-after-free of the inst pointe=
r?

Looking at the start of iris_hfi_gen1_handle_response(), it calls
iris_get_instance() which retrieves the inst pointer from the core list
without incrementing any reference count:

drivers/media/platform/qcom/iris/iris_utils.c:iris_get_instance() {
    list_for_each_entry(inst, &core->instances, list) {
        if (inst->session_id =3D=3D session_id) {
            mutex_unlock(&core->lock);
            return inst;
        }
    }
}

The asynchronous response handler then blocks trying to acquire
mutex_lock(&inst->lock).

Concurrently, if iris_close() executes and calls iris_session_close(), it
can temporarily unlock inst->lock while waiting for the final=20
HFI_MSG_SYS_SESSION_END response. This allows iris_close() to eventually
finish, remove the session, unlock and destroy the mutex, and free the
memory:

drivers/media/platform/qcom/iris/iris_vidc.c:iris_close() {
    iris_remove_session(inst);
    mutex_unlock(&inst->lock);
    mutex_destroy(&inst->ctx_q_lock);
    mutex_destroy(&inst->lock);
    ...
    kfree(inst);
}

If a spurious or trailing firmware message is processed for the same sessio=
n,
the response handler could wake up when the lock is released by iris_close(=
),
successfully acquire the destroyed lock, and dereference the freed inst mem=
ory.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260616-iris-ar50l=
t-v5-0-583b42770b6a@oss.qualcomm.com?part=3D11

