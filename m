Return-Path: <devicetree+bounces-17237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 138E87F19CD
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 18:26:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B2A801F23E7B
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 17:26:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 229A920B1F;
	Mon, 20 Nov 2023 17:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="WvRbs6Vd"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E45EC3
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 09:26:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1700501192;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=X8aUUxFA022YpgE+kgLKSfCpFEiyXZX3VeVuIGH9hlI=;
	b=WvRbs6Vd1SYjXrPeUvUa6tQgi5A5Fw/4Y7ojGZ99MWxv+KehrR39bYzoItN32eBuf+8KTU
	JooxB/9bBGR+hSCcUBquxIcYpS0owN5JwUoQj2rumPdzhVwXmvMlLHDkOymhbnYYsk9c4h
	umqbRwuz7FDum8fwe472G3i0fN1yjdg=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-241-50hE7PBXPzmyh6w6sqcUZQ-1; Mon, 20 Nov 2023 12:26:30 -0500
X-MC-Unique: 50hE7PBXPzmyh6w6sqcUZQ-1
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-66d120c28afso32883636d6.0
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 09:26:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700501189; x=1701105989;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X8aUUxFA022YpgE+kgLKSfCpFEiyXZX3VeVuIGH9hlI=;
        b=fFIl2k3AeGPmyzt7X3XGYmKDu56SL0LIWnRO6yunrYqJVmPCwbSveI1f5980VBXGXI
         11OdzD8zej59uNlANVo73Q/fdj7knA3BB+CwQtbUA42WK56v5LMDwP3jFeTK/6n6+evl
         3P0Mf15EtoCM5u/GEQwvpCAapBmmDj9neftPG3HzqH2GT2RSQ78b5SEsGxyDnqEsl0M6
         nZXTrO97f1BnlRKbj7OvZ5KiE3CvFFb6udwlvJElnerpYlfAzTtu7BrXTSuHa5CcedLv
         MKbAU0f+TtKEErI59Nvc+P9FfbG/sYTXN8rgvJDJwO6F36Y9EKkkX7MXVhA6YwBqZfcv
         Bz9g==
X-Gm-Message-State: AOJu0YxTx2g5P1PDl7RPPTyBJJIjE5es5PsqFV4PMZDow2EjbsBmBbh8
	r8iCCurwLsWAw8M/AFF7J2E2soUCMBLD/HJhvp9B1V8rvfkF1XuwOOoprTL72uJDHBuRM3tnoIh
	Oldk/86LZ/BTJHi/7u88Lgg==
X-Received: by 2002:a0c:f002:0:b0:66d:a301:e512 with SMTP id z2-20020a0cf002000000b0066da301e512mr8464883qvk.27.1700501189536;
        Mon, 20 Nov 2023 09:26:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF8NqbXBCHlBTFyU0Oqc4To/gML4pdGHQ6PKI1u0iGxOpMLI/CuYR9Se7qPqoa8FdpAn03q6g==
X-Received: by 2002:a0c:f002:0:b0:66d:a301:e512 with SMTP id z2-20020a0cf002000000b0066da301e512mr8464860qvk.27.1700501189287;
        Mon, 20 Nov 2023 09:26:29 -0800 (PST)
Received: from fedora ([2600:1700:1ff0:d0e0::37])
        by smtp.gmail.com with ESMTPSA id e15-20020a0cd64f000000b00674a45499dcsm3056221qvj.88.2023.11.20.09.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 09:26:28 -0800 (PST)
Date: Mon, 20 Nov 2023 11:26:26 -0600
From: Andrew Halaney <ahalaney@redhat.com>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Shazad Hussain <quic_shazhuss@quicinc.com>
Subject: Re: [PATCH 02/11] arm64: dts: qcom: sa8775p: fix USB wakeup
 interrupt types
Message-ID: <ow6hw44aqmi2gw4bnqa363jidmyoxhuzpasy4xg4c5a34brpmo@puehdmcibmfh>
References: <20231120164331.8116-1-johan+linaro@kernel.org>
 <20231120164331.8116-3-johan+linaro@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231120164331.8116-3-johan+linaro@kernel.org>

On Mon, Nov 20, 2023 at 05:43:22PM +0100, Johan Hovold wrote:
> The DP/DM wakeup interrupts are edge triggered and which edge to trigger
> on depends on use-case and whether a Low speed or Full/High speed device
> is connected.
> 
> Note that only triggering on rising edges can be used to detect resume
> events but not disconnect events.
> 
> Fixes: de1001525c1a ("arm64: dts: qcom: sa8775p: add USB nodes")
> Cc: Shazad Hussain <quic_shazhuss@quicinc.com>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index b6a93b11cbbd..4b42a329460c 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -1610,8 +1610,8 @@ usb_0: usb@a6f8800 {
>  			assigned-clock-rates = <19200000>, <200000000>;
>  
>  			interrupts-extended = <&intc GIC_SPI 287 IRQ_TYPE_LEVEL_HIGH>,
> -					      <&pdc 14 IRQ_TYPE_EDGE_RISING>,
> -					      <&pdc 15 IRQ_TYPE_EDGE_RISING>,
> +					      <&pdc 14 IRQ_TYPE_EDGE_BOTH>,
> +					      <&pdc 15 IRQ_TYPE_EDGE_BOTH>,
>  					      <&pdc 12 IRQ_TYPE_LEVEL_HIGH>;
>  			interrupt-names = "pwr_event",
>  					  "dp_hs_phy_irq",
> @@ -1697,8 +1697,8 @@ usb_1: usb@a8f8800 {
>  			assigned-clock-rates = <19200000>, <200000000>;
>  
>  			interrupts-extended = <&intc GIC_SPI 352 IRQ_TYPE_LEVEL_HIGH>,
> -					      <&pdc 8 IRQ_TYPE_EDGE_RISING>,
> -					      <&pdc 7 IRQ_TYPE_EDGE_RISING>,
> +					      <&pdc 8 IRQ_TYPE_EDGE_BOTH>,
> +					      <&pdc 7 IRQ_TYPE_EDGE_BOTH>,
>  					      <&pdc 13 IRQ_TYPE_LEVEL_HIGH>;
>  			interrupt-names = "pwr_event",
>  					  "dp_hs_phy_irq",
> @@ -1760,8 +1760,8 @@ usb_2: usb@a4f8800 {
>  			assigned-clock-rates = <19200000>, <200000000>;
>  
>  			interrupts-extended = <&intc GIC_SPI 444 IRQ_TYPE_LEVEL_HIGH>,
> -					      <&pdc 10 IRQ_TYPE_EDGE_RISING>,
> -					      <&pdc 9 IRQ_TYPE_EDGE_RISING>;
> +					      <&pdc 10 IRQ_TYPE_EDGE_BOTH>,
> +					      <&pdc 9 IRQ_TYPE_EDGE_BOTH>;
>  			interrupt-names = "pwr_event",
>  					  "dp_hs_phy_irq",
>  					  "dm_hs_phy_irq";
> -- 
> 2.41.0
> 
> 


