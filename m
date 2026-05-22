Return-Path: <devicetree+bounces-301614-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0EjTHUgQEGq4TAYAu9opvQ
	(envelope-from <devicetree+bounces-301614-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 10:14:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EB30F5B0643
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 10:13:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 687413011A5C
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 08:13:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86D063A63E3;
	Fri, 22 May 2026 08:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mba+IE6q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587731E0E14;
	Fri, 22 May 2026 08:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779437636; cv=none; b=Kapm/40i7JHAnGYTRG9gUSg+0DwFzJnu+ExIHO28PGcYWj3xcFcSm57Z3FlB5sJJGmq00RRcpPLP3PsRqG/pQX3kOcLMKCVgBjAG/IvzaV8mo5PE3YuqLDC86DLNZVOHYbldKz11hDuE03rOSleCnWQLOLDJ/t0MKyDhKlInUDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779437636; c=relaxed/simple;
	bh=QOfyWjoFDL0iUEM3Z2IUv9h8d7R3fVeJavSwjgogpVk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dL7AYR8FPcNJgPlFJOQ4A+X0lvkRk64ptDN9Ald/6RSqN7xJ4MCSD9yNIMFciJRIc77TsvBJgckiywJ/GxzlXS4Ag1vq+f9dqwdWyBCFA3LPrD3T7jRnpqxVWVtsDdB8TXqDJCs3Q73DLdgetjLI2H3lfOrWd11IAjlvlUY7eQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mba+IE6q; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 521CF1F000E9;
	Fri, 22 May 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779437635;
	bh=YkCRRip3ZtybS0qSHPGgubSoejD0MPhWAJiCNjGYLTY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Mba+IE6qgWCjGrtO2pIH/FC2LojQQIgomf3Qp6/iCmUliFb9t7YWFS3L+MXFaHYXC
	 Uiq6OTUrVxAtHm5zCvPAm06k9qObbms1Iiq/JNH5/qCX6wjDW9CF4/zCXy/QyTJLG5
	 pmb6E7XmrtboVK40r2rmK4TlqhfJUrOldpwRb1IuQJDIegfQ2dJ6sFQZ+F/rsikeQX
	 pzLCaJCBOPaXV47QRvBi21315cntdP0YAATlYgFNtnpdfgLqTIwSXWddLiCT72jH5t
	 OzCQD4BBoUEqCLgHjR02s40TDDpgbQt8E+wCqmARNbomgGPbJ3nagCaJFqszv8Bzby
	 u20Mv2auNSTHQ==
Date: Fri, 22 May 2026 13:43:50 +0530
From: Sumit Garg <sumit.garg@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v6 02/16] firmware: qcom: Add a generic PAS service
Message-ID: <ahAQPsMdoDFXgL7g@sumit-xelite>
References: <20260518072856.22790-3-sumit.garg@kernel.org>
 <20260519073348.B9F5BC2BCC6@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260519073348.B9F5BC2BCC6@smtp.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-301614-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sumit.garg@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Queue-Id: EB30F5B0643
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 19, 2026 at 07:33:48AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 3 potential issue(s) to consider:
> - [High] TOCTOU race condition and missing memory barriers on global `ops_ptr` accesses
> - [High] Race condition in `qcom_pas_ops_register()` allows silent overwrites and NULL pointer dereference
> - [High] Use-After-Free vulnerability due to missing module lifetime synchronization
> --
> 
> commit 2f5e5371b4bb3e1c42fab23cd3a647eabe758865
> Author: Sumit Garg <sumit.garg@oss.qualcomm.com>
> 
> firmware: qcom: Add a generic PAS service
> 
> This commit introduces a generic Peripheral Authentication Service layer for
> Qualcomm platforms. It acts as a common interface for different TrustZone
> backends to support both SCM and TEE bus-based PAS services.
> 
> Reviewed-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> Tested-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com> # Lemans
> Reviewed-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
> Signed-off-by: Sumit Garg <sumit.garg@oss.qualcomm.com>
> 
> > diff --git a/drivers/firmware/qcom/qcom_pas.c b/drivers/firmware/qcom/qcom_pas.c
> > new file mode 100644
> > index 0000000000000..bc6c42f2b3c61
> > --- /dev/null
> > +++ b/drivers/firmware/qcom/qcom_pas.c
> [ ... ]
> > +int qcom_pas_init_image(u32 pas_id, const void *metadata, size_t size,
> > +			struct qcom_pas_context *ctx)
> > +{
> > +	if (!ops_ptr)
> > +		return -ENODEV;
> > +
> > +	return ops_ptr->init_image(ops_ptr->dev, pas_id, metadata, size, ctx);
> > +}
> 
> Could a race condition occur here if qcom_pas_ops_unregister() is called
> concurrently? The global ops_ptr is read twice via plain C reads. If it
> becomes NULL after the check, the second read might cause a NULL pointer
> dereference.
> 
> Also, since there is no smp_load_acquire() or READ_ONCE() used to cache the
> pointer locally, could weakly ordered architectures observe a non-NULL
> ops_ptr but read uninitialized callback pointers?

PAS backend isn't expected to unregister during the boot power cycle.

> 
> [ ... ]
> > +void qcom_pas_ops_register(struct qcom_pas_ops *ops)
> > +{
> > +	if (!qcom_pas_is_available())
> > +		/* Paired with smp_load_acquire() in qcom_pas_is_available() */
> > +		smp_store_release(&ops_ptr, ops);
> > +	else
> > +		pr_err("qcom_pas: ops already registered by %s\n",
> > +		       ops_ptr->drv_name);
> > +}
> 
> What happens if two backend drivers attempt to register concurrently?
> The check in qcom_pas_is_available() and the subsequent store do not seem
> to be protected by a lock or atomic operation, which might allow the second
> driver to silently overwrite the first.

Only one PAS backend is expected to be supported on a system.

> 
> Furthermore, if the else branch executes, and a concurrent thread
> unregisters the ops immediately after the check, could ops_ptr->drv_name
> trigger a NULL pointer dereference?
> 
> > diff --git a/drivers/firmware/qcom/qcom_pas.h b/drivers/firmware/qcom/qcom_pas.h
> > new file mode 100644
> > index 0000000000000..8643e2760602e
> > --- /dev/null
> > +++ b/drivers/firmware/qcom/qcom_pas.h
> [ ... ]
> > +struct qcom_pas_ops {
> > +	const char *drv_name;
> > +	struct device *dev;
> > +	bool (*supported)(struct device *dev, u32 pas_id);
> 
> Is there a risk of a use-after-free here if the backend module is unloaded
> while its callbacks are actively executing?
> 
> It doesn't appear that the framework pins the backend module using an owner
> field and try_module_get(), or waits for ongoing callbacks to finish before
> unregistration completes.

The PAS backend isn't expected to be unloaded at runtime.

-Sumit

