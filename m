Return-Path: <devicetree+bounces-190619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB30AEC372
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 02:13:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 330B41C4177C
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 00:13:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A192110E4;
	Sat, 28 Jun 2025 00:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FmBSf7UV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBB6412B71
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 00:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751069576; cv=none; b=L3Yn/cP/iW6JHKNqdjTLo/oSVY2WPO7WWcYfEoYsoayTjc46cT56SK4lly2drkn8AZBuDD/aLweTWoKHJt9IsVPou9m/nn06pZIkc5EjGVS425RPX8jUZYT333k0Cgw8j3bpcXl425Vf1gDJbTpRjeAhMa81LSZT2LK9b0Ddvbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751069576; c=relaxed/simple;
	bh=8bqQ8U84P+FRqDSq3F4KLrzDEvU6RkgbtnUYnQ+g5YI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KuPYqzooGvwNtW0TVmjgZA96it/txJ9Vsc4jtHc2u4AJ4BiDeOanrH4hvBKHdkNVAD3zvOeGlpYNyWxBlx+/ohIQoOmGgDjg75R6DRkTvLkywdib9LMieTti3jXs9hDIGguIREBMVY2TEyNT9JtN3v972YD849Wzc9gU9iETSU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FmBSf7UV; arc=none smtp.client-ip=209.85.221.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f66.google.com with SMTP id ffacd0b85a97d-3a4fd1ba177so1742880f8f.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 17:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751069573; x=1751674373; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PImxYHr3OSmCI17ka97beiCSKkKnJt+nKdZqCSncN8Q=;
        b=FmBSf7UVQ9P21s2lz7I3g3XnqJ3dLqr2l7n2Ttnq/pzhi6kuTL17Yr5nGXHtE1jZHc
         QreHlooLT64wGA5U/2pTMeHt93sxFBInB79HvUnAOM9U7JXei+lenaPHyoNPxhai2h3J
         gRFG5MV/wTM2vUWCwDd9ZR4gXTtec0WhnUa2eypXpfgfc+J59xNQlWu82eZt6Su9Blzn
         cUtKbCabNALdOYb/xineEO1dt8aoQ6HCJmJeF1PvMC+EdG9Dfu7JpvWWqqJkrvd78JAD
         tAUneKqF74W5BNmWqXBgI7i1AilquYHj9zNwAnymAzcmN6p6sMx4sNYPOkDctvanLe+1
         xGlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751069573; x=1751674373;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PImxYHr3OSmCI17ka97beiCSKkKnJt+nKdZqCSncN8Q=;
        b=oh9GxqczyRD8bMve9T3i3HrC6vsCrVSNVxbJNJLqdALfvy8aBHlsYTFJUmP+pSnHkv
         i4ehzWuQs0RmW82GuxIu5qysVIisMdIV+Yo+BifpWvLN8LUZcgcgebLAXlq5SEgDacXJ
         KG+2sB2s+MOMuoN+NMghzjTiwd4kq8V4RuNuJAK9zXTHg/j16vT8Jym9HYplYyMl6yRD
         ov1Aad8XP9X0PeDiauGWEp81vpX/ubrQt93v8NmTfzK+V6kNzGtkcNgHiL2bS3CMYsli
         ijto1QgEaIjw4/EQdkkohFCFBFlG1NztiI540/O13LQ/iEGGFQR8/mNukDA4Wsn9kdva
         1xug==
X-Forwarded-Encrypted: i=1; AJvYcCWbsdyJydZQAooQ/f7Kjqt9gjlctaM0dg9cMebGzZCuSj3hwOJ5OT02KxdMebuTDutzwVKqQKTMCalp@vger.kernel.org
X-Gm-Message-State: AOJu0YwNM+UjTXd8UmjDNumdGGGhZDjdkzcqY6gyq2N5JkMIxyrIAMYz
	nrDkszEzM5WANglmECgr3SiHcxBFiaOIFDdZf58E8dOu9v7bKgcqDmO8JeKdrdAkSD0=
X-Gm-Gg: ASbGncvP1Kgx6DeWOtSUx9RUyxjastdslTf56HKEufAg6OdhnYgms0jNVcnuEI2xsRB
	viRQYQOjps0DR7tadGQLUDjdwdmaZeo55mu7VzSC+rwm6KSevOIKltFPyu7Fxr1uf3jqV8QdInN
	WAzY/Lj0NiHgQ26HuGHRNBXQsmx0RfduTkQi8UG6XGdOWJzwQxyom6akNTXYH40vEzD5EgwCIoK
	MrHYMzrNuBtGOjCp8Wt23PvQqZKhJYkbbOlYRUYwdFGk7XvHQ2N4JKcghNSUE6KrOqYq5GHJZSU
	JMDGZxKfHb2WeVTOYKJFPg1ukYYfNEJ8wGzUtr6ocuolW+kRhlG5a0FD5IxI2EiOWyIfWi5nqaj
	f4gCrEuWSVLgeIw35/yzctQ9yBGo=
X-Google-Smtp-Source: AGHT+IFn4AjBCHVO2EoBSnUsrz0IN9ZIcbAmCvFdZWWKZ3G1cy7qj59CpKXVM6SINcc+hvDyAzb3xg==
X-Received: by 2002:a05:6000:2b0f:b0:3a5:25e2:6129 with SMTP id ffacd0b85a97d-3a6f3152f1emr5790070f8f.21.1751069573129;
        Fri, 27 Jun 2025 17:12:53 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a3fe592sm62779925e9.21.2025.06.27.17.12.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 17:12:52 -0700 (PDT)
Message-ID: <eaca9ef7-8acb-425a-96e3-a795b4cf1e6d@linaro.org>
Date: Sat, 28 Jun 2025 01:12:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: media: qcom,x1e80100-camss: Fix isp unit
 address
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250610083318.2773727-1-vladimir.zapolskiy@linaro.org>
 <20250610083318.2773727-2-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250610083318.2773727-2-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/06/2025 09:33, Vladimir Zapolskiy wrote:
> According to the devicetree specification a unit address shall match
> the first address value of the reg property.
> 
> Fixes: 2ab7f87a7f4b ("dt-bindings: media: Add qcom,x1e80100-camss")
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
> Another fix on top of https://lore.kernel.org/all/20250502204142.2064496-1-vladimir.zapolskiy@linaro.org/
> 
>   .../devicetree/bindings/media/qcom,x1e80100-camss.yaml          | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> index 7d4e6ef57bf8..959cff1a31a8 100644
> --- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> @@ -190,7 +190,7 @@ examples:
>           #address-cells = <2>;
>           #size-cells = <2>;
>   
> -        camss: isp@acb6000 {
> +        camss: isp@acb7000 {
>               compatible = "qcom,x1e80100-camss";
>   
>               reg = <0 0x0acb7000 0 0x2000>,
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

