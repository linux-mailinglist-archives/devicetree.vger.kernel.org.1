Return-Path: <devicetree+bounces-38635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B1F849D29
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 15:37:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C5ABD1C21871
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 14:37:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 883B72BB1F;
	Mon,  5 Feb 2024 14:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MYTE7d5+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A5D2C197
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 14:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707143822; cv=none; b=EmrYXAtXA5SYDLt/YPDz849S9nKYDUf05182bVUXLTgPcVmMy7WyKU1QSN8v+YUdG75fqx/UBXQzJ7NJI/SvRDmUhpvkeYqfYladxUisYw7oalJHZUrgBMRz3QFYPPOkxlK/QoyzpZPFajN9epHdgQqrW9puNeJkmHAtu8Pf4iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707143822; c=relaxed/simple;
	bh=gdFpGlX+7Px6n5MNmfG0p+jDiu1XQ8hKoha8bMMknYA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iLqiaFF39feZenILV9qq5k+ITAm6mbp87yxDjpsqKxuQUub0Ujv1ykXruZLvOK5u3uN4YUQPLWFA3qE0gRFQ/0LEon1Cy030agpCSrPi/q0GfZOZ+IMmDptaRhe8ri/0OV19cX/o/rie1tVkb6Oh3NoAqmx6w5Ko/LRKoJdGSbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MYTE7d5+; arc=none smtp.client-ip=209.85.219.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-68c820a25a0so15600476d6.2
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 06:37:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707143819; x=1707748619; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UYfEQ1FBGk7gyXSY+6RlLA4Hxjr0NcQe/J33L96nVSM=;
        b=MYTE7d5+EESsNmvM0nie8wjTF9YO4gVqJG83HjOJzOhQ+I+lcIghSSGyncBn6HgnVb
         GAMjuJY4zh2U/wVgFKoP2QofNom+OCWMTorV0eN/4T+/H4FWFHjuPaiDSDnKsB+r3hlj
         1sUXOFSCrhm7oUPsjtDCiCuKq4thCnUGBRTikNsLm9vzvAMzuCMOipKXhI1y8Qw16I4N
         0cn0+IGtS5TkiFCPMVV5jeV7/qU7KkpHYmsLpYu9DIDSb5JaLcAJDPXNQCKRzm2OKWfd
         II958VSlxDEc+l774DXW99sKbAH/4Kv3LXli+igtXeQT3WhBDvnHHjVs/Tpby+ZLSskZ
         EcwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707143819; x=1707748619;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UYfEQ1FBGk7gyXSY+6RlLA4Hxjr0NcQe/J33L96nVSM=;
        b=t0XiUV7Jiz9LWHPCbQE7P/5UrryTZORvHEPJ33LPKLDLnjr6kb2Ns+rIgri5Rknk9D
         XNDIqOfjVO+lbXaKpqK3B37bccqdjPGqiTIjXjU1Nlpm6VU/9cKr1+jw7tLn381kgk7f
         pW6wVWNs//yg/zGaEsHtBg1Y/Vx4LSwC/yog4kc9jmPNSZEkJR08n73XrFOhuPOGOt6y
         +V4K5c1GvYGr1Ea2iNtA/fz1CerFskCaHnLy9oFKt+sCm18WyTWzYvc5lrww9VL3ERz2
         LpQqAbkGul5/+m43Yzg76hxrUiEOPzEPNZtZijylqL99ZquOfzIFnWqHSL4mzfYbFhQO
         rjOg==
X-Gm-Message-State: AOJu0Yz7SeFiZTM2dU3/UiZe/yfVoFG2fE0juTxp71HAqFcXaTK4253f
	EC4lnYGwASuKgRnvriWBjpk55NyFj4Z3P1j+JckIIxZT9Zm/MtAKVOYZD6vyuQAQ/PskKlTTdmT
	kKBwePFubrosZsDJ0Xw5dxwg5wUpFtp+KQ6a+Gg==
X-Google-Smtp-Source: AGHT+IFYNibrrGaBgxOJ18X6jY6UAgMXPYhubetCq1dtOjdD26HHAmiNvIRN2xTRGDThOEXkeugdD8R3CbwDYGPIubg=
X-Received: by 2002:a05:6214:f23:b0:68c:48f5:31da with SMTP id
 iw3-20020a0562140f2300b0068c48f531damr10597994qvb.34.1707143819702; Mon, 05
 Feb 2024 06:36:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240201172224.574238-1-alexey.klimov@linaro.org> <20240201172224.574238-2-alexey.klimov@linaro.org>
In-Reply-To: <20240201172224.574238-2-alexey.klimov@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 5 Feb 2024 14:36:48 +0000
Message-ID: <CADrjBPpqHx1uoVZCYDX51kW+JdOr_-+4oryOjXcUMFkmLGTBLw@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: exynos: gs101: add chipid node
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: krzysztof.kozlowski@linaro.org, alim.akhtar@samsung.com, 
	linux-samsung-soc@vger.kernel.org, semen.protsenko@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, klimov.linux@gmail.com, kernel-team@android.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, saravanak@google.com, 
	willmcvicker@google.com, arnd@arndb.de
Content-Type: text/plain; charset="UTF-8"

Hi Alexey & Krysztof,

On Thu, 1 Feb 2024 at 17:22, Alexey Klimov <alexey.klimov@linaro.org> wrote:
>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  arch/arm64/boot/dts/exynos/google/gs101.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> index d838e3a7af6e..156fec2575bc 100644
> --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> @@ -283,6 +283,11 @@ soc: soc@0 {
>                 #size-cells = <1>;
>                 ranges = <0x0 0x0 0x0 0x40000000>;
>
> +               chipid@10000000 {
> +                       compatible = "google,gs101-chipid";
> +                       reg = <0x10000000 0xd000>;
> +               };
> +

I was wondering about the 0xd000 size here, as most upstream platforms
use a chipid size of 0x100 or 0x24. I see the downstream gs101 kernel
also uses 0xd000. Looking a bit more, that is because gs-chipid.c also
has support for dumping other areas of the OTP SFR bank like asv table
(offset 0x9000) hpm_asv (offset 0xa000) and hw_tune (0xc000).

I checked Exynos850 and that also has ASV tables at those same offsets
above, but it currently uses a chipid size of 0x100 upstream.
Exynos-asv.c driver is part of exynos-chipid.c upstream so it seems
reasonable to have the increased size including those SFR registers.
Currently exynos-asv.c driver only supports Exynos5422 upstream.

@Krzysztof - From a process PoV what is the best/correct thing to do
here? Have the increased size in DT that includes ASV parts of the OTP
bank from the get-go?

Thanks,

Peter.

