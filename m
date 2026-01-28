Return-Path: <devicetree+bounces-260592-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oITFEDtoemmB5gEAu9opvQ
	(envelope-from <devicetree+bounces-260592-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 20:49:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 90355A842C
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 20:49:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 669D030160FE
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 19:49:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EEC6369223;
	Wed, 28 Jan 2026 19:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkx+W8yk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C94E31A07C;
	Wed, 28 Jan 2026 19:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769629751; cv=none; b=isJ5uzYgZsHlPZWXbXOSMxCCfyfcTMeVdieE8Bzblak1Q0ssV8ex0/TsUlB70OwUCNyjPHNZGlettQtug6J4QNPNv0a94JIi0sOVBkRWmWqvq82HtE5uer87+9cw1uYY6+pe3QM41OAV/esn6hUBitLyVZyGxP8AhP2WUlEAD2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769629751; c=relaxed/simple;
	bh=ZgURDPXZxdlzY1nCr7dFdlPZ+CG+p3tih0XcJrBxJSc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ns8Rm1lmwpGfwMC6xZnrtvFoToar6tw94z7GvDcAFO8mjDMdH/5vEap4PVvDVqOYJo8LnHoZyhwllc27XwILceU+gh5Syyj0TxTA8qeACf/LmFoFnvoQC8MJ7j0ZaufV44e16M+QA2We25+LlYQTVR/BwKm/4NcNoCCc1xsC5Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkx+W8yk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 956C3C4CEF1;
	Wed, 28 Jan 2026 19:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769629751;
	bh=ZgURDPXZxdlzY1nCr7dFdlPZ+CG+p3tih0XcJrBxJSc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jkx+W8ykaiIAXPqelZuIfPFrrsGq5g6rbS4D8Jk/4FwLCUPyFtyLQbdRWVd5QVY0G
	 XOhZUqzVn1LqgIWGYrZDgEebxdC/KmN+dqrMiJ36UyI2+n1ywoBfPKW3kzUL4JwMSh
	 TWQu2/usGHuvucBrBEYtY1CuGbnwXZCIYuv9XxdIziZ1xHxgWV8GUsm4WaD8vJTtyI
	 ZjozH8/Y9OXlZkm/CQdngwr2lbuVJX3/CF01ddVSudhxRygFUhpXyXj8Bgbjk4WQim
	 HASeIQyrPngoVJoNEuDYWJ/Iq7mtUb/As6vyFCkXvux9Q53OAsVmr7xAByTYYFOlcx
	 bbpNtTZ7q9KSA==
Date: Wed, 28 Jan 2026 11:49:09 -0800
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
	Icenowy Zheng <uwu@icenowy.me>, Han Gao <gaohan@iscas.ac.cn>
Subject: Re: [PATCH v6 7/9] riscv: dts: thead: lichee-pi-4a: enable HDMI
Message-ID: <aXpoNTuziA2XOIuz@x1>
References: <20260123092830.4046009-1-zhengxingda@iscas.ac.cn>
 <20260123092830.4046009-8-zhengxingda@iscas.ac.cn>
 <aXpbBq3TwuiP9Qry@x1>
 <aXpnTDSowoW+8UzN@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aXpnTDSowoW+8UzN@x1>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260592-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,redhat.com,pengutronix.de,samsung.com,bootlin.com,disroot.org,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,icenowy.me,iscas.ac.cn];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[iscas.ac.cn:email,samsung.com:email,icenowy.me:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 90355A842C
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 11:45:16AM -0800, Drew Fustini wrote:
> On Wed, Jan 28, 2026 at 10:52:54AM -0800, Drew Fustini wrote:
> > On Fri, Jan 23, 2026 at 05:28:28PM +0800, Icenowy Zheng wrote:
> > > Lichee Pi 4A board features a HDMI Type-A connector connected to the
> > > HDMI TX controller of TH1520 SoC.
> > > 
> > > Add a device tree node describing the connector, connect it to the HDMI
> > > controller, and enable everything on this display pipeline.
> > > 
> > > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > > Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> > > Tested-by: Han Gao <gaohan@iscas.ac.cn>
> > > Tested-by: Michal Wilczynski <m.wilczynski@samsung.com>
> > > ---
> > > No changes in v5.
> > > 
> > > Changes in v4:
> > > - Rebased on top of v6.19-rc1.
> > > 
> > > No changes in v2, v3.
> > > 
> > >  .../boot/dts/thead/th1520-lichee-pi-4a.dts    | 25 +++++++++++++++++++
> > >  1 file changed, 25 insertions(+)
> > 
> > Reviewed-by: Drew Fustini <fustini@kernel.org>
> 
> I've applied this to tenstorrent-dt-for-next
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/fustini/linux.git/commit/?h=tenstorrent-dt-for-next&id=0075f4c3aade0d436925026eaefb14be1ec52a69
> 
> Hopefully we can get some testing done with a next release once the driver patches hit next.

Sorry about my typo mistake. The correct branch is thead-dt-for-next

https://git.kernel.org/pub/scm/linux/kernel/git/fustini/linux.git/log/?h=thead-dt-for-next

Thanks,
Drew

