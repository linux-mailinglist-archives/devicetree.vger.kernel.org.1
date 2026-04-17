Return-Path: <devicetree+bounces-288173-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BwOE+UE4mmQ0gAAu9opvQ
	(envelope-from <devicetree+bounces-288173-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 12:01:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 976F7419D53
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 12:01:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 058183045FEA
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 09:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 657CB390210;
	Fri, 17 Apr 2026 09:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b="qO1ANvm7"
X-Original-To: devicetree@vger.kernel.org
Received: from courrier.aliel.fr (courrier.aliel.fr [65.21.61.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B313921ED;
	Fri, 17 Apr 2026 09:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=65.21.61.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776419323; cv=none; b=iRDAnBz0/pCPElYJclhcGT1EeGDLtNL6yj6fBOuVg5a98mFqScQdT1j1Q/zdMEj9XqgdU0J7wGNISjlVNino/aOUg51tMAm8dsRbCLyhRTyXWOtOv8qgXBaXFfrqe6xPHpCftEK09ppDZzny+yCDaMX+6XkvrxdDsvarY9vK1WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776419323; c=relaxed/simple;
	bh=0nWAAGLG7q2uT/TlmR1EGTiiCf+Y0ePWlooqpsPH4dU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oxf6MwWekYeD49T3FsIqVMIZkmdEdQmUndalGEGfHNbtRKS1RHE7JwTgxmYD9XpIUmK0MLLVsgcMF/g4+2FIfZHtiZjrBZGTWiX+Wce5U5nhibsxtDclPm7DNgenDNKp7FAnpHJU8qzkFBScUYfNVhYEcMdCv7AurII6orqDgKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=qO1ANvm7; arc=none smtp.client-ip=65.21.61.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aliel.fr
Message-ID: <ae61c52d-814c-40fa-b02a-833377d840a8@aliel.fr>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aliel.fr;
	s=courrier-s1; t=1776419318;
	bh=0nWAAGLG7q2uT/TlmR1EGTiiCf+Y0ePWlooqpsPH4dU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=qO1ANvm7IkGSuZGGrgUgsmWkCxKepAALBzh4WHE9CWnDddZKEFT8TGrQoimPCTBGD
	 Nc2EMIkbsu9W4OwWwSduacU8oLHtE9KD56zgBp1Y7ecBps2Qxd7Fsq4XgEMfnTJ7x7
	 jlhritS/NmanhX4xVs1OTlFFPiYPYx8aZ3dIQ+7I=
Date: Fri, 17 Apr 2026 11:48:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH v2 4/4] arm64: dts: amlogic: t7: Add clk measure support
To: Jian Hu <jian.hu@amlogic.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20260415-clkmsr_a1_t7-v2-0-02b6314427e6@amlogic.com>
 <20260415-clkmsr_a1_t7-v2-4-02b6314427e6@amlogic.com>
Content-Language: en-US
From: Ronald Claveau <linux-kernel-dev@aliel.fr>
In-Reply-To: <20260415-clkmsr_a1_t7-v2-4-02b6314427e6@amlogic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[aliel.fr:s=courrier-s1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-288173-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[aliel.fr];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,kernel.org,linaro.org,baylibre.com,googlemail.com];
	RSPAMD_EMAILBL_FAIL(0.00)[mmc.0.1.87.192:query timed out];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.187.128:email,0.1.87.192:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux-kernel-dev@aliel.fr,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[aliel.fr:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amlogic.com:email,aliel.fr:dkim,aliel.fr:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.234.96:email]
X-Rspamd-Queue-Id: 976F7419D53
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Jian,

On 4/15/26 10:33 AM, Jian Hu via B4 Relay wrote:
> From: Jian Hu <jian.hu@amlogic.com>
> 
> Add the clock measure device to the T7 SoC family.
> 
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
> index 7fe72c94ed62..cec2ea74850d 100644
> --- a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
> @@ -701,6 +701,11 @@ pwm_ao_cd: pwm@60000 {
>  				status = "disabled";
>  			};
>  
> +			clock-measurer@48000 {
> +				compatible = "amlogic,t7-clk-measure";
> +				reg = <0x0 0x48000 0x0 0x1c>;
> +			};
> +

Can you please order by reg, it should be between pwm_ao_gh and pwm_ab.
Thank you.

>  			sd_emmc_a: mmc@88000 {
>  				compatible = "amlogic,t7-mmc", "amlogic,meson-axg-mmc";
>  				reg = <0x0 0x88000 0x0 0x800>;
> 


-- 
Best regards,
Ronald

