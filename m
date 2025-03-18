Return-Path: <devicetree+bounces-158413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB90A6693F
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 06:24:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F03F91899051
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 05:24:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 626251C2324;
	Tue, 18 Mar 2025 05:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xnUzQ5w2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D001A3178
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 05:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742275436; cv=none; b=h9zOTXHgTJtKn0mHhV9h5JeY5mpQqjQW7FGsoyFGGT8k5oF2OccWojxdB4U4kjKvJxdsWdj5syRGebti08sx/thZk5PePV8mp4v7MzIG2Rlg324TRlfoWhHtwjZ4HVZUrGkUk/oEEyxSLdzornyLpsQfzHtk9acaL8Kg8CK/Lxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742275436; c=relaxed/simple;
	bh=+6wTRmmn9IgGWFWLYYBguNMje+VK69ODef720Av4Ie8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Gvn1s/E8VWRYQsOZouqnWMvJ0GJg8Y8Kskp48mXviEcnL+OhHG3n1DkE7bNiSF5WV3BnpYLGgS14hCYdMUVZSwtlaI4cK5M92u1AVG9eyS9lIesL0bsURdq5zalBJYg/FDEDcSfOPlKwc7DqvxXqNUrMD2MJ4eU/vpVvff4fE5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xnUzQ5w2; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2ff6e91cff5so4156565a91.2
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 22:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742275431; x=1742880231; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I3MFhv4iXPFGACGN68O6T+ndaCiilLWF8mxkeGzp5Wk=;
        b=xnUzQ5w26g9qTxz4M1XUQuAxrjLxUyuaaZYWEr65bW+rnePCMj7ClRTayJddL2/wrS
         OYbNm2Vlvk9pylGoC9x/b83k/hNRyy1N+TfhgoMRLwThOeJ2Ex9gR+Hbghe5F+VkHiJi
         pvVqUlpPcxtpxMtNuE0YmR0Jyk5evogSM54spkXlxufBFjBF+HzlYUtbNMsPpnxFEOZG
         bmWL7sGVuW0EFzUfamUcWwp9SOL8z/w68rzsSm6Pks+fl/dptj6iBxzsI2OOTWlNig0m
         yLL2Pd9JDiz7DF6PgGuMqflVRKDuhLZqvoQTokXmRhHTKf8tTpV5DFiggJBatLVoBWZv
         Y0hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742275431; x=1742880231;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I3MFhv4iXPFGACGN68O6T+ndaCiilLWF8mxkeGzp5Wk=;
        b=AWCLafESLpa1fbBlWw9BmNLb76spkgGWOIeXNNw+HaiMcavKzsLyFeaRrd58casqij
         yZmfFRvV8/zCwzSpTcpES+8j/OxjhXtjMp+clXOXOgRPNMyN2enafw+pj0qv18bSeij3
         Ur9r+01nxnoyHvOMbucyiuLF7a5M9MIvN7yQYEc3iZ793hkvn1s7/K7fJ6Y+y1FopdzY
         FJsBev11uFNcrrsWVjU6wFm9+/aoR53g0xxb+DSbkQeCcVZ5OIOVHhi3L0w2nCaDb9EJ
         CtlFk73q5lMWpwbBARRcpFn9VGCixdYZR52E+2AQtOBA92KfDemsB/76oTEzPhfEvVnQ
         vpmQ==
X-Forwarded-Encrypted: i=1; AJvYcCUc3DnIOO57Be/6xlb5F2Rxp4AXyv3BGrPrJfral10pHn/JvvJPYiuAQTxtfYdQkUx8EW0RPF4/+hXi@vger.kernel.org
X-Gm-Message-State: AOJu0YxOtDuYbCg3z7t9QeBGnnkcmCcTM23zhe86CMzXBNJsI+lzwsZg
	R3lZzB8ZT+qkOWMh6St5NU33bL32nyoGW+J4xLlkUZdlc4FEdHgE/vhh6BeEvw==
X-Gm-Gg: ASbGncv26D5CA0kO5stZTFY0YX1LwhYNgcDNCu/vliorn9SW2NOF3vHe+pRWJI9rIgp
	E/L94TjaSfeYwAZu9rXqqc9BsZzTxEk2ypfHg8+vTb8C6JzHdntB3KQTvIrXdl+5tBn7fZrCeWU
	X28PojnVVZc2P6kz21Ama+c0pTmTsf0BMzw4jJpmQ+jWIUefL8f98bohIfQfQHh6b7VSUaVCjTr
	8n6EHSF0JjsER8yzuudPz6uqW1+gjnbg46Q8oHMTcR7oM8myXpZY7PgFiYNI9/8JvGmBHJ9aE9g
	KiRqggL7YkjT8katfqPBgWTPRuuv2F6PtBaAEOExqkyAVM9ZjE8Tu0FR
X-Google-Smtp-Source: AGHT+IHfQA8coXckUEYvZiBZ+6HlXKMz1xOJjAr8oflE+640yjM8m0J94JHhMX0+3laFnw472xG0Dg==
X-Received: by 2002:a17:90b:1e4b:b0:2fa:15ab:4dff with SMTP id 98e67ed59e1d1-301a5b99192mr1208448a91.31.1742275430993;
        Mon, 17 Mar 2025 22:23:50 -0700 (PDT)
Received: from thinkpad ([120.56.195.170])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-301539d3f40sm7168928a91.4.2025.03.17.22.23.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 22:23:50 -0700 (PDT)
Date: Tue, 18 Mar 2025 10:53:43 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	Nitin Rawat <quic_nitirawa@quicinc.com>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 3/6] dt-bindings: ufs: qcom: Document the SM8750 UFS
 Controller
Message-ID: <20250318052343.do36phv6qxhimpab@thinkpad>
References: <20250310-sm8750_ufs_master-v2-0-0dfdd6823161@quicinc.com>
 <20250310-sm8750_ufs_master-v2-3-0dfdd6823161@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250310-sm8750_ufs_master-v2-3-0dfdd6823161@quicinc.com>

On Mon, Mar 10, 2025 at 02:12:31PM -0700, Melody Olvera wrote:
> From: Nitin Rawat <quic_nitirawa@quicinc.com>
> 
> Document the UFS Controller on the SM8750 Platform.
> 
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> index a03fff5df5ef2c70659371bf302c59b5940be984..6c6043d9809e1d6bf489153ab0aea5186d3563cc 100644
> --- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> +++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> @@ -43,6 +43,7 @@ properties:
>            - qcom,sm8450-ufshc
>            - qcom,sm8550-ufshc
>            - qcom,sm8650-ufshc
> +          - qcom,sm8750-ufshc
>        - const: qcom,ufshc
>        - const: jedec,ufs-2.0
>  
> @@ -158,6 +159,7 @@ allOf:
>                - qcom,sm8450-ufshc
>                - qcom,sm8550-ufshc
>                - qcom,sm8650-ufshc
> +              - qcom,sm8750-ufshc
>      then:
>        properties:
>          clocks:
> 
> -- 
> 2.46.1
> 

-- 
மணிவண்ணன் சதாசிவம்

