Return-Path: <devicetree+bounces-301735-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EH4eA0I3EGoaVAYAu9opvQ
	(envelope-from <devicetree+bounces-301735-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 13:00:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B055B2A3A
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 13:00:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9894F300DDD2
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 10:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3658A3D3309;
	Fri, 22 May 2026 10:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRSGtGAL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103BB3CD8A7;
	Fri, 22 May 2026 10:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779447066; cv=none; b=Vx0njEAICSxiIOwHKIqJDM8ZrM73pVPZ7oUH470JU/XaqySwR8tHURgJ7WgV5eK8EWd3XiZshn/M1e6SUZ1Y0+WWHVYv7JEvKKBlOK24Vy3VG7VpvOyOWTdsT3U4DkmdDa1Da4+S38PnfK/ePWnbQJoD2/mpIJe9NiOGY3Hhtg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779447066; c=relaxed/simple;
	bh=n2eO0k15tIVOW/R0+8tICeYPB6zukObNDEjnaX7z1Ko=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Nu/e3x3ALcssj7H7NPaTrhNfaYspxh0AhZeXxwvC01uojk52tbxndIfYeonpm8hYW1F+BHzR9x9MymJsiWL/QhVHEc7FBXaacRwEwACGwh/DDVP9GNwgdJDCTWnoiJAsxADZvFyxxD8o8OSTS9nfZfD2PaDzEjXmoyrLs04g+0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRSGtGAL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECB1C1F000E9;
	Fri, 22 May 2026 10:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779447064;
	bh=5XPKKbrkbwNedQxyDdcPawT5KNd4hk8x4917hbL7/Cg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=CRSGtGAL/szEhGTisGLoufICmiHnzuxz+l3YOAp/Sg5vrSfLDyaRqnsJ4nPtO/4DH
	 R9MTg8bQgAjG8RNrPDwbB/AW+6Z13sskv4IYgEMclAotbhE4Gl+pUd5bhMt1xP6sDY
	 kUNnRnWraqnwsbqJDMiy/4wBmA0muuVxyFmZRxBfO6VfOjKGvGwO42nOFr7eOkkT+W
	 WnXp6oP57USMpCeXaLxzqG0bZWai/Mvg+zKcoaoNp92LlGrC/hfexLscd5veURZp6y
	 FfMR71WqXc0pEZogqrO7z5omdCXwy/654FOHUZ2JRfhD6CzrBCfyhXuhZd3qs+ZyMp
	 5urW2qyeawVFg==
Date: Fri, 22 May 2026 16:21:00 +0530
From: Sumit Garg <sumit.garg@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v6 14/16] wifi: ath12k: Switch to generic PAS TZ APIs
Message-ID: <ahA1FPgEuL5CUpwJ@sumit-xelite>
References: <20260518072856.22790-15-sumit.garg@kernel.org>
 <20260519073409.91EC8C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260519073409.91EC8C2BCB3@smtp.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-301735-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Queue-Id: 64B055B2A3A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 19, 2026 at 07:34:08AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] The transition from `QCOM_SCM` to the generic `QCOM_PAS` framework introduces an asynchronous probing bug where `ath12k` fails to check if the PAS backend is available, causing permanent probe failures.
> --
> 
> commit 9d619dc2a0265a4c4b222e1e790293c324c3c591
> Author: Sumit Garg <sumit.garg@oss.qualcomm.com>
> 
> wifi: ath12k: Switch to generic PAS TZ APIs
> 
> This commit switches the ath12k client driver over to the generic PAS TZ
> APIs. This abstracts the TZ implementation, allowing the driver to support
> multiple backends such as the QTEE based SCM PAS service or OP-TEE based
> PAS service.
> 
> > diff --git a/drivers/net/wireless/ath/ath12k/ahb.c b/drivers/net/wireless/ath/ath12k/ahb.c
> > --- a/drivers/net/wireless/ath/ath12k/ahb.c
> > +++ b/drivers/net/wireless/ath/ath12k/ahb.c
> 
> [ ... ]
> 
> > @@ -420,7 +420,7 @@ static int ath12k_ahb_power_up(struct ath12k_base *ab)
> >  
> >  	if (ab_ahb->scm_auth_enabled) {
> >  		/* Authenticate FW image using peripheral ID */
> > -		ret = qcom_scm_pas_auth_and_reset(pasid);
> > +		ret = qcom_pas_auth_and_reset(pasid);
> >  		if (ret) {
> >  			ath12k_err(ab, "failed to boot the remote processor %d\n", ret);
> >  			goto err_fw2;
> 
> Does this change introduce an asynchronous probing failure?
> 
> Since the generic QCOM_PAS layer allows its backends (like QCOM_SCM or
> QCOM_PAS_TEE) to be built as loadable modules, the ath12k_ahb driver might
> probe before the backend has registered its operations.
> 
> If that happens, qcom_pas_auth_and_reset() returns -ENODEV:
> 
> drivers/firmware/qcom/qcom_pas.c:qcom_pas_auth_and_reset() {
> 	if (!ops_ptr)
> 		return -ENODEV;
> 
> 	return ops_ptr->auth_and_reset(ops_ptr->dev, pas_id);
> }
> 
> Because this returns -ENODEV instead of -EPROBE_DEFER, the ath12k_ahb driver
> will treat this as a fatal hardware initialization error. The kernel driver
> core will not retry the probe, resulting in a permanent failure.
> 
> Should the driver be updated to check if the PAS backend is available and
> explicitly return -EPROBE_DEFER if it is not yet registered?

QCOM_SCM was already allowed to be built as a module, so not in scope of
this patch-set.

-Sumit

> 
> -- 
> Sashiko AI review · https://sashiko.dev/#/patchset/20260518072856.22790-1-sumit.garg@kernel.org?part=14

