Return-Path: <devicetree+bounces-260590-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mPKwI1NnemmB5gEAu9opvQ
	(envelope-from <devicetree+bounces-260590-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 20:45:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC09A83D4
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 20:45:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 17D613007AFA
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 19:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C93B725DB12;
	Wed, 28 Jan 2026 19:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+zDLcEj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67A423D281;
	Wed, 28 Jan 2026 19:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769629518; cv=none; b=kzbuHSOhiT2DD/5mcKkw/5XtJTNHoGvS+yHGZibQXAYS+pg0fwcDVWO/Rq7Fb8U9qIXC/tjhpo6nE7F4QBGVhKHrAuwbaeQ8NghMbfIEo7KYpZHD0NLmfqW2hPtks7q964cGfv9a16wuaKX+EE33NgzbsxGvp5RO3Qw0nKdbZRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769629518; c=relaxed/simple;
	bh=bZ7dJ7gqhVeTmkm1nqjpOk6NE87IYlDZBHUJKo/GhV0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mBgaLntvo7HY5ztSNPH6KFbR6ibhWgiTYCwN51v5fkEInEpX5ugpqu/uYyp9fAfxdgong5csynhi46UK8cbEFkZY8u4bESaEcYJ6obpE7n23WN+t4JAQ3/MFcjIDtC8VkD+VMBQPXndYJRwRHmq1Etc8NSOoBH7GzTZFR71GLdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+zDLcEj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4D6BC4CEF1;
	Wed, 28 Jan 2026 19:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769629518;
	bh=bZ7dJ7gqhVeTmkm1nqjpOk6NE87IYlDZBHUJKo/GhV0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r+zDLcEjn6EhyS1eEIqj+F0YNY9xGGoJZNuWB67b5PhGL4hfyeaw0d/wYYmlvqVGl
	 EeIb3GqRWtIb1wonosEAACd4E+6EnuUFqNbO6sEzDX7jHm8aB+oWWxJXUJw0Y+riUm
	 Z5hgGV5qt6ybl3rAg7MoaUq9du/F3njB4YQ7kdVfw5KSxhfxRnpOR3Ml3KfT8UHXhT
	 wi35Gd2hfDxrPwRm0FGgOa6eGbtZJywcYVLJr27u+VZiHOxuZbcgadOH+IzR8vLfpa
	 Uldr92B5GbnHSha8B2bzrNtUez7AYPI2yy6EZrHrTlGf+y1idGxOs8tRX4kUtv1lMn
	 7FBQEIQu51YIQ==
Date: Wed, 28 Jan 2026 11:45:16 -0800
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
Message-ID: <aXpnTDSowoW+8UzN@x1>
References: <20260123092830.4046009-1-zhengxingda@iscas.ac.cn>
 <20260123092830.4046009-8-zhengxingda@iscas.ac.cn>
 <aXpbBq3TwuiP9Qry@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aXpbBq3TwuiP9Qry@x1>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260590-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[icenowy.me:email,iscas.ac.cn:email,samsung.com:email]
X-Rspamd-Queue-Id: BEC09A83D4
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 10:52:54AM -0800, Drew Fustini wrote:
> On Fri, Jan 23, 2026 at 05:28:28PM +0800, Icenowy Zheng wrote:
> > Lichee Pi 4A board features a HDMI Type-A connector connected to the
> > HDMI TX controller of TH1520 SoC.
> > 
> > Add a device tree node describing the connector, connect it to the HDMI
> > controller, and enable everything on this display pipeline.
> > 
> > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> > Tested-by: Han Gao <gaohan@iscas.ac.cn>
> > Tested-by: Michal Wilczynski <m.wilczynski@samsung.com>
> > ---
> > No changes in v5.
> > 
> > Changes in v4:
> > - Rebased on top of v6.19-rc1.
> > 
> > No changes in v2, v3.
> > 
> >  .../boot/dts/thead/th1520-lichee-pi-4a.dts    | 25 +++++++++++++++++++
> >  1 file changed, 25 insertions(+)
> 
> Reviewed-by: Drew Fustini <fustini@kernel.org>

I've applied this to tenstorrent-dt-for-next

https://git.kernel.org/pub/scm/linux/kernel/git/fustini/linux.git/commit/?h=tenstorrent-dt-for-next&id=0075f4c3aade0d436925026eaefb14be1ec52a69

Hopefully we can get some testing done with a next release once the driver patches hit next.

Thanks,
Drew


