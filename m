Return-Path: <devicetree+bounces-121494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D17209C6EBF
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 13:11:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 21BFF2834B4
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 12:11:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4508320111A;
	Wed, 13 Nov 2024 12:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tQ5B9VbY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EC22010F4
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 12:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731499688; cv=none; b=uMwC8r9e5xH5J/fDON8wfzjjYyPZlR/1zViskFcTCjfBUrGvumU2pqq/udCCPrXCo0+rl1dejoFAvIQA+XpV1AEMkqdYHltfIqaC9jDsafDLxOpkuHvX02yfE+WkAQJ5syC0scDIF2li92Zzohc+OhPzAabV0IqGgN6WAhx0mYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731499688; c=relaxed/simple;
	bh=+SQAYrBZEZritmGVvyh7dsWuqy5crTgzuGtLDSf+ZQE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fRj0ikgolXglj1Fa24hj2W7paKSb5yEnoPgnBVrvRjoy3FVlHOHweHfdfQjpdRDpoYjUqzc7u87f4MoRaT5irpY9cnlbzyB/dQQFI23unTabdDk9ud91XKvqjRhFtyyS0Qpo3zsTPd/judLdWufdqdudftsdfR0KLvxD/WOLbaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tQ5B9VbY; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-6ea5003deccso73245627b3.0
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 04:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731499685; x=1732104485; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UGtyXwzMBHOXtnkZD1IDl7RIyBTD4iUeJ455sdaUv4M=;
        b=tQ5B9VbYSy/+lKDTj6hJcjXRFxw1V5Vx6+c9555+2gHN7KaobXWkXJZy5MCXustSo0
         p43uOasU2nFAufh9uQ+PY5MaGQLgaXnD4SvRhKBbjs5RviEeSGrctV6VQRIEADlyLVaY
         PIzg6Per8l1UKet1x9AKvWHQwMI/R6UKTBKFOMbMoN5ojvFVfMI7XZFlBL5whOoSIsv6
         ufXBIu2ptJ/MDp/X1srzfDfnlXW+yoMvj0H/FBRNjHvlfUsbgcBP+jbhYcvTd1POmiIT
         kqCbE4jW/LqfPQ8qia1jEBLS6FMqqDgsooVDic5kCrvAFB8LZ7Cw5mC1EepC6PVfFsG1
         NAXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731499685; x=1732104485;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UGtyXwzMBHOXtnkZD1IDl7RIyBTD4iUeJ455sdaUv4M=;
        b=uhiXF3zUwFQMwUm6bXs4gq5NoJwnmjxHpaoxMNRz7229n2ALb9JHcncqammgVNmJ5f
         phbJPC0ntMZaf4qNy6CXXRTiKwcxodF5kEdi/FSXapBoVX30ZZTKxabzeiwUhtRQ4HZS
         nfudfa2C2ImoyqKW1dRqlMSHr3ueTVIfPu3QIAohmWmWYT9r0WEgKjrbJnEBWd4zY3LO
         Kx5ChtlllBeN9SG+ipYwz88LOeOsODVLVgk+fl1323/GZpmmjqHX1p1JqWNG66S+kru4
         GQM9RWw8p4gnoc1xdVI/qOMMupApcKli3UturHJkr8lJMy0wun7F0+0qdjMbvwecw8LK
         KAhQ==
X-Forwarded-Encrypted: i=1; AJvYcCUukbSRJbyhHAs/BJjna1oMbxdrFJo+n8uYCRCwlT6iXMgBMO32HMMtIa64S1bV3CvM7pk8X5fqfWTD@vger.kernel.org
X-Gm-Message-State: AOJu0YzK7TUoMNNYAF+1nOg9rv6lEWhBQuB94ln55x/arslssMSDD7E2
	wgYT8lzC+ga7y7JqKkJ1VPHU/CD4hcejl7Nbdnn3ibal19doYWB4yv9CzB8afeGX7ioJIWgEhL4
	Fr3M1qnZ4ZXb/kImRvBl5vIu+GdCMccHW8OcqxQ==
X-Google-Smtp-Source: AGHT+IGfdj17ZRR0vuBfO1QBwX6EXMq129/94BCmEcrTpxI9KLT5gLVvRTesocXnNuXdBrs2dgVgRPYFjcVuJRn6J6s=
X-Received: by 2002:a05:690c:7485:b0:6e2:2c72:3aaf with SMTP id
 00721157ae682-6eaddf81805mr207193107b3.31.1731499684980; Wed, 13 Nov 2024
 04:08:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241113-add-display-support-for-qcs615-platform-v2-0-2873eb6fb869@quicinc.com>
 <20241113-add-display-support-for-qcs615-platform-v2-1-2873eb6fb869@quicinc.com>
In-Reply-To: <20241113-add-display-support-for-qcs615-platform-v2-1-2873eb6fb869@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 13 Nov 2024 14:07:53 +0200
Message-ID: <CAA8EJpqQA3zDBRpm9FY5X-vS0aDgoGNFfDoTh9p1A2MqVa7KNQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/9] dt-bindings: display/msm: Add QCS615 DSI phy
To: Fange Zhang <quic_fangez@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Li Liu <quic_lliu6@quicinc.com>, 
	Xiangxu Yin <quic_xiangxuy@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 13 Nov 2024 at 13:53, Fange Zhang <quic_fangez@quicinc.com> wrote:
>
> From: Li Liu <quic_lliu6@quicinc.com>
>
> QCS615 platform uses the 14nm DSI PHY driver.
>
> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
> Signed-off-by: Fange Zhang <quic_fangez@quicinc.com>
> ---
>  Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml
> index 52bbe132e6dae57246200757767edcd1c8ec2d77..babd73cdc44f6d12fdc59c6bef27c544d91f1afa 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml
> @@ -17,6 +17,7 @@ properties:
>      enum:
>        - qcom,dsi-phy-14nm
>        - qcom,dsi-phy-14nm-2290
> +      - qcom,dsi-phy-14nm-615

As stated in the comment to v1, no, this is not acceptable.


>        - qcom,dsi-phy-14nm-660
>        - qcom,dsi-phy-14nm-8953
>        - qcom,sm6125-dsi-phy-14nm
>
> --
> 2.34.1
>


--
With best wishes
Dmitry

