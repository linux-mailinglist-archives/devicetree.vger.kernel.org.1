Return-Path: <devicetree+bounces-257701-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBtKFLE4cGmgXAAAu9opvQ
	(envelope-from <devicetree+bounces-257701-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:23:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 034D94FB41
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:23:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 16901A2A003
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EAFF31DDB8;
	Wed, 21 Jan 2026 02:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0dT+Dvd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179E02F60A3;
	Wed, 21 Jan 2026 02:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768962079; cv=none; b=dXMl8Y7bEoHtBeK/gYa/oCwsSkxAxisxF3j5J58jVBIWEsDbOm6zVa2M82mTrO3Z8fl6BjqUS6n+PThcCD2JGCgUopefxAoMyzPV+VnS2YO9HAQnX5NHX9PbkPCgRFVzNTulZkgqBkN/hCDFw9dcWqP1tefdRfA750VYNVwREyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768962079; c=relaxed/simple;
	bh=j7waV8NWZBtuhNIY6TrRP+nVW1vx7BHTzf5Bh5U439w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M7NmTmGMhgmV+qboSqq4o4zXbF/aK5G+Ps0SuwhG/azkBfffM4ZrSFJczXNillgITLBGaGlKZFmiPLLrwtLCLSuReyxOWsTQY9TP2oXRcfp/IN4WZuJhi24J8WD9Qzwy+qVH2rPU6RDIDqbF8nyZxEhFXVDTJYMjQhnUeYkZZgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0dT+Dvd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 820ACC16AAE;
	Wed, 21 Jan 2026 02:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768962078;
	bh=j7waV8NWZBtuhNIY6TrRP+nVW1vx7BHTzf5Bh5U439w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y0dT+DvdxyNk7sHMlklvwtNBRATnVqp+LcOt79ZRKCFlY2stWywHTziP8aWB9Tp2P
	 QddRl1zKRfah8ixukRdy60c3nLahYvxjnqhDlo1fC60rJZNlPLFCIF+/205iDc6B1V
	 S7i9gSptjqviHQX9WTB23Pt4BsRCtkZxi9In8Rvn6QkawwrAT8u+I5IwDdfG0GQs8B
	 PWB1bOJpBT75zVhW/G0uzPnSAH4+j3PBkHY+dTqmvMQOhNzhHh27Iyinnxt4Msn/FI
	 Q4FihIF6uKe0BoeFWcCGn1ZYKtDX0ichSb/SZTVuBQuJP12mM8OPzaqgwF/FP2lZ20
	 BW8/IlX9ddLFQ==
Date: Tue, 20 Jan 2026 20:21:17 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Simona Vetter <simona@ffwll.ch>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	devicetree@vger.kernel.org, David Airlie <airlied@gmail.com>,
	Michal Wilczynski <m.wilczynski@samsung.com>,
	Guo Ren <guoren@kernel.org>, Drew Fustini <fustini@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Icenowy Zheng <uwu@icenowy.me>, Robert Foss <rfoss@kernel.org>,
	dri-devel@lists.freedesktop.org, Fu Wei <wefu@redhat.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Han Gao <rabenda.cn@gmail.com>, linux-riscv@lists.infradead.org,
	Dmitry Baryshkov <lumag@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Thomas Zimmermann <tzimmermann@suse.de>, Yao Zi <ziyao@disroot.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: Re: [PATCH v5 2/9] dt-bindings: display: add verisilicon,dc
Message-ID: <176896207692.1787158.10124540284354506229.robh@kernel.org>
References: <20260116043746.336328-1-zhengxingda@iscas.ac.cn>
 <20260116043746.336328-3-zhengxingda@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260116043746.336328-3-zhengxingda@iscas.ac.cn>
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linaro.org,bootlin.com,ffwll.ch,pengutronix.de,linux.intel.com,vger.kernel.org,gmail.com,samsung.com,kernel.org,intel.com,icenowy.me,lists.freedesktop.org,redhat.com,kwiboo.se,ideasonboard.com,lists.infradead.org,suse.de,disroot.org];
	TAGGED_FROM(0.00)[bounces-257701-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[28];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[iscas.ac.cn:email,icenowy.me:email,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 034D94FB41
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Fri, 16 Jan 2026 12:37:39 +0800, Icenowy Zheng wrote:
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
> ---
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
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


