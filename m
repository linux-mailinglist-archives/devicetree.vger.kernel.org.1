Return-Path: <devicetree+bounces-40362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD02850443
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 12:38:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A76B5B24140
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 11:38:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FFC63D3A8;
	Sat, 10 Feb 2024 11:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F5d8feLj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF6636B04
	for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707565117; cv=none; b=gWtdvPNjOZQCGbpIVAfQkmzEbTx/+Nt+Gs1HicZZ13OQbU65Dcc3g/gYyjznEFoL4McwJUCBj7vtHO7LC6PWGNCLuYv7s4sdvE3VNH3KHXdHK2gTYzLMFERKOnDJA0s0FTPBtFMnXGDjNePJIyOnY6Q2bV34FF9BxKWIUlQkS3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707565117; c=relaxed/simple;
	bh=TZ3X8CFK/YZ2sn5QYrfR00C4nOO2x3559zrSWlBYhXk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=guUrrTNWWFPPCXAZkIy/H/DxAv8Fowy0FEoBiqi9dRzRxb6l8nKRtPXLUtKg8R81Ui5sRfjOSAxqQtcUZgUJt0624/LiD77GAHm/xpTEGfiR9CsM1n7LR5IPnr4qrjVabPUtJqfPnbqH3dP7a3w3XolnYCyntj3XUyUJI6kAGJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F5d8feLj; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-dc742fc3b68so2043060276.2
        for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 03:38:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707565113; x=1708169913; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=82EgLZ3LY7jUKlDCCOKLr6UrPKDAXs3K70Oxct3OvMQ=;
        b=F5d8feLjOa2rmoWM4AwlsjBRs3ZZV2KKK1sCbx9t7PZNqFHOHd8LEpPxThYdgA1Ny9
         mmiV+0pmmt9vCjFeNh/Q9p3MaBNk/bQhWSM8vAPuYQiGhyDvtq5QGi5ZKpQybws/9cN7
         zZFJf/iJC7ZsWqbolUjxDqP0gtaCniNtpbSWzWb6/GuvNRhCsPC8M9k8WYqc/y0Lrev1
         fwFIHon5hfCepJD+zOwbabna9BwajyKqms6VB5gbhXdpipkjfDOa4R02RflyNkuH+t2n
         nIVFUjHG0bsluM7JRkL1EbWfSQwzwG4q1TijI97/7FLUaqnKTfiCE74AOCg3A8hNl7qB
         LLew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707565113; x=1708169913;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=82EgLZ3LY7jUKlDCCOKLr6UrPKDAXs3K70Oxct3OvMQ=;
        b=Mfcydbf3oavDcpp6cPfIvsSEX+tU2xOvqP+YXejPXrHsMBCuhIt/UyicUfKEAB3JVq
         V7YfCxclgiHz/kb3pJlKtpfjDaLJTwndM7cLvJNlshQhnwEHlLiuXJ0h47+1hMtIyVM9
         d2r8CX+wKdj3j80AIOJXiht/BAIMkUtGwpSgs3XIU+rxmujK5Qvvqyc7XIKVq9D8dsxF
         MxyKce0h70vybAcjvSAEkwFCmNLTvEXBReAlwDXlZK9q57aO7aCYbIm0hEczkRBDmwUK
         slhPb/duIxMFzR9Wb5NwjDcYI2bhkpl4QzHhDw8HiOdU9WFMUJ54/FNPTTVcarv+hrUx
         RigA==
X-Forwarded-Encrypted: i=1; AJvYcCVMFHtUZgn2X2Kr1iRHUzfKb8VSxs1EwXhnwKd4fek1ihSHmgPJ4oLNIZCVLBnDa0u++1F/z2dvOp4yHh50tfwZlo8jjySYpYX2lQ==
X-Gm-Message-State: AOJu0YxIitCxt2pjSjGXP74/qMurGhi8SHBLnHhLpkpGMKnhlnrloVko
	HMdnZXecuLo02+UZhgeBRDdN1Gwwk1eS8Ecz+fWFDey4Tkxd/XJFd/eytJuFO/YaiY73KUfNeor
	6pwjHyOwx8+jgagiLef1ogfnR0GxG3ZUryS7nnKwvz3mMrpQK2Mg=
X-Google-Smtp-Source: AGHT+IGPETnCLdKcDIpdkWVJs9fUSB0+GX024LkHpm3gaViZEBSo77MdtjkS1JgO4yHMSLnqyVVD5wcJPrYg1JSy60I=
X-Received: by 2002:a25:fc21:0:b0:dc2:7018:806d with SMTP id
 v33-20020a25fc21000000b00dc27018806dmr1532685ybd.16.1707565113266; Sat, 10
 Feb 2024 03:38:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240209-qcm6490-gcc-protected-clocks-v2-1-11cd5fc13bd0@quicinc.com>
In-Reply-To: <20240209-qcm6490-gcc-protected-clocks-v2-1-11cd5fc13bd0@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 10 Feb 2024 13:38:22 +0200
Message-ID: <CAA8EJpr+J6P_Ew96u-VwcZXR2sRd=T4JjT3z9pOTaqzSKxVvuw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: qcs6490-rb3gen2: Declare GCC clocks protected
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, 10 Feb 2024 at 01:21, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
>
> The SC7280 GCC binding describes clocks which, due to the difference in
> security model, are not accessible on the RB3gen2 - in the same way seen
> on QCM6490.
>
> Mark these clocks as protected, to allow the board to boot. In contrast
> to the present QCM6490 boards GCC_EDP_CLKREF_EN is left out, as this
> does not need to be "protected" and is used on the RB3Gen2 board.
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Reviewed-by: Luca Weiss <luca.weiss@fairphone.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
> I did notice Taniya's patch [1] after writing this patch. I'd prefer to
> merge this minimal set asap, to make the board boot, unless there's a
> strong argument for including those other clocks in the protected list.
>
> [1] https://lore.kernel.org/linux-arm-msm/20240208062836.19767-6-quic_tdas@quicinc.com/
> ---
> Changes in v2:
> - Dropped GCC_EDP_CLKREF_EN from the list and expanded the commit
>   message to cover this descrepancy from QCM6490 devices.
> - Corrected SC7180 to SC7280 in commit message.
> - Link to v1: https://lore.kernel.org/r/20240209-qcm6490-gcc-protected-clocks-v1-1-bd3487b2e7b1@quicinc.com
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index 8bb7d13d85f6..ebbe2c1123f6 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -413,6 +413,23 @@ vreg_bob_3p296: bob {
>         };
>  };
>
> +&gcc {
> +       protected-clocks = <GCC_CFG_NOC_LPASS_CLK>,
> +                          <GCC_MSS_CFG_AHB_CLK>,
> +                          <GCC_MSS_GPLL0_MAIN_DIV_CLK_SRC>,
> +                          <GCC_MSS_OFFLINE_AXI_CLK>,
> +                          <GCC_MSS_Q6SS_BOOT_CLK_SRC>,
> +                          <GCC_MSS_Q6_MEMNOC_AXI_CLK>,
> +                          <GCC_MSS_SNOC_AXI_CLK>,
> +                          <GCC_QSPI_CNOC_PERIPH_AHB_CLK>,
> +                          <GCC_QSPI_CORE_CLK>,
> +                          <GCC_QSPI_CORE_CLK_SRC>,
> +                          <GCC_SEC_CTRL_CLK_SRC>,
> +                          <GCC_WPSS_AHB_BDG_MST_CLK>,
> +                          <GCC_WPSS_AHB_CLK>,
> +                          <GCC_WPSS_RSCP_CLK>;
> +};

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Nit: I really suppose that parts like this should go to the common
qcm6490.dtsi file, if it gets duplicated between IDP and RB3g2 boards.

> +
>  &qupv3_id_0 {
>         status = "okay";
>  };
>
> ---
> base-commit: b1d3a0e70c3881d2f8cf6692ccf7c2a4fb2d030d
> change-id: 20240209-qcm6490-gcc-protected-clocks-ee5fafdb76b3
>
> Best regards,
> --
> Bjorn Andersson <quic_bjorande@quicinc.com>
>


-- 
With best wishes
Dmitry

