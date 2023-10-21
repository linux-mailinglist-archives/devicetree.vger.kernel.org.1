Return-Path: <devicetree+bounces-10566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD547D1EBB
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 19:50:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0D67D1C2093B
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 17:50:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DD661DFCD;
	Sat, 21 Oct 2023 17:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jh1dkaav"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A100EED8
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 17:50:09 +0000 (UTC)
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D564911B
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 10:50:04 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4083f61312eso15379105e9.3
        for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 10:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697910603; x=1698515403; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DXcLZN8iPsWJ+ohhlVcmVKvXJcBROkJiCLLifqegDq8=;
        b=Jh1dkaavSHj0FEYSVbYZdrf4AZpcrdRBW3FefgoQ16siRULN2xjZtegK2NgYQudqFX
         3s858885568P2wlaLC0zUIYyPDnf2KC62OKyeh6/cEX1NFZnZMCWonVsvat7x0A/2zrL
         ae7j5/lt9p0KV/OrfIFLquAYWnUYrFKNrI2Ww57zGTJlgLq/p4V2iuCoRnYyZoqrUOzA
         ivqYA+4/omW6dWb1jFs92J4WtR/PlUvwNwS1yXM6cb18oWqoOHr6xd90OjCTtj+tKyqR
         dN/mSw7MY+yA0zD62tg+DiJvYfWw+VMjmieaDTXTUBBE96VorUMRLWIYzqB7X2EQhsRq
         nifQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697910603; x=1698515403;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DXcLZN8iPsWJ+ohhlVcmVKvXJcBROkJiCLLifqegDq8=;
        b=PHvYJs9ZxzJGPviq644zj/gAl4RGSqFujQrs6bCx2vsSZA00VKw7qOSqZAOetHCA7o
         XfNMx+MtZ5cdpaY29L2QnYBXUCuuWe8DxYbouX02Zn0slg1jrxkJsOB6QmLnREI2jFnw
         W4NrLRbvcFwxDdipHJBNC9uxvk+9iG4wrDIEvfRhILi+BhqqgY1p9sZiSGilweMlgbvw
         teN22jsqKdUWGZb6vwJkyWPMB7wdaXUWCJtw8eXDPPm9IBzSVG9jeKDPVAT6tImVTvq1
         qJgp2oNVy9PWMFBJnYWFnTa8S0o47Vmo0HbVwNnKYNEPgd7Dfwpg98grfirgTzaIzA0J
         r/VQ==
X-Gm-Message-State: AOJu0Yw7QCol00zrpQ6IbJF1VaB6HEZTYkVo7tSLao5LSVAQnbYk0M38
	bQXszaCJzolaka86oErbTSYMKbJNtoQ8a0smF0Jbsg==
X-Google-Smtp-Source: AGHT+IHkyl2yWkeHcGeoYhzZ55Dt9w0PlfqwiFNT1KJ8m01Tc3KTdgBp3pJhtm9PxofJ0RQ7vRzKxg==
X-Received: by 2002:a05:600c:1987:b0:408:56ea:f061 with SMTP id t7-20020a05600c198700b0040856eaf061mr2003852wmq.24.1697910603274;
        Sat, 21 Oct 2023 10:50:03 -0700 (PDT)
Received: from [10.66.66.3] (9.ip-51-91-159.eu. [51.91.159.9])
        by smtp.gmail.com with ESMTPSA id l23-20020a1c7917000000b004063cced50bsm4980526wme.23.2023.10.21.10.50.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Oct 2023 10:50:02 -0700 (PDT)
Message-ID: <238b8cae-f1e5-4aad-953e-576460a41ac1@linaro.org>
Date: Sat, 21 Oct 2023 19:50:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] pmdomain: qcom: rpmpd: Add QM215 power domains
Content-Language: en-US
To: =?UTF-8?Q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>,
 linux-arm-msm@vger.kernel.org
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org
References: <20231014133823.14088-1-otto.pflueger@abscue.de>
 <20231014133823.14088-4-otto.pflueger@abscue.de>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231014133823.14088-4-otto.pflueger@abscue.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 10/14/23 15:38, Otto Pflüger wrote:
> QM215 is typically paired with a PM8916 PMIC and uses its SMPA1 and
> LDOA2 regulators in voltage level mode for VDDCX and VDDMX, respectively.
> 
> Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

