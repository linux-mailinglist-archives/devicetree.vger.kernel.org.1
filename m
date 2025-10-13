Return-Path: <devicetree+bounces-225798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5085ABD10CE
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 03:04:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 157333BC625
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 01:03:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18A5E224225;
	Mon, 13 Oct 2025 01:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WwTXZQjt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A7322A4DA
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760317339; cv=none; b=KghoMr/7ieTjTYVVPlUnAoxKR02dHR4Mm5+RmiGemBtiFdmQpoWJPLmG/ro3w4OrYcwrUdRPOXNyBDz+VewDmjEeVa9pIy6rK4jBOWmWV/PdgmxcAJ2XDMmsdHUYXt2upOsysXjAw/0gLleTYYK+p1zTMr9wD3w4ziKynlecZlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760317339; c=relaxed/simple;
	bh=ja7vo346BFzdNy+njt9WDe3hSZLT7mbvCRSsDWXU9p8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=u0y7Qr7ld8G21atodAKcm79n2aYt7A1ZxNckvh75uJ+Qgl9HIc43apB67d9F/UcdyNzLU4TGWCD0l1w4OojaLVMRhTrJ5qLYC4zMGWd9OEaCnrLFLPK/xpO/aR6GAAWwNRuSjw8TIYMfyt5e3j7rZW7999L4kaFxvN+O0IVAfXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WwTXZQjt; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-77f68dfe7d9so365631b3a.3
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 18:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760317337; x=1760922137; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=49r4OZCVCJl4F6bzchFunKqMZbc/Igv48ydqq7l5uCU=;
        b=WwTXZQjtoN9wHUW/PqIi1k85Pyx6RuJdOSJZNhn+EGEHOnxInlkm9VDqCxmePFI/H9
         Wh1BTSpr3aWZb4x8VhdL5ObY8O3tEs/SEo9AOCvDs7fyyBAP4Gg5/h2uwpUWYYU3nhx9
         Ki1jKCmLscfc62UReKMC4d6MLo83GKHTuQcvnyG0xRvxtJIRCSFrikv9P4aeprTlpttE
         OoSIcwxevfc7/pYUg1eaf3pIO+7BhitUp7BDCDdghqYR6XORASP+GnvxLzZ07hfwv/MW
         uobDRu2/AbnRtL15xCRjYcLnpzNmekqpagUT3rjfop8W+voEnPm4TXK46E11ZqoHpXBu
         DS7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760317337; x=1760922137;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=49r4OZCVCJl4F6bzchFunKqMZbc/Igv48ydqq7l5uCU=;
        b=Xddz//jJkF3QtinitIaw+ucWKZdQSylT9BdNvgrHNxCJ+95usddBXFOq7BtGo06j8m
         lztElQDpSNCP602D+77VaG0ULkOFEe/hJXVcjlg6duGTZ5HFHAYXBDjFJVtSsoTqEzfG
         YMfCBQWTECUzjBFh6Nxk7gQFoAq6+fDTdjp+cmaoRcdIdBfBVX0qXyqtj3tFJW80/f5M
         cv9ojsxcyJ+N80sV3xz+wtgM+obgpXRTun6NhSMGuNat3/JkBabSmULPNXBvHxS7o8gb
         ktHOavfgXAw0vHtyoKin+ciOEtIxPXEVUAy+nBTPJdvarY7XAGcSKW5Pq0Iz2deL16jp
         Y9Rw==
X-Forwarded-Encrypted: i=1; AJvYcCWLtnSKb/WxsWEMJi7Ec9giG3JkSHb/EnMqlzuBqaFri4vszYqM1KZ059Ikv2zc28hMhCgG0mQmt0GN@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7PZL5nZB5Ec1aHP4h6DwUewh1zXOUiDPKwRVyiPe8HhAgUm6v
	ZveY4B/8m4AMih0BevV2t8CLX1jpRCejAUQ+8rAKfZAZe+374XlBAzD3HZdIR9UuwjQ=
X-Gm-Gg: ASbGncsA+L3vv3TM9pHuBInzYcTZw7cXIh0Q9/dPVRoBt/YnMPcmSdDfp6WKah0Vd4B
	QkXSPURtzW++ScLiCqBI0V9nNB1xTFySgIzpxBHObNVN71qlwgusWLhZWL2TK0w3lKuyLEgX2ZW
	uFoFJPB+saJftWdC/zolmSmey5dgkklRFuk+oHxwgNwRPCXq1jAB/eljR/fEaXbjSU9DBYXziAg
	OaILa8coiLNaWofgdhQddDyo9rkYgziLgzzyk+Qr9VJlpvU9fQAappo+fwThsHpKrbRiY1a3U8X
	/+U6cHjRcmc76r2P0fwm3cRmix/Q5JvRTZx8xH9ljPGRjwpbNaiA9mZTMy1NnvU54PLNJqRb4D7
	8ER2W5Rd1IF/UPFhjMfUDVzit52FZXIho29OYQ+7u7owkBUwCt0qPdpEcVH06gzekD5tZMVw=
X-Google-Smtp-Source: AGHT+IHdWvsayO7maue0By4WbQhYlT572j0j+2mQ7G3lnuobyyblOpI7dDXgWIwyUScRYBarFk896A==
X-Received: by 2002:a05:6a00:a589:b0:781:21db:4e06 with SMTP id d2e1a72fcca58-79382794da2mr11782142b3a.0.1760317336612;
        Sun, 12 Oct 2025 18:02:16 -0700 (PDT)
Received: from [127.0.1.1] ([121.134.152.93])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0e2ab3sm9512805b3a.64.2025.10.12.18.02.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 18:02:16 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Alexandru Chimac <alex@chimac.ro>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250914-exynos9610-chipid-v1-0-ade99e09a23c@chimac.ro>
References: <20250914-exynos9610-chipid-v1-0-ade99e09a23c@chimac.ro>
Subject: Re: [PATCH 0/2] soc: samsung: Add chipid support for Exynos9610
Message-Id: <176031733307.32330.8934958583314860754.b4-ty@linaro.org>
Date: Mon, 13 Oct 2025 03:02:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Sun, 14 Sep 2025 19:50:18 +0000, Alexandru Chimac wrote:
> This patchset enables support for chipid on Exynos9610.
> 
> 

Applied, thanks!

[1/2] dt-bindings: hwinfo: samsung,exynos-chipid: add exynos9610 compatible
      https://git.kernel.org/krzk/linux/c/944d40232eb4281aa8b56ea5389a8fe83b7c7074
[2/2] soc: samsung: exynos-chipid: Add exynos9610 SoC support
      https://git.kernel.org/krzk/linux/c/fe31e894c284012f11a841dd2346fd99bce4a001

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


