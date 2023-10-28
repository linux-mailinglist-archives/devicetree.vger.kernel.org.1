Return-Path: <devicetree+bounces-12624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBEC7DA8D3
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 21:13:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 64B831C208E8
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 19:13:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F992179AC;
	Sat, 28 Oct 2023 19:13:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XUAfPKNM"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F3DA93B
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 19:13:30 +0000 (UTC)
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47992EB
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 12:13:29 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-32d80ae19f8so2122926f8f.2
        for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 12:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698520407; x=1699125207; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0d8Wu7cwT3csb9Kn7sSs3Xz1T1ix90/Cucuh7IBJjS8=;
        b=XUAfPKNMJO4kaCk7yN7E91Nv0gDzuv/1FX7xrCLDyIXKR4Wk+8Lb6ExF5v0hed27ZG
         +QROg/KjZH5QNwQxoaey0+vAspF+ukvGNxdYogoiNIrj4bNWJZ1b7UbunTh7hwYg9izY
         VZ5ByEXgUXrwWdymz8KBl/k3VbKsX4lddF9GVWKJyajA80loHkZ0SqA70IwyMJJSmJLh
         qT7QPeHS+zu+XLqUHE2nGBPOXHjOf3SEPfBn5heJKm7z5VlGNaYHcQtux35pz2qV4KgH
         jeeLyOinlDRTq8/j8Xwo2HH2/wd+GPsymqBI7RspKyqqr6sqlYGw0hql3D3KbqlraPD3
         F2fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698520407; x=1699125207;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0d8Wu7cwT3csb9Kn7sSs3Xz1T1ix90/Cucuh7IBJjS8=;
        b=A1iNKJ11pEhoGCfPsbdSINm90Z+VY3gx6aE7e1AbtLsdEB9AsOCAaOe8sS0lZyx1lL
         xpILvIBdKJocq5kshf8H2V6omxFStpmqo+eoKZNU2nBndCbC6ZFu7VpNzcB7MVkm/mcD
         fsv6BZG5IwBhl+xW0mqhuocvtvrBQb1hIy6m2mjnNKMg/uEOrwnw/wGBrrHF6wCrmEyA
         oT8HYSRR3F0EQGEEw0b1v0YVfHo5sVWfQf3vbwvgpuZq8W3fZRjhcJIi/h9xfatOgWzM
         5LzE8ykKNW3cRDNtvXiLtwEX3jARe+J10Cz9HxD0zwvGQORZHQbpNsCyh/xg1lJuOqoC
         ntGQ==
X-Gm-Message-State: AOJu0Yxt6UIGBoGpkDcEJZIm2PewiE8UrnrCx8Wb0wXugoS/9oIDf4Cb
	zNFEvtH1Rkhd93nxgLZiZK/VyO9hM8XkPps71DC2lA==
X-Google-Smtp-Source: AGHT+IHpCIG80QzJxe1Tt5Wenaj1oQLZAgeTsD8fzieQTtvn5G7qbl/80H8fku9uQwSuYidVr2RmFA==
X-Received: by 2002:adf:d1e4:0:b0:32f:7c6c:aa14 with SMTP id g4-20020adfd1e4000000b0032f7c6caa14mr2016640wrd.37.1698520407675;
        Sat, 28 Oct 2023 12:13:27 -0700 (PDT)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id bq22-20020a5d5a16000000b0032f7865a4c7sm2428358wrb.21.2023.10.28.12.13.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Oct 2023 12:13:27 -0700 (PDT)
Message-ID: <e44c751a-f0f5-42d8-aa99-743b349fdf9b@linaro.org>
Date: Sat, 28 Oct 2023 20:13:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] clk: qcom: gcc-msm8939: Add missing CSI2 related clocks
Content-Language: en-US
To: Vincent Knecht <vincent.knecht@mailoo.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Stephan Gerhold <stephan@gerhold.net>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20231028121047.317550-1-vincent.knecht@mailoo.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20231028121047.317550-1-vincent.knecht@mailoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 28/10/2023 13:10, Vincent Knecht wrote:
> When adding in the indexes for this clock-controller we missed
> GCC_CAMSS_CSI2_AHB_CLK, GCC_CAMSS_CSI2_CLK, GCC_CAMSS_CSI2PHY_CLK,
> GCC_CAMSS_CSI2PIX_CLK and GCC_CAMSS_CSI2RDI_CLK.
> 
> Add them in now.
> 
> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>
> ---
> No fixes tag because camss is a not-yet-enabled feature for msm8939.
> 
> Also didn't rename ftbl_gcc_camss_csi0_1_clk now that csi2 uses it
> to avoid not-required-churn... should it be done anyway ?

An aesthetic choice with no right answer but, downstream calls it

ftbl_gcc_camss_csi0_1_2_clk,

maybe that's reasonable.

Assuming Krz's comments acted upon.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

