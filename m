Return-Path: <devicetree+bounces-43061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D758591AD
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 19:18:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B5C4C28274B
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 18:18:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53FCB7E10F;
	Sat, 17 Feb 2024 18:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uJowWFHS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F40165BCA
	for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 18:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708193890; cv=none; b=B1LNrGz5nkWkWgGHrC5729yAc7IpZWqiW9/tYA8ko3e/1QZMBiJLUH5N3+sZvzi8giYqhMoekqc0CJr4zqu0/1Crw7mC72Y/OG6ztFCPfxkspPTRcOWwbAQVLluwMZituqcWzcSGyY9tF07TtARRqX3eWyc2eMX95jtu55womkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708193890; c=relaxed/simple;
	bh=Qzb3J1w292mYeic6Z5BobktYBhZzdTBYI73MRYlqTkY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S2vou+55+HAIf2yPm9COSe5iHCsycGEzwcme8wGEwilY6B29U1M6YgctK/B6YRnHuFJDF1rkmXXgh0DEj4uYKnlCzA2IUTy4JrZ5DPVj/HBxj0efwTizIJ9WPEwLIWUKUBxjwpRiP774PwWf1nbheAiOdPJ+M1JvnD4nzpMz8XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uJowWFHS; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dcbcea9c261so2098801276.3
        for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 10:18:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708193886; x=1708798686; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jbyO0DKsw6wXpJbxjwS7LuEbfeSrnfaky7pY4pa8Iro=;
        b=uJowWFHSJ1P2USUNXbh/zxGJ/QO55sPlMfi/4QkaKQLURCJgqMlbZJnwy2RryLTxWQ
         YrEe9z8OP+yYWARHRuCN+LS2m3hZn85H9SGmP3SLx89Cr+Pp4Hy514hsAoa4UX2Toh/O
         +ojjUSS1DX120V81zQC3xDlKz0CjRiNlEa8urvFtB15hoV0CUZDZMUhkSxkpIpWkiSPf
         EtU5D3Lzj0LKKc6PbmahFHMSxob0NocBjuYZwsi9sohSi4sHXJ2bV1KR6I1JCYrpdfNf
         kYAX/K6/5DL2KeWzlHsg21aAql8CD0uKFlnpplicBGJ/z7c3uv7osJ2cRDQprg5cfQbi
         ViZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708193886; x=1708798686;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jbyO0DKsw6wXpJbxjwS7LuEbfeSrnfaky7pY4pa8Iro=;
        b=oD4IoyJd+D8j3PXxfXwYGnO0M50shmgR2dRDWj8Ye3PjlpcyDqvt2kcrJMoKq68/TK
         1KJfrA3/qcLtSsX/cENIPhgVsjQtya7C0SaUnqiFceQrfr5NjMC5LETkHUGDdH/4mCx5
         Ax+01VKeC+dyKHbasYUyhkzayfvwVHgDfR2qSwmy2/g7BNFf5pndPJTQSkesR2fkkmGq
         aiZ528mVQ7u1yI7b1DLVmvlloRparM6UIT3DDzrth1zBrzOwRP7/AMGEArnC/VB0gN8p
         y2BcEcSxTUlxEFkKfcDbhJBXIPUfhcWa6xLIysahS05bRNMF1bb4rS3zODqkxNsg5lSa
         nR1g==
X-Forwarded-Encrypted: i=1; AJvYcCXJDDHPpqfeDhfVkqujB+Mn39z41XL72Fuj8AzbNNzjo6zOZN792bip+DNb/FlaESsKWP4n85FO2q6DsACciRN2SlcrLhdqfQ5VQw==
X-Gm-Message-State: AOJu0YyWjKmKuZ8CIF8zZa76ITBGSfY1zxa6SdEbGjbsbnXJE9tT4rNP
	t7+G2wJQHTe9hoMseSFpTmH5rqrqyE2gv/P+N3qDm3RWAU2I0BI0ejAiniyIVOHALVVHKGpIwPZ
	DYzB/FY1bcIBWMqbU1Wm+lxbKjC71n0M70UAGQA==
X-Google-Smtp-Source: AGHT+IHR2aw5Fq9+f+b6J2C+oHZ3lJAwIW+/0JnzTfJsNAWuf5xhYkTrzi03iYoBr9x5+9kp7hFsJqSP9BmXYDW/Jdg=
X-Received: by 2002:a25:ac93:0:b0:dcc:2da:e44e with SMTP id
 x19-20020a25ac93000000b00dcc02dae44emr6454894ybi.61.1708193886191; Sat, 17
 Feb 2024 10:18:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240217163201.32989-1-danila@jiaxyga.com> <20240217163201.32989-4-danila@jiaxyga.com>
In-Reply-To: <20240217163201.32989-4-danila@jiaxyga.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 17 Feb 2024 20:17:55 +0200
Message-ID: <CAA8EJpqRZiUU8fmGswwvegq3uTR_8RGu4L=LHiT5TRsShQHgWQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: pm6150: define USB-C related blocks
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, lgirdwood@gmail.com, 
	broonie@kernel.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, bryan.odonoghue@linaro.org, gregkh@linuxfoundation.org, 
	quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 17 Feb 2024 at 18:32, Danila Tikhonov <danila@jiaxyga.com> wrote:
>
> Define VBUS regulator and the Type-C handling block as present on the
> Quacomm PM6150 PMIC.
>
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/pm6150.dtsi | 46 ++++++++++++++++++++++++++++
>  1 file changed, 46 insertions(+)



-- 
With best wishes
Dmitry

