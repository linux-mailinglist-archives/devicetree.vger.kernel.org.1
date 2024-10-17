Return-Path: <devicetree+bounces-112410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 440689A206E
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 13:01:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2631D1F216E9
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 11:01:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3B141DACBE;
	Thu, 17 Oct 2024 11:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="uPWXaMm3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6D8259C
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 11:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729162899; cv=none; b=VoRaNu5VqpLugRqh19/B2HnhpgF1Veuw6fqMKT2niLqS5m3LHAob1EES7/a2YvR7lvl5PTDSkJ9oGW2FGbnRIBF5t4CUDU0frlxbs53GuCkij6oPtx7cow+SeespUnnJcqK6Js5qxSIumuOaMZSUVcXyV87VblfeypdggZ1AM58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729162899; c=relaxed/simple;
	bh=+MrT++Scx29PaRgKv58oxzVZcqzx7TYELWD2t6Fb0D0=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O+xCh+ajrSmbptIqGSrXQvwDEqst9pCjtXTeASnXAPf8SoaHHOMEWM0ne34IHi3q7gZaG9HOy1h16FzXj5AAVmo6dsaWKp62YS79y9PU4fcIWaGEKGtBRAFGRW5Nd9Juf/vsQBN7R8V71FbvKm7alVNUXhpnLa7COZ+rWDs9LjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=uPWXaMm3; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 6EE093F28C
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 11:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1729162893;
	bh=rBZFdT3MLsNU1ABGIaObRFXCBfywuT/8DVsj8czEnD0=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=uPWXaMm3Tin3JL+SPrLU5hNvx0oNzxbN/3vcOvcg/uTSDj5qmS9LuPiK/xjbdwCS8
	 Yg7R1PaWMishErWtJwRgJme1GPC80BQqTPOkRgGcdff7pkkY0XRd5xcHH3pdJdwSvS
	 UINzDzSyzbhUNAKpANht83uKt0+2Rcx+b99yasIvNVQPLhzJ04Vs416yEUUMm2mg6s
	 y/MFcb5mBhTUg+2aCOaJkCBL+mjD9DrhknRa50paSWkhYou+zg61mBq68TIrZ0UEvv
	 nf3XGuE2XTs4UrmuzIUFq+E8UcClVVbxhBCSP07uvNqYuAqPGuNjWPUr93BLsmUZK7
	 i/0xf+zGGeWOQ==
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-2885c643f6bso944747fac.2
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 04:01:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729162892; x=1729767692;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rBZFdT3MLsNU1ABGIaObRFXCBfywuT/8DVsj8czEnD0=;
        b=IiXTL3btEf1KZHk/hcHDqOhkZF4DecqDOih2OAhtFPyYvje8Bk1v88y5etnGlWlgS0
         4EIsGS7Hj9AOqKq5u+/nNNCmZJQu9KGSxDdPFasupB/GVmizegRfY+LI/9fYnHzL7zSI
         Hgpu+xbAkzq93p+pDmt557YgJDOMxasfWRzOSpX/1SEbmJa61TUBODF2DusRNROlpPIW
         Tkyzz1ArUfHqmIh7/o5VEW8B8ytm4q8rXdlNx3/i6xO+N/NkC3djxxfHQEdcOFUqOXl5
         p2bhSlQurQuf0aaMrHQS2/HIuKEhK8a9LhTJpLbI3NWV5vBopyu8aphcp5EFQCVbfnZ/
         bpTw==
X-Forwarded-Encrypted: i=1; AJvYcCVWpBJoSoqaUHPR/FxMBHxTfnwgTiKSrAfO2Y7c/X11x+BkFyiT0Lalebi9gfd+M8vfmrxAXFZ/WgkJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6PoEGf+Yqc5/dwPmcjf4Moy8f+nOXhKqbapah4KBPr6lvfX8k
	WwfchMPrbkW+Yk8KfvAjq3UV1XVSWL6c866wB+dxsrL5IX/4tabx9hPsthrGzEJqsSmKO4lSHV8
	yaMh67cQ+Bnj9fKMYYiRf3Cav+ms/TdGFaGyzm2RLSNjxonReaZe2Ixrm5725roYofGEXROriwZ
	kffU3yvik7bHiZmtVndFoIVIcH9NaiFzLD+StI79nr9R6e3o9lDg==
X-Received: by 2002:a05:6870:6b8b:b0:288:6220:fe18 with SMTP id 586e51a60fabf-288ede29989mr5858219fac.15.1729162892276;
        Thu, 17 Oct 2024 04:01:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFHMQG+kH208gfIiCgVMibniBpJ9STBwlor/4oG77CWFuIW/8xPcr2jPuy853NfEotH6tqZk6Hzqg2xW/WrByQ=
X-Received: by 2002:a05:6870:6b8b:b0:288:6220:fe18 with SMTP id
 586e51a60fabf-288ede29989mr5858187fac.15.1729162891890; Thu, 17 Oct 2024
 04:01:31 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 17 Oct 2024 04:01:31 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20241016-moonscape-tremor-8d41e6f741ff@spud>
References: <20241016-moonscape-tremor-8d41e6f741ff@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Thu, 17 Oct 2024 04:01:31 -0700
Message-ID: <CAJM55Z-3R5tbvpQB7mLF6b=FD9Wg-78_KPww2nqOLr566WPOFg@mail.gmail.com>
Subject: Re: [PATCH v1] riscv: dts: starfive: disable unused csi/camss nodes
To: Conor Dooley <conor@kernel.org>, linux-riscv@lists.infradead.org
Cc: Conor Dooley <conor.dooley@microchip.com>, stable@vger.kernel.org, 
	Aurelien Jarno <aurelien@aurel32.net>, Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Changhuang Liang <changhuang.liang@starfivetech.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
>
> Aurelien reported probe failures due to the csi node being enabled
> without having a camera attached to it. A camera was in the initial
> submissions, but was removed from the dts, as it had not actually been
> present on the board, but was from an addon board used by the
> developer of the relevant drivers. The non-camera pipeline nodes were
> not disabled when this happened and the probe failures are problematic
> for Debian. Disable them.
>
> CC: stable@vger.kernel.org
> Fixes: 28ecaaa5af192 ("riscv: dts: starfive: jh7110: Add camera subsystem nodes")
> Closes: https://lore.kernel.org/all/Zw1-vcN4CoVkfLjU@aurel32.net/
> Reported-by: Aurelien Jarno <aurelien@aurel32.net>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

Thanks!

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> ---
> CC: Emil Renner Berthing <kernel@esmil.dk>
> CC: Rob Herring <robh@kernel.org>
> CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
> CC: Conor Dooley <conor+dt@kernel.org>
> CC: Changhuang Liang <changhuang.liang@starfivetech.com>
> CC: devicetree@vger.kernel.org
> CC: linux-riscv@lists.infradead.org
> CC: linux-kernel@vger.kernel.org
> ---
>  arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> index c7771b3b64758..d6c55f1cc96a9 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> @@ -128,7 +128,6 @@ &camss {
>  	assigned-clocks = <&ispcrg JH7110_ISPCLK_DOM4_APB_FUNC>,
>  			  <&ispcrg JH7110_ISPCLK_MIPI_RX0_PXL>;
>  	assigned-clock-rates = <49500000>, <198000000>;
> -	status = "okay";
>
>  	ports {
>  		#address-cells = <1>;
> @@ -151,7 +150,6 @@ camss_from_csi2rx: endpoint {
>  &csi2rx {
>  	assigned-clocks = <&ispcrg JH7110_ISPCLK_VIN_SYS>;
>  	assigned-clock-rates = <297000000>;
> -	status = "okay";
>
>  	ports {
>  		#address-cells = <1>;
> --
> 2.45.2
>

