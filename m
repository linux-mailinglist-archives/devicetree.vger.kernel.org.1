Return-Path: <devicetree+bounces-314205-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id H9kqFSTTOGqjigcAu9opvQ
	(envelope-from <devicetree+bounces-314205-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:16:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 130716ACE8D
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:16:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LQIaLMTV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314205-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314205-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2D02A3001059
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 06:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DBC23438AD;
	Mon, 22 Jun 2026 06:15:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2068623F40D
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 06:15:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782108958; cv=none; b=a/PpErP2hRtsDxjgkLDhfbMouWF76Cv0D57cgbfEIVNh9lENZ9yZ2BzBIKRJGakYHHdmBs8ZrdxTxBA4U32cP9O0y5UVkr+cNI0H3VJs4OqbEczFc7uAMYmOsPEUlUeNNcxDvDFDr/fGQmMK5IqZpRGbEB9ssSs0nbrDCk86+XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782108958; c=relaxed/simple;
	bh=PqLNf/utSwnBX2AaUsESfa4k1kzMtdBCC6LRWwXMpgg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=krD/APvyzy7CqW6dXg5MwThaaKfuX3jp7+ZI0GbO/n40s921DD6rAC6GVokzPvsAI8d7GN+5oYX6ZNT4wMKiIg9Elf4hsyoRvHTeEH+RFr4TR5Zu9QbJMOrIelt/bE/5fjsMm4g9zK2cI1AYO1O0ilfSjJIdhCsfz7ui00Jro2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQIaLMTV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A6F91F00A3A;
	Mon, 22 Jun 2026 06:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782108956;
	bh=/pZ53R0YGkzWY3PAyhHqHBbm2wMFix5gORYUtLyxWcg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LQIaLMTV163UViNHePc6xO5rM0GbUzHcEJ44v+Jl8uf6IDcTp5M0scxqjSwgtN7In
	 LaYRiexJ8f0r+tvJO67MIbwGFBMc9XwwgiUSypK0jBlRuQhrGuPjZNIkZI8F4LxkiD
	 ueWl13k9Aivg/dOc8C62FGPXEaw6Bg4orEh93BsZOcCed4mDnamscVI0wlZs6LE7SK
	 boD4w2TduTiCYv62otRBbhfnMFpxj1tEsbjYcsBQ5jMEFpMljyjV74Nw+tkfPNOQWr
	 DNG8H/ovjECclIpuYzKsMF0t+0m3N2uqIejuLmO4EkD2xrOkI3AovTnq8h7PE5jsGh
	 cfFO/g5aLl8Tw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: interconnect: qcom: document the RPMh
 Network-On-Chip interconnect in Maili SoC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Raviteja Laggyshetty" <raviteja.laggyshetty@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260622-maili_icc-v1-1-0aa8286e6748@oss.qualcomm.com>
References: <20260622-maili_icc-v1-0-0aa8286e6748@oss.qualcomm.com>
 <20260622-maili_icc-v1-1-0aa8286e6748@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 06:15:55 +0000
Message-Id: <20260622061556.6A6F91F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-314205-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:raviteja.laggyshetty@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qualcomm.com:email,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 130716ACE8D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Missing Compatible String / ID Space Collision for MMSS_NOC
--

commit 83d867b001ed2e53e22f1f16fa3aee0194837787
Author: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>

dt-bindings: interconnect: qcom: document the RPMh Network-On-Chip intercon=
nect in Maili SoC

Document the RPMh Network-On-Chip interconnect for the Qualcomm Maili SoC.

> diff --git a/Documentation/devicetree/bindings/interconnect/qcom,maili-rp=
mh.yaml b/Documentation/devicetree/bindings/interconnect/qcom,maili-rpmh.ya=
ml
> new file mode 100644
> index 0000000000000..3db8d8b23219f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interconnect/qcom,maili-rpmh.yaml
[ ... ]
> +properties:
> +  compatible:
> +    enum:
[ ... ]
> +      - qcom,maili-mc-virt
> +      - qcom,maili-mmss-noc
> +      - qcom,maili-nsp-noc
[ ... ]
> diff --git a/include/dt-bindings/interconnect/qcom,maili-rpmh.h b/include=
/dt-bindings/interconnect/qcom,maili-rpmh.h
> new file mode 100644
> index 0000000000000..e7a957a9d0f0e
> --- /dev/null
> +++ b/include/dt-bindings/interconnect/qcom,maili-rpmh.h
[ ... ]
> +#define MASTER_CAMNOC_HF			0
> +#define MASTER_MDP				1
> +#define SLAVE_MNOC_HF_MEM_NOC			2
> +
> +#define MASTER_CAMNOC_NRT_ICP_SF		0
> +#define MASTER_CAMNOC_RT_CDM_SF			1
> +#define MASTER_CAMNOC_SF			2

[Severity: High]
Since both the HF and SF blocks start at index 0 in the header, but only a
single compatible string (qcom,maili-mmss-noc) is defined in the YAML schema
to represent the mmss domain, will this cause ID space collisions?

If the driver combines both sets of endpoints into a single mmss_noc_nodes[]
array using these overlapping 0-based indices:

static struct qcom_icc_node * const mmss_noc_nodes[] =3D {
        [MASTER_CAMNOC_HF] =3D &qnm_camnoc_hf,
        [MASTER_CAMNOC_NRT_ICP_SF] =3D &qnm_camnoc_nrt_icp_sf,
        ...
};

won't the C compiler silently overwrite the HF nodes at indices 0, 1, and 2
with the SF nodes?

Does this mean the HF nodes will be lost from the driver's state, preventing
multimedia hardware from configuring its bandwidth?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260622-maili_icc-=
v1-0-0aa8286e6748@oss.qualcomm.com?part=3D1

