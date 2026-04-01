Return-Path: <devicetree+bounces-283338-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHplNcrNzGlFWwYAu9opvQ
	(envelope-from <devicetree+bounces-283338-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 09:48:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B8737641F
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 09:48:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 228CF3014BD8
	for <lists+devicetree@lfdr.de>; Wed,  1 Apr 2026 07:41:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90E2337E306;
	Wed,  1 Apr 2026 07:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQBWpmqc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B403330D25;
	Wed,  1 Apr 2026 07:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775029311; cv=none; b=bvmQWyWfemGHzoSRchU4dmjz+ZnRDaZd1O10jz2NVfTvxch3mt2+XI0afEY2Eu5y3H6WTdJn4jYsdSNIcrIJvqtRYhEueuFwXw7EDJ+ynESfeysyRQNowXHlvD8+LMnVmj6yvoiqc408ujVodawou2ztmAGorjEQQtAFw02lkW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775029311; c=relaxed/simple;
	bh=2QALR86Ua7MoBi5F0W+OaAxgTNDklOvWHZhuy7YhXts=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jbIElMUOVE10r9Dq5lcxJSYZUpp0V3Bkx4rBwhoW4/n+XV/yUeuoUo75ZR2w/ao4qpUjOBKFREnIhGyhJEPOkAEXv8DVoSvwIt7bRJzYGudHqcoqolgLSONB/TruXhB+ss6NwPoP5Wd22CsKjrxWJJj/XAMi56kycbo6RXmZ9mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQBWpmqc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EC1FC4CEF7;
	Wed,  1 Apr 2026 07:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775029311;
	bh=2QALR86Ua7MoBi5F0W+OaAxgTNDklOvWHZhuy7YhXts=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JQBWpmqcjis29i5L2j99vizY5ydDRBX99V0HjEeQkzydDDIhvAX10ZsuKw5xMiBlA
	 2ETWv0uxjleyGgdxg+hwbPt+Qr1YKzKmCB+Nv4KqBQbwL01vCErYqYaERakqUbuM0D
	 rTjNPvnXP+q7vgxSIuARcqJ9AX1i6QJPs98Awhfvkdh5NKdNuPDVcMtJKfM2aoQvCI
	 ySGuZNVJNKrT+p2cxDvL4H0FEKIQQ1m5VQ0yckpTgiGhRARyVKaD0OYopx6yk3Smp6
	 1I4mNOilPVXByQ72Z23iMUZKTLOBYjMIujkbOGnjd38cbyc+jk41EdsNEiFE5gMeWO
	 wq80ELwUxCHZg==
Date: Wed, 1 Apr 2026 09:41:48 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Robby Cai <robby.cai@nxp.com>
Cc: p.zabel@pengutronix.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, Frank.Li@nxp.com, s.hauer@pengutronix.de, festevam@gmail.com, 
	devicetree@vger.kernel.org, kernel@pengutronix.de, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, aisheng.dong@nxp.com
Subject: Re: [PATCH 1/2] dt-bindings: reset: imx8mq: Add _N suffix to
 IMX8MQ_RESET_MIPI_CSI*_RESET
Message-ID: <20260401-simple-dragonfly-of-will-fedc8c@quoll>
References: <20260331101331.1405588-1-robby.cai@nxp.com>
 <20260331101331.1405588-2-robby.cai@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260331101331.1405588-2-robby.cai@nxp.com>
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
	TAGGED_FROM(0.00)[bounces-283338-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[pengutronix.de,kernel.org,nxp.com,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 13B8737641F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 31, 2026 at 06:13:30PM +0800, Robby Cai wrote:
> The assert logic of the MIPI CSI reset signals is active-low on i.MX8MQ,
> but the existing names do not indicate this explicitly. To improve
> consistency and clarity, append the _N suffix to all
> IMX8MQ_RESET_MIPI_CSI*_RESET definitions. The deprecated
> IMX8MQ_RESET_MIPI_CSI*_RESET versions remain temporarily for DT ABI
> compatibility and will be removed at an appropriate time in the future.
> 
> Signed-off-by: Robby Cai <robby.cai@nxp.com>
> ---
>  include/dt-bindings/reset/imx8mq-reset.h | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/include/dt-bindings/reset/imx8mq-reset.h b/include/dt-bindings/reset/imx8mq-reset.h
> index 705870693ec2..83a155dbbd4a 100644
> --- a/include/dt-bindings/reset/imx8mq-reset.h
> +++ b/include/dt-bindings/reset/imx8mq-reset.h
> @@ -46,12 +46,18 @@
>  #define IMX8MQ_RESET_PCIEPHY2_PERST		35	/* i.MX8MM/i.MX8MN does NOT support */
>  #define IMX8MQ_RESET_PCIE2_CTRL_APPS_EN		36	/* i.MX8MM/i.MX8MN does NOT support */
>  #define IMX8MQ_RESET_PCIE2_CTRL_APPS_TURNOFF	37	/* i.MX8MM/i.MX8MN does NOT support */
> -#define IMX8MQ_RESET_MIPI_CSI1_CORE_RESET	38	/* i.MX8MM/i.MX8MN does NOT support */
> -#define IMX8MQ_RESET_MIPI_CSI1_PHY_REF_RESET	39	/* i.MX8MM/i.MX8MN does NOT support */
> -#define IMX8MQ_RESET_MIPI_CSI1_ESC_RESET	40	/* i.MX8MM/i.MX8MN does NOT support */
> -#define IMX8MQ_RESET_MIPI_CSI2_CORE_RESET	41	/* i.MX8MM/i.MX8MN does NOT support */
> -#define IMX8MQ_RESET_MIPI_CSI2_PHY_REF_RESET	42	/* i.MX8MM/i.MX8MN does NOT support */
> -#define IMX8MQ_RESET_MIPI_CSI2_ESC_RESET	43	/* i.MX8MM/i.MX8MN does NOT support */
> +#define IMX8MQ_RESET_MIPI_CSI1_CORE_RESET	38	/* Deprecated. Use *_RESET_N instead */
> +#define IMX8MQ_RESET_MIPI_CSI1_CORE_RESET_N	38	/* i.MX8MM/i.MX8MN does NOT support */

That's quite a churn for no need. The entire point of these values being
the binding is that it describes the ABI for SW and DTS, not your
hardware registers.

Whether signal is active low or high is kind of irrelevant. Linux uses
it exactly the same way.

Best regards,
Krzysztof


