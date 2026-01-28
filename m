Return-Path: <devicetree+bounces-260622-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2H43HAdzemme6gEAu9opvQ
	(envelope-from <devicetree+bounces-260622-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 21:35:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E93D4A8A37
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 21:35:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 10F1D3002E22
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 20:34:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6AD8328B78;
	Wed, 28 Jan 2026 20:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uP/54hZc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C481C2D4B77;
	Wed, 28 Jan 2026 20:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769632483; cv=none; b=sFYf46VFsn1eYV29Pli+67vxAs3QbNWtFUfeVIyo5n2ndLVQ48O7XUQG61GqvzYw9p6F/ZeorWIxdfX61u6rdumf+sK9U3aHC0Zioq+AJ8p82+FoHrkEHUQopda+P69qjr4auFJrgr4RV/5baFdXWYea5b/+A4P7hP+v3IexFB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769632483; c=relaxed/simple;
	bh=cmYuQlBDDUjfKDQHbd81D0K9u1pyvJ63sJDqKouExlY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gKJnSuVI4T9FL8AQNf6BFXPM8qKBqlvhknFf9SgO8Y4Sv2eIpVp6shxogCDwNlA8XbQSbkzCbHwJYEPzMK5lhvvuvZtZFrAISp/8o4av+5kyO7XJrc1xyuVgkUu6pLPrtDT1N36bLVIz+W8X3bujizXVXTxs0YjZWEyzylIBzYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uP/54hZc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 020BEC4CEF1;
	Wed, 28 Jan 2026 20:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769632483;
	bh=cmYuQlBDDUjfKDQHbd81D0K9u1pyvJ63sJDqKouExlY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uP/54hZc1216Iwwh9RQoZqekZgMZLdWPW1e0kXKk2wMfgd7UGFS7UTo6gFKTcMMQn
	 hZIByhYDwDTZKiNUkTcaeu3AXmBh7E7DObifFV/GO8vor6Xf42Ib3tvYYZmkMzgh0B
	 4yuJ3G0qTBbJ7QHytZ0AHY4oPZAZG8q1sf+a7mdP1SuDzarczYkBHhaDNFOKQMpCbB
	 lkSH6g05s2a14Q94vY52y8nTSsW15W9hunxjTihKGo8co3PFO37cYEhsj87LkWNqaK
	 Uhoa/P+4EI6HX4/zA5GM8M3ScKYehbcMuvWJgBsW89f8PmUF4UgEG7CcTPfVbozhfE
	 S4oHDYLC5vCsg==
Date: Wed, 28 Jan 2026 12:34:41 -0800
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
Message-ID: <aXpy4f9G9QKRh3Ts@x1>
References: <20260123092830.4046009-1-zhengxingda@iscas.ac.cn>
 <20260123092830.4046009-3-zhengxingda@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260123092830.4046009-3-zhengxingda@iscas.ac.cn>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260622-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,redhat.com,pengutronix.de,samsung.com,bootlin.com,disroot.org,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,icenowy.me];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[icenowy.me:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Queue-Id: E93D4A8A37
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 05:28:23PM +0800, Icenowy Zheng wrote:
> From: Icenowy Zheng <uwu@icenowy.me>
> 
> Verisilicon has a series of display controllers prefixed with DC and
> with self-identification facility like their GC series GPUs.
> 
> Add a device tree binding for it.
> 
> Depends on the specific DC model, it can have either one or two display
> outputs, and each display output could be set to DPI signal or "DP"
> signal (which seems to be some plain parallel bus to HDMI controllers).
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> ---
> Changes in v6:
> - Added Rob's R-b.
> 
> Changes in v5:
> - Dropped the requirement of port@0.
> - Dropped the if clause for TH1520, which seems to be not needed because
>   of implicit DT binding rules.
> 
> Changes in v4:
> - Added a comment for "verisilicon,dc" that says the ID/revision is
>   discoverable via registers.
> - Removed clock minItems constraint w/o specific compatible strings.
> 
> Changes in v3:
> - Added SoC-specific compatible string, and arm the binding with clock /
>   port checking for the specific SoC (with a 2-output DC).
> 
> Changes in v2:
> - Fixed misspelt "versilicon" in title.
> - Moved minItems in clock properties to be earlier than items.
> - Re-aligned multi-line clocks and resets in example.
> 
>  .../bindings/display/verisilicon,dc.yaml      | 122 ++++++++++++++++++
>  1 file changed, 122 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/verisilicon,dc.yaml

I've applied the bindings patches (1, 2, 4) to thead-dt-for-next as well
so that 'make W=1 dtbs_check' won't break for the next release of
linux-next.

https://git.kernel.org/pub/scm/linux/kernel/git/fustini/linux.git/log/?h=thead-dt-for-next

Please see my reply to patch 1 for the rest of my message.

Thanks,
Drew

