Return-Path: <devicetree+bounces-79914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 938339174C2
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 01:34:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F2B3281CB0
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 23:34:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3935817F4FE;
	Tue, 25 Jun 2024 23:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wIrzG9LK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AAA116D4C8
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 23:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719358457; cv=none; b=XryeiU5VRN58xCOtOx/4mThceGyjuIxppphdQ60RCccgTstRVzD8AlxmYcjNY4qHjfC/zY/BKNcyRuztwONamYJkQ+uVpCg1I1oRRbywjGTCqPr8kwS3DdQ9Y2rBme9wj47tGbywq1fFLNjgKp7SlqsYT0ov5H/ylUHQ0/PgU9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719358457; c=relaxed/simple;
	bh=mLn0tpfY3wX6n2AZATrUrDOBcvWcfAJkUXJ0j1VJo/c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UIkUREpa2akBTG6r+d4it5Ck41vyhnWlR+m+LzDzF1/kw0RGyfk53Lb4rmUec0SC087/bc2b3TOJUBXEtgKLQrPYZAmq8n5iywRZbfCs1/pl501U/T3pm02IuuENLLBMaz2aGCv7COZ/uzgcd2CxVZC0aHKN60viGPe3ZDdsWHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wIrzG9LK; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-424ad289949so2811925e9.2
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 16:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719358454; x=1719963254; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S4S59UsIAd6V+gz5kWV7ca9NMbFFR68wP023dmjma5c=;
        b=wIrzG9LKa6P9klbogAxbqsvT2TzRcs4zmM7LRl/GsIeTuHdjLVFxGZsPrpIjrKWlOJ
         a81JJnbFIH9iQckGNai1EWJTet0AyvP/4mlAXBrPBcA+NqavfxE5jrOcI/VsTKa6M5F3
         +VVUBGjck29KEpoX11GsVlu2CYzg61tnl2zjN3n7rwc5ew28kU3ovIalja1TgWv2qbAD
         iKjR/RJ+GIk7D9b4jsUkVqfplGNlvDcNBbTUBzIpVJrvUDmtWDxhHvHWUPoi7hUMDgfH
         bOXZ3Z9+bjTgSM2Ad+0u+M9QGBK70oixzRLsvGD7jsWkjyV6qLIyjXBUGJs3+y0/NIWQ
         Boaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719358454; x=1719963254;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S4S59UsIAd6V+gz5kWV7ca9NMbFFR68wP023dmjma5c=;
        b=fjBcf6rVRvczCD+WvOG90QWlnB6bmpHff7NW/87wFaS+dJhGEaG8RFuGXRhqSLd72z
         MA7Knen1iywoZVeMvj8mfDefACQXdNE6vTeu6y0Bhi3vxWleWtE/LZcqrD2+VnvXP4rX
         cWRiwJxfBW/B5PP/9LVuzz2ivTdLXr3GMDKTebsZ4WqK/Jj1YDJTIEKyJgh68IgcHfKD
         IiBUAy+QSI/nSUncCaPOEplJLz+q5EPfPvSLJub75Kd72bmcw6yef0vaMzn0SHmvNYWP
         RfWkqJPgCLoeJZZtM66jGkcpea/JqBOETr3gVcRfsPYOHEgDm2nTE3l2r7HR92Aiuq6g
         QjyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVyi9h85GehAASsUc3UgwgJoiSpxzYt6QyrzPtAyAUKfhCNNLwZ0NMZhga9pCzPieJX3EU0et9cLf+kF7pOFkVsHP5LrHQth9qceQ==
X-Gm-Message-State: AOJu0YzlX4IngANlQBA1vFyqB/egWeU53WBYEBMRe1QBdOaD73XcDwJN
	iMej35LpgHxmA5oovViQF8mcAfwa6iIosyCHjKvPqc8ufV2Qbmu1a0fK6bTgdnE=
X-Google-Smtp-Source: AGHT+IEBFIf+f3kcb0SEbYjs6ai6O7dsJYZEHjFOa0a/zD5yBYLeLKqNNOIpaHNOZ2LoqzUJijnEZw==
X-Received: by 2002:a05:600c:4fc8:b0:41b:fc3a:f1ef with SMTP id 5b1f17b1804b1-4248b9e9a6amr54479405e9.33.1719358454034;
        Tue, 25 Jun 2024 16:34:14 -0700 (PDT)
Received: from [192.168.0.16] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424c8265796sm4083815e9.18.2024.06.25.16.34.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jun 2024 16:34:13 -0700 (PDT)
Message-ID: <a9f94dc2-ea70-423f-8ced-97b9e9a07d65@linaro.org>
Date: Wed, 26 Jun 2024 00:34:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT v3 3/5] media: qcom: camss: Add sc7180 support
To: gchan9527@gmail.com, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240624-b4-sc7180-camss-v3-0-89ece6471431@gmail.com>
 <20240624-b4-sc7180-camss-v3-3-89ece6471431@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240624-b4-sc7180-camss-v3-3-89ece6471431@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/06/2024 13:13, George Chan via B4 Relay wrote:
> From: George Chan <gchan9527@gmail.com>
> 
> Add in functional logic throughout the code to support the sc7180.
> 
> Signed-off-by: George Chan <gchan9527@gmail.com>

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>


