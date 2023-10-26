Return-Path: <devicetree+bounces-12150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 096677D81BC
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 13:22:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B80532818A9
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 11:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBA402AB38;
	Thu, 26 Oct 2023 11:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yWKqhpWX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2757EC154
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:21:59 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5D831B1
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 04:21:56 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-507a29c7eefso1075788e87.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 04:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698319315; x=1698924115; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fcxp1fuyddcU0jwy8+vZyqysrnGnDmUXtGIc2oOqr9M=;
        b=yWKqhpWX+WKh1X4glVG4c2friFCj8xnu298GjlOFo0Bg0WdCCzP85SQYK5KStm5vj+
         hFoP+eCTSOqZ5It+whhIUtooqbNJXG9jho/DBkGJkCf8QFBnPCLCUp7vIzdIPin+zd4d
         hC69Vog+mOezJ9TBKDagu2hUH+xDy+VeoZhnQ8V8hTHIwVAtzareutK0bz6NZg07upAf
         kZ3jxsYPYwkF1mWqIqnucwgYHR1WDlhMCKnCk5XBwoRipVfE8GOg6m8iHumuaKsQeAkv
         bwp8jVKnkXnELdg17vYdmE31EKZLywv5YNT+qOyLLC+QCc5umveQKF/LEgg++vgNBgKe
         aJLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698319315; x=1698924115;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fcxp1fuyddcU0jwy8+vZyqysrnGnDmUXtGIc2oOqr9M=;
        b=Z5wh4K2hi9rcpp7UbcrfL9VDdJFI9nyZj8vdMlOd/xBDSQY4a0eyHI7V6a2/sNT2FI
         MLo/cJLFDbxCmqhAnJ6wzGVEzRPWo5AWErkxPHnH10TpkaCeGpIIY3lGEe2mi45nG6wi
         Lah54YtGy1PjdahuIQdOL8Z2xauTITNnfSQ/I0UuSJBHgFMXJxfvNMCF5Wk7dqlmuvp5
         pT74R8sCB7SxO3OW5YPzhVxFoB6An5M7H96kcZ1k14bO2QGnwd41Gc5+dkBW0+b1XgLi
         W7fMSnd1R9nMvq7nrkDk5QR5h35YhihTbQtra0IrA8uzuc77Z7qMH6CjqKuy3uIYd5gR
         n5mg==
X-Gm-Message-State: AOJu0YyD3eczmSx/h9AR7x6WIhU4C760TpooBSbvDRgddUspcUl3djJL
	JHPAyKr9lN4E0saEG6KawI/36w==
X-Google-Smtp-Source: AGHT+IEQQc1TyKVlCDJtMSwT9AGEoFnojlydVneMuAjPLtcei3bXDo4wQ/oGtl3IHJ7gxq29CBF0JA==
X-Received: by 2002:ac2:4acf:0:b0:4fd:faa5:64ed with SMTP id m15-20020ac24acf000000b004fdfaa564edmr11338887lfp.11.1698319315139;
        Thu, 26 Oct 2023 04:21:55 -0700 (PDT)
Received: from [172.30.204.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id q5-20020a056512210500b00507a14e18d4sm2974495lfr.222.2023.10.26.04.21.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 04:21:54 -0700 (PDT)
Message-ID: <70ae0765-8ade-40db-98a0-59271c96f751@linaro.org>
Date: Thu, 26 Oct 2023 13:21:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v4 4/4] arm64: dts: qcom: sc8280xp: Add in CAMCC
 for sc8280xp
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, andersson@kernel.org,
 agross@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 dmitry.baryshkov@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jonathan@marek.ca,
 quic_tdas@quicinc.com, vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20231026105345.3376-1-bryan.odonoghue@linaro.org>
 <20231026105345.3376-5-bryan.odonoghue@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231026105345.3376-5-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/26/23 12:53, Bryan O'Donoghue wrote:
> Add in CAMCC for sc8280xp. The sc8280xp Camera Clock Controller looks
> similar to most of the sdmX, smX and now scX controllers.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

