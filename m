Return-Path: <devicetree+bounces-24413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B0080F25F
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 17:22:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 269AC1C20A8B
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 16:22:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65F7D77F20;
	Tue, 12 Dec 2023 16:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZTgcnQUe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DBEADC
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 08:22:42 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-50be24167efso6763576e87.3
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 08:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702398161; x=1703002961; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9rIMOgJELoYzb7wiNwf62z7Kl2Dio0qgPcZXUZG0LhA=;
        b=ZTgcnQUeqbkqww46jnCJ/dYcQgOtGVztShtd4F3kzE4OfYUh6Z70TTps05hkFO0rUg
         W21ohjbDXj3eCSt5dElCtP4tCFFlqAlfwZcUtSAXyTc0H83jV9/jd7wrCIkfIUwUfjZf
         tjJrXOq5MskRDMqSzJoB23t/3ZNci8+RBrOQ9Xi8+sJ0AOJ3DjQmC/MEy+wD9xeKcpIJ
         rH0HUBiBP3gfojnBjuK2ozkpm4Gn3Chlvr42gbUR/TaOUgfoKcx6mRVr7EiIMBjzWa0Q
         xTOOIz8X7dOARaAUEc9iczoaJznvnJFXjvO/ry7SZIDEAasvSqWr1zi/aFgwVZQDPtcq
         5u5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702398161; x=1703002961;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9rIMOgJELoYzb7wiNwf62z7Kl2Dio0qgPcZXUZG0LhA=;
        b=ZJv0qee8+qkJdwlOznGAd4kbEBqt6wlSe1hPomWs9B2Nd9sQN5vFfcj5viodU0J3E/
         uh2m0kh9XEZOSERZnk7GaqmtoLezkTTaKDOm5RIXnBFMHEpflELjSwQMucitFIfZpQRy
         Fe8wtCE//fr3GbhXzFRP1EC/tyCRAg55r8jVbrxDTzGyvCbYVB0Aoxbi6OU2uqrOgM3g
         Gkzokdhbmsu0deamHBRjgXZ7yoFVUoueaVFVgMuQDPQhN9yXMa9R21lNNPH8HLcRbCQC
         nPca8EsYI68kQf1ZmDtbLjiGlnoQTHMT4h+O3M6LW4yveMX4mGtXM87HuWXzEh2yCzmA
         /3dw==
X-Gm-Message-State: AOJu0YwW11aOHS6qLfKhZvzMV2uDLuBEsk4bX0j+iuAYYQqoDiKzPU1p
	s/M7Tqfo4bn7c4/vQtYmIpj+40G66tBRrwSuJEE+Og==
X-Google-Smtp-Source: AGHT+IHsUDU7BTze8ti+y5I5/DuKnoBA/50hWRceCV0DyXBALJk4vmUkpqm9pO1iXitAVzNrUDFxAA==
X-Received: by 2002:ac2:58ca:0:b0:50b:debe:d35d with SMTP id u10-20020ac258ca000000b0050bdebed35dmr1450754lfo.133.1702398160591;
        Tue, 12 Dec 2023 08:22:40 -0800 (PST)
Received: from [172.30.205.64] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id h8-20020ac24da8000000b0050beffaa549sm1368848lfe.255.2023.12.12.08.22.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Dec 2023 08:22:40 -0800 (PST)
Message-ID: <fccf0f17-edf4-4f9e-b284-4ccc5e1a8167@linaro.org>
Date: Tue, 12 Dec 2023 17:22:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100: Add missing nodes for CRD
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sibi Sankar <quic_sibis@quicinc.com>,
 Rajendra Nayak <quic_rjendra@quicinc.com>
References: <20231212-x1e80100-dts-missing-nodes-v1-0-1472efec2b08@linaro.org>
 <20231212-x1e80100-dts-missing-nodes-v1-2-1472efec2b08@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231212-x1e80100-dts-missing-nodes-v1-2-1472efec2b08@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/12/23 11:24, Abel Vesa wrote:
> Add all missing nodes for the X1E80100 CRD reference device.
> 
> Co-developed-by: Sibi Sankar <quic_sibis@quicinc.com>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> Co-developed-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
[...]

> +
> +	kybd_default: kybd-default-state {
> +		int-n-pins {
You can remove this level of indentation

Konrad

