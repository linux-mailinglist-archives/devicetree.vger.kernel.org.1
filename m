Return-Path: <devicetree+bounces-288731-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uH/2NYNE5ml/twEAu9opvQ
	(envelope-from <devicetree+bounces-288731-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 17:21:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CEA042E13E
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 17:21:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 250EF3129344
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 14:43:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA8F73D5244;
	Mon, 20 Apr 2026 13:38:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="dbJCfC4U"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2687A3B777F
	for <devicetree@vger.kernel.org>; Mon, 20 Apr 2026 13:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776692306; cv=none; b=nYYNLCx4AV9/JFK7efZzdvtTpOczHfyjMsWqQkJ1B0PQfx4O0zfmk7gtP1rn3apcF239PocKZT8SONxNSz2LrxZqWYk44sNKj7LQ81O+648pIY7jCfcQDksZi/Br9krXbsujBrXlf3QToHWq87c+lAZIFEpr0Na8nF/vpTYqQVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776692306; c=relaxed/simple;
	bh=1yww//0UTBt1DeqslfBtonPIE1kUPccFq0wnp94V2mY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ij5h/Q/q6PzFxClJNGFF7MZDKSHdECYU/CozhOk7BpdhXwUl8jzaPNNLuNRU3RcLPBskfb79GQHqTcjHf1H4uHporEp1BDMlDHotroSXRAnd9OvJ48TwPMFJo86f41cO7I+HMppz0wFMk4grrXbPQEsVXWpuje9j0GqWWP1bwQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=dbJCfC4U; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 6F1BC1A335E;
	Mon, 20 Apr 2026 13:38:22 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 38E8C5FFA5;
	Mon, 20 Apr 2026 13:38:22 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id CBB6710460969;
	Mon, 20 Apr 2026 15:38:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1776692301; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=CBwguYIzdd07ajaYm/pQF2q5czxsQgmSLj3rTqILxMs=;
	b=dbJCfC4U8GTOBI84x7yHyaS5mXUlyCLQnwUBC10ZfN09Jkh6CCA1ER3p6CjrLNoVul0j5l
	WbTHGj+fAj8vDlHPKsglERQm2XhTMBXrKKauW6wIsOTlENv9yn/IX5sXBbAdX8YTQ/7lN6
	qh4hcXMqiV+qLyuLsrvpDTvWJD/mlOhhxbRsQPArLjlbEm+ukqQo7lIHPkkllpK5d6hBwe
	fEISn4ZQhablSCU7hUej2laZDERtRSA+FIxbFWQ6Vh2KatrIRsZPytxrPwN90WkIFDS7No
	w1AIepZG7+v4b4Hl3Bl2Uv0wUoXJKhjTV6NsftGkZMcFG5aB2dOCGc1SaofCSA==
Message-ID: <c36821db-2fcb-438c-b54c-a4f2d5b33fa5@bootlin.com>
Date: Mon, 20 Apr 2026 15:38:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-j722s: use ti,j7200-padconf compatible
To: "Richard Genoud (TI)" <richard.genoud@bootlin.com>,
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>, Udit Kumar <u-kumar1@ti.com>,
 Abhash Kumar <a-kumar2@ti.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260420131735.3833993-1-richard.genoud@bootlin.com>
Content-Language: en-US
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <20260420131735.3833993-1-richard.genoud@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-288731-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.richard@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,bootlin.com:dkim,bootlin.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4CEA042E13E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Richard,

On 4/20/26 3:17 PM, Richard Genoud (TI) wrote:
> From: Abhash Kumar Jha <a-kumar2@ti.com>
> 
> The pinctrl contexts for j722s should be saved and restored during
> suspend-to-ram, just like it is done for j7200 and j784s4 SoCs.
> 
> Use ti,j7200-padconf compatible to save and restore pinctrl contexts during
> suspend-to-ram.
> 
> Signed-off-by: Abhash Kumar Jha <a-kumar2@ti.com>
> Signed-off-by: Richard Genoud (TI) <richard.genoud@bootlin.com>
> ---
>  arch/arm64/boot/dts/ti/k3-j722s-evm.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j722s-evm.dts b/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
> index e66330c71593..757eb6abcd72 100644
> --- a/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
> +++ b/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
> @@ -242,6 +242,7 @@ &phy_gmii_sel {
>  };
>  
>  &main_pmx0 {
> +	compatible = "ti,j7200-padconf", "pinctrl-single";
>  
>  	main_mcan0_pins_default: main-mcan0-default-pins {
>  		pinctrl-single,pins = <
> @@ -418,6 +419,7 @@ &main_uart5 {
>  };
>  
>  &mcu_pmx0 {
> +	compatible = "ti,j7200-padconf", "pinctrl-single";
>  
>  	mcu_i2c0_pins_default: mcu-i2c0-default-pins {
>  		pinctrl-single,pins = <

It should be done at SoC level, not just for the EVM board.
You should modify k3-j722s-main.dtsi and create k3-j722s-mcu.dtsi.

Best Regards,
Thomas

