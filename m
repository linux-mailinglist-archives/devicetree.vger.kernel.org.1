Return-Path: <devicetree+bounces-302393-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEkZEkqdE2qhEAcAu9opvQ
	(envelope-from <devicetree+bounces-302393-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 02:52:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A9D5C50F6
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 02:52:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 133CD3005E8F
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 00:52:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24D8A1FDE31;
	Mon, 25 May 2026 00:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxK/63wL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C1E1FCFEF
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 00:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779670342; cv=none; b=IFNHZi1N8fuLwYGYUyyA5i7pwqfvAF7Xh4sJlm1oJaRtOZSSPkDfr+Zt5eumJK5HPE/avNufXc9j6RvMmgvMtAdkfdKPQ4g2YUyB7MR1KqIkV5TLszEgDZI/uU5W9bb5NUdjVmyEX4wMo7CSR8zFtyYH8jYDQpJUtrDoRFqiJTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779670342; c=relaxed/simple;
	bh=TVUPJvE6YIFBAFxmEDbJHRIOwSTjy/hKl/BS6FClx3U=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Fc/QZdcw/lEFRg7m8I5fe1YU1Yn4ZiN3XD0Zw2rtiOkTq+e/Ae80tQrGdxsKE5HUG33iw6EU//Zb8qkuAYXuhbz39Al8sNfxqhjZBChSnvZpuilOlZ5zsFnWIpDMgDPJkt3fkZXpQoYJRWh/bhJDJuOU+p11QHAA6ryxbjrlUD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxK/63wL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 224851F000E9;
	Mon, 25 May 2026 00:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779670340;
	bh=gv4tUZso85Bma7W6T8efuCIFoJ5cLTgkvYLPDZJWHpA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YxK/63wLLzL7bjkGX+XMZJ6RmBK4HGTPwkZRNW+k3BuTXN2/xm8sS/+yH6Lh2sH3G
	 BXdBr2vV6oWLow0SnoLJfr+fdpVFD/kF+w0/sPcabBF11mssxz5p8qHFGHANdK8Ohu
	 wHi1iBq4mzMj9/bFQIfxPa1tgyltKnh7hjG536NuZt1bQqFvSdfotZ5lKKfc7peOPH
	 JZHOBte0z3pM9ulL87lHgAWzbqDL9PPf07hwku6DfqKRW6542vrcgK/Zli4yxoa5WQ
	 /Fm4UfPRIqvicCgMJVAAasB/Pz5mhZMutWrsAjTRJPKnaI18dSYIwRNjA96hMrz2cv
	 jxySavQy0N/zg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v5 14/18] riscv_cbqri: resctrl: Add MB_WGHT
 bandwidth allocation via Mweight
Reply-To: sashiko-reviews@lists.linux.dev
To: "Drew Fustini" <fustini@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260524-ssqosid-cbqri-rqsc-v7-0-v5-14-78d3a7ba9dbe@kernel.org>
References: <20260524-ssqosid-cbqri-rqsc-v7-0-v5-14-78d3a7ba9dbe@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 00:52:19 +0000
Message-Id: <20260525005220.224851F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-302393-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: B5A9D5C50F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [High] If `cbqri_attach_cpu_to_bw_ctrl()` fails to attach the CPU to `RDT=
_RESOURCE_MB_WGHT`, the previously successful attachment to `RDT_RESOURCE_M=
B_MIN` is not rolled back, leading to a domain cpumask and memory leak.

Pre-existing issues:
- [High] If the controller iteration in `cbqri_resctrl_online_cpu` encounte=
rs an error midway, earlier successfully attached controllers are not detac=
hed, causing domain leaks on partial CPU bringup failure.
--

commit e6b193d2dcc8f7ab213d18abdb79919066dddd04
Author: Drew Fustini <fustini@kernel.org>

riscv_cbqri: resctrl: Add MB_WGHT bandwidth allocation via Mweight

This patch adds bandwidth allocation through Mweight, exposed as the MB_WGHT
resource. It configures the shared weight for unreserved bandwidth, handling
initialization and resource attachment.

> diff --git a/drivers/resctrl/cbqri_resctrl.c b/drivers/resctrl/cbqri_resc=
trl.c
> index 5d8389c58f4fe..ba764bc6ef176 100644
> --- a/drivers/resctrl/cbqri_resctrl.c
> +++ b/drivers/resctrl/cbqri_resctrl.c
[ ... ]
> @@ -1019,7 +1065,13 @@ static int cbqri_attach_cpu_to_one_bw_res(struct c=
bqri_controller *ctrl,
>  static int cbqri_attach_cpu_to_bw_ctrl(struct cbqri_controller *ctrl,
>  				       unsigned int cpu)
>  {
> -	return cbqri_attach_cpu_to_one_bw_res(ctrl, RDT_RESOURCE_MB_MIN, cpu);
> +	int err;
> +
> +	err =3D cbqri_attach_cpu_to_one_bw_res(ctrl, RDT_RESOURCE_MB_MIN, cpu);
> +	if (err)
> +		return err;
> +
> +	return cbqri_attach_cpu_to_one_bw_res(ctrl, RDT_RESOURCE_MB_WGHT, cpu);
>  }

[Severity: High]
If cbqri_attach_cpu_to_one_bw_res() fails for RDT_RESOURCE_MB_WGHT, does
this leave the CPU permanently attached to the RDT_RESOURCE_MB_MIN domain?

Since the CPU hotplug core expects a startup callback to either fully succe=
ed
or completely roll back its progress on error, returning an error here skips
the teardown callback. It looks like this might leak the domain structure if
a new one was allocated, and leave the CPU in the domain's cpumask.

[Severity: High]
This is a pre-existing issue, but looking at the caller
cbqri_resctrl_online_cpu(), there appears to be a similar problem with the
controller iteration:

drivers/resctrl/cbqri_resctrl.c:cbqri_resctrl_online_cpu() {
	...
	list_for_each_entry(ctrl, &cbqri_controllers, list) {
		switch (ctrl->type) {
		...
		case CBQRI_CONTROLLER_TYPE_BANDWIDTH:
			...
			err =3D cbqri_attach_cpu_to_bw_ctrl(ctrl, cpu);
			break;
		}
		if (err)
			break;
	}

	mutex_unlock(&cbqri_domain_list_lock);
	return err;
}

If the loop terminates early due to an error, are the domains that were
successfully attached in earlier iterations left without being detached? Li=
ke
the issue above, the offline callback won't be called, potentially leaking
the domain allocations.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260524-ssqosid-cb=
qri-rqsc-v7-0-v5-0-78d3a7ba9dbe@kernel.org?part=3D14

