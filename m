Return-Path: <devicetree+bounces-272753-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAAgH62HrmnKFgIAu9opvQ
	(envelope-from <devicetree+bounces-272753-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 09:41:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C636C23596D
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 09:41:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 44FEF3041BCE
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 08:39:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 891F42DEA75;
	Mon,  9 Mar 2026 08:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NCJyR/xJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2862E2D9481
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 08:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773045572; cv=pass; b=AuMbXUtVozU3WXCMpX1iS9eIcHRlfIQbIRXGd3u+IGR3vke/iN7nu7BaQ/9tyRMwbsZL4oa/20FjCDBhwPNtlVS5NQdfe5WVOHajbrJ5q6+9KNhfa9yQJ8L4tvnvIzkJHB1FEa8O4NfQqd725Tqb/efE5lepfAmFV18ihOfdIOY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773045572; c=relaxed/simple;
	bh=pzNX+cWDDQA86LAQdSxpqzsIgb54XY76hGtWsx5y8tU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MmgCFSK7PTLc9BKv92dwsDUeUTkj7MBhQfQJjAS7vxnXJaVugYl0aJDF9G9BNufp+sRLRIahbYbOVTRrEz4SEwZR7+9TCGuLkK6UZ9lCUYJ997sgI9nMu1q8xr9W4tzEKAA8AnUW/8pfw5h/ZvfLSymnxTCq5DYlaDjEmFSPQ6U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NCJyR/xJ; arc=pass smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-6611f41eebcso6080750a12.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 01:39:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773045569; cv=none;
        d=google.com; s=arc-20240605;
        b=ilN5T259bAa0LoMsfcUtqE8oJkISFoCduxEhGkHTgZKJz/GC4s4r9hZN/bglxMHal+
         6VYsR6eaPKHz1pLtHbBulMriMKgK6Jl4xLf8IXqsDzudDi2YW8Lp1mi2Qur2jKjj4m0/
         hTAMXR3xEzmCzSl3hn3QIBJhONgIoCWci3Rfrm4WV9rHBU/PnVcjEDclfaoGdSSiGXQZ
         OIboz/yUpspjTDzlotGAFnyVF6hwaX4KRV4soZUYAU6qBlHVzkaJCodVcXjMbbOA52Pk
         GwMJT9TAYvs4v+4xkeAybqA5SsvcdiLKMYDbkCQbN+S91zo9XPWY+LaoTwH0SsZ6/DD+
         43dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=i2ApLkjRL2QedGmp1n+UDf2va/yjoghU9uSXBLC6UBk=;
        fh=6Z8WxGAOB0Yy2Y6joaGgjhjTez7sdxUikMRbnuGg8iY=;
        b=IgcW+V7sVIqopJDssgZlcGHWPfPWFTkzYgkXoQCkNGqr8DZ3Ly4C8PMwhvreuObtq7
         B4R9qvw9tcg1xAN3O4ft2PDM5LVOvgITkwJQJBhfNAegpeTijdMyUHQvyCGpI3Qtlkb1
         epL+1HabCKUoxlL+xSLAMvh4sgSXHXgZnQORhJ6klWP7EMvZGKyxpitY2lzWuzdZf4NK
         yYCXAR1BkPoM3HbsV10BHX1/y/BERTH39mHEJzNhOvLzcaRRyq+XAILOxMHoHWvXxYTS
         Je4ywf12kTJMi9tkdNy7rxTzWMBqnL6XKMKZ6GU0ylmwEeudCjZzRqSiqAlCXHhBEZoc
         TiNg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773045569; x=1773650369; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=i2ApLkjRL2QedGmp1n+UDf2va/yjoghU9uSXBLC6UBk=;
        b=NCJyR/xJf0bJqz2aZn1f2IIY3hVGwdPECksh9bJvCWJHy7KN/LfYCMASQclaHV04ug
         AfiAoD3mowpy9AiJNqn69hTOJxAwMaFOxik321hepccsBaGuH4aHbwaS9sW5QjKrGr89
         NXSOTd/4bstH6sLCSoZEhqS1phM0DCaf/Jp9biYIMGsTNl4+dE/YAydLYSBW54XZomXY
         zLJGyPTP/6mIWa1PD5vtCWgcPCHmWMvVhJhAauZMIEhXLPM99YmdDj2Iq4kbWG2FoJQ1
         bUVllO1ZLNy/O8Gf+gCPW3LlC0AH9vOja45ekgDLJDCHiYeJ5tnD3Ebc6ACGSMjRzF+r
         CVnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773045569; x=1773650369;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i2ApLkjRL2QedGmp1n+UDf2va/yjoghU9uSXBLC6UBk=;
        b=Q0pR2eiTGFuznl+Iq+V0mFb+OD7Ob1Osz2WVzQFRPmNucUVwTItnQqA/dr9DMbO2vg
         3QRVaBDPPfg8MfJ+M0f4Xui+QAuJDEbzUNrCcSkd2U394+UTz1kAk+3AVOdwPuTW0b4S
         Pc0Sqxc7GR4vgYLfTfb2dI5iI1t/EWyy4us1I3sN3uFyHUwucAOSbgqWEsHnytD0Y41J
         ubU/6bndranAumivn+8ns2Ljq06hsQ6We4BIH3ZrLpMW2fuEjhIg7dpG1q/Eu+t4fSmi
         i+Le8ls7nKw5F3sVaDbJ4vfQeUEaV7wrdicPQvgXl9AICszc9yZi954wtWzof+jq6wb/
         2RPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXzuXhnQInr3ogGCwVxqtbjDsPpVTlp6CGzar9N06NBqBRY7+1J9xLyZ3RcMA/6LX9jn49i4Aw0KxQF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1moL3+BIaTEdqtntbj7H6WAsnOn4I9ucwzXXxDaGsjoiV1/l7
	OM9uqW/Ra7F/ET+ooUKlztxuaOe/VU3tNssTyDGFlZ0AdI/lv+DzIORCKYOiv6uGpedHUeYUkl0
	WYvfbw5xWc8AmIuN/XwJqdHTYeLr1ZSc=
X-Gm-Gg: ATEYQzyGo+CqMDjtkz8PndFMa3MTySsdfe1JklV7Va27FyB2hakCijUaxN7bgvOloDo
	haSEi/5bvTXCJ/kX7pM1SAGKtVZVGW2u98nbPTUvgnJd3lCe9k7IIg+v8F0V3r5jQjgyA9GNYrG
	0DDmsnfEmR2L1DdZ/tJMcjk6I1oJCpphWYt0ciA5UnV7ughZxgbtkGrAa1fDQYxbYp/TsgNB91F
	cWTK9OLlm//vwb0VH866k55YztTy51WJR3fbDmqSuznksstKDbVbDYuv556OsK/dwG2jLrwfFTw
	dHe5/RP9UoKCxHCEiTisDtkCwNv+k7v6N1SwyF+SAAFXJjvIPlH6nacUrwu8fHWCqet5NdB+R7u
	QCD3rWX/sZmnK+OP6P59RYsGldWFryJe0odHor8J/9Y4F2F8j
X-Received: by 2002:a05:6402:1452:b0:660:b590:f4c7 with SMTP id
 4fb4d7f45d1cf-6619d45653dmr5529486a12.4.1773045569245; Mon, 09 Mar 2026
 01:39:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306203103.3119790-1-robh@kernel.org>
In-Reply-To: <20260306203103.3119790-1-robh@kernel.org>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Mon, 9 Mar 2026 08:39:17 +0000
X-Gm-Features: AaiRm50fyrrjHlS8KQdRyNVWL8F5ziJnajJaVmMSS-XtEGWkK0fYH3J1bfJuGuM
Message-ID: <CALeDE9PuXTiyxkgB3OTUS1d6bJ_LSCjOSztUBFmNPuTQg-oR_Q@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: freescale: imx93: Add Ethos-U65 NPU and
 SRAM nodes
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Forrest Shi <xuelin.shi@nxp.com>, Peng Fan <peng.fan@oss.nxp.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: C636C23596D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272753-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[nxp.com,oss.nxp.com,kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email,1.56.128.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pbrobinson@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.986];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,4a900000:email]
X-Rspamd-Action: no action

On Fri, 6 Mar 2026 at 20:31, Rob Herring (Arm) <robh@kernel.org> wrote:
>
> i.MX93 contains an Arm Ethos-U65 NPU. The NPU uses the internal SRAM for
> temporary buffers. The SRAM is larger than 96KB, but that is all that is
> available to non-secure world.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
Tested-by: Peter Robinson <pbrobinson@gmail.com> # Tested on a NXP
i.MX93 11X11 FRDM board

> ---
> v2:
>  - Increase the APB freq to 133MHz
> ---
>  arch/arm64/boot/dts/freescale/imx93.dtsi | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
> index 7b27012dfcb5..95cc60158349 100644
> --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> @@ -43,6 +43,29 @@ map0 {
>                         };
>                 };
>         };
> +
> +       sram: sram@20480000 {
> +               compatible = "mmio-sram";
> +               reg = <0x0 0x20480000 0x0 0x18000>;
> +               #address-cells = <1>;
> +               #size-cells = <1>;
> +               ranges = <0x0 0x0 0x20480000 0x18000>;
> +       };
> +
> +       soc@0 {
> +               npu@4a900000 {
> +                       compatible = "fsl,imx93-npu", "arm,ethos-u65";
> +                       reg = <0x4a900000 0x1000>;
> +                       interrupts = <GIC_SPI 178 IRQ_TYPE_LEVEL_HIGH>;
> +                       power-domains = <&mlmix>;
> +                       clocks = <&clk IMX93_CLK_ML>, <&clk IMX93_CLK_ML_APB>;
> +                       clock-names = "core", "apb";
> +                       sram = <&sram>;
> +                       assigned-clocks = <&clk IMX93_CLK_ML>, <&clk IMX93_CLK_ML_APB>;
> +                       assigned-clock-parents = <&clk IMX93_CLK_SYS_PLL_PFD1>, <&clk IMX93_CLK_SYS_PLL_PFD1_DIV2>;
> +                       assigned-clock-rates = <800000000>, <133000000>;
> +               };
> +       };
>  };
>
>  &aips1 {
> --
> 2.51.0
>

