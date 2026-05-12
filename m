Return-Path: <devicetree+bounces-296001-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDrRDsy0AmqSvwEAu9opvQ
	(envelope-from <devicetree+bounces-296001-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 07:04:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A7069519BC4
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 07:04:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AA4003025C4E
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 05:04:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6F5724BBFD;
	Tue, 12 May 2026 05:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MStb6cHn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C44E41DF980;
	Tue, 12 May 2026 05:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778562249; cv=none; b=V6dJrdY57T7loo7LBFS2Ttyae3xKhqqu8qBD9X5vWCkD3U60ZmicmHDCUI60yUNj2apvPalKRDEhYNDfdZnC8tpbvlXJnUj4rz9JVI+ye/WoNxrBIOYoO/D2+f+vSJ3yWnUN+ObB9jG4rMliyJKzx8UCbWZnlNcllOP89pg4M7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778562249; c=relaxed/simple;
	bh=ilE8n+6369yxTQpa1EIPOVg/Vp18pYXUnPQehwSix4g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ur8UxUUR+hgp4fZwV797yNXUDGzTNbCE/HSE2KGcdhEXreI3/sattQiHsGegenSw2JJijvy4ETYy33g8nkapF0LGZ+pDY1a0ykD2it0SyHCWFjj7YhtLMcXrNtKGYi8wfOpCTnx+cideTL1SQVtDSmCyTBDiHeAt79TiDuXkngg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MStb6cHn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C428EC2BCB0;
	Tue, 12 May 2026 05:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778562249;
	bh=ilE8n+6369yxTQpa1EIPOVg/Vp18pYXUnPQehwSix4g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=MStb6cHnH42cu3dC27Mba4Tm0BoLZ2J+Izijso4k43pNCxyh/ZxB6sszuBhlSpse8
	 5Zv/HpXR1xRKGlwUnkL5I7SBZo9DRShP4+YngW6bJKk3CAIYn8mu0nGoHNITKl4FvV
	 pLB7GfrILM8YLUJrbDY/m6s/2ZEGtufkxa6ZA2kkjLQe3Nv04h32SGCwdAhQEcO3RX
	 7EAlHR+D3pgiNWdfJqGxqKUJwtiiMFFB7DszuT2VBT6aJuLzcg46vxbfQjnDLCrInh
	 8qOpwm532KbH7Mhe15v+rlyM29hqLjaq+Im5pHUQheD/RE0GCK/1PrJ9/zseuXWv/M
	 DsMd7bwA5zlPw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 5/8] media: Documentation: Add NXP neoisp driver
 documentation
Reply-To: sashiko@lists.linux.dev
To: "Antoine Bouyer" <antoine.bouyer@nxp.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, krzk+dt@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev
In-Reply-To: <20260511132629.1300868-6-antoine.bouyer@nxp.com>
References: <20260511132629.1300868-6-antoine.bouyer@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 05:04:08 +0000
Message-Id: <20260512050408.C428EC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: A7069519BC4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-296001-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,smtp.kernel.org:mid,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Incorrect use of single backticks will cause Sphinx build warnings =
due to unresolved cross-references.
--

commit 930837ef3aa44bc2f8f8a827637c74321c6a1710
Author: Antoine Bouyer <antoine.bouyer@nxp.com>

media: Documentation: Add NXP neoisp driver documentation

This commit adds documentation for the NXP neoisp driver, describing its
hardware pipeline, media topology, and userspace API. It introduces new
ReST files and diagrams in the admin-guide and userspace-api sections.

> diff --git a/Documentation/admin-guide/media/nxp-neoisp.rst b/Documentati=
on/admin-guide/media/nxp-neoisp.rst
> new file mode 100644
> index 0000000000000..16117112b701e
> --- /dev/null
> +++ b/Documentation/admin-guide/media/nxp-neoisp.rst

[ ... ]

> +Neoisp driver
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +Neoisp driver is located under drivers/media/platform/nxp/neoisp.
> +It uses the `V4L2 API` and the `V4L2 subdev API` to register capture and=
 output
> +video devices in addition to a subdevice for neoisp that connects the vi=
deo
> +devices into a media graph realized using the `Media Controller (MC) API=
`.

This isn't a bug, but does the use of single backticks here cause Sphinx
build warnings?

In the kernel documentation environment, the default Sphinx role interprets
single backticks as cross-references. If there are no existing reference
targets for these strings, the build will emit undefined label warnings.

Should these use double backticks to format them as literal text instead?

[ ... ]

> +neoisp-params
> +-------------
> +
> +The neoisp-params output meta device receives configuration data to be w=
ritten
> +to Neoisp registers and internal memory for desired input image processi=
ng.
> +This v4l2 device accepts the generic `extensible parameters` format.

Could this single backtick usage for the extensible parameters format also
cause an undefined label warning?

[ ... ]

> +Control
> +=3D=3D=3D=3D=3D=3D=3D
> +
> +To support additional neoisp hardware revisions, the read-only bitmask c=
ontrol
> +`V4L2_CID_NEOISP_SUPPORTED_PARAMS_BLOCKS` can be used to query the list =
of
> +supported blocks. Each bit represents the availability of the correspond=
ing

Will this single backtick usage for V4L2_CID_NEOISP_SUPPORTED_PARAMS_BLOCKS
similarly trigger documentation build warnings?

[ ... ]

> diff --git a/Documentation/userspace-api/media/v4l/metafmt-nxp-neoisp.rst=
 b/Documentation/userspace-api/media/v4l/metafmt-nxp-neoisp.rst
> new file mode 100644
> index 0000000000000..5a1b0c555a03e
> --- /dev/null
> +++ b/Documentation/userspace-api/media/v4l/metafmt-nxp-neoisp.rst

[ ... ]

> +Extensible parameters configuration format
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +When using the `extensible parameters` configuration format, parameters =
are
> +passed to the :ref:`neoisp-params <neoisp_params>` metadata output video=
 node
> +using the `V4L2_META_FMT_NEO_ISP_EXT_PARAMS` meta format.

There are a few more instances of single backticks here. Should these be
converted to double backticks as well to avoid Sphinx warnings?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511132629.1300=
868-1-antoine.bouyer@nxp.com?part=3D5

