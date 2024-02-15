Return-Path: <devicetree+bounces-42115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A16498566C1
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 16:01:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3CBE21F27E5E
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 15:01:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D0D913249B;
	Thu, 15 Feb 2024 15:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MpjcItyx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF9DF13248E
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 15:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708009252; cv=none; b=la9vprd+OPDyADfz/6eLbx23FyCioA3qvILTG7+bKtj2Kd/wITX9CeKg5C8j0edVIIgcbx0H3XC0DuINc/DeYFyjdcQJUTkPELW5Ysd9miwmlCLoggzCdRoj+mA52m5ThwKsbl3SK5Ni3pzseFGxJetmdglOPHd538OV7yFpQHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708009252; c=relaxed/simple;
	bh=TuiNAUvyq1clV8TcQUgStWd7GbVGRghSxXf3rSzZwzE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=miysz6fGXMnV0WHDxscv6ND5FExu5nz+2dEkpZupAIxb/l8875R7WpkPqG3nBe70E1F1nP1mjMIuxtN0Dx9nxi6kqImSDjw8g2bvMXPhX1sQ+cw4A+5UfC/Cuj+rphKI4R5Bp5RTlNnPw46p1xNEwIEk1NhDpHMaf/FCmAGjGn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MpjcItyx; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-6078c4cadd7so10245647b3.2
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 07:00:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708009250; x=1708614050; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CJ0BMQ4fbAPxFZIL+ExAw2UZkWvzvacKzKpaYXVa9bs=;
        b=MpjcItyxaCUbywq2/eFa9EpNJTbqxHjYzxiGUvadyJ4OpD2g3m4X/lGDCmwdji0F89
         ZI3iiZzXixEt5Ceq2UT/wY6vmjXC6KX5du0vxdF+ZnJH0R4cB96e0DF9PgVExW/+PJ9G
         owZiDKQ4YK3LEngMTT6K1FVQmx2pltalCWdLGmxV766sl7oax+LSo/5H2dJ7jIBfOCG+
         NfeLZACVrTmdxU4rSK1ptNPKzImM3PtzV3W03K/9imOLSjYcvzQJcVGA7a+cKKrbzfVE
         KvGCKypdYp7V70/ltmKfLfVkw2SUm5ku6/RfV+DUnaCYMBLfJG5LnMRxHfhK7cfXTWBx
         Y/0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708009250; x=1708614050;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CJ0BMQ4fbAPxFZIL+ExAw2UZkWvzvacKzKpaYXVa9bs=;
        b=XPK1qi1shDXWBA9dDbNv03wxtKkEIYVzoo9N0pOgPTUadPN0IXK5Zn2iU1+cebeyN3
         wnesl7yW6i7wUljeOhae8xpj1eCIbx0QRKzC/NaiWiO/a3+zh/xVyZjvnm+Bz0kfEv7Y
         rh2yumtbdKCR4NLH7ij4tHqPbhD8AOhGyIT7onUeBIbZhKNP7PrsQV8bvP/aT3ZBRqvb
         XyWJnO4hWX6UV5vdtCVekgeWcteb0/raDMvJS2Z6zGV7Ob/yL+QTLijUbwIyiDYX2C0s
         bUsItFCvxUjfZfxKSRpkFn3ohXGjHJKUgwk/koubxFUF9ozCkQKlElnm5qil+CZAv0p6
         wC9Q==
X-Forwarded-Encrypted: i=1; AJvYcCULw2z41vGRnXcXW0dpyEXf/iE6OH2KYMTJ7zUq37bkme/H8F3kk9SSJ3Bq0xrXeuW7q1g1DdbmJVgFhLasWU23hJP9WGTJt+5krQ==
X-Gm-Message-State: AOJu0YyHlAPoly0jNAa4xYDyw4r71rutx9l9Jja83h36jzheX88XRLy9
	5dLi8pRuOMzoe5wUQmY87NjHTczGC5BYJFlkhnGdgsso2HQG6FpGdqrcDY+uFmjzE9PedFeNiBz
	TBMOhoP2q6gsAXqppVLjHfXiAC9O2hK18IdueYA==
X-Google-Smtp-Source: AGHT+IH1iXXNMam85attnJ7ZRIB2/4oXnewhRdPWa1d/MOJ9E89Emu3qeIMg52lohwW+P6inqZ48cubKQOYzlT5hKRw=
X-Received: by 2002:a81:7994:0:b0:607:7e73:fce1 with SMTP id
 u142-20020a817994000000b006077e73fce1mr2063382ywc.26.1708009249786; Thu, 15
 Feb 2024 07:00:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240215134856.1313239-1-quic_mdalam@quicinc.com> <20240215134856.1313239-6-quic_mdalam@quicinc.com>
In-Reply-To: <20240215134856.1313239-6-quic_mdalam@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 15 Feb 2024 17:00:37 +0200
Message-ID: <CAA8EJpqV=w38TqjfTp6OurAwHjR87PpmQTs2jUo6O7vF1-T-WQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: qcom: ipq9574: Disable eMMC node
To: Md Sadre Alam <quic_mdalam@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, broonie@kernel.org, 
	robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com, 
	manivannan.sadhasivam@linaro.org, linux-arm-msm@vger.kernel.org, 
	linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, 
	quic_srichara@quicinc.com, quic_varada@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 15 Feb 2024 at 15:49, Md Sadre Alam <quic_mdalam@quicinc.com> wrote:
>
> Disable eMMC node for rdp433, since rdp433 default boot mode
> is norplusnand.

Are they exclusive?

>
> Co-developed-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Co-developed-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> index 1bb8d96c9a82..e33e7fafd695 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> @@ -24,7 +24,7 @@ &sdhc_1 {
>         mmc-hs400-enhanced-strobe;
>         max-frequency = <384000000>;
>         bus-width = <8>;
> -       status = "okay";
> +       status = "disabled";
>  };
>
>  &tlmm {
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry

