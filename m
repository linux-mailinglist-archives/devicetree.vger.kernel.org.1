Return-Path: <devicetree+bounces-310852-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7MG+AFLZK2p2GQQAu9opvQ
	(envelope-from <devicetree+bounces-310852-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 12:02:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA3767892D
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 12:02:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Ngm74a9w;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310852-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310852-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C2643440910
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:56:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5915B367296;
	Fri, 12 Jun 2026 09:56:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36612377ED4
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 09:56:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781258216; cv=none; b=QaPkhNS+pyMIe6DIkSYvetSBHC7+Owl+bIBLy+VdRI4qM9JJ4NVIupaNoWpxxZR3cGA5odi2SvsYSLj05FpMbXF+ZTD4S6jVUxQ1VBkI2RhnxMcId0S0eVEw2nQwZQC/HQyKiPBhuDTIPoTZ9z6IYBeLk71J9Z9fW/Tv3XkuvOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781258216; c=relaxed/simple;
	bh=crmQqZDy7rXOlIpu7v4PJUm50EQgTb8mZaGWXwHgwLM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=V2ak3auq3Z+5dkFj3pICXDFKBQ6sEtbCSQeHNZpNqQ4OdZNTRV3AkggBA6G3FN73OcHB7GjIQZPeSvjR5nn0rtWWmJu53DHu40maCwcGsiUUHgU56QY6utnLF7I48n8E+o/YFiLhJyoQnf6D8FhPTvU7sAxwemObCJlqR85J/7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ngm74a9w; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 525D71F000E9;
	Fri, 12 Jun 2026 09:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781258214;
	bh=zVdd3uow7YvASAqvFVucv+PRpe6Tv60uxV/EKOoIUtQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ngm74a9w3998+o3mG4a1JYPwTXIx3GzdC8Ugb/k8bqr/YQxaW0K/HnRuEjzwnZsIh
	 9qX5NZu7n6NtVYmUK2qPifK56rnJuPcyVt04NsQSWio+2xZegExsflKIokB1bFNGnf
	 YsIcV6Ez/dVYfyyIDRcRBDo/GdYj3u2khKryX/gebTQwIwnxaE891wNFceXE89jnw+
	 3vewIrRkCd4mzKVgvMKFtlp6XmneV8vWiEjf3JiGS0nWDdLBDX5NYHEdAuXfdj0TWG
	 xwcmr2UuRFzgcD87lsP+97PPxXmqVsf4/dXZwCNJ/u6NmppCZDGjOOyPOi1hbztPTF
	 IUtWiVqGpEkuw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 10/16] media: iris: add minimal GET_PROPERTY
 implementation
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260612-iris-ar50lt-v4-10-0abfb74d5b3c@oss.qualcomm.com>
References: <20260612-iris-ar50lt-v4-10-0abfb74d5b3c@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 09:56:53 +0000
Message-Id: <20260612095654.525D71F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-310852-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3AA3767892D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Possible Use-After-Free in firmware response handler due to lockle=
ss instance lookup and lack of reference counting.
--

commit ea864f98c9ad1ba57f2027e2f0fc7f82f044f629
Author: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

media: iris: add minimal GET_PROPERTY implementation

AR50Lt with the Gen1 firmware requires host to read
HFI_PROPERTY_CONFIG_BUFFER_REQUIREMENTS property, otherwie it doesn't
update internal data and fails the HFI_CMD_SESSION_LOAD_RESOURCES
command. Implement minimal support for querying the properties from the
firmware.

> AR50Lt with the Gen1 firmware requires host to read
> HFI_PROPERTY_CONFIG_BUFFER_REQUIREMENTS property, otherwie it doesn't

This isn't a bug, but there's a typo (otherwie) in the commit message.

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

[Severity: High]
This is a pre-existing issue, but could there be a use-after-free race cond=
ition
when handling firmware responses here?

Earlier in iris_hfi_gen1_handle_response(), the instance is looked up using
iris_get_instance():

	inst =3D iris_get_instance(core, pkt->shdr.session_id);
	...
	mutex_lock(&inst->lock);

iris_get_instance() finds the instance in the core->instances list and retu=
rns
a raw pointer after dropping core->lock, without incrementing a reference c=
ount.

Concurrently, if a userspace process closes the device node, iris_close() m=
ight
remove the instance from the list, unlock inst->lock, destroy the mutex, and
call kfree(inst).

If the response handler thread calls iris_get_instance() just before iris_c=
lose()
removes the instance from the list, the response thread could receive the p=
ointer
and block on mutex_lock(&inst->lock) while iris_close() holds it.

After iris_close() finishes teardown and frees the instance, the response t=
hread
would be unblocked and attempt to access the freed memory and destroyed mut=
ex.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612-iris-ar50l=
t-v4-0-0abfb74d5b3c@oss.qualcomm.com?part=3D10

