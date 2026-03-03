Return-Path: <devicetree+bounces-270307-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 5NE6Isx/pmmIQgAAu9opvQ
	(envelope-from <devicetree+bounces-270307-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 07:29:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F311E99CA
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 07:29:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 03AAE301FA79
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 06:29:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B96F3845AE;
	Tue,  3 Mar 2026 06:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNs+Wm1p"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47195382F34;
	Tue,  3 Mar 2026 06:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772519369; cv=none; b=QkIWxbMEQUl7+d5vs2XUQmpt15PrzR6bHhFoVHTMSdMmnQqc4Wvz7iehdPPOWJqQzR12ulMTXvejbFCD7moeQVjxRKReT1+QYfPWv/NGaf3t1sY0y/EyBdEw7YhB7tVaTwVQZnXZSZkQTP3T01BWj2G/6orGLNcAVtQCfhNbDdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772519369; c=relaxed/simple;
	bh=5abjydbR2o2kDpt9qy1QsvIxQSJuSadiUkyd9a52o1o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fljchMIdP37NysiZ2muV+lEewOnzve/zEvuKKkXiusP7yDDZ1ZOpfgjrkCZ+D6DQy89N+FXDkuurNULA8oOkFl+S6pIQFlHdhELynywtj5N0gj5qIrdOAJs3KrQxKQ7+spHc5sjtr3JVDd538ig6M2SxAgOU3FfYQFpLv+OJ2Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNs+Wm1p; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EEB5C116C6;
	Tue,  3 Mar 2026 06:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772519368;
	bh=5abjydbR2o2kDpt9qy1QsvIxQSJuSadiUkyd9a52o1o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FNs+Wm1pc5cSQBhGTmMJeP7pavfldunco2Aih3N+eGceVA3U7npiyV81leybAN0GU
	 MCLVi9Mdbhqg7nhK2E4ZXakJHzzWnkxaVXhSv7fZYjA6U//gvxFbm5xU3eYWcuy/Ea
	 ebpFgoBfDii/MFIzDDelqTh94svGWkfFdX11J+qc7GzmHnIrBei+vyZfg2v4dzT2SI
	 ZtkllWYg988D+4Ql+ejikRJ7wc1fqWnAv2DAWcZGFryzdtinPLSBv7/fGeFKfN8tLi
	 brK7KPVSPjs1p5z4bTkx5AF46Iks3eRt1p0ZprZECqptsTzL9mMUm1TmRVpZTEKXS5
	 v8r6RLOdLwVYw==
Date: Tue, 3 Mar 2026 07:29:26 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gary Yang <gary.yang@cixtech.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	p.zabel@pengutronix.de, peter.chen@cixtech.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	cix-kernel-upstream@cixtech.com
Subject: Re: [PATCH v10 1/3] dt-bindings: soc: cix: document the syscon on
 Sky1 SoC
Message-ID: <20260303-blond-oriole-from-jupiter-f1ab6e@quoll>
References: <20260302064407.1914014-1-gary.yang@cixtech.com>
 <20260302064407.1914014-2-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260302064407.1914014-2-gary.yang@cixtech.com>
X-Rspamd-Queue-Id: C5F311E99CA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270307-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,cixtech.com:email]
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 02:44:05PM +0800, Gary Yang wrote:
> There are two system control on Cix sky1 Soc. One is located in S0 domain,
> and the other is located in S5 domain. The system control contains resets,
> usb typeC and more. At this point, only the reset controller is embedded
> as usb typeC uses it by phandle.
> 
> Signed-off-by: Gary Yang <gary.yang@cixtech.com>
> ---
>  .../soc/cix/cix,sky1-system-control.yaml      |  42 +++++
>  .../reset/cix,sky1-s5-system-control.h        | 163 ++++++++++++++++++
>  .../reset/cix,sky1-system-control.h           |  41 +++++
>  3 files changed, 246 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml
>  create mode 100644 include/dt-bindings/reset/cix,sky1-s5-system-control.h
>  create mode 100644 include/dt-bindings/reset/cix,sky1-system-control.h

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


