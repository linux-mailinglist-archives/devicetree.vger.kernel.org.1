Return-Path: <devicetree+bounces-257672-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHXQMPQicGlRVwAAu9opvQ
	(envelope-from <devicetree+bounces-257672-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 01:51:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5984EB5F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 01:51:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9A76080C38F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:50:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E10DF2C326B;
	Wed, 21 Jan 2026 00:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTFoNRpP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B35872AF1B;
	Wed, 21 Jan 2026 00:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768956605; cv=none; b=ZvTa3SjF556UHP8EkW44zHg89imHatYn+nX9jrewIf3Y5Ip7GfPEh2PMCxBwxOEP4w0+/41OCmWFvx07Nt+3BQsNp6aQ+xzZmguREuJc5SaH0eCy2ZY9yVo2zNoj/TiigRaDK/pkgOdzh1PS9lZMyWSMXTGAtaGqVNlgjYKfeJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768956605; c=relaxed/simple;
	bh=CrwiPhrrePlnWr+/pU7wM0Ao6MmtP3GAWFek3sVv3oQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fSzvoLl+hMf6BRxyMr2SOTJVgXakHtuUh7DlYrxs5vwgpIlKIf5QPsh4RyCU0T6htVm9IIhh353P3VOlu3N1v3s1zsxNHcddfNww9CvTTdIorxMTB8N+KjH3etShwhLZXIDNWSitgFTbnmCQ+0ImHUSXyTIK6mX1O9CP4PKL3/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTFoNRpP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0BE7C16AAE;
	Wed, 21 Jan 2026 00:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768956605;
	bh=CrwiPhrrePlnWr+/pU7wM0Ao6MmtP3GAWFek3sVv3oQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oTFoNRpPAa0qgH4Fq5zG8CfEnQZlyyDc39ssKk6FLKNFIpMeN85Nhd15fXqLT97Bn
	 LOPAY0jLtWG4zvb6CQL79xJAbqbuU4yQSj1JGpqFkzLevIcX/oUQt43VmBP9/E1O4T
	 7if+oBiV1e4sm+5WQAnntfMK/NixdR7M+smSES4m4NGcf6GN8T7dqd1F7JB211559z
	 cwRllHESDEsg+ca8Yw10IUZqn7kXNi93ov/nTZCY5/fPAk0npomuWZw6R84HzMkREH
	 z7VK5wusSkyjEy7KBFVKj5j5RiUwMpQJO6znLMy8l1HdAp8VXr6QWvtVTwtuRTsBtz
	 y8d4FrnPayRUA==
Date: Wed, 21 Jan 2026 08:50:02 +0800
From: Yixun Lan <dlan@kernel.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Rob Herring <robh@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>, Albert Ou <aou@eecs.berkeley.edu>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, spacemit@lists.linux.dev
Subject: Re: [PATCH 1/1] riscv: dts: spacemit: Disable ETH PHY sleep mode for
 OrangePi
Message-ID: <20260121005002-GKA61591@kernel.org>
References: <20260120100001.1285624-1-amadeus@jmu.edu.cn>
 <20260120100001.1285624-2-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120100001.1285624-2-amadeus@jmu.edu.cn>
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257672-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: AD5984EB5F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi  Chukun,

On 18:00 Tue 20 Jan     , Chukun Pan wrote:
> On the SpacemiT K1 platform, the MAC can't read statistics when the PHY
> clock stops. Disable Link Down Power Saving Mode for the YT8531C PHY on
> OrangePi R2S and RV2 boards to avoid reading statistics timeout logs.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>

Looks good to me

Reviewed-by: Yixun Lan <dlan@kernel.org>

> ---
>  arch/riscv/boot/dts/spacemit/k1-orangepi-r2s.dts | 2 ++
>  arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts | 2 ++
>  2 files changed, 4 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/spacemit/k1-orangepi-r2s.dts b/arch/riscv/boot/dts/spacemit/k1-orangepi-r2s.dts
> index 58098c4a2aab..de75f6aac740 100644
> --- a/arch/riscv/boot/dts/spacemit/k1-orangepi-r2s.dts
> +++ b/arch/riscv/boot/dts/spacemit/k1-orangepi-r2s.dts
> @@ -52,6 +52,7 @@ mdio-bus {
>  
>  		rgmii0: phy@1 {
>  			reg = <0x1>;
> +			motorcomm,auto-sleep-disabled;
>  		};
>  	};
>  };
> @@ -75,6 +76,7 @@ mdio-bus {
>  
>  		rgmii1: phy@1 {
>  			reg = <0x1>;
> +			motorcomm,auto-sleep-disabled;
>  		};
>  	};
>  };
> diff --git a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> index 41dc8e35e6eb..7b7331cb3c72 100644
> --- a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> +++ b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> @@ -54,6 +54,7 @@ mdio-bus {
>  
>  		rgmii0: phy@1 {
>  			reg = <0x1>;
> +			motorcomm,auto-sleep-disabled;
>  		};
>  	};
>  };
> @@ -77,6 +78,7 @@ mdio-bus {
>  
>  		rgmii1: phy@1 {
>  			reg = <0x1>;
> +			motorcomm,auto-sleep-disabled;
>  		};
>  	};
>  };
> -- 
> 2.25.1
> 

-- 
Yixun Lan (dlan)

