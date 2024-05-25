Return-Path: <devicetree+bounces-69193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D50B8CF13E
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 22:12:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 61E6DB20E5E
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 20:12:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 405DD12838A;
	Sat, 25 May 2024 20:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U29I8WCE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B30F126F1F
	for <devicetree@vger.kernel.org>; Sat, 25 May 2024 20:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716667951; cv=none; b=UpUvWZMoU+zbV2EhkFnZ6EkqRsAlQ8VFqbN40gLTqTdcBR9Ch9Byn/eZjO/r4k0/APRupRC/8lt/Kh8Qbruf5XPhTTG8yT8Q99yednoOW8PBwVjYCdP3E0MeIgyqX/9ncaMG/jgoX3mZZKrXSICM/9Ba+lcz6+mHeIqfc4J4Mu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716667951; c=relaxed/simple;
	bh=t32+BYEdFdm8RxICBn6Etujr+udUrtOVolvHKwANZww=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tgrQ8XZlR6DWHkIVJxUgW5PiYCpNO+ZarUGcZwzv6ITeJYgyJRuMw+2sX5wGID4MoFSI/4hNK9nupFVBI1b6tsDFYYb81hB9DBqJKjHvmEQWrsv9hCVohVhSZV4aSVjKEn2YEgMAo1w9TKTgYENIcJCZokIBaiNSPL8hZUBabbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U29I8WCE; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2e576057c2bso146056741fa.1
        for <devicetree@vger.kernel.org>; Sat, 25 May 2024 13:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716667948; x=1717272748; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cfUxVr8crw2ZUzJSJFucQubqbnPhxtTufTMJKMuPKJA=;
        b=U29I8WCEpUoxXPZQMSDZhEFLbD8My9WlPUT9pMrrcyOCRgl7Rg8tg7Nu8r7YyZd+ef
         qJwz7Ih+4IOnKHo4FfA+F//teB/WdV1swoa7J8KlTHCJjEBP3HIk6nh64yI4KfvihJjS
         9tl0Au0OLkt1jVCxP+kcLScJQt7/2e+UshV+bB/MuK/ZkckXYl+8Pr3WOSivp8I2Sslf
         IsJcA7dRlFpXnnnJQwna8o3S2NdgRQ1aruEo15OQGhpkeHv5SYSkVPXPppFXvwwmAivu
         Y75Mc5g27vi/DrExh8KzjfC5IXGgFE00JN/RFbPonaEIaZFfJxgtWFUN82Ixtk7lt45h
         F4Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716667948; x=1717272748;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cfUxVr8crw2ZUzJSJFucQubqbnPhxtTufTMJKMuPKJA=;
        b=blR8HYlSlcH9ypNkKk0Usj5Y9HqG+rC6BdSKKniLHPUO8I5t48E3UU+Qj1e+bEFbr7
         h1jBJu8xhZAVSBqrNmYMQmIJRML5L3ueiy5ZRuHmUtLWFdWKjR/nWsI0Zd4gPHUaTfEU
         GbUSfQcuXXOc3u9BZx0xympP8YeR+LHBMrGhzMJI8FILAakvu40nUHJv19JQeVS6ZPtA
         ZfRSUnBCt46aNVpGp1mLJOxSTZ/0nKAWbiwycB+EkcyE2RAqNdkAiq4wUrTGUoZ8Gnmr
         ODPhs5dBVcDAPC3OwYEw2JzRKe5kRdeyQwZfwUuuN8z5wTJn4irebldH2Ev5rkdVyDxe
         X/yQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhb7Ug7LTPmqnBY8pZPHAUBbD5MY6CrKN5GGd+LHDij3LNMzq4nfmyeYz7EddycK06Iaven/4x8jtir8wDxbvJkUVk/DE4UYmdLw==
X-Gm-Message-State: AOJu0YzQIjHxTyQV4Rr/TuLQmYPxvGK868cBJgpMefgTxuN4S4J/nj/D
	l7Jm0CjLajx/SlbSfer5NdGDnHC0MXK9fE1XXRedFj42iMOn4NlwUOS/dCF+PRM=
X-Google-Smtp-Source: AGHT+IFkoI0PZaAWya0/NyMZeqpNyosQOZLdjgcIJlweHSZDpSJAqOBAE6pe1lfZw7gEiqC1v9V0Vw==
X-Received: by 2002:a05:651c:504:b0:2de:8697:e08b with SMTP id 38308e7fff4ca-2e95b0c1620mr55308111fa.26.1716667947848;
        Sat, 25 May 2024 13:12:27 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bcc4874sm8649151fa.26.2024.05.25.13.12.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 13:12:27 -0700 (PDT)
Date: Sat, 25 May 2024 23:12:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Bjorn Andersson <quic_bjorande@quicinc.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc8180x: Correct PCIe slave ports
Message-ID: <q3z4d2o2tapf3vvuc3r5jewwdlvtrzabwtvfkz2ehniyaxnffg@uymhwkjvfu5n>
References: <20240525-sc8180x-pcie-interconnect-port-fix-v1-1-f86affa02392@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240525-sc8180x-pcie-interconnect-port-fix-v1-1-f86affa02392@quicinc.com>

On Sat, May 25, 2024 at 10:56:20AM -0700, Bjorn Andersson wrote:
> From: Bjorn Andersson <quic_bjorande@quicinc.com>
> 
> The interconnects property was clearly copy-pasted between the 4 PCIe
> controllers, giving all four the cpu-pcie path destination of SLAVE_0.
> 
> The four ports are all associated with CN0, but update the property for
> correctness sake.
> 
> Fixes: d20b6c84f56a ("arm64: dts: qcom: sc8180x: Add PCIe instances")
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc8180x.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

