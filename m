Return-Path: <devicetree+bounces-169579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CDEA97739
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 22:25:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D77D3AE71C
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 20:24:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A26732C2ABC;
	Tue, 22 Apr 2025 20:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tgq/4TT/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E21F72BF3D3
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 20:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745353414; cv=none; b=KQVBKkgxuqdD62dri4b8MtbLPy1DKyy7oRwZxr6GxXKJeB79xC2JSz4UkPM9PjEXv0hSBU9qlzvO1GqJfXKQfZq8jqmfE770sTQM6r/e5NhfH49cvrb+U0zU+zrw/zoZK538eWGLCxVDdrTLsBzNyJKsBcGM3Q6cxFWEk5fm5zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745353414; c=relaxed/simple;
	bh=r7VN/7Fwi7LiN6yHe4w5kse7GPTw6IFPJr8dfDaKAtc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r+g6lUYxVRkEao5FyHtcLdxFDfiqkigWXD/1ISK7tbtWvygPvtEA2zjRAhdCYuN1Dcsn3bXKIsWWCZj59hE7IeULK4SYGO+pLqJHU9axiZnPMX70tZ83px9daW4/hkdgKa/L6ECi4kblOfU4VhdpQHPktuPVzrLxqqvqzsToyFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tgq/4TT/; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ac2aeada833so52892966b.0
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 13:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745353410; x=1745958210; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NKmp2FHEFAuiUwLcrSsEVcw270aFZSaF5P3fuGST3Ec=;
        b=tgq/4TT/VtgRFxTLJg57kr3MEhrwvkIuKAcR5MeiutgTY34yDHL6UaXjrtP1wZ1r0/
         LjA590VpM6nsL3dnlU96cGNouGY+ytsbTX4KyEMOzvWewyo1Uo+4/lwpAgH5UCZlzFh1
         Pyg6JufnAp3jK6C+xxEKdlm8lmnHhhoc/EypKmcDiqqEHwRG3jlIyAlerhaBuD+4eUv1
         CNmNzV4dgy9JREbuPnw9eTZTDpD6YoGJKa0wVG81dtg+lqg/5tIvEg8GlffwDsIco+bA
         fdcuTLphHYO2HSB0LQGtb0IsqTeXfpIHsHITywl8Jdu4zTlWFUAv19q72pbk+YLbxRzM
         /UWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745353410; x=1745958210;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NKmp2FHEFAuiUwLcrSsEVcw270aFZSaF5P3fuGST3Ec=;
        b=qP5m6uWBuILkkzykPY0/5HnxiYDcQIdebGcL35MdQUx2eGgc/kY8zXky4zaJOyoqLW
         kRQLRsQRsTlODbtcumDOu9hSS14vfIEcT8tOwDKjE8xT98lqdcKTG1cDfgnHi/1Whsxy
         KXLjpAIQlRkchvqVksR/mhedgCTabeZqN8aCN5lSvcts9xXpBrjyaq5Ljr6uaNIH1LmX
         WAAMOZ6ZyymXvFxlKMcJdsMLfwyRUwY9dJ2lVZrsoaDo4hAErABxSiXAAFcdawhdjcir
         0HakUgPtuHp4Tv2CPUazNglOLQKdYFT97kalZL9Sh8XKrndDtwNHTMy6ekVzYS88BEjN
         TmFA==
X-Forwarded-Encrypted: i=1; AJvYcCUvaReejeZOsOzq6xazU/FkHW9EXmJ5k2zhXHHO8GqgJnOMjgs4RunTli+4iEoE7WKwNpZ/baY/Je9F@vger.kernel.org
X-Gm-Message-State: AOJu0YzEysRzmfHCaffDB3/eLkac84OIwu3L4iN+QmJFGxRcJ27alvrI
	yJSPj1O3LlzUoL7Zch8oCa0FsEgeDlqtQ5gs01vaTck0nGNpI8YzMqBKIw2QGR4=
X-Gm-Gg: ASbGncujIl+BYLlWG1o35wZIxJBv7/+GF7KXwIq6An5e2FW9+6rnz6WpLxpikpHjplb
	WW1Hm5OdQLpnX24smrd+ygXHLqOA8dlNgHrrNQXITzH33EY6XQxGa0CVwoBjtJ7QyYxEMTcJ1c4
	c1mCNic1c//m+2zPMnJ5G3/sTy0eZ+vQjROm7nfT8EiaC7BwWUjViBmf3xHHpB55V5obMuuArPv
	9UBurf18nHFRl44q4GZ2EFDj4mstVaHJZfC3v09Qg/42lHk1Wf7mP4zob889xSvyLwuHg6sw5rb
	8Eb6xAds8FY2fCmfJOvyyFtd0O+LV2oHCwjMO00QGrbeUBrEK+3A6FMVDK690KuxqDvzAWT2y2c
	sosJ1Jg==
X-Google-Smtp-Source: AGHT+IHDWbdX3oYlKDdl8Py4UsbyXU5LNv4eXhMD0AhhXKJZ3V/Gp5bf0YjPavO4S4LF0mBvKGNmkQ==
X-Received: by 2002:a17:907:9704:b0:aca:d29e:53f1 with SMTP id a640c23a62f3a-ace3f4e3ce2mr24940266b.12.1745353410101;
        Tue, 22 Apr 2025 13:23:30 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6eefc703sm706512966b.94.2025.04.22.13.23.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Apr 2025 13:23:29 -0700 (PDT)
Message-ID: <1a35fa10-cd83-4f36-9cc2-179c3a2a4909@linaro.org>
Date: Tue, 22 Apr 2025 21:23:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/20] media: iris: Add handling for no show frames
To: Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stefan Schmidt <stefan.schmidt@linaro.org>, Hans Verkuil
 <hverkuil@xs4all.nl>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250408-iris-dec-hevc-vp9-v1-0-acd258778bd6@quicinc.com>
 <20250408-iris-dec-hevc-vp9-v1-6-acd258778bd6@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250408-iris-dec-hevc-vp9-v1-6-acd258778bd6@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/04/2025 16:54, Dikshita Agarwal wrote:
> @@ -642,9 +644,6 @@ static int iris_hfi_gen2_handle_session_property(struct iris_inst *inst,
>   {
>   	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
>   
> -	if (pkt->port != HFI_PORT_BITSTREAM)
> -		return 0;
> -

How is this part of the change related to adding no show frames ?

---
bod

