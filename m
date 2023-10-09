Return-Path: <devicetree+bounces-7044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D99037BEC97
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 23:15:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93C0F28144B
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 21:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E743405F3;
	Mon,  9 Oct 2023 21:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jDW6Nw2X"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C6B2030B
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 21:15:47 +0000 (UTC)
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31F2119B
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 14:15:13 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2c1807f3400so60879351fa.1
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 14:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696886111; x=1697490911; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GF8sVvByPhILrt0ONAgfOaeyuIu1HrfcOafsBj1Kszo=;
        b=jDW6Nw2XwVMmxv3s8Jy+owRjhpcl5rJmP3z0COTeBVfsRHY9GcZUB4KPVeRQSXZH9D
         4MLHVGV1POq1NppcUkViz3eI+FU59J5Ehm57PoONo/2e1ORENe5noa6zeUVgqrQGrrFo
         CNJh5uv3xW+mhwd8G64i0pvvugzbzAzpF/Q+WAs7AIbEwMWkMzCjqo3eDS1M0QacNhjH
         vTyv9oWjeWlhCuBaE+5lfeXcxEsxQTg8fktc902n5xmIA07DOQvQUr2YKbMqy5ZB6ID1
         XAbQoAR69MwFli0bPcNhzFyFhGDcn+hPZHglfYqSirAIoJdNJ6iOLaLwgQy6YNDRk7Xg
         bm1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696886111; x=1697490911;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GF8sVvByPhILrt0ONAgfOaeyuIu1HrfcOafsBj1Kszo=;
        b=Hl8Xby6sul08WnLhw0YBczXyblZASNiTibgj3qbR4kDT1XgEbPSCjfckQ8LZp0siB9
         2qPI9q98Cn9p33R1nJMoGj8XdILFDRWRAzkbHVV1em8wsXT4dnb1jBX8CMvTe8A/tymM
         /j2jKbDkb9fcPsQtIa+jx2O3d/r9xJJe+bOKOgUimIeAKjhtq/kZ5+f/MtTP2DmAPWac
         5aLqoxAM5pNwv3oTSiaV7uAm7JhSbYcFJJFn/KbUpJk/mY3f7IGmkicg3ZdMaq5uCXOf
         IXQlbiGtogZsTboA5nN6DNT3wZJRBN2RUeHX0gioFkbW0NWof77vsaUwxuViZhWNr2fm
         tkwg==
X-Gm-Message-State: AOJu0YwO5APEYJ+aGaUvdmEV7HygyvrG1bmw5IH6j0y/JeR4J/hE0eji
	VmiJG51O3rVFelCMg7epVsu9Cg==
X-Google-Smtp-Source: AGHT+IHPANy7utWKq+Nt0JGanJ/qxGKrfFVdkzSlLFJqrNsi+LPmEIbl3s9Am1RcS03FjaY5Al1gyQ==
X-Received: by 2002:a05:651c:2049:b0:2c0:12f9:3b7c with SMTP id t9-20020a05651c204900b002c012f93b7cmr10214544ljo.11.1696886111428;
        Mon, 09 Oct 2023 14:15:11 -0700 (PDT)
Received: from [172.30.204.90] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id n10-20020a2e86ca000000b002c029a4b681sm2175771ljj.15.2023.10.09.14.15.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Oct 2023 14:15:11 -0700 (PDT)
Message-ID: <c4d418b3-86e7-4768-8d18-bf0c05690ddc@linaro.org>
Date: Mon, 9 Oct 2023 23:15:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/7] arm64: dts: qcom: sm7125-xiaomi-common: Add UFS nodes
Content-Language: en-US
To: David Wronek <davidwronek@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Joe Mason <buddyjojo06@outlook.com>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 hexdump0815@googlemail.com, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20231007140053.1731245-1-davidwronek@gmail.com>
 <20231007140053.1731245-7-davidwronek@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231007140053.1731245-7-davidwronek@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/7/23 15:58, David Wronek wrote:
> Enable the UFS found on the SM7125 Xiaomi smartphones.
> 
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

