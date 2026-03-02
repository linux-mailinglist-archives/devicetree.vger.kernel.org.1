Return-Path: <devicetree+bounces-269810-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QN8HOHE2pWmv5wUAu9opvQ
	(envelope-from <devicetree+bounces-269810-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 08:04:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDE41D3A51
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 08:04:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id ADA353004D24
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 07:04:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26557314B73;
	Mon,  2 Mar 2026 07:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQ8iqSxv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010DF824A3;
	Mon,  2 Mar 2026 07:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772435052; cv=none; b=Usyq1IR87GoOxzI2Y1Qei5lcZ8yK4f1Kebx5w1SS4h9mAmTr/e3SguqMlFGD5Nqq3jppp4uEgPBQRzx3MWzRvATQU8lqFQJprb0T+bYch62q92TAClf1ptaWEhFJxeMEntcGalLCVN9XaS3VWNVULEBgg4agVQqxF9GrMRMMPT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772435052; c=relaxed/simple;
	bh=BEjq3tA3JtO6h36oS89C6amKbmPWOTaLgD17ByLFZZo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n0KPnrDdFav1082lu3WkbvJCXK0QeO/kF9VJUEO1Ghu4+S2kr7r5dphbMxuDclnws0w63o90YqgbapemH70DwIfS6zzBLA0z6CICSSZpTGHBzzo8Q4fPzvhwxbKVStfLq2q2loV2h4tu4EVWj+b/HAYSY1+4ux0NhdgURw7iqBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQ8iqSxv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05CFEC2BCB0;
	Mon,  2 Mar 2026 07:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772435051;
	bh=BEjq3tA3JtO6h36oS89C6amKbmPWOTaLgD17ByLFZZo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nQ8iqSxvt4d3WmEXGN3VIj+ZdkGx1YeULyWqwch11M9K7vZhLgTq8mQmT/wU1Sq3p
	 8YchhqL2fb5gsIJSUMz6Rd4XDfjq/O2t5V7sgpa9Ap1rZNEckUMGByuSKG0ZKlJtN3
	 LMjZMQmA+ix3MvZD2QeltYjb4dmRGekQJ8cavjsN+CnvxpO4HWfX/oilpnmCiSjzcS
	 MwyMrvyag0GXb2SmLP5YY55qZ/CvmtyUtekfggPRPmC+UA6DNTUNbJRpHPqcU3wtFw
	 JIMjDU8Eef2yERXE8cjD0HoNcS8yZ3k5RefDOWF7UlwFYatqDfPUfxT0PmAJgsENTA
	 BO8eXydY/csBA==
Date: Mon, 2 Mar 2026 08:04:09 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Haiyue Wang <haiyuewa@163.com>
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: clock: ast2600: Add reset definition
 for video
Message-ID: <20260302-interesting-tactful-wren-0e2e51@quoll>
References: <20260302011651.94682-1-haiyuewa@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260302011651.94682-1-haiyuewa@163.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269810-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[163.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,checkpatch.pl:url,qualcomm.com:email]
X-Rspamd-Queue-Id: DCDE41D3A51
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 09:15:00AM +0800, Haiyue Wang wrote:
> Add ASPEED_RESET_VIDEO reset definition to the ast2600-clock binding
> header. It is required for proper reset control of the video on the
> AST2600 SoC for aspeed-video driver.
> 
> Signed-off-by: Haiyue Wang <haiyuewa@163.com>
> ---
> v3:
>   - Drop 'Fixes:' tag in header file patch.
> v2: https://lore.kernel.org/all/20260227151602.829-1-haiyuewa@163.com/
>   - Fix checkpatch.pl warning, and send dt-bindings as single patch as
>     the submitting-patches guide.
> v1: https://lore.kernel.org/all/20260227123837.70079-1-haiyuewa@163.com/
> ---
>  include/dt-bindings/clock/ast2600-clock.h | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


