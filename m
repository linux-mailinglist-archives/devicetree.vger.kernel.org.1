Return-Path: <devicetree+bounces-69846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9DF8D1B86
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 14:42:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 85061B222DF
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 12:42:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD8A316D9A6;
	Tue, 28 May 2024 12:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YKeW5RCz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20800169392
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 12:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716900135; cv=none; b=j++/hN/XQzEx8NHX/wNMiljtvJUveyr8hMAetRd0MM1P5jkNTwk1Sb001ysQiuaDY4BhtYGVUPnCEkKmhldyB3sJTiuh3Yu0eIONxiODcKiX9NF+11IO778sUcQsezcM8GHv8SLDFCk01ejGfrtiHR3h5gb4JzXGnxsBVjKQUaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716900135; c=relaxed/simple;
	bh=jy4TleX0TGr2sJ+SCNvVgTUrHI0s4BJuMp0j60gElKs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JAzd4iV134UaysyQGnkZBpLaO5dkWK+wCO+YzJaQc4b08eqk6xLMLLRdUdmb38btLNGp/5iIOdh3GowtkpHNT9LXNfjxsitnVJb5jttIkDc2IvIut+S4cn72HJH2YslRLNPRXFKUf1ICfzfCBndOxw4o5BdDVYdK3UQx5hVH/Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YKeW5RCz; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-529597d77b4so957117e87.0
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 05:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716900132; x=1717504932; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ga2T6XeCoElWphUxptYnP0YlDqCUOZmRYJH6lTvOF0o=;
        b=YKeW5RCzDkd8kgX0Ekapg+VjQPWoeddQS0izaS4kki0yOnlgsFSpqwjcHlWqXgFZZX
         Pq16Cckawxb1C24J6lRCZO8B33YFnR53D/R02S/NHhCs/L5J3Bb/2vbbto8sUi64Si6c
         J3G474rYEjSQdGIx7kdmTanFC5l8lCCi73l9M2IaNI22b+ofrQlpxR4JkwbwEHLippTX
         pC3ftglmLznclm94Wd50pFMUJD0qcQB93Al532LkX1EKGRZGLajtMmQ8fXeigErz9qEo
         NJgRV6xOQ34ex9wYURr/hJjL5zQHAD5WpnH7AZxCmKCywY8xx0Da61IR5MtuRse0Zz0y
         FPMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716900132; x=1717504932;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ga2T6XeCoElWphUxptYnP0YlDqCUOZmRYJH6lTvOF0o=;
        b=vJdVtDqyfvg7VX4PCoaZGNwlfMG5je3lPMA9dqMUcE88cRO1wCKRQdoUILfM2LjN5z
         NHM0pw7xDQZIR/6i9arx7p2ezGSRuhnix18wkblbzxPpmDzdAdmMWWOGOLchEq+rA6QP
         LcxGBtGJ1Afyk3nyPzKoIJbgWxGVpZUcTVtBWusVSoIi+/es8fojJoGC7GY0J7mnPBRL
         Y+Qv4CRYWOHHGgwHyt1ThaNCvDFSe3w6W0HHyZHkklAtTlbCKmqUekpYEfTTt7WDF2nR
         d0DwyZTT4wuvE3w/J7YshEBMH+Xe+9UqGpezKkcOx0A1Ehnrs+AOlaWcR+xohVzEU43Q
         v7Bw==
X-Forwarded-Encrypted: i=1; AJvYcCVl2L79Qu5KJAHKgEiPIV0jS4PBNMxaEqbDYUdpNfiHLt9K00MtmoDHRG1an4Gt7xCVJ8adOQIGgmd5/Clna8tX68snzB7KXzPdzg==
X-Gm-Message-State: AOJu0YxJ7nHHvlD3JNmuUfo0eLHlT46NHBhurAHjTGVjCFYzdP0tH8lO
	4OOMZ79PQATKiJuG/uY01gmscivODlfqI7JzUpKmXWP4Op2ciJTMBdm8JnYLYCY=
X-Google-Smtp-Source: AGHT+IEKKv3xDNv3NAqFduP1EFyw6pzWR6Vp8uFAEDeCR4NfYt5ZwVfqN9sWu3DZSG6ton8htkks7w==
X-Received: by 2002:a19:6912:0:b0:51d:998e:e0c1 with SMTP id 2adb3069b0e04-5296410ad52mr8276027e87.13.1716900132197;
        Tue, 28 May 2024 05:42:12 -0700 (PDT)
Received: from ?IPV6:2a00:f41:c97:23a9:35bc:df2e:d894:2c76? ([2a00:f41:c97:23a9:35bc:df2e:d894:2c76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5296e887a3esm920622e87.13.2024.05.28.05.42.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 May 2024 05:42:11 -0700 (PDT)
Message-ID: <a48d87a5-0271-46cb-b5c7-3c5e0334bfd2@linaro.org>
Date: Tue, 28 May 2024 14:42:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/10] arm64: dts: qcom: sc8180x: Align USB nodes with
 binding
To: Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-usb@vger.kernel.org,
 Bjorn Andersson <quic_bjorande@quicinc.com>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
 <20240525-sc8180x-usb-mp-v1-7-60a904392438@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240525-sc8180x-usb-mp-v1-7-60a904392438@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 5/25/24 20:04, Bjorn Andersson wrote:
> From: Bjorn Andersson <quic_bjorande@quicinc.com>
> 
> Add the pwr_event interrupt and rearrange the order of the other
> interrupts to match the binding.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---

The new numbers look correct as well

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

