Return-Path: <devicetree+bounces-271795-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMNVGUcpqmmQMQEAu9opvQ
	(envelope-from <devicetree+bounces-271795-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 02:09:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CED2D21A271
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 02:09:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 841FD3065337
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 01:08:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D24B301717;
	Fri,  6 Mar 2026 01:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVBdL4Jb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D532F25F3;
	Fri,  6 Mar 2026 01:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772759256; cv=none; b=ALCdWgQLLlbUSNK2DpNt1jSAwUNiyAetWAvHjreVEUsHUvISSIrmfsu83OmsaBGBOrd4bm9v+xAT89U8PxaY1WM+Rs+nE1mr4UaupTO7hSCd6YOQbOs+9HkFjGuYWvu7cPnI/N+Ei2n0slvWChcXQaAvahpZ2yBWs6CylaDa+d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772759256; c=relaxed/simple;
	bh=z4HAlmfWQOzRiBcoGIB7Q03RvJNuqThL39CBgE2qsQU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Lxd7Z08TO34a/0RAHSj6rCwLNLmqUphS9L/rMNRNohyIXHn5pj1sNUxZfIi/xMJ0zwJECjn7btjaHpV3vkdM93+nPFNjethtIf4K/+dfNpiTmH9vIA/hseQh2rbT44H8UpNXIML+SV8Fhv9CcJowtSDDCDIej9x6n6o5cXWAbfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVBdL4Jb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDE7BC116C6;
	Fri,  6 Mar 2026 01:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772759256;
	bh=z4HAlmfWQOzRiBcoGIB7Q03RvJNuqThL39CBgE2qsQU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EVBdL4JbvNDpAyuFRvZ4/vfZMSnu/DOz00U914ktPjcw25bz52wXCvzP6ewL5u6R5
	 Nx7uVkwPkXEP//pyRcA2eI1OLDS1VwRRzl+c4dV/Cdxolaf7GgEJsz5MgP1gUrSfeD
	 VU3koytaulSA8xghO/zH0OymywkkRdjnuu2N6v4vQcLOZ1ueg6Uw5kMp2VzijUqK5d
	 qIFFD6RZYUIQM+QB3c+1ctLSWojQ64qRo8dX3Bh+mGaTDMf6RDtO+6vxacaipPCp0G
	 zEaeTrAO4YQYJCt5BpK/cn5xZvpwbb2uEyab5r8eKA19i1U668Fo8aVvW8oDWBdmlI
	 A5KDJ4s3leZJg==
Date: Thu, 5 Mar 2026 19:07:34 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: James Calligeros <jcalligeros99@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
	imx@lists.linux.dev, Mark Brown <broonie@kernel.org>,
	Kevin Lu <kevin-lu@ti.com>, Baojun Xu <baojun.xu@ti.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	asahi@lists.linux.dev, Shenghao Ding <shenghao-ding@ti.com>,
	linux-sound@vger.kernel.org, Jaroslav Kysela <perex@perex.cz>,
	Shawn Guo <shawnguo@kernel.org>,
	Shengjiu Wang <shengjiu.wang@nxp.com>, devicetree@vger.kernel.org,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Takashi Iwai <tiwai@suse.com>, Frank Li <Frank.Li@nxp.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 2/7] ASoC: dt-bindings: update tdm-slot.txt references
 to tdm-slot.yaml
Message-ID: <177275925396.907435.14412144819851551606.robh@kernel.org>
References: <20260301-tdm-idle-slots-v3-0-c6ac5351489a@gmail.com>
 <20260301-tdm-idle-slots-v3-2-c6ac5351489a@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260301-tdm-idle-slots-v3-2-c6ac5351489a@gmail.com>
X-Rspamd-Queue-Id: CED2D21A271
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271795-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,lists.linux.dev,ti.com,renesas.com,vger.kernel.org,perex.cz,nxp.com,pengutronix.de,suse.com,lists.infradead.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action


On Sun, 01 Mar 2026 18:05:21 +1000, James Calligeros wrote:
> Ensure that all references to tdm-slot.txt have been updated to
> tdm-slot.yaml, and are schema-compliant.
> 
> Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
> ---
>  .../bindings/sound/imx-audio-card.yaml   |  9 +++------
>  .../bindings/sound/simple-card.yaml      | 14 ++------------
>  2 files changed, 5 insertions(+), 18 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


