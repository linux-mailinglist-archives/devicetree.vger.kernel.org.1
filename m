Return-Path: <devicetree+bounces-14447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B453B7E4AC7
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 22:37:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E58041C20CCA
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 21:37:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B38222A1DF;
	Tue,  7 Nov 2023 21:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qDDoHOU0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2872A1D7
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 21:37:30 +0000 (UTC)
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94FDF10EA
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 13:37:29 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2c5028e5b88so85645171fa.3
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 13:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699393048; x=1699997848; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Xb8KzKPBHLyy08/XAyZA3sT9NlC52bYPEE/qj+4GUxQ=;
        b=qDDoHOU0V4R1dhqNsuQjSIxDry48BQqqm0tGDH2kKCCXaLzw5KGYyqr3IFemZPyNdQ
         yalzr96kPe94Aant8fgjHoQ3A21MW4JGl21UqHrl17b1t890F/mD4cZZGbNxCN5+cdnc
         f7SqT/CC6s/yBfkrmjV+kG2I5BtuWWxrNqN6J2TWrIqHwEsDReEO1FmqMwDNAvjZLh9i
         F8SUqoTG4qmWtCx03OY+OSj/qrZwDqFTPjzo1FApvbTTVWUby66AYnQPsA6zIVOinP/w
         rejhuVhS4YiocjiDzrqvIgtCYs5RGQ8MX8EpkZ0ZKpv1ws1m7gk1VtuZfH6CfyrRFOsx
         /2fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699393048; x=1699997848;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Xb8KzKPBHLyy08/XAyZA3sT9NlC52bYPEE/qj+4GUxQ=;
        b=jhb85ulCXs9eJxVl8IBcNEp6nIWLV7Uqb1qWaHsEI5tUTCeL9WfGBPV7p3ga/XbQ3M
         0RiiQUAYrIgn54Qf5ZuyenEBzLiimHfGBEqJUk0A75YXq67tY1Yv1wjYhpE4PtIoWjdd
         62gLZ7VqCtpm7jYvC11FX0DMQ5kd6obPkFQ5LSvzaV4UOWoVUjLVe4NHtm5FmIIpLHzF
         BK486PYaidXfOg3ArcamiTiiYgwUpRJ5Tg9uw1m40OmZeW9YXqfOPNNLoZ4X3tghH6o9
         l4UgB0o28wdx9xr+hRd+PmPa+M6CvSNiMiXQEvP5C4h7uPQBUjWzdrYtxvH5GLzEUiws
         dKqg==
X-Gm-Message-State: AOJu0YyvzJ4elOtPMUYh3u5HhcKA3oA2Xbz3CuTQ97oRHA4lAnli3KKv
	nntyRZDcvjReGcq9Vyvjx6W5WQ==
X-Google-Smtp-Source: AGHT+IERd2a+Kke+ire1MwUqqEGnWGB8dW0AOOoiaNQbj/x9AWBnh/e8bZt/YtjxeEfPEATSFX1Xyw==
X-Received: by 2002:a2e:87cc:0:b0:2c5:22c0:582c with SMTP id v12-20020a2e87cc000000b002c522c0582cmr154444ljj.11.1699393047759;
        Tue, 07 Nov 2023 13:37:27 -0800 (PST)
Received: from [172.30.205.109] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id m6-20020a2e8706000000b002c6eb321d87sm1621381lji.118.2023.11.07.13.37.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Nov 2023 13:37:27 -0800 (PST)
Message-ID: <fc7669ba-e466-40e8-a5fa-26b6816c46a4@linaro.org>
Date: Tue, 7 Nov 2023 22:37:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] media: qcom: camss: Add sc8280xp support
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, hverkuil-cisco@xs4all.nl,
 laurent.pinchart@ideasonboard.com, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, vincent.knecht@mailoo.org,
 matti.lehtimaki@gmail.com, quic_grosikop@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231105-b4-camss-sc8280xp-v3-0-4b3c372ff0f4@linaro.org>
 <20231105-b4-camss-sc8280xp-v3-5-4b3c372ff0f4@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231105-b4-camss-sc8280xp-v3-5-4b3c372ff0f4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11/5/23 18:45, Bryan O'Donoghue wrote:
> Add in functional logic throughout the code to support the sc8280xp.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
IMHO this should be squashed with patch 2

anyway:

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

