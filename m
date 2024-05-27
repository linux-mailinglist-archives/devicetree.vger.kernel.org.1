Return-Path: <devicetree+bounces-69402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB128CFC6A
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 11:05:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76227280D7A
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 09:05:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98A646A33A;
	Mon, 27 May 2024 09:05:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vH/DuRUr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159EC381B1
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 09:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716800701; cv=none; b=K5naKOf359kjZlwRxcfuL75MirKGDKuHbSmFjJULLY669l/kg3qoDrbzWhHjSGv7CGdIMIVJ23yXhP1dVjvAdMuznnjwmT5i0DkMppqqz3iGCUMnqIM4mqvZGCQKKKbU2m6VMiZxXaBCzwF7Y6wEfrTMnEAHlgyJlbxFbBN9YvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716800701; c=relaxed/simple;
	bh=lCkatABB5qE+80NuM/7gtP5bXQbnqCgUTAsUJEIq+/c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=alkGNzpncprVoFsK1PajaRVUN6/1EopSgPKiKW5uCOPxtb+JnfDGILwx/yrJMFeqL0AK0fddH/Q34TB/UTJKbuBbB6o5lJxm49w3S3p5c0k0cDlvI7JOV5DJxJ6tFsdJGPi0Q2xnYXO6FvjdwlDMlH7wbYX1YbFUB0DVn2Aj1IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vH/DuRUr; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2e95a74d51fso46775081fa.2
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 02:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716800698; x=1717405498; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1Kct0tf/YJNMu/6x33HcGbT8GgyNCLw0zNoUOIeT2KM=;
        b=vH/DuRUrazwpsUeARhxX/qEDI9gBteXOp+wjxhisPGaf90zNm+mklvN8jXeScZD5Z2
         dB40fs6dR8GVqAyve0mgL2hnxV7Rb16Gl9taMfqxUs198MKs7cCYgWL5M7a1JMROXMzQ
         CbQUpbgYB3jh9+2763H1Fs1HuOB/BWfcD02tHuCpxKxhclbTcq/liM8JMdskfk0s997R
         c5HyUdkqGJlfi8s4Y05Xl5AWOeFdwC2e7i6C6Z1GYTKRVPKjcsoT6wWkpINIAxjGQc6J
         NYa2uUNoypN+y61ceze8VniyVWwzJtuxdpIHrxu86toElVHDiZyWS4inDCyixQF2AJrn
         OSLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716800698; x=1717405498;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Kct0tf/YJNMu/6x33HcGbT8GgyNCLw0zNoUOIeT2KM=;
        b=eIEXWjdAok2c5uoCCipW2tWmJsYyDhLLp3jCJ9AMtOJBIgTa4lbnLiuxHExBBH6b3Z
         kF18y+22QlnsJT7BdG+oeAhT2DuxjS/LR+k5g7lrPyrpSOm9zGCCi8Mn1uxZoOiaxkyd
         CU23TBUxHrUcfrTIT9c6E5aA+Kouiu0jv2DJs9a5JEOBEIzNO1leYFaO5PkufVtSrUhs
         lbAej0ZJrDSH/ZePJj+5Mq1/CmBZGsccK5IfAojTq+57WcvuOcoFl2mIa/5pRCOiOVkF
         kYBz5aty/C5PIZjJhxyx3puqOhbZgtZLNhoAtlzrQksoYRc71PfBFcIzBVI2241Dy3Qw
         WRcg==
X-Forwarded-Encrypted: i=1; AJvYcCVuXM8j9uDyCN9iz9Uas34bP2WwoPuhJa7S4r/8dEoQ/CMtUekAYFEebRSA5xzlcdhrw3WFncju4OzkCcifS6Lh7we7MIRf+3fv6g==
X-Gm-Message-State: AOJu0Yx2XYOGJn0NU8QfBb/bIkFdD8khcJbOANUzNZhDuqe5SQvIv+05
	tpaDGI9JySFVpgxotu0PCgxzHbaJhnL4pgeSHELutQRuelY99WIvgv0zNYR7W88=
X-Google-Smtp-Source: AGHT+IHEtnRhG/oZq/nIMTgh4haWtjmSaREwjwmnH+XtrXGGNLA2aYrcPng3SWVQ7vbKRRjs/4F1Lg==
X-Received: by 2002:a2e:9646:0:b0:2e7:bc7:b6f6 with SMTP id 38308e7fff4ca-2e95b2566d8mr68365361fa.38.1716800698324;
        Mon, 27 May 2024 02:04:58 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bcc4ab4sm18760821fa.13.2024.05.27.02.04.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 02:04:57 -0700 (PDT)
Date: Mon, 27 May 2024 12:04:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 7/7] arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13:
 allow 4 lanes for DisplayPort and enable QMP PHY mode-switch
Message-ID: <mfcofztvemowz2opn2fckszz4z44unhuxnhyaqvstbtqewzgzf@y4qo3ja74deu>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
 <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-7-a03e68d7b8fc@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-7-a03e68d7b8fc@linaro.org>

On Mon, May 27, 2024 at 10:42:39AM +0200, Neil Armstrong wrote:
> Allow up to 4 lanes for the DisplayPort link from the PHYs to the Controllers
> and allow mode-switch events to the QMP Combo PHYs.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

