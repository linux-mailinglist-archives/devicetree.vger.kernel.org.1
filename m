Return-Path: <devicetree+bounces-280675-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id JDl3JUYVxGlAwQQAu9opvQ
	(envelope-from <devicetree+bounces-280675-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 18:03:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 51872329896
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 18:02:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EC69230E2733
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 16:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 902763FCB28;
	Wed, 25 Mar 2026 16:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpjKqgz5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78893FCB00;
	Wed, 25 Mar 2026 16:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774457626; cv=none; b=AEAehtY9aYeulWZmPwxsiCTn9O4gxwaAGTD2QKLdHgsad4AxuRQ6fH910YB/L/BuFAH0Va50PGSRsLN3zde7b4vcNS8B8RXL/8PCz528HdvxSxLjFM/Tz5AVWV0JP51yha33uVNVoM2B4HoCMvDiiXWtuuOgzCET3wm6a9KoQqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774457626; c=relaxed/simple;
	bh=Rhut/ar+8LaHaNGeWmxZZmVDhYD/d7ubiNtGKbvpytY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ce7NK7Hdwp1fvkSu4N3XUz6rQ6xlwVcvzvwCzUxwYzJL5J+laF06NVk+hCa2G5UC3SatveTaXAzBImIZ4yN3GQVCEYua3FFUAM4xYpNKiU8BBt5iRO+SAcgZu5yBLIpUHQiHsrYIAe8fo7H3H8Nd8iOTqvi9ar8+ZKcL5Qf31ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpjKqgz5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23C55C4CEF7;
	Wed, 25 Mar 2026 16:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774457626;
	bh=Rhut/ar+8LaHaNGeWmxZZmVDhYD/d7ubiNtGKbvpytY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HpjKqgz5qntIKvsseFKxl2gqAayouChOWd/8ObMRHI5H8CYFBouHc7uOOLkQC56cZ
	 PGCE5ibBKj2N34w1sB2CQe/f9X0VC5VU7LvnMGS555dL1KcummlCcDeKF9JFhCajUF
	 bc3DpA8wGmYOqH7gesyI1/HSmdMVDTet9dnYzoPu76UbNZCGUHRaTOMCicnnn0Sh0K
	 KX/mGpgud1bR+Z3MfrCSRhUoiKl+P8jOnikiUTjUoI+wruMCVr4gh7hXAeoEJlQdzd
	 c/wO8vBRCK+tCLCuedeXoQaW29UjQlwHfyUNQxHaDU7756n3KaJgc2lTc9INR3LggV
	 5Mlvk836ezuhg==
Date: Wed, 25 Mar 2026 09:53:44 -0700
From: Drew Fustini <fustini@kernel.org>
To: Robert Mazur <robert.mazur@imgtec.com>
Cc: Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] riscv: dts: thead: beaglev-ahead: enable HDMI output
Message-ID: <acQTGPHvoMDvLtDf@x1>
References: <20260325-hdmi-beaglev-ahead-v1-1-e71b41b98dca@imgtec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260325-hdmi-beaglev-ahead-v1-1-e71b41b98dca@imgtec.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-280675-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[robert.mazur.imgtec.com:query timed out];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,imgtec.com:email]
X-Rspamd-Queue-Id: 51872329896
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 09:18:59AM +0100, Robert Mazur wrote:
> The BeagleV Ahead board includes a micro HDMI connector (Type-D)
> wired to the TH1520 SoC's HDMI transmitter.
> 
> Enable the display pipeline by adding the HDMI connector node,
> connecting it to the HDMI controller, and activating the DPU
> and HDMI nodes.
> 
> Signed-off-by: Robert Mazur <robert.mazur@imgtec.com>
> ---
> This patch enables HDMI output on the BeagleV-Ahead board by wiring up
> the DPU and HDMI nodes added in the following series:
> 
> Depends-on: https://lore.kernel.org/r/20260129023922.1527729-7-zhengxingda@iscas.ac.cn/
> 
> The patch has been tested on BeagleV-Ahead hardware with the above
> series applied. HDMI output is functional.
> ---
>  arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 25 ++++++++++++++++++++++
>  1 file changed, 25 insertions(+)

Reviewed-by: Drew Fustini <fustini@kernel.org>

Thanks for getting this working for the BeagleV Ahead and sending the
patch.

Drew

