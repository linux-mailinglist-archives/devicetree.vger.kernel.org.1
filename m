Return-Path: <devicetree+bounces-98357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA4C965DDA
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 12:03:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 404351C22DDE
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 10:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F10CA17BB16;
	Fri, 30 Aug 2024 10:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="V5s9JdGv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AFA17B4F6
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 10:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725012209; cv=none; b=bxvVn9M028h153HWb999/W/AErbckO25IOq81irwT0JAHfmK5B9+ZnRmN6B0sYKd0Fs1DyG9F8yFACRRaXOT/eWfXTvaMZ+fjCOxjTzbyWcAaPplGnJU09WO0KmKbQElJS7MHrkQPFLjWDv4plUIJOAhJ92O8wcVzUemk3qTtaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725012209; c=relaxed/simple;
	bh=Qzz2aWEELYP8mMctfESYoFBlj6mzA2qfCfyV6WlS30g=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=Glk2p2Id31q0zf4pHFLeX5es5m4fPC9JtlJUQaPFLECXfqHK/DfNAeqXYjM8wDECFFLe0O8Y3A+3FBaYtfNWvU1iEfwvu68lTHJPHKAaXpXGec087GrkNCE1rX5wgAwM5c2PUyv/ck9v8/XiNFFLQifMfENvkZumOEYnNemiKhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=V5s9JdGv; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a8682bb5e79so204840166b.2
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 03:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1725012206; x=1725617006; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9cIeMDcm3LN97MVIbOIXKOQTp1QGgYG2TQG0/ddH0/U=;
        b=V5s9JdGvjpMmzsjMgKNa5LQuI1pfSY4Rir5lYRnlWhYtHkVtHdWx7DSb6ARrmgZCQb
         cdq5tQdJvlGTAc2vO0ttqHMRXJhiUq3cPPp/49alCMBQpLyO5HAXoPEg/YuDJ7RPDe69
         PpYNhHsidavUsb6cDU7aNPqq8zKaGGGJQAiUNKpo+clM3dzHkh7yXfn8nTVJDoQK9FHk
         Pc9Hy+YFUuhEudlLmOOmPmcaMToEgZWLfDJcpKc1CnlraEf1YoRUwuDfTfJfyHbm07lS
         v62Ygjr/4zDbUUHdcbC/AYN05b0d96FJwFhElQqUVRKp6s8KwRCUTnXa3XPsHwP70lkL
         Y4VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725012206; x=1725617006;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9cIeMDcm3LN97MVIbOIXKOQTp1QGgYG2TQG0/ddH0/U=;
        b=ZjMDJy8DAtws3mvnC+agpIW4LnSYxWvZd1Zb5NmFs6zs7tan2YN19Jj4yQSmsLSGCM
         c6RMTp81Lz4CxtrG0FlSNrBvwBT7VfCZ4SmMgQGkk1HZbYapFzT/IJ/pt7dZ0Khw2mzm
         sMgzK1SSkrhRUuEPqLOh1frzy8KlzoZrKatBx1SPDRJyhFmPgWivK7DmA2IdmzVUhc2N
         LQj0C8WW9mh2Vd71y11sUBbJCQvW6OhFO6y2dS1D0Q/czwgkl6FJ6ctGt2346LFYAQpt
         RSOB1ryz/jylZ9n4mtzoSgb+W4Qxe8DJAy3Wn3BzmNCwVMef/3PdyYqE1HynIkHFn2Xm
         LZgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTPfUrdJkXnI2dGn0G16OEXYjDdcYEPm21rmtpHWpfQ4LJVgfLGpx/Fe2LiVaJlJFGjnLhmE0c8IS1@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8m7hbWTl34nCaQOJqytV6NbMFZglnPvB/E7eZb+tizpb6HLpo
	+zWF+V1e6NCl6MjelDXtyMyWDlil5b/3tfyfqhotpcbWEut+/SqqYUiLajNoViU=
X-Google-Smtp-Source: AGHT+IHtyYxAeiiHI3ftANQtuGsazwoduUWpfMVaJOsb+Oa0tdg31ut88AFK+yFMeMN/gW5P+qDwyA==
X-Received: by 2002:a17:907:9717:b0:a7a:a06b:eecd with SMTP id a640c23a62f3a-a897f775d8amr420312666b.5.1725012205800;
        Fri, 30 Aug 2024 03:03:25 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8988ff289fsm197362666b.2.2024.08.30.03.03.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2024 03:03:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 30 Aug 2024 12:03:24 +0200
Message-Id: <D3T5SIUJ281Q.2APOQMPFJ9VYI@fairphone.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280.dtsi: Fix PMU nodes for Cortex
 A55 and A78
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Danila Tikhonov" <danila@jiaxyga.com>, <andersson@kernel.org>,
 <konradybcio@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>
Cc: <cros-qcom-dts-watchers@chromium.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux@mainlining.org>
X-Mailer: aerc 0.18.2-0-ge037c095a049
References: <20240818192905.120477-1-danila@jiaxyga.com>
In-Reply-To: <20240818192905.120477-1-danila@jiaxyga.com>

On Sun Aug 18, 2024 at 9:29 PM CEST, Danila Tikhonov wrote:
> The SC7280, SM7325, and QCM6490 platforms feature an 8-core setup
> consisting of:
> - 1x Kryo 670 Prime (Cortex-A78) / Kryo 670 Gold Plus (Cortex-A78)
> - 3x Kryo 670 Gold (Cortex-A78)
> - 4x Kryo 670 Silver (Cortex-A55)
> (The CPU cores in the SC7280 are simply called Kryo, but are
> nevertheless based on the same Cortex A78 and A55).
>
> Use the correct compatibility.

Hi Danila!

Please remove the ".dtsi" part from the commit message, the subject
prefix should be just "arm64: dts: qcom: sc7280: "

Regards
Luca

>
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/q=
com/sc7280.dtsi
> index 91cc5e74d8f5..ab024a3c3653 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -845,8 +845,13 @@ wlan_smp2p_in: wlan-wpss-to-ap {
>  		};
>  	};
> =20
> -	pmu {
> -		compatible =3D "arm,armv8-pmuv3";
> +	pmu-a55 {
> +		compatible =3D "arm,cortex-a55-pmu";
> +		interrupts =3D <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +
> +	pmu-a78 {
> +		compatible =3D "arm,cortex-a78-pmu";
>  		interrupts =3D <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
>  	};
> =20


