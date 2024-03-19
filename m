Return-Path: <devicetree+bounces-51594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE0987FC68
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 11:57:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A21B71C222EF
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 10:57:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7575E7E571;
	Tue, 19 Mar 2024 10:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YasTVj+t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB3B47EF0C
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 10:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710845796; cv=none; b=jIcNUSmxxcRmNLT2zksVKODr1cG6pB2GMv9s4405QJyLCnh0ZNSE47N1k7C1FklgddvmO2esgE81OxNcdv7+3YsOcT8pXB2+6+R5di8thtwb+F2XQGhsWa4NAe3QLMNFVtA8by8eMJInwnoJyXuXxsTsaMz69j9s7sfp1D+xCyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710845796; c=relaxed/simple;
	bh=KptxkJXC1arZeNKLVXicN5mMHTUf6wme44t1NrkRC0g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O53emE72ZrCKXuRf22h/KrAlICdoceSS+LlLtpcDN9IcOFv6Nk31FY27Y+JjJDToCh8gRcheFW4Gf0+IWc9pLp/dEAjmp99yhL4PuWcgClhrRwmPX26+WRpj9e6pPFChdrICeXS9q51jJHTMGgspKsz6RnjEKh1jUD/8a+ln4lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YasTVj+t; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-dd161eb03afso4652199276.0
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 03:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845794; x=1711450594; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zjyRBDM4rca1Hn1dUAPckcwaeF45z8MIXNEItXXFgrI=;
        b=YasTVj+tjt0X/RQBTw3jpfqtOBOUiEuAar/1zzG/Nqs+WkQ3fnQg3DJilPy3KRr4cW
         d2/g+Jc2py4JvZcXEGS15fpNLcGrwy5b+fft4gC+fAN9mnyVzlroGVKB2POaKQhm9Y+m
         r1UXYSMmT8IR9Zg9yjfkVi7534h+Xnsk95UKl+l0SPtLGr3l+fhGR2+BoTTiw06NCMMd
         4sEpblMrEfH1JTy5YmCruKo9WIoCe2LFxRaBsCWexhw7bICp+OX4m6HFTexkdxNKps1C
         0cYWbSxuj1huS0JXlG9vJJSX81uwmCoAqP/4Lhe60uQ9CZr9z1SnhJ+N/mQ8bWrH5N2a
         42sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845794; x=1711450594;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zjyRBDM4rca1Hn1dUAPckcwaeF45z8MIXNEItXXFgrI=;
        b=d6jZcAivGPVJ6Meh8tH0wLRhIoFEE0S5VJ8tzx7wTZCXhaAfY3EgwRBx1lR8PaTOe4
         8r19lcnDHM9PtKdsld5Nl9V6MK8SAjEXIgtIKCcs+yqjI09goWqhZNG7/eyTnzp4KWfH
         Q+jDh8PUwmfHzS7TVOesBAObsIbGB0cqwSF0N++PEVa7JMahrse4ml2zZDr1sjX8PRwC
         1R1NoPBmEMMtdeFJg/5N+zXshvRfWPkiGFywyrFXno+kSOXeCZB7AuzKXdeUxBSdC+4W
         L73lplaqWQBaIwGjqeFvxIShoI0zfumeFbBjdGItnuej8hB87M2FgIyVGP01h8Zuw1fG
         RNOw==
X-Forwarded-Encrypted: i=1; AJvYcCVrOEAC86k+k/s6qKp/xYiJ9DOMAP0NbGXHQNSF7ciVewggEu7yeHUUWKctVX7EY+HJLAkDN9wvJnvV+uiJwGCH/iBqgOSwAaqvIQ==
X-Gm-Message-State: AOJu0Yx/YqL+2+NtKoHu5mJNgqkO1/D+TLhXCfbbyEgUSVmF45lanfFc
	Be4tO+eKbERAWV6cq4m6d51/9KtDin9LqwVTCQx5KrpPrs+Jo5qcXf9tDhf6kzS4e5hmzypTYuu
	JtHnDk9nnIOxo6sQwaLrv66aonp63tr1UviYioA==
X-Google-Smtp-Source: AGHT+IGLAi/wNKvsr+sWkLaHawQcUlFEisvPkSzOVYcmxJ5wQ1Tc0+84fuygPF+bFom0zO8GoP0F6i9rRzr+wibkNF8=
X-Received: by 2002:a5b:bc4:0:b0:dcb:fe58:a08b with SMTP id
 c4-20020a5b0bc4000000b00dcbfe58a08bmr12096526ybr.15.1710845793910; Tue, 19
 Mar 2024 03:56:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
 <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-6-926d7a4ccd80@linaro.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-6-926d7a4ccd80@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 19 Mar 2024 12:56:22 +0200
Message-ID: <CAA8EJproDAz92=4=c3r+8kJbEVXesZCbrtLsr8ZJWh6axzF9TA@mail.gmail.com>
Subject: Re: [PATCH 6/7] arm64: dts: qcom: sm8550: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 19 Mar 2024 at 12:46, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Remove the dummy pcie-1-phy-aux-clk clock and replace with the pcie1_phy
> provided QMP_PCIE_PHY_AUX_CLK.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8550-hdk.dts |  4 ----
>  arch/arm64/boot/dts/qcom/sm8550-mtp.dts |  4 ----
>  arch/arm64/boot/dts/qcom/sm8550-qrd.dts |  8 --------
>  arch/arm64/boot/dts/qcom/sm8550.dtsi    | 13 ++++---------
>  4 files changed, 4 insertions(+), 25 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

