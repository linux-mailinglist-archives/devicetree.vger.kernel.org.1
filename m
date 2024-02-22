Return-Path: <devicetree+bounces-44666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C017385F38A
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:55:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F29FC1C225F5
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 08:55:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 246822BB1B;
	Thu, 22 Feb 2024 08:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AOQ+jNpe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8F42C68A
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 08:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708592132; cv=none; b=kl5joGVvQMDFqw0NEUy7bJilzrBomghlEsdTNpNIfv6bWG8d8GN5HlSeinFazHn0AZ8CIq8jwawLuqGlYwJwXW8jTC2RZ8j2Q/E3T6a4bNsfHRnf7Qqr0NwIOG2im77fYXup/Tj1Sd8CS+10BLdcLvPcu3WUXCfHcmQbw7JBJCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708592132; c=relaxed/simple;
	bh=5i5jWq9DnIH3DlIu00Vc7MJBkT8ExtWdHY6NMTt9fS8=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ui9WFSb4fSVQpaOPm9ZIvVVCKoQdoukksZUJLgGC8P4ihU39hDbUnllrWnr2Q6Kh6MCbnY3LPi5lnJPzjhj3UlespAe/G+siZ3EfDI3HD9vJO0EsYtIB5JEizF+HX/8rm00iEZLim0L7PVklXfS2/0tnhynNl/NCJo72SkPzLmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AOQ+jNpe; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5654621d62dso208809a12.3
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 00:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708592128; x=1709196928; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4dVwQPfQWz5c5f90/AREdLy2jpdXItaUXCVXismVnZg=;
        b=AOQ+jNpeZSfpOUUKL7S2jN6Nmlwg7lWRPEArHdljLFebbSybMlpIsuLTo/g2TP6L4D
         3xQ4Rj63Tkx/YxuwIhfe/1B7b3+aHCMMUNI/NZ2u/7HXKNSPlinbXPxkADUZ4qMpiECw
         PugvCAwAHpLgo09KAWUnoWFebX/gzsR/zIY8BRWYiXiXP7dmOrqpjwCojzt8N0+ixE0i
         Zp7daGtoiAekhmnJAMO0aQ8IDqnW0RohXaQJLo7nlf68AbU/XVH+Vxr2YNd7j6TTRaCo
         d2RwHRUWm9raqUrccYE0CPSqRRc6bobjti5hOMRFizK3TsHnRvsGhJD3TkM65anIxCsb
         TaZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708592128; x=1709196928;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4dVwQPfQWz5c5f90/AREdLy2jpdXItaUXCVXismVnZg=;
        b=ajnR2L5+y5QnGstSTlLJi1d3IO82b5CW4ZpdeS4jXQGNy2f+rdvs/Q3A5xr9XChu1s
         MHsGnDuBlesqyLnhNt7yt07T4ps8Lf3OEwrIrInwLY/yJHgcu+AUirzqW1EfWFDURPRg
         q+ekIAP14XzI5H8EjOdvrnmmu6Md00ddXyeD9NCKfH7Nx1AOjNEPiFuzJ87d8G5ee3Wf
         QwfoeWoiAhum5cgMRyzry0bsh9ntBBL9RJWTe+AMY5ju0L9o2u9Ym9tU5ITmZ8qDxPI3
         FMsIyjm6gQG6jOyF8A2jeV3p7QkV8lt4IJ9XTC6GY9OwZ2DrmnBZeCLeQi9ycc/kjyyw
         lniQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtX/w1vHU7E9iUmFAv39NT4/bu+uOKsUQDXKhEjn4Tx00XVaxISpOlIruhpTFwIoC/78AzTjJfJbfvvfQQPBZUR1NVexqK/vcyug==
X-Gm-Message-State: AOJu0YxDaRPB5L+LKucghN7ctQFkopB+s3+fjyyMlIJILY5ILhsYPNlu
	Sl1RzbRM5s1EkgUOKpY6pfV41E+pCMyLLHmN5UuD7EPvxu3/Za88X6cnyejswIc=
X-Google-Smtp-Source: AGHT+IGL+YtqEIUR4QxIfx4HWjVOJQw8MXI0vRI83fodpBAUEiUtIV1FNqp9YQeKt4pNfoY9Jn3zpw==
X-Received: by 2002:a17:906:c293:b0:a3e:ff36:c83 with SMTP id r19-20020a170906c29300b00a3eff360c83mr6234774ejz.29.1708592128486;
        Thu, 22 Feb 2024 00:55:28 -0800 (PST)
Received: from [127.0.1.1] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id tl19-20020a170907c31300b00a3e5bd2482csm4623503ejc.46.2024.02.22.00.55.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 00:55:27 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240219125453.103692-1-krzysztof.kozlowski@linaro.org>
References: <20240219125453.103692-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] MAINTAINERS: samsung: gs101: match patches touching
 Google Tensor SoC
Message-Id: <170859212673.12469.13497019748127862340.b4-ty@linaro.org>
Date: Thu, 22 Feb 2024 09:55:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Mon, 19 Feb 2024 13:54:53 +0100, Krzysztof Kozlowski wrote:
> Maintainers of Google Tensor SoC should be aware of all driver patches
> having that name.
> 
> 

Applied, thanks!

[1/1] MAINTAINERS: samsung: gs101: match patches touching Google Tensor SoC
      https://git.kernel.org/krzk/linux/c/9690b9de81d1ad40a70b3d34b9d7e26486a5e83a

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


