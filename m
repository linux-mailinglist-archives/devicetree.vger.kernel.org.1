Return-Path: <devicetree+bounces-274647-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4I0FANDYsmlDQAAAu9opvQ
	(envelope-from <devicetree+bounces-274647-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:16:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D39B2741A3
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:16:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C37A43290CF4
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:08:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A0F13BD638;
	Thu, 12 Mar 2026 15:06:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="c/D2t2/V"
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D5241400C;
	Thu, 12 Mar 2026 15:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.40.3.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773328017; cv=none; b=pGMnFyCM+axuHOrEWXIcXOzCffDMK5sxl2v9f0hnc3UsNTY7RcCeyN5P3gjT9aIfnzu6ASHkCKfFFlmq7daut8mBJfhl6+MFlv74tH/PmHYzLfLb9yuiP7yVOBR0D74oaT/alKMKQKzAfmuzDPGm/18d+1YYmHhEXTSdiYQvmfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773328017; c=relaxed/simple;
	bh=R8Q3WvA5Ic7yjTt+iAM2be7pTSy6TJQu1++F2S4PhYM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lIz9ikVQgXhIM4g1VGk8H73PQsMOz8+sHTjW90HRWIXe+rhcW+gbrRJ04MhUHPGH3yFVzR/O+zVNupqZIhNsFCjvW/nGciauXkmxSN0bfOO0qM4JXgiG8ampZj1SqtItSXXXBbMJzYtdoYlbwEG3uhZL/nYUZyc2N0YVphAAKLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=c/D2t2/V; arc=none smtp.client-ip=188.40.3.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=0jWlLUSeN29Pq02QcM+6J989J3yKVwQy0x52kUrHLWk=; b=c/D2t2/VpkFqdXBjHh3Pe4TtEP
	lxbnyWJAJ4/jjMZ6vl2/qlH+G+HkKTgsVbREd8BEzHTPWqEYU2GJ1M8nK2RIhyGXXdQgmE3pmpe9M
	ayL5NlNrX10feY2yxK0ptjPT1yNnzqUNwTPLMn/eL3q91uNWpPLFq9aVEd2iQ4ub6ymTJoTdsNLKF
	/pg5QgHwaLpniRJjcCrW/HDIbxIzz3/dA4EourHP97dOZWEXbng1vKd3ZAalt21rb4gXYrfAkdMqJ
	IP3Ig/SQW2KeK2YHQx1Es5Pj053TC6tSohzFWr5YUmx3WmRdJUGswr62ri3GHcrthfmFzAKoBVXu1
	W4d+K4Eg==;
Received: from sslproxy03.your-server.de ([88.198.220.132])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <max.merchel@ew.tq-group.com>)
	id 1w0hMP-000JL7-2a;
	Thu, 12 Mar 2026 15:50:01 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy03.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <max.merchel@ew.tq-group.com>)
	id 1w0hMP-000AiT-0Z;
	Thu, 12 Mar 2026 15:50:01 +0100
Message-ID: <e9c0606c-82e7-4979-a6a4-efea6a570009@ew.tq-group.com>
Date: Thu, 12 Mar 2026 15:50:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/12] ARM: dts: imx7d: Use undeprecated reset-gpios
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Christoph Niedermaier <cniedermaier@dh-electronics.com>,
 Marek Vasut <marex@denx.de>, Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@dh-electronics.com, linux@ew.tq-group.com
References: <20260311-dts-snps-reset-gpios-v1-0-ea1cc09fba84@oss.qualcomm.com>
 <20260311-dts-snps-reset-gpios-v1-6-ea1cc09fba84@oss.qualcomm.com>
Content-Language: en-US
From: Max Merchel <max.merchel@ew.tq-group.com>
In-Reply-To: <20260311-dts-snps-reset-gpios-v1-6-ea1cc09fba84@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/27938/Thu Mar 12 07:24:01 2026)
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274647-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,nxp.com,pengutronix.de,gmail.com,dh-electronics.com,denx.de,armlinux.org.uk];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[max.merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tq-group.com:url,ew.tq-group.com:dkim,ew.tq-group.com:mid]
X-Rspamd-Queue-Id: 3D39B2741A3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/11/26 17:08, Krzysztof Kozlowski wrote:
> Freescale i.MX6 PCIe host controller bindings through referenced
should be i.MX7
> snps,dw-pcie-common.yaml schema already document "reset-gpios", just
> like Linux kernel did for a long time.  Use the preferred form over
> "reset-gpio" deprecated since commit 42694f9f6407 ("dt-bindings: PCI:
> add snps,dw-pcie.yaml") in 2021.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>   arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts | 2 +-
>   arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts  | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts b/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
> index e3ee16f1aaa9..a5fc7f80f651 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
> +++ b/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
> @@ -122,7 +122,7 @@ &pcie {
>   	/* 1.5V logically from 3.3V */
>   	/* probe deferral not supported */
>   	/* pcie-bus-supply = <&reg_mpcie_1v5>; */
> -	reset-gpio = <&gpio5 12 GPIO_ACTIVE_LOW>;
> +	reset-gpios = <&gpio5 12 GPIO_ACTIVE_LOW>;
>   	status = "disabled";
>   };
>   
> diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts b/arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts
> index a370e868cafe..ab7cabe5552d 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts
> +++ b/arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts
> @@ -456,7 +456,7 @@ display_out: endpoint {
>   };
>   
>   &pcie {
> -	reset-gpio = <&extended_io 1 GPIO_ACTIVE_LOW>;
> +	reset-gpios = <&extended_io 1 GPIO_ACTIVE_LOW>;
>   	status = "okay";
>   };
>   
>
-- 
Best regards,
Max

TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
http://www.tq-group.com/


