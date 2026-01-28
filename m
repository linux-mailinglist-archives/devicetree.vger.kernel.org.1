Return-Path: <devicetree+bounces-260657-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kB1XMpKUemmC8AEAu9opvQ
	(envelope-from <devicetree+bounces-260657-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 23:58:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C17A9CB0
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 23:58:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F21DD3011851
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 22:58:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70E9C33E37A;
	Wed, 28 Jan 2026 22:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmMeCKXS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E67E313520;
	Wed, 28 Jan 2026 22:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769641103; cv=none; b=fcV1x4+bV+ERLuTQi4sNN7hEkFk0JolJj71Fiwxdflc0YOE9Cw9AQnGGlPyeu2PEff4uJzHNNjfrol/3gTxkcTvXd8C2QH4vQEVH28apq8BYwtyRn3K9wNMi2qvl/nhIq6tqhY3eSPEtzF36ezNDuSjmi+hHzqFFb1BFAmyZDPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769641103; c=relaxed/simple;
	bh=Z9OqPeF9IuAUdu1BeekUKKNyvo5WfxDHVzPt2apoXDU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C9us7cIdCUPvGJ8oVsFZMPNHAJPK7KFmJtA2dYLFPeeDLS9Rd5ANFfk4haWQ5DHvBMtNoTnYnMClUh6hFhLZ887FUmXOEF7DKQPVaoYGiidJ0uKbdak2kexDvm8CCt7+T/SBgCRoTfZkGjlLQMvt7dG63RwaDvuvZG0emW0j1Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmMeCKXS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55009C4CEF1;
	Wed, 28 Jan 2026 22:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769641102;
	bh=Z9OqPeF9IuAUdu1BeekUKKNyvo5WfxDHVzPt2apoXDU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pmMeCKXSIpP9RojxNRVcs7H1lP0xvQLj/J7xBmpBkM6vQOrrRbhWg6Wj4A95BnSiF
	 O1otSk2VEAJeIin0cfw6z3ZNBiXTFpQeMi1t8JmuNJqYRSIc9apZ/WHkCvUHTovATr
	 1FeOnna9f3hTBz4v6UWNmwRzw2lb2SRZ+55Se5862Z7w0GLTiRY2uVz5lFV+K5KL7M
	 JxM4+ZJg0iZgyi1tbxdU4FPL0zkNMJb/OJSyiDYpK/coqjb8ajQv24ghCJDzwW/0UB
	 H80PkBWiWFMGSjb2H3LDBd1U4RWSXHhrflJyCjeNyFJFsWulrwWKL7JDhBvitR7tWK
	 vpEbN8h6dZDoA==
Date: Wed, 28 Jan 2026 14:58:20 -0800
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
	Icenowy Zheng <uwu@icenowy.me>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v6 4/9] dt-bindings: display/bridge: add binding for
 TH1520 HDMI controller
Message-ID: <aXqUjLG9YdKSwh/2@x1>
References: <20260123092830.4046009-1-zhengxingda@iscas.ac.cn>
 <20260123092830.4046009-5-zhengxingda@iscas.ac.cn>
 <aXpzC8MnShvc0tJv@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aXpzC8MnShvc0tJv@x1>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260657-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,redhat.com,pengutronix.de,samsung.com,bootlin.com,disroot.org,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,icenowy.me];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 44C17A9CB0
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 12:35:23PM -0800, Drew Fustini wrote:
> On Fri, Jan 23, 2026 at 05:28:25PM +0800, Icenowy Zheng wrote:
> > From: Icenowy Zheng <uwu@icenowy.me>
> > 
> > T-Head TH1520 SoC contains a Synopsys DesignWare HDMI controller paired
> > with DesignWare HDMI PHY, with an extra clock gate for HDMI pixel clock
> > and two reset controls.
> > 
> > Add a device tree binding to it.
> > 
> > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > ---
> > No changes since v3.
> > 
> > Changes in v2:
> > - Re-aligned multi-line clocks/resets in example.
> > - Added Krzysztof's R-b.
> > 
> >  .../display/bridge/thead,th1520-dw-hdmi.yaml  | 120 ++++++++++++++++++
> >  1 file changed, 120 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/thead,th1520-dw-hdmi.yaml
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

