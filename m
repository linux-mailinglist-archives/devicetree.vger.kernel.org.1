Return-Path: <devicetree+bounces-174009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 06575AABD99
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 10:44:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 881DF3A6D4B
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 08:44:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CF332571BE;
	Tue,  6 May 2025 08:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xJMjmiJh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3EAF255224
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 08:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746521062; cv=none; b=mgSzUYolVdz37g1uCRRCJ2/nIOry1FxqIgN13RWLgR1oWgUcLqs1vx4OtoYmkdXne+Fu0MC9Cilr/EtOgKFQ703/Mb/Jnb+L71gMoAUXxlxA0wn2WYl/gff9oK0lYQ7QxcRgiG/kZ3RfbAegoEk/fD54MbkbgBCbrg4PnmXXzEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746521062; c=relaxed/simple;
	bh=+2GVlVD2L0RLoxh4xotkcQLOqvnaqQnQU41zbcKNvIg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MxczVhZd5shfQennkzesuUUq2ufHzd0t0WD0jOGoz2y7KQXWz86oAv7tpSzGaTn+mRu/N8OMHyMlc3MhDdQOnmQEabRSI/ptZieyphwB5FyCfbiQ1ZtJpIl7wcoQjvMcXFOwcJwSeN6mYesawubhTD8qB1SqIsgXuMZWw0/UA7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xJMjmiJh; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-441d1ed82faso1849305e9.0
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 01:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746521057; x=1747125857; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L5gGsosY8ut1Bx/SwqzzJglKhQtcNAYIW9Tsdra1ZGQ=;
        b=xJMjmiJhomgLvacAFfnNxk3stbxyhDm9gQV3KFtLWeL6rHSO4udDKtgxPtAEOBllgA
         KQi/z1NhVatnSi1gh+V+Dl2vka/GJDpwN0mcazhhWUmp1DDzQxnO6ozKMi9tyxkBOWTp
         efH/uQmS9wrI63EGtaUfUN3SexHufpjLJ6SGshhM6DfBQ3i3gIesnGhTkNmcBpI6nM5t
         PkmjJKEuiPpc9dAzsE95AqWmXaLopxbyQQ5XZ79LEnUrYnFcZp1eRzGCpVz4G6x4StkR
         E1/0P5toMObyLji1eW9Jfp99oHeXhWNGcbSA0JngRq1LizXGQdquUQ3DX59hr8/tHnWc
         yKMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746521057; x=1747125857;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L5gGsosY8ut1Bx/SwqzzJglKhQtcNAYIW9Tsdra1ZGQ=;
        b=DETYbGcanC5isRKQCW3Fb+/7HjVXieElVaYWXYjbmr/EbIKaTe5KH9i81/0Gn2kOto
         1aisDSJJFg/TeXDt8ucJFGN5Pcnpxk32o0mdvKNJBmy3hX2mWO2GAs1mydKIZ5vkr8VB
         3NZlGFKSH1C7Xvq4R064w647GYOMJUfHTwZFRQhGH8ImWCA6NpuFsa6n+tjMywea59UH
         YAhVBoMRnkl2w5QXAZwWTAdH1hhFTw+RFtBXQ+70nOwy5XzJlyNSU/TLVKkXSeWkG8H7
         FmSGgNPDPOzUxcqdqj7ilqG5KB757kld3N1gXPA70zlcIzdX9acVkrLZy1cT1Vf3UURD
         pWxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUoWmh5eg/E32gsbn5smRJUWnfPljjeQUPqFKqDwp9Ouu/yFPrqtb985qYyg+d+WjEvOapyRCSw4Vfp@vger.kernel.org
X-Gm-Message-State: AOJu0YxdThDjlaRNmvw9S28VNAIEHjFdQdM966eTn+pNZukSVky6N3NX
	ltenDPFf7mJPd1JD6GqFgMLYC0JSlDFpeSJh8XTR+ZyzrOlpQOAP5mPUKBL3Oow=
X-Gm-Gg: ASbGncvrMSTqGnSv2rvZdfDei59SjkkdA5zQcdA1Kby702aFQgFRaoMx2n0gBZ8DblF
	8lW3hnDjQN4bhYQCo6A31HwyRpKF19n/4unALdMAjvdM1JVqCZGc5p5hkLaT6kIK2JJhOmE0/B2
	P+sJhfzrShNKoTVTPOnCaV1y99cMevXl/iRZeWrZ3qFO8ZNCrf+4EKpzX+rlHkAE1X1oQDLU1GU
	wE8v/GiYh+nhQk61j9JDnTRLQgyzVQ2QruqD7nEyLrXhCEHNEDSrfqdcVtelhSls8gtEo7AgLUD
	vk8y194TrwFpnrXye3EnIKGeBzBy0ShfBmzZGwZoqneASe2rFmpGg9n5nNl/JQTuuY3rcnv52eo
	BaFFHsQ==
X-Google-Smtp-Source: AGHT+IHHZuJf/esu3cKTxXqW0HI6bwS3OQqxETST9uSfS/LugLOy6+dy1AlDM1w7IH882lGtmgu9pg==
X-Received: by 2002:a05:600c:3b90:b0:43c:efed:732c with SMTP id 5b1f17b1804b1-441c4938eddmr64629905e9.28.1746521056721;
        Tue, 06 May 2025 01:44:16 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b2af2a0csm205627795e9.18.2025.05.06.01.44.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 May 2025 01:44:16 -0700 (PDT)
Message-ID: <9b678d19-ce4e-477d-81fa-bb3eb0a6dd57@linaro.org>
Date: Tue, 6 May 2025 09:44:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] dt-bindings: media: qcom,x1e80100-camss: Add optional
 bus-type property
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250502204142.2064496-1-vladimir.zapolskiy@linaro.org>
 <20250502204142.2064496-3-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250502204142.2064496-3-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/05/2025 21:41, Vladimir Zapolskiy wrote:
> Since CSIPHY IP on modern Qualcomm SoCs supports D-PHY and C-PHY
> interfaces, it might be necessary to specify it explicitly for some
> particular devices.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   .../devicetree/bindings/media/qcom,x1e80100-camss.yaml       | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> index 680f3f514132..2e7455bd75ec 100644
> --- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> @@ -153,6 +153,11 @@ properties:
>                   minItems: 1
>                   maxItems: 4
>   
> +              bus-type:
> +                enum:
> +                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
> +                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
> +
>               required:
>                 - clock-lanes
>                 - data-lanes
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

