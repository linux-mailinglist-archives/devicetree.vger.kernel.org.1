Return-Path: <devicetree+bounces-286724-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCesKLNT2mkQ0QgAu9opvQ
	(envelope-from <devicetree+bounces-286724-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 15:59:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 413B93E0300
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 15:59:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 44C1F301C97F
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 13:59:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A51B928B7DA;
	Sat, 11 Apr 2026 13:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwjsHGWC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82FBB2F851;
	Sat, 11 Apr 2026 13:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775915951; cv=none; b=qnm291BEquNj9IQwEWDhZS6T9F7trmqdpwHciirFyNGUWxTV2OlPVoScUHRStWxs535OzmekbJArUTe/QR9FWmjRnGi3yFsGqB//rBIiqVB7bWSOcQGGj3DE/PfEDUZxN0eUF0XrEoYagemzBB2ecYdM/cUoHstkS/9zwITfYHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775915951; c=relaxed/simple;
	bh=Wjrw/VJCjibWH2naGnKur4mOqCZG8mKaHZjp6H4PZQI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jNGHDtx0XGRxyOMd2TFQko6NQhuFoTMBCuwn1bnyBk47hEIq80NRt98z9IUoICdXPfTD2X6yA9bCsEijRoa9v715HSeZYW2Vqr7nNUNOzqAeesNpiA2AK0E/+KWxwWfPxeg6wCe1M4ncV7MW0ldbJTw/M9Fq52ULqgyK2zZnTfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwjsHGWC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB8A0C4CEF7;
	Sat, 11 Apr 2026 13:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775915951;
	bh=Wjrw/VJCjibWH2naGnKur4mOqCZG8mKaHZjp6H4PZQI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mwjsHGWC8+PIT63DO6+yO6erU5Z9LbIeuecuyPAYp2yC++QfD6Sa+vbi+hOMmb4hZ
	 d/nxx4V79RemQQtLY0gfInEbR3a+LIo5Gf8c0bfD/LhUZvLvyyN7poRXTTYgrp213Z
	 MHTVSX/re/Iiqt4y3LNWYOaiBKts49Z94sPKqglCUov5IgxJqx5udumZpII2YZy0Z0
	 ZC+Elvp3FmG7Z3xaXa/jIO8tb1RJnVCjCtIXpOD9Xy5ZWCQEkRY5YI0UXfBoKP3XTQ
	 fn/dFSouEjhQANv/RLJZ610seqWMmsNQcat3YLZhSwwyhu4KcQkvOM4fdebLKI6WG7
	 ti2+ktv8r1x6g==
Date: Sat, 11 Apr 2026 15:59:08 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: nick.hawkins@hpe.com
Cc: catalin.marinas@arm.com, will@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, krzysztof.kozlowski@oss.qualcomm.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 4/4] arm64: defconfig: Enable ARCH_HPE
Message-ID: <20260411-strong-mega-leopard-a6e423@quoll>
References: <20260410171611.2547255-1-nick.hawkins@hpe.com>
 <20260410171611.2547255-5-nick.hawkins@hpe.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260410171611.2547255-5-nick.hawkins@hpe.com>
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
	TAGGED_FROM(0.00)[bounces-286724-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 413B93E0300
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 10, 2026 at 05:16:11PM +0000, nick.hawkins@hpe.com wrote:
> From: Nick Hawkins <nick.hawkins@hpe.com>
> 
> Enable ARCH_HPE in the arm64 defconfig to include HPE GSC BMC SoC
> support in the default build.
> 
> Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


