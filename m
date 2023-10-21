Return-Path: <devicetree+bounces-10565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B47FF7D1EB8
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 19:48:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E43631C2094F
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 17:48:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 540071DFCD;
	Sat, 21 Oct 2023 17:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VNN02FtC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D12ED8
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 17:48:15 +0000 (UTC)
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C554112
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 10:48:10 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50797cf5b69so2518933e87.2
        for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 10:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697910488; x=1698515288; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=USibswDTLV5hhcZmfwN5wG8LNAeE5Zw2XQaGAnkihLs=;
        b=VNN02FtCZqKyG+jA86PXq8MyUCC2wgcBZf4BjMesMQC4y94wz0BqAi7o4T1he/Iq8J
         vMX5IywG/ULd5cJBNAC299Wq0o9u6Xrl+PoJCXakH3W2VUMvtSbBhhYHsy9enCKGcfro
         7HPu4Ip9n5NwRm1PjSYh1T8xHEk1Cg6t553/uNSPm/go7Kkv7EKayXSXv1bJCPBrrRzM
         GkhzUBUpEQ8VgG0A7/M+snksdcPbm2PI+5Wj5G4hr2Tw++5o48tKR2geHBgzmtS6xlC5
         GwkcGyDMnsqYXS3IGa+AMXBqwEeYGufjTIJ1Xskj3aXTODH8IoOc8nnnzRALesYhKrAg
         sLIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697910488; x=1698515288;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=USibswDTLV5hhcZmfwN5wG8LNAeE5Zw2XQaGAnkihLs=;
        b=YQ0Z9EhJU/sJjDsk3ELGvKK3E1OjE9ZML22f9fezBbjHDVoHdfIUS9MSskkjMyIuOy
         vnec0YanhYKAJ+ZqDcX9sx+Z1XwBT/WKCtF8uCI6gaD/yav7/bUt7F6mKMGFQSgEZFvn
         f8z5AU9WJjvXYfLl7ICjrdUzYj+QEpNA1dw70BIcD+Om6LMtBkFnD7XH2OGMa0mdZzPG
         DczTBNmPpnE0J5pid7eZ2cYN5moDokwPb1up6dnLKFW18h/D5NMi4ahqlOD5ldHd1rLG
         GRj2LHcou8GTJsLlDfS42T/usYSVS9ekX3r4F1oyEeLZGmkySw8KTxHwm0PPZDzVSavl
         X5CA==
X-Gm-Message-State: AOJu0Yz0e+340MTR5v+YPtBYv+xMJSsui+K2SfdKm+3LMtdV1yBcDv9x
	/Eanoyjrvk1SRp7eoPsUyRY08w==
X-Google-Smtp-Source: AGHT+IHTVRoSS6yO+9sgzU02SfQJ15ZB0Hj1Y7XN1P7chtA/q9VuZxPnVgkf9XbYeIQPlxCaC1+JNg==
X-Received: by 2002:ac2:58e2:0:b0:500:99a9:bc40 with SMTP id v2-20020ac258e2000000b0050099a9bc40mr3174599lfo.69.1697910488571;
        Sat, 21 Oct 2023 10:48:08 -0700 (PDT)
Received: from [10.66.66.3] (9.ip-51-91-159.eu. [51.91.159.9])
        by smtp.gmail.com with ESMTPSA id b11-20020a05600010cb00b00324853fc8adsm4061505wrx.104.2023.10.21.10.48.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Oct 2023 10:48:08 -0700 (PDT)
Message-ID: <a45a4bec-d675-42fc-b17b-a49f316ef5af@linaro.org>
Date: Sat, 21 Oct 2023 19:48:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] pmdomain: qcom: rpmpd: Add MSM8917 power domains
Content-Language: en-US
To: =?UTF-8?Q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>,
 linux-arm-msm@vger.kernel.org
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org
References: <20231014133823.14088-1-otto.pflueger@abscue.de>
 <20231014133823.14088-3-otto.pflueger@abscue.de>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231014133823.14088-3-otto.pflueger@abscue.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 10/14/23 15:38, Otto Pflüger wrote:
> MSM8917 uses the SMPA2 and LDOA3 regulators provided by the PM8937 PMIC
> for the VDDCX and VDDMX power domains in voltage level mode,
> respectively. These definitions should also work on MSM8937.
> 
> Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

