Return-Path: <devicetree+bounces-16030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB317EC8F3
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 17:50:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D21101F2798D
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 16:50:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3156E31737;
	Wed, 15 Nov 2023 16:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F6BpYH2w"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1501C2D799
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 16:50:43 +0000 (UTC)
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 788EDD40
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 08:50:36 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c509f2c46cso99779661fa.1
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 08:50:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700067034; x=1700671834; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h2tcXaJjFH/8KrsTwvA6FjU/HB+3Vakyi0P3qd2Rw2k=;
        b=F6BpYH2wSyCCnfEamGa5nnlSvzEpNT8T5zLCmZLE4BGjodQmJnq79t+Eve/fRoNe8B
         7Iu2dsP5uTqLdcevxNcq7xjQRIYPvraak1NfouY65j0TsTKyih4SeBms5lNsA1rkH1HI
         yjynPmrIbxC9FLHs+dgmlX6+lEOoSxCfDzRpTxWhpv0oUyt2UvZNg9YBCZlpy3g1qnN8
         pKzXC/HjG4K2kcimPu9/itz3E/qqdFRtSmtmXZiEAEU7ixFRB1SpSEIDzppak3twKCWG
         jpenwb7+GRR1KhZ9QJLj71JcTI5jHg9NfxQihfwxtNIbt4/cz1ayyIRBRziaS7h8twUj
         o5Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700067034; x=1700671834;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h2tcXaJjFH/8KrsTwvA6FjU/HB+3Vakyi0P3qd2Rw2k=;
        b=FqztlbFtJjwC9YlBtSKIjzeIQ6YghhsyG9hwD0ty9O2wLtg1dHdTx934M9r2HfZkFw
         o1bATJ49QXglPZxlGt2+RfY8l/S8ovcTTsKzg5teeZYQeXrGOIb2039l1oORlJDeHzdu
         IHfPMc/3r3atulBQWHFs+ZBaLjOv773EQp8f4H3dRIxJ37fPbi9wrkj2XvjmSY7wJ30e
         ivDhvStTmerpFp5J2P3tTovvgms3cwLMt7zGs/WRBAw0xabRELDtQSGwmSWMyO3CsOrT
         lF/HlTHZ1tUI0QY2c5RyKVs+rBOJlUfdqgWBHFOKaGb9Pl6M80hc3OLezmv+obdQhs6v
         yjpw==
X-Gm-Message-State: AOJu0YwXyB40pswLhcqOnbnzbQnAO2RgmLxOALxDkgeHj1CEdal1jSTN
	FsvnvjjXdY+9POhRQgtgaMz/Lg==
X-Google-Smtp-Source: AGHT+IFHbmzb/CUGh89uInTlWtAWdiKRuOF96YRyjerfnlzkcfXgyUS8s+sBJZnLKJWivddd6G4kXg==
X-Received: by 2002:a2e:a48e:0:b0:2c0:21b6:e82e with SMTP id h14-20020a2ea48e000000b002c021b6e82emr5443954lji.4.1700067034631;
        Wed, 15 Nov 2023 08:50:34 -0800 (PST)
Received: from [172.30.204.150] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id a13-20020a2ebe8d000000b002c12c2094e4sm1705775ljr.74.2023.11.15.08.50.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Nov 2023 08:50:34 -0800 (PST)
Message-ID: <3d341271-ffed-46cd-853b-6b7b4029bf3b@linaro.org>
Date: Wed, 15 Nov 2023 17:50:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] ARM: dts: qcom: ipq8064: drop unused reset-names from
 DWC3 node
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231112080136.12518-1-krzysztof.kozlowski@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231112080136.12518-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/12/23 09:01, Krzysztof Kozlowski wrote:
> The Qualcomm DWC3 USB controller bindings do not allow "reset-names" and
> Linux driver does no use it.  This fixes dtbs_check warning:
> 
>    qcom-ipq8064-ap148.dtb: usb@100f8800: 'reset-names' does not match any of the regexes: '^usb@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

