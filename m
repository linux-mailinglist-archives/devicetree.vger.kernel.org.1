Return-Path: <devicetree+bounces-260656-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBvgG3KUemmC8AEAu9opvQ
	(envelope-from <devicetree+bounces-260656-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 23:57:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D11D1A9C92
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 23:57:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7075E301227F
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 22:57:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A189933065D;
	Wed, 28 Jan 2026 22:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APE1AEwT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E0D5258ED5;
	Wed, 28 Jan 2026 22:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769641070; cv=none; b=S80ZY1Vy0Vkd4ae2flliH9yt+6OFgV+9DrlV0JD5S4Im7qzsWsLjJKRclTP6gZYHh1liX7fX60Sy48MW1xnrGFGkEXe0L7Z7MvetOq1yFdT99mtpNBj3zVtCI/cAMvY3JaLyp9+B5jciBrASJKEvhtaF+ICxJTTSpv17tCiFrDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769641070; c=relaxed/simple;
	bh=zzDPxa7YTOuxLsTohGS9o5cD9aMxBThQMZVsekatb4k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mLV5NnK4l905NL6P21WnMO2x21r8h6jC9reiPxmgcGr5qviqZwyBUBiaDpjNPiZgPQepqUx/EYJCHyFp9Aj11B5OEaOql5dE1/Chl9AFZZLXaVWbZ74ks+J3/NgE5sOfR9j8TbqQJpFt5vJrFFyEtA4YmlbxD5y+1rm1n/lPrCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APE1AEwT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED2BAC4CEF1;
	Wed, 28 Jan 2026 22:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769641070;
	bh=zzDPxa7YTOuxLsTohGS9o5cD9aMxBThQMZVsekatb4k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=APE1AEwTUOcZZ+IQmP17cC9GRK94sU9OeZ/v7jHgkDwIOBOrZpB+vQtNnXrep80Bx
	 9sJacVWYQ6fmBBJQon+E4uhVlMmA4PsJDmWLnT3NmVaxKhDMcx59DvgL8JbahtGyJW
	 tlSCEoqsoDhTsndDt3Mqe3mZzNNWhVT/bJ9V+zWwFEMjT4xIYYmOxL/VmZ6jVouwE0
	 hHTPw5qCftlxbvrMn/eRhsu1c8GwkR6CkPfk1LtxyJmFEU7AYKXQWBFpdirjOxx5UK
	 vDnGnXzSxLwu5r8+nlH5COUoPzb0VzZcz4lcpKNrmrtfg/B+RkdZQleGKglPI+OANW
	 jQUhDbQJJfntQ==
Date: Wed, 28 Jan 2026 14:57:48 -0800
From: Drew Fustini <fustini@kernel.org>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Philipp Zabel <p.zabel@pengutronix.de>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Michal Wilczynski <m.wilczynski@samsung.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Han Gao <rabenda.cn@gmail.com>, Yao Zi <ziyao@disroot.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v6 2/9] dt-bindings: display: add verisilicon,dc
Message-ID: <aXqUbDw45ulf8c+s@x1>
References: <20260123092830.4046009-1-zhengxingda@iscas.ac.cn>
 <20260123092830.4046009-3-zhengxingda@iscas.ac.cn>
 <aXpy4f9G9QKRh3Ts@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aXpy4f9G9QKRh3Ts@x1>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260656-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,redhat.com,pengutronix.de,samsung.com,bootlin.com,disroot.org,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,icenowy.me];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: D11D1A9C92
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 12:34:41PM -0800, Drew Fustini wrote:
> On Fri, Jan 23, 2026 at 05:28:23PM +0800, Icenowy Zheng wrote:
> > From: Icenowy Zheng <uwu@icenowy.me>
> > 
> > Verisilicon has a series of display controllers prefixed with DC and
> > with self-identification facility like their GC series GPUs.
> > 
> > Add a device tree binding for it.
> > 
> > Depends on the specific DC model, it can have either one or two display
> > outputs, and each display output could be set to DPI signal or "DP"
> > signal (which seems to be some plain parallel bus to HDMI controllers).
> > 
> > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> > Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> > ---
> > Changes in v6:
> > - Added Rob's R-b.
> > 
> > Changes in v5:
> > - Dropped the requirement of port@0.
> > - Dropped the if clause for TH1520, which seems to be not needed because
> >   of implicit DT binding rules.
> > 
> > Changes in v4:
> > - Added a comment for "verisilicon,dc" that says the ID/revision is
> >   discoverable via registers.
> > - Removed clock minItems constraint w/o specific compatible strings.
> > 
> > Changes in v3:
> > - Added SoC-specific compatible string, and arm the binding with clock /
> >   port checking for the specific SoC (with a 2-output DC).
> > 
> > Changes in v2:
> > - Fixed misspelt "versilicon" in title.
> > - Moved minItems in clock properties to be earlier than items.
> > - Re-aligned multi-line clocks and resets in example.
> > 
> >  .../bindings/display/verisilicon,dc.yaml      | 122 ++++++++++++++++++
> >  1 file changed, 122 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/verisilicon,dc.yaml
> 
> I've applied the bindings patches (1, 2, 4) to thead-dt-for-next as well
> so that 'make W=1 dtbs_check' won't break for the next release of
> linux-next.
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/fustini/linux.git/log/?h=thead-dt-for-next
> 
> Please see my reply to patch 1 for the rest of my message.

I've dropped the yaml patches from thead-dt-for-next based on Conor's
advice. Patches 1, 2 and 4 can go through drm.

Drew

