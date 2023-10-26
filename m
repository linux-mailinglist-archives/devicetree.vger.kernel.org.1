Return-Path: <devicetree+bounces-12264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DB87D8954
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 22:01:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DC911F2332D
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 20:01:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80A8F3C09B;
	Thu, 26 Oct 2023 20:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J0w1uwlW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E08463B7BB
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 20:01:35 +0000 (UTC)
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2956D1BB
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 13:01:34 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-507975d34e8so1955084e87.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 13:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698350492; x=1698955292; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pzGqz/duyYPElwwtqx/hjizAGVszVP9AWvS4e26Osn0=;
        b=J0w1uwlWD3G4/I5eKcsjcmfHTeMX/UuBqnTC7R+cjHCx4xW+Ok0imZ0h5WcUWdsLsM
         2+82/18TOZ4wSdUUVIHMZwTgBfP88Ug/LvlDnI/koBop7wa/uafvIpOVrcoV6HqMxywe
         maEscMA1KtU/Zygw9Do42nx7vVL9YZ7IoZFRM0FAusXBkiDlQFMGspaluTCpkFAGfisp
         T1ttwk5E3VtBN1CJ/1aNxXYyy9304f7Bp48iQtnxIJVWG3xv+JjVh4FgNTBizhypC2jT
         i3P9tOALnObBePfdSRnsj002TJhS+Ldf0tefhzBqSRjy4SXbkWKy07hz9eRIdhbL8YUK
         fkFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698350492; x=1698955292;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pzGqz/duyYPElwwtqx/hjizAGVszVP9AWvS4e26Osn0=;
        b=vACxhW4ZkZPXFOE5A+EkhhZ0uSy0PX5C1iusoPZhcj+9mrbE+IJclN06+K/ewYs7CW
         2EhhISX/Cd7rLUgpBUewINAG1hy4G1TbuVcVz4NdEFhSIUgrgL+Z7D6DiblDEknnKsTY
         sQC7yLP3Sdegl6PXEs7dU9zI9QI7wUF1MssRhjH+wUdpYdF862y0oSSO1TGroRg46+6d
         +tpUXaY1wn9cP0CnCGovy48CZYIBrm/KesbrOJyJ6D9kDOJBJFJkScq9qisv1dcTbzPE
         dhMBqLHvgSH1xnUljxFAHcTeBa4Akxa4CygZZtyNNaKCYveDfbfylap0CzraDQcTgj4K
         78lA==
X-Gm-Message-State: AOJu0YzBEAIEqiQafWkcukT9+LFA09pbv7JUaUItbTTf1hdv+hEhO8B0
	iDTMCYYDHnl8VM6P4Ifd4EwCbg==
X-Google-Smtp-Source: AGHT+IHhxtpFa1NlJRvaWu3AoOoyJeppQxaOVSGhWnU+RXFu75zgVS2yrEFL9xfgFkxYE9BbFWyilA==
X-Received: by 2002:a05:6512:3d0b:b0:500:8f66:5941 with SMTP id d11-20020a0565123d0b00b005008f665941mr337184lfv.50.1698350492352;
        Thu, 26 Oct 2023 13:01:32 -0700 (PDT)
Received: from [172.30.205.86] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id m21-20020a194355000000b00501b9fc977csm3137765lfj.37.2023.10.26.13.01.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 13:01:31 -0700 (PDT)
Message-ID: <a6cc8d55-2892-478f-ad8a-a9a4359abb7d@linaro.org>
Date: Thu, 26 Oct 2023 22:01:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/4] cpufreq: qcom-nvmem: add support for IPQ8064
To: Christian Marangi <ansuelsmth@gmail.com>, Ilia Lin <ilia.lin@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Sricharan Ramabadhran <quic_srichara@quicinc.com>, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231013173854.7399-1-ansuelsmth@gmail.com>
 <20231013173854.7399-4-ansuelsmth@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231013173854.7399-4-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/13/23 19:38, Christian Marangi wrote:
> IPQ8064 comes in 3 families:
> * IPQ8062 up to 1.0GHz
> * IPQ8064/IPQ8066/IPQ8068 up to 1.4GHz
> * IPQ8065/IPQ8069 up to 1.7Ghz
> 
> So, in order to be able to support one OPP table, add support for
> IPQ8064 family based of SMEM SoC ID-s and correctly set the version so
> opp-supported-hw can be correctly used.
> 
> Bit are set with the following logic:
> * IPQ8062 BIT 0
> * IPQ8064/IPQ8066/IPQ8068 BIT 1
> * IPQ8065/IPQ8069 BIT 2
> 
> speed is never fused, only pvs values are fused.
> 
> IPQ806x SoC doesn't have pvs_version so we drop and we use the new
> pattern:
> opp-microvolt-speed0-pvs<PSV_VALUE>
> 
> Example:
> - for ipq8062 psv2
>    opp-microvolt-speed0-pvs2 = < 925000 878750 971250>
> 
> Fixes: a8811ec764f9 ("cpufreq: qcom: Add support for krait based socs")
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

