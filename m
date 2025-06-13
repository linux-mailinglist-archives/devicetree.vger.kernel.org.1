Return-Path: <devicetree+bounces-185766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D775AD8F71
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 16:25:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C8D73BA6F0
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 14:20:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5758B18EFD1;
	Fri, 13 Jun 2025 14:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eI/LasO2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3D22E11A0
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 14:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749824462; cv=none; b=UlIPfXdKsBnJDaUwZKzttDt7bOaGl4aOS6DVcJoCJIDEzxfqAxwRuT97pqHRsm98YHtqaT0FpxfrJvRgQHjzA4wfWx7vM7eQ86DsHqSY6IUrETHIvNo5QcY6kKrVzZ74SpWeHyAfYwTwKqvy42kxNias5Hoxps2nExW/uDmLbcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749824462; c=relaxed/simple;
	bh=8RFkh10HvZ/w2jf/t+vYn3rNmrLXvK7k7dDzREKy4dQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e8cbZx/httR/3M8Wh9x10ILqI+3dJXFniT/4bMfnFqMBryhYIm5jA20CCGP0TMHoxkcP3A9cmyQaPCCfA69wzN/OsekFpmXc50tgF2wVXdcfM7deww/XbJT+uHbnNe2O6gYIUkVWkw3H1DIp2MNItv4UR757o3gH3z5kEO06Q1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eI/LasO2; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3a53ee6fcd5so1436873f8f.1
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 07:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749824459; x=1750429259; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WNv7YJdDrmh1DAA1lS0dRZIzLrEmVq95r6unZgFCZ3Q=;
        b=eI/LasO2tnjA6J1Yf7mSkjnnWC0eQa8CS7Y9YOkCwi70K2w/IRoU8L8lNkKy5yUUR1
         TA4qF83dDv3l9u5low2DaHl2Uq5tURZp4bu1qwM01jIXLC2uEX7otbJ203LlPfGbe294
         I9+DE+UJBwZ/lbR73CqU3xtZ67Vo9MiPuPamra9H28jb2g6+A/GeOMD7WhawQ95xVBz6
         Cc6+rqXD4j3Mib6pKWkq/sb1Ok6rxjyDzYjwLt1MlowG89eHjrUDUyXYwe57Ix6C+NND
         aDwWSVTjoYTzuBfuG2IrxgCDR9IH4+N5kpxbTeSt6KdQtbc6jL4EFaybw93MvKhYloZw
         bPxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749824459; x=1750429259;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WNv7YJdDrmh1DAA1lS0dRZIzLrEmVq95r6unZgFCZ3Q=;
        b=vF0ZV1lr+JhpleLjBDfbVUI+sUtHMzSZouGGhWsuz0/VMjElar6XxUPlimflA/nwJE
         O4TEEYbGbvO71I25N3AnjLcJ4dCYvYho2GXWsdienxkDfpHVZxr6B2zML68OuY2GhyZs
         tus6oqHhhrv4bxKfOU4tIKc27NeChimtJ471WCqT5qSr8m+jauLfNSdSOCMVPyHmzuna
         8eDe7ZJsYgykl1xKcs6cK1KptkfFuv8sJI+ta516agmpzn7tch9b3fx4aGiyZyLf88pS
         3rFEYLa2aZgy6GqiKQO5du2TwiO3OfEjNdiP1ezGIL1Zu2NoClef0ufJ0njKbW4ahLNV
         e09A==
X-Forwarded-Encrypted: i=1; AJvYcCUJs2vgpbqWQKp8sDAiXITnzxCAIa2d+7vDQA+pXgZepHJbn05IGb4CqXDpICwRAi92eJ5OHcjQqDBW@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5G+30AzRsSigm4P2kDvk723HiejtHNi0kvFLUg0KdJmFDA+ZU
	fOWM1knQStojdZLf3qpOHy2pUb9l39dsbr35ySB0T3kSqlf4RKS1CYMudJwq34CO56Y=
X-Gm-Gg: ASbGncstlQI6jbzid5Bbl5qF8Wb5qw5oNqhyqqUyDAU5mVpBClScdR8d7PKqL/R/lqn
	CCAC3/NpGLRmfnjS9PAtQW9gwaosnZ9s19/o8OUzLRCJMvWtPLMHZq7TUOIsiAR0eVCfqflesA6
	Xfs/7jfQLpfwUDy6rngv0uxt79m2kcycIy1AsNEiVm/iOK2JVD1g2dje6OtTbk2Zo2hwuhfW71v
	TyjJDNGaYDVBybzhWtymaRLaSipxLPOwHKbC5wzplZPGZNiFB+TgtZhH+81QCCkxAvSxjpO+9R3
	dSCv6sO/1QJLF50ELaDgX+uV8A9P6VeY6Ll6jmY/rgHvf+vzAcUYHyDPlcRqVGYegeMBmCI2GmU
	mK4IZTYoRoJd3HQSCXjy8bRpzV9U=
X-Google-Smtp-Source: AGHT+IE+UNToq+LVvyKCGQgv9Z4GcwrsaV/DBnUpsoTzZB4YzEzxKPVKycpy5RHgs0fTAZp+V0+Jzw==
X-Received: by 2002:a05:6000:420a:b0:3a4:fbaf:749e with SMTP id ffacd0b85a97d-3a5687298efmr2771830f8f.49.1749824458733;
        Fri, 13 Jun 2025 07:20:58 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a5689e5f3dsm2557756f8f.0.2025.06.13.07.20.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jun 2025 07:20:58 -0700 (PDT)
Message-ID: <98cee94a-c9c5-46c1-b6eb-f5141dfceaab@linaro.org>
Date: Fri, 13 Jun 2025 15:20:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: media: venus: Add qcm2290 dt schema
To: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
 quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 stanimir.varbanov@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
 <20250613140402.3619465-2-jorge.ramirez@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250613140402.3619465-2-jorge.ramirez@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/06/2025 15:03, Jorge Ramirez-Ortiz wrote:
> +        video-decoder {
> +            compatible = "venus-decoder";
> +        };
> +
> +        video-encoder {
> +            compatible = "venus-encoder";
> +        };

Not necessary, drop.

---
bod

