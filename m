Return-Path: <devicetree+bounces-304778-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id stwNOwmUG2pkEQkAu9opvQ
	(envelope-from <devicetree+bounces-304778-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 03:51:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E59E6142DC
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 03:51:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5958B301CCCB
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 01:51:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A49D6270545;
	Sun, 31 May 2026 01:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPK2ca9O"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B0501E492D;
	Sun, 31 May 2026 01:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780192262; cv=none; b=ccbr71DYh7Ah8OAqrTZJX/czpOs+VFssVkpO1hXUZH6lY/cWlvK9zFFHS8ri/u0kA/QjiQYmx/GZNFFfjyinkiJUpO3Vo0cFEyWCqoP1zAeInTqL3lXzBCJZqfqz8AxUgaSREcdiQATPUiCgfXnfoZDqDYoW7CDxzoSupKk8VBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780192262; c=relaxed/simple;
	bh=NnCTNyOtQG8eURv+/4EoUJyvF+ComXzLWLoR+HsnLmI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kWHJbscb9Lhd93ZJgG6mjh3D3ODIxeSoVaAhZynISXnwR0NOTum++nRhIensZHdCjz6Qcrc5Nyf03nOFhj+KnS668Nw0Zc66GxfD75G2LCu6UFli6w4vVWi65CSrIjGQgfjWVrgX1ET3YESfK44+HK+Y2gpknqYuMAfeO42cpeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPK2ca9O; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29CF71F00893;
	Sun, 31 May 2026 01:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780192261;
	bh=3BNHN5y1NNnauAXnA0ESNUQfHiGOMABpe/PgqrZPz9E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UPK2ca9O3MgWCoGqxp50neuqc9d6Y4sMkU2di7OFQqT0H2pLCPMMXneUG87vFwh2c
	 0j8oqZPUPksbxyRREGqx5tDjNp+6pymB4HaP6c0hNAvzEkcyTjx6Fkevj6r9IsFqKV
	 /O3G2P9Sh4EeNBI/BdGyEnV+0SWdXK7/U5loUdusOlPu0nfUF9cmbB0SvHAy2WHaRV
	 WOUe+h4Ea/H4uqNJl488LSJx8FvvLSPG8tGpMZG683uYgWQ19/JTTVza/0IWQ5PA2b
	 xKAsVHy5y9rr0TnUsGXYswjthSuqcJ1Ed0/yADeoHzjKNnEA0LiiW2/Mf7Aj735DA4
	 lBWNila1VKxig==
Date: Sat, 30 May 2026 18:50:50 -0700
From: Drew Fustini <fustini@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH RFC v5 13/18] riscv_cbqri: resctrl: Add MB_MIN bandwidth
 allocation via Rbwb
Message-ID: <ahuT-nUeUwLpzzaR@gen8>
References: <20260524-ssqosid-cbqri-rqsc-v7-0-v5-13-78d3a7ba9dbe@kernel.org>
 <20260525005523.D677A1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260525005523.D677A1F000E9@smtp.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-304778-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+]
X-Rspamd-Queue-Id: 3E59E6142DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 25, 2026 at 12:55:23AM +0000, sashiko-bot@kernel.org wrote:
> > +	case RDT_RESOURCE_MB_MIN:
> > +		/* sum(Rbwb) <= MRBWB validation runs inside cbqri_apply_rbwb(). */
> > +		return cbqri_apply_rbwb(dom->hw_ctrl, closid, cfg_val, true);
> 
> Does this validation approach leak bandwidth when groups are deleted?
> 
> When a resctrl group is deleted via rmdir, the CLOSID is returned to the free
> pool, but standard resctrl flows do not trigger an architecture-specific
> callback to reset the resource's value. 
> 
> Because cbqri_apply_rbwb() iterates over all RCIDs (including inactive ones)
> to enforce sum(Rbwb) <= MRBWB, the bandwidth assigned to deleted groups remains
> permanently accounted against the global MRBWB budget.
> 
> If a user deletes a group to free up bandwidth and tries to assign it to an
> active group, could it be falsely rejected with -EINVAL, effectively leaking
> that capacity until the exact CLOSID is randomly reused?

This is already listed in the open issues in the cover letter. The fix
would require some changes to resctrl core. I would prefer to work on
a patch series to address this issue after this series lands.

> > +static int cbqri_attach_cpu_to_one_bw_res(struct cbqri_controller *ctrl,
> > +					  enum resctrl_res_level rid,
> > +					  unsigned int cpu)
> > +{
> > +	struct cbqri_resctrl_res *hw_res = &cbqri_resctrl_resources[rid];
> > +	struct rdt_resource *res = &hw_res->resctrl_res;
> > +	struct rdt_ctrl_domain *domain;
> > +	int dom_id = ctrl->mem.prox_dom;

> Can this alias multiple memory controllers to a single domain?
> 
> A single NUMA node (proximity domain) can contain multiple memory controllers.
> If multiple bandwidth controllers share the same proximity domain, the first one
> processed will create a domain and assign its hw_ctrl pointer to it.
> 
> When the second controller is processed, cbqri_find_ctrl_domain() will match
> the existing dom_id, and simply add its CPUs to the cpu_mask without saving
> the second controller's hw_ctrl pointer.
> 
> Will subsequent schemata writes to this domain exclusively program the first
> bandwidth controller, leaving the second unmanaged by resctrl?

This is a known limitation that can be addressed in a future series.

> > -		err = cbqri_attach_cpu_to_cap_ctrl(ctrl, cpu);
> > +		}
> >  		if (err)
> >  			break;
> >  	}
> 
> This is a pre-existing issue, but does this leak domain state if an error
> occurs here?
> 
> If an attachment fails, the loop breaks and returns the error immediately. The
> CPU hotplug core catches the error and aborts the online state transition.
> However, it does not invoke the corresponding offline teardown callback because
> this state failed during its startup sequence.
> 
> Since cbqri_resctrl_online_cpu() fails to manually roll back the domain state
> for the controllers that successfully processed the CPU in earlier iterations,
> will the CPU remain permanently set in their cpu_mask?

I will change the next rev to track the last successfully attached
controller and detach in reverse on the error path.  

-Drew

