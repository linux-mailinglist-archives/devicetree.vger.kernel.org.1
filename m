Return-Path: <devicetree+bounces-59820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF4F8A7170
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 18:30:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49E572853F2
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 16:30:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 241A720315;
	Tue, 16 Apr 2024 16:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dVZ07b8E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 847CF10A14
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 16:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713285040; cv=none; b=CUknNPBYpxmB8eO+0ACTiRtzdLfftb+YrUerncICn4b5UpnkaonPp37FBR0N4TKM0b8T2aLsFcimHduV2vM3eDgqgfZzLcAHq8JqiBKxK3MGHJl0OgKlhZAqpvf1q9aEGCIGoTljQRrjP3XuponlZJVuSn3dfFVMIXwa9lnj44o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713285040; c=relaxed/simple;
	bh=i6isJ6P+DmA03QEMUZZRfOgQGnBrFrtBcHWUtle2irA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RAKVcdGPbGJlb+Y6SaQz02XzSS0F6hOjD0BFKAsGMjc0BqGB64D2iO3PXufyNKtFtWbqkh8IvAH//ulMhKCWxqABUW/Ejx78cTBIrDMhsYZzSOtMXDsZCbPtF5WvqhmXfxWTvei4OBrBQ+xRr9cj7Wu3LDeeJyq5AZE8PFY5P4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dVZ07b8E; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dd045349d42so4335417276.2
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 09:30:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713285037; x=1713889837; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NF90273mH/1Hj4K7fNF2c+4RChPoCd7YEPMpvP9Bb1k=;
        b=dVZ07b8Ejoj6D1X7XZBGjiA/1h/PAl/IkfPHUwAAJRPA7afB2+zzllvUjZQwBUxjW1
         qhPqB8pN2HjJFeW/FtgXmT0pkdaaOT4OTef5fsDda997CxvnpKJ89U0ev9AVtdh7RApk
         s1P+yInZVnoy+gizh1TpjvpxeqqKJDn4VtzUE8I1Oour+tgzpCxLnRKCKN9znZQ/TEX5
         DehwNS4G5k619zco5jcnfIIGXaQ41RQFfI+xmgJ9mmalCNHkTRPEeuprwxoqqgQ/YMwB
         GrmDhHdcZrnNKxmjK0tGgdgkmXnmGlH+ksJNQZyhDEx4pyd+JuRNqMEFhi7A/4GlDs+J
         qvtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713285037; x=1713889837;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NF90273mH/1Hj4K7fNF2c+4RChPoCd7YEPMpvP9Bb1k=;
        b=j9ACF0MQVO2BzUx72s8KxILm9kRSGOuAcffQxPzeO21cwVz9IFwSlIFDzSKR1ztdq3
         vWCz1XqBT6f8y7nLsnA0yLed2km699EPnNr86iCtE9bEXLTbwPD4doRKYhiPbNHiGCl6
         sd7ely2CG8y8179EfYVYCVgNZ2CffXd3NLp9OvEuQTk1q3/u6gqFc7ytafoocJFvsEOc
         oMztEWfwZL+DS7a/bdrNI9dxUAdnppQkQPjeIRF4vCHpkaoDR4cEZngZcjsz3wBFEmqe
         GuRsg8Ig9glDyBQ4HMDds8GMDxFQ/Gw8jWy+IWWlUoBTPTh3yIK+2y2jnQ0iofBVjEea
         OD2g==
X-Forwarded-Encrypted: i=1; AJvYcCXoS8Aw1gdjlSO+JA7ukRo4+oQdxVR2X3sZ88kP6P6pWk075rlaLvLkWYMnpomV6VL+5TqnJ6DtWgJt2Im32c7e4YBY6seoeCnA8w==
X-Gm-Message-State: AOJu0Yxj0FxaVT3tTmWjxM/50DQWVVgqyi2jPDCfs9YiKQ3tRRXO+vJZ
	6BxGAznQ0quNIn4H6OO9YcPSRZwzCMnzUWDdz/SCKrsF0kNyxjSvCkH2UKync/zxZBNK/K4M/RL
	5DNBwXgbdhSDQBikT7uOUb9TnCY3ElXATj0DCdQ==
X-Google-Smtp-Source: AGHT+IEjMOaLW+dZXnmUksR6vtKRirG2eW7OoJGFKiQiZHVD8H64kRN4iG4KJaIkSZOMoab9SDZ9UwgQotY0/8nhnJc=
X-Received: by 2002:a5b:186:0:b0:dcd:4d:d342 with SMTP id r6-20020a5b0186000000b00dcd004dd342mr11646536ybl.50.1713285037528;
 Tue, 16 Apr 2024 09:30:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240328095044.2926125-1-quic_sibis@quicinc.com> <20240328095044.2926125-5-quic_sibis@quicinc.com>
In-Reply-To: <20240328095044.2926125-5-quic_sibis@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Apr 2024 19:30:26 +0300
Message-ID: <CAA8EJprccauto=oMFbXcNg6Yg9P+Ph7C1EMPaQ5sXarf-3Kxkw@mail.gmail.com>
Subject: Re: [PATCH 4/5] arm64: dts: qcom: x1e80100: Add cpucp mailbox and
 sram nodes
To: Sibi Sankar <quic_sibis@quicinc.com>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, andersson@kernel.org, 
	konrad.dybcio@linaro.org, jassisinghbrar@gmail.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	quic_rgottimu@quicinc.com, quic_kshivnan@quicinc.com, conor+dt@kernel.org, 
	quic_gkohli@quicinc.com, quic_nkela@quicinc.com, quic_psodagud@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 28 Mar 2024 at 11:52, Sibi Sankar <quic_sibis@quicinc.com> wrote:
>
> Add the cpucp mailbox and sram nodes required by SCMI perf protocol
> on X1E80100 SoCs.
>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 28f65296781d..4e0ec859ed61 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -4974,6 +4974,13 @@ gic_its: msi-controller@17040000 {
>                         };
>                 };
>
> +               cpucp_mbox: mailbox@17430000 {
> +                       compatible = "qcom,x1e80100-cpucp-mbox";
> +                       reg = <0 0x17430000 0 0x10000>, <0 0x18830000 0 0x10000>;
> +                       interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
> +                       #mbox-cells = <1>;
> +               };
> +
>                 apps_rsc: rsc@17500000 {
>                         compatible = "qcom,rpmh-rsc";
>                         reg = <0 0x17500000 0 0x10000>,
> @@ -5157,6 +5164,25 @@ frame@1780d000 {
>                         };
>                 };
>
> +               sram: sram@18b4e000 {
> +                       compatible = "mmio-sram";
> +                       reg = <0x0 0x18b4e000 0x0 0x400>;
> +                       ranges = <0x0 0x0 0x18b4e000 0x400>;
> +
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +
> +                       cpu_scp_lpri0: scmi-shmem@0 {

This doesn't seem to follow the schema.

> +                               compatible = "arm,scmi-shmem";
> +                               reg = <0x0 0x200>;
> +                       };
> +
> +                       cpu_scp_lpri1: scmi-shmem@200 {
> +                               compatible = "arm,scmi-shmem";
> +                               reg = <0x200 0x200>;
> +                       };
> +               };
> +
>                 system-cache-controller@25000000 {
>                         compatible = "qcom,x1e80100-llcc";
>                         reg = <0 0x25000000 0 0x200000>,
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry

