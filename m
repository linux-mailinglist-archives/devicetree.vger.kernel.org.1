Return-Path: <devicetree+bounces-257718-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLDDFEM8cGmgXAAAu9opvQ
	(envelope-from <devicetree+bounces-257718-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:38:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFCB4FE61
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:38:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 30C045F0079
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:38:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DA3734DB7C;
	Wed, 21 Jan 2026 02:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pz+Vvrga"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3907A34DB66
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 02:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768962968; cv=none; b=C8XQUuO2JDiR/jUeb/+HAxnvVKwqXu3Sg60B/puk8y0NiGSmDzTyfhWSrDYVoaCKlk+54wAqRpwMTfp8ELeWN+3lK5LMHPy5qOl3r1zCh/KbI/3Q1GTpvEfFZtWIOok6Z8zVRUURsi1hZ6cIFI9SDc5J+CcdFBwju/+cLMni9p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768962968; c=relaxed/simple;
	bh=s/ppDOKBriSbgvaTWgDYie5U594SU0x6q4edBskjLns=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VO3znOtNd/ManumZj1crC1Ez9FfR2zPyiYPdt4eYXtFXhPVdnW+xs7DvY32HoSorsw88ntoN/WCn6nn7cN3wEb7C5Qf5ru/iCBXT1XQhv38AEvIcUZDtx6kxrM5naxh5QiKPcpZnbL5jpQ43IQwan1zXIsgsDbsL6M0sZPrYLkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pz+Vvrga; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FF8CC16AAE;
	Wed, 21 Jan 2026 02:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768962967;
	bh=s/ppDOKBriSbgvaTWgDYie5U594SU0x6q4edBskjLns=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pz+VvrgaQFhd7a9RT1J+dAfdhfxVN3BR9wHGkB8ewiU+2MRLnAU5JaeMjl0GIqJ/u
	 7ICMh7SrNQkBSj3U5E2Z8DPpueLblHwioQMJ9fNR73JdYssFgTJocvIKdCHP5e8ENs
	 yIa6S7RPjbTV1sCSKDFyQiwjplnyZkE0KNpXC4sYzUMg58YoJphgt3Q7wKFYrUsYFE
	 imMMWAm+y9Hrb0jbY+RxVWocb1dzGp+d1iF7FyUZoKomXe+56rum3Gmo7KRZMcsZgs
	 T9gtuvqv237JL0MzWIl4mSrbUdimRhIYX0EbhgrMrkiDPOXgU4DqFw6n4jD4tb3vyY
	 HwhayCCnoOiZQ==
Date: Tue, 20 Jan 2026 20:36:06 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, frank.li@nxp.com,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	marek.vasut@mailbox.org, Fabio Estevam <festevam@nabladev.com>,
	victor.liu@nxp.com, neil.armstrong@linaro.org
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: ldb: Document
 nxp,enable-termination-resistor
Message-ID: <176896296629.1844810.8491624416873215486.robh@kernel.org>
References: <20260120231930.2782444-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120231930.2782444-1-festevam@gmail.com>
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257718-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[i.mx:url,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: DDFCB4FE61
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Tue, 20 Jan 2026 20:19:29 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> Document the optional nxp,enable-termination-resistor property for the
> i.MX LVDS display bridge.
> 
> This boolean property indicates that the built-in 100 Ohm termination
> resistor on the LVDS output is enabled. It is controlled via the HS_EN
> bit in the LVDS_CTRL register. Enabling the resistor can improve LVDS
> signal quality and may prevent visual artifacts on some boards, but
> increases the power consumption.
> 
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
> Changes since v1:
> - Restrict it to i.MX6SX. (Liu Ying)
> 
>  .../bindings/display/bridge/fsl,ldb.yaml       | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


