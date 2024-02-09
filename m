Return-Path: <devicetree+bounces-40195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 714B584FA0D
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 17:51:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38F4928BEFE
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 16:51:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 065997E595;
	Fri,  9 Feb 2024 16:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="z2L+VNsn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0BF1272BD
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 16:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707497259; cv=none; b=eMZlYQujMDKZ7iAxljwCJhM/YrQ8JQQCkxrDnsV/uzDiuigP0InC+N5E9HbFIg7eztll/rhBx8RxyfLi5k1KV7NEDC3P2L7kOYF6H9h8k1SRt9DKM8EXsuwUtVCaa+n8jBLAm8QTslA63WGFhFyl+//xiZ0GuOt4xKOQheVkd6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707497259; c=relaxed/simple;
	bh=EHXtj1I/ftcXpEO8P5eZSzW0ZOjuoTciVti/3T08k9Q=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=tCcGyDZGMPnmw+D7uKQdy8PIQmCTv2Uwd9sJXjE8zDj/Y65Jg/rgbmwgES9C8e6+mY2wEGEbasXuKOmofEEms0W9lusHqg7VLUGfqtYdJnYH4fhjB1ypvXLNhCbHVYvPsIvy6Yyg/AlcJW8Vj1ys8aF2riCOBBJTfJW2NwVQbt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=z2L+VNsn; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a389ea940f1so131198266b.3
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 08:47:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1707497256; x=1708102056; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YS2EbtbXUftbNC7P72t+SNTFrO2JWyL4uRnQqEk6u2o=;
        b=z2L+VNsnhCeOiZ+z2OF44qlosMZ50231zmorUxoMm1Tyj+orcgf+eF/KmcltCkBCHz
         kNihexsswhZfEVZ0AwuAeOIg27AB4hz2dm0+cZX2QOFoG7CoGPdJzeEa2pX0CR5AAK2s
         nqJTJTFN0s4klM+8jPU71ydHy1irxWDXcnpFjDQATtNm6Y2TlGDnSDetjfmAV7DLTNOu
         +Ymo6cLTwzQJ6GqhlZHYWowbowRyHR2g/fQp8jYo7MO4JNgEqp+LY+Gz0Ychz+GSx//d
         EFpjun++7KzQs7sRZQXFUkSY/BHcOnxjShUGnW4wHLfO21vUBjrQ/MqSU0GpF0LkomiZ
         I0ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707497256; x=1708102056;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YS2EbtbXUftbNC7P72t+SNTFrO2JWyL4uRnQqEk6u2o=;
        b=o+0+KUPc6Rl0vuL5kaisDt+GJ6vLH1366INvM3PA9Bi2JG/SjuPcIEFn1t9Hw7+yqx
         gHZk2W83YQaA16vajCUEzXIgyAkzdGWzzw5jSnQ08tTCAEeM14VZontRotkUO3mR2jiE
         sd05iRIKNO9NcB/OqCGZaOAIEQoXiyYPZ7MMGqKIOpt9QJqG708C8ZO95cboQOyB9E9f
         RE34HWb4+bquDBde4m+nkKXIiGTXk4Jt9Fz96grUj4uvI+vnR02GDaOJnAB5JmHkzUK0
         NqO460AKAUmREkK1Ye4UUfieAVuXrScSLbZz27pGYIPlQnrpL0nFHlVz7kTx8xx4cbGr
         GXJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPeGVuWlnVTLFr0cPikYwKNUamvqFu55wI/jWED/HSR5p9Fj0HQITLEWuNb9nlakK2F+EBG/8iPPdYqn+kC1v+anc4AwKzX5/5HQ==
X-Gm-Message-State: AOJu0YzSySSbUlfKOjp0goujcNfbFf4yLF1eAye/1t8gaxLDvYO0kXDe
	a7fFk2bqjhV3o1yBGzVl351RMMLJmjYqER7MMCt7naB4MgeLmfrZPNf6beUOdJk=
X-Google-Smtp-Source: AGHT+IFdPmgOHCT/0MFCqCZlYRKA93K1cTA0cR1BinAm0OJqzNzuL19dDB38K/uyJqgnTY5HzgZVnA==
X-Received: by 2002:a17:906:eb4b:b0:a38:1e9c:8268 with SMTP id mc11-20020a170906eb4b00b00a381e9c8268mr1717317ejb.32.1707497256373;
        Fri, 09 Feb 2024 08:47:36 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW9vtWbpCadcgc7v/uKttpKKPq1Ka3kDrbFVVV1WQ1nUVJebKCAovVxij4CT7oUg06reXmf+oAd1oVn88kvImGMoMz4MjHMQ6scR0v0z4TFh5mwRBWEAGDzPv6s4EuZqDw8wT0GYFdEt+bsflAkU6ZqUU81YQyLuePkblA0jKw4Q7tkt6hHk5MSndlcU430mAB0YZMwQ5OQ3jj/l8ppgsVpZuYL1JOwVggeBvrP/s1XzrVh2mecs+IbTfN+eWWyjgU0ABhVrE0fWxrK24w9VCY5Fqs+cQewKjn+hc1c5fb/RAKSuu4OGuacOWDwXuhwUZsszmSj5n1TH/eSNWd/jM5isRMwdUjVaUdg0uSADCepWPEU98T0QV8=
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id vo5-20020a170907a80500b00a3be3b27d0bsm859880ejc.49.2024.02.09.08.47.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Feb 2024 08:47:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 09 Feb 2024 17:47:35 +0100
Message-Id: <CZ0P9E67Q6AQ.TU3Q2Y8VTWUK@fairphone.com>
To: "Bjorn Andersson" <quic_bjorande@quicinc.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Taniya Das" <quic_tdas@quicinc.com>
Cc: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Declare GCC clocks
 protected
From: "Luca Weiss" <luca.weiss@fairphone.com>
X-Mailer: aerc 0.15.2
References: <20240209-qcm6490-gcc-protected-clocks-v1-1-bd3487b2e7b1@quicinc.com>
In-Reply-To: <20240209-qcm6490-gcc-protected-clocks-v1-1-bd3487b2e7b1@quicinc.com>

On Fri Feb 9, 2024 at 5:21 PM CET, Bjorn Andersson wrote:
> The SC7180 GCC binding describes clocks which, due to the difference in

SC7180 -> SC7280?

With that fixed:

Reviewed-by: Luca Weiss <luca.weiss@fairphone.com>

> security model, are not accessible on the RB3gen2 - in the same way seen
> on QCM6490.
>
> Mark these clocks as protected, to allow the board to boot.

So the board never was able to boot before this patch?

>
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
> I did notice Taniya's patch [1] after writing this patch. I'd prefer to
> merge this minimal set asap, to make the board boot, unless there's a
> strong argument for including those other clocks in the protected list.
>
> [1] https://lore.kernel.org/linux-arm-msm/20240208062836.19767-6-quic_tda=
s@quicinc.com/
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/bo=
ot/dts/qcom/qcs6490-rb3gen2.dts
> index 8bb7d13d85f6..97b1586f9f19 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -413,6 +413,24 @@ vreg_bob_3p296: bob {
>  	};
>  };
> =20
> +&gcc {
> +	protected-clocks =3D <GCC_CFG_NOC_LPASS_CLK>,
> +			   <GCC_EDP_CLKREF_EN>,
> +			   <GCC_MSS_CFG_AHB_CLK>,
> +			   <GCC_MSS_GPLL0_MAIN_DIV_CLK_SRC>,
> +			   <GCC_MSS_OFFLINE_AXI_CLK>,
> +			   <GCC_MSS_Q6SS_BOOT_CLK_SRC>,
> +			   <GCC_MSS_Q6_MEMNOC_AXI_CLK>,
> +			   <GCC_MSS_SNOC_AXI_CLK>,
> +			   <GCC_QSPI_CNOC_PERIPH_AHB_CLK>,
> +			   <GCC_QSPI_CORE_CLK>,
> +			   <GCC_QSPI_CORE_CLK_SRC>,
> +			   <GCC_SEC_CTRL_CLK_SRC>,
> +			   <GCC_WPSS_AHB_BDG_MST_CLK>,
> +			   <GCC_WPSS_AHB_CLK>,
> +			   <GCC_WPSS_RSCP_CLK>;
> +};
> +
>  &qupv3_id_0 {
>  	status =3D "okay";
>  };
>
> ---
> base-commit: b1d3a0e70c3881d2f8cf6692ccf7c2a4fb2d030d
> change-id: 20240209-qcm6490-gcc-protected-clocks-ee5fafdb76b3
>
> Best regards,


