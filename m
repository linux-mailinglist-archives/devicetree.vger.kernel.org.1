Return-Path: <devicetree+bounces-18102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEBF7F517E
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 21:22:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C2B228134C
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 20:22:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A9CF5C8EC;
	Wed, 22 Nov 2023 20:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vmMPxghl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 334051BF
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 12:22:38 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5094cb3a036so146066e87.2
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 12:22:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700684556; x=1701289356; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r7MrYgOMdKVuK+GDXv9aJD8jhLhCPuIE63O1Ov1GqRc=;
        b=vmMPxghlI18mS/HMiHX2JHnysNomTrXCWD0zL3LTi0eSq2b/lTUElj9ULvI00QbgVJ
         vLm+tWwWATGL6kCqJeAF0vBZ6kITuaPGbr6qlPZIUiFuQJxiIS5iVsUrm3Prp5starms
         I9T2bTWkLWi4ok/RGTZFCk4sLxZdEJJI98Rf/GTF9K+IA6MD84d04PuZyritLLOzm/9k
         JSUJyrrw0wJTDbpKHLwcKAi+NlURaN3YuJXsQqWWJPk7iiCuV5O4vrb/fHCuu9VAlYUu
         F+Hxa1QMOujHRByhH7SGjsn093x/Q7dSHcFsp0nYcsYKDiAw6gVDQr76KiaUIUWqFZum
         RujA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700684556; x=1701289356;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r7MrYgOMdKVuK+GDXv9aJD8jhLhCPuIE63O1Ov1GqRc=;
        b=fbuoaQ0gng5CjZ0qoS4LUm+zA+rGILajFKhd3yUXR1Y+PEUl8DNJexU8ToOdjmtlHu
         txo4k4wew8Im7nDNA6S2OJthEO83eHSf0xykbxEiSF0uKMDl9lDZw3vurFJ0nXmkMK7i
         Lnclm3uo+fjkCXwbEiegjVmGAVgi4+iaozZFP0oHYIHQ/BNrsF5TjLSWoaikJzzr1vHd
         OQ1sB/g0rlDVSwXYBqG76NP5aSTOcDyJULTGyJg2mBCBJbhWjfM/ZF0ogVKg/wmPujPd
         MUzMxv7r0pV1bVvacTrZWEkbmWDPtxVrwYLIQj3HC6YRuIzWSvuSNsV+qj8iXw1jSPGc
         hgxg==
X-Gm-Message-State: AOJu0YwEp50UJ9Sm71CHDm6QskMMRC0mrmoqoldK9LGWCX6HB9KZ3hix
	C7V9iNYnMzNVbIQlKRxbDczR+w==
X-Google-Smtp-Source: AGHT+IEhleik4LWRMe/dmf9VTpFWeI3uN5MuNWVtzwF5hLzAKGpAJN5yXMeSzO52dXBTv06mOretFA==
X-Received: by 2002:a05:6512:3c95:b0:50a:a5ab:e393 with SMTP id h21-20020a0565123c9500b0050aa5abe393mr3366084lfv.61.1700684556447;
        Wed, 22 Nov 2023 12:22:36 -0800 (PST)
Received: from [172.30.204.74] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id d24-20020a056512369800b005091314185asm1952576lfs.285.2023.11.22.12.22.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 12:22:36 -0800 (PST)
Message-ID: <81a8faea-b2d3-437d-8923-954569969bf6@linaro.org>
Date: Wed, 22 Nov 2023 21:22:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/9] clk: qcom: ipq5332: add gpll0_out_aux clock
Content-Language: en-US
To: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20231121-ipq5332-nsscc-v2-0-a7ff61beab72@quicinc.com>
 <20231121-ipq5332-nsscc-v2-5-a7ff61beab72@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231121-ipq5332-nsscc-v2-5-a7ff61beab72@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/21/23 15:30, Kathiravan Thirumoorthy wrote:
> Add support for gpll0_out_aux clock which acts as the parent for
> certain networking subsystem (NSS) clocks.
> 
> Signed-off-by: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
> ---
Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

