Return-Path: <devicetree+bounces-44339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0B485D865
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 13:54:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 966DC285C36
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 12:54:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F7296D1CC;
	Wed, 21 Feb 2024 12:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Nyc5g1sP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EACA69D36
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 12:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708520043; cv=none; b=eczm5l9QQeYU7Cw0/25eLouyJBNj3s25UkW1Bk0OOYx702S21tQmJs6KfGTS1elq3VBnjXwRl53Y+UY57TGwJog19HFaUEPUQT3TkTAzTWxh0ximCMCev9vZBGOUP6foZb96OoRAVvEd5xvDt4ncjiLwXxcUeqnNuDqKPgmkQZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708520043; c=relaxed/simple;
	bh=gj9HszIZjr2+2zgmHjzU08k4foTBQoFlvs186D3Pyjo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bf3SRftGKBnkuPhBE95aaGinOdZ7xooFYpi0aHBzJYDoJ33Ns6v0ldwt63Nw+mLKNjxkiizUYi9lKNYh+tUB82y+GQExh+s09oj8hxaLzE0nD2aVDNJi6+DfRtlToALD9tbPwuIhjM1LwfFBIaZGUqHL6e3z/MPARdo4JqIMP1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Nyc5g1sP; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-564fc8f56c5so727507a12.1
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 04:54:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708520039; x=1709124839; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rrIn9V2qKd16f2HB+Y2fWO0Di+JAOx1XvlTDsXHt6ls=;
        b=Nyc5g1sPE+Q4H+B5KqKIVWiNROK+ZdcyXQIr0H1ipiDB4/mtNG9nb88GreXbGU8N1n
         YiQ/v0+Z2cQskEsyewhRsWBoCloADjW/2imEdmIP/26cx+ZLZlYicn8LkD7z4VZRtoZ7
         vTkgwiTDIlhCvQnWSOPYqiVP6zAk2Zde2cHHVL6xfZvLo3pG/9mN+JIPz7P/GRAtAWTa
         +lX5UtYtBbuHWgXPdRHwdrYkx88I4/x6OKvkML9AfG8p8yYG2zI6z61qkDTChMKSM1N5
         9/gR+4+hD/9WsnTuVAAGy7FpQQ9X+6Tfjty+URhQQK48ncXLjqc8yqKpMrvIK3Ez/7gR
         b+8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708520039; x=1709124839;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rrIn9V2qKd16f2HB+Y2fWO0Di+JAOx1XvlTDsXHt6ls=;
        b=uTTOWZvtBIHf2pnMwBW5EsA4/Bh0A4UI7s2+L2ooiTFjh18y2HmdGMpKiyDQjrS6QR
         1vCzn/HhLL+GC3vldGitWXffB0oWKhkia4rQysVzLANJFd937jXCrxkwcI1gNDZrE6w5
         9a7b+qkyEjp4M1TYtz1BzAHfCGyKFHNpJ8CH2KvVAUf6ly7dPhKmlU29h6WuikWmtFda
         L9PAWMA8KMYqdKYbVxmS8QsDq7fsTnfPLxr50qXkEd4W6eHBWK4oAC8Rd2azlzojZ7SC
         CP2xKkuiPc9xmgA1O7AwbIvdxXngFDMDhTBMCpVbIGVt5yLdg9pOE5H8NQ+WYbL25OwF
         +BVA==
X-Forwarded-Encrypted: i=1; AJvYcCX0bh0eS+JHE0MYmISR9D+1/Q3bIFwSAf+Xs+QMxL4EctMQGENOFctN7b2qE7RKgKC2IFAYxPRnasEBcl89OWBYAySCB5DXpomTdA==
X-Gm-Message-State: AOJu0YxM6pI3aLpvOXgDGmPcHPsxHpFYrBosMXbcOwZK1lfhMBXUexkE
	hEk2/3NatmDvPS/cW7csJiXIEKmeC6r4gwgchsSKwA8eJYdryZv8VH4IetRejkU=
X-Google-Smtp-Source: AGHT+IHlu6VRCSoQfdAgctz6wL9+t4rQ5qwcFr0fCK5QYqDHcoSmXL6ExdOSZBj1EFMB5ncELO6NuA==
X-Received: by 2002:a50:ee02:0:b0:564:5227:972 with SMTP id g2-20020a50ee02000000b0056452270972mr8437730eds.33.1708520039525;
        Wed, 21 Feb 2024 04:53:59 -0800 (PST)
Received: from linaro.org ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id fg11-20020a056402548b00b00564168e6674sm4384642edb.51.2024.02.21.04.53.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Feb 2024 04:53:58 -0800 (PST)
Date: Wed, 21 Feb 2024 14:53:57 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: neil.armstrong@linaro.org
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8[56]50: Fix SPMI channels size
Message-ID: <ZdXyZV0t+7QUvwG0@linaro.org>
References: <20240220-dts-qcom-sm8550-fix-spmi-chnls-size-v1-1-24e22107a6ac@linaro.org>
 <2585d866-8451-492e-9f8b-95210ac52a81@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2585d866-8451-492e-9f8b-95210ac52a81@linaro.org>

On 24-02-21 13:52:12, neil.armstrong@linaro.org wrote:
> Hi,
> 
> On 20/02/2024 18:04, Abel Vesa wrote:
> > The actual size of the channels registers region is 4MB, according to the
> > documentation. This issue was not caught until now because the driver was
> > supposed to allow same regions being mapped multiple times for supporting
> > multiple buses. Thie driver is using platform_get_resource_byname() and
> > devm_ioremap() towards that purpose, which intentionally avoids
> > devm_request_mem_region() altogether.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >   arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
> >   arch/arm64/boot/dts/qcom/sm8650.dtsi | 2 +-
> >   2 files changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > index 7474cddf7ad3..3904348075f6 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > @@ -3318,7 +3318,7 @@ sram@c3f0000 {
> >   		spmi_bus: spmi@c400000 {
> >   			compatible = "qcom,spmi-pmic-arb";
> >   			reg = <0 0x0c400000 0 0x3000>,
> > -			      <0 0x0c500000 0 0x4000000>,
> > +			      <0 0x0c500000 0 0x400000>,
> >   			      <0 0x0c440000 0 0x80000>,
> >   			      <0 0x0c4c0000 0 0x20000>,
> >   			      <0 0x0c42d000 0 0x4000>;
> > diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> > index d488b3b3265e..260eda81b743 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> > @@ -3747,7 +3747,7 @@ sram@c3f0000 {
> >   		spmi_bus: spmi@c400000 {
> >   			compatible = "qcom,spmi-pmic-arb";
> >   			reg = <0 0x0c400000 0 0x3000>,
> > -			      <0 0x0c500000 0 0x4000000>,
> > +			      <0 0x0c500000 0 0x400000>,
> >   			      <0 0x0c440000 0 0x80000>,
> >   			      <0 0x0c4c0000 0 0x20000>,
> >   			      <0 0x0c42d000 0 0x4000>;
> > 
> > ---
> > base-commit: 2d5c7b7eb345249cb34d42cbc2b97b4c57ea944e
> > change-id: 20240220-dts-qcom-sm8550-fix-spmi-chnls-size-b8e6323fecc0
> > 
> > Best regards,
> 
> I confirm the value, but I think you should split it in 2 and add Fixes tags
> 

Will split and re-send.

> Take my:
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> if you re-spin.

Thanks.

> 
> Neil

