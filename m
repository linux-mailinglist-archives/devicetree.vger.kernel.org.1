Return-Path: <devicetree+bounces-78919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FC2913A7D
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:22:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 01008B21EBE
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 12:22:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96E4E181332;
	Sun, 23 Jun 2024 12:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mMaUtuwE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB34812FF71
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 12:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719145356; cv=none; b=DigwykY/fnrAHhnNu8bhvZ13BacPBG5THhzrLAzsUC7aYvwOZixE/0n0ajqUglmsQgu5wfrXyIY4W18W0joacsB/VsIzBOYtFk/+piIKWlker1BF0kZ/Ss7PP0Vlg7OK05IFScrX1y50ThcEWUuazVzQaJ53G0IkOnFz2AFdDME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719145356; c=relaxed/simple;
	bh=q4YZf13d1nktOQ8KChvk+I4nUMTY2mqyfyNabtCh/44=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=cxCJzXFPmdUNAPADbX0dNlx0UyfIQGLSwmKPiFpjEfjyGNQ/yK3AzGak1dKozwEetrOebwk0qGbmvfJehCWhMnsdq0Oa8BCVKNBeKFKhJhivQR9g7Ab2LXxNucaf04s3I/FVuaQfbVxP/Who+sIHmCvOhpJmU6PuCqLJv9mC8dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mMaUtuwE; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-421d32fda86so38216845e9.0
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 05:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719145353; x=1719750153; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uCngDWXR5xLT7dNGS6wKeQXz34zWbBoZqNqT6a3rtyM=;
        b=mMaUtuwENYm+rO2JN6Q1e03uRdjjTx2rAY6xnD8ahEq7wZWV41E5ACPm42NYfAlqY4
         oQC/tjPtIvk0W+wLrMlwqT+DEvKFOfXwKzqPpqfOVW+Zlq81SSaoPAeXeQPD0/+nCgCZ
         pvzRWEkclyqkbxYaH6FAO4Bo0ty+iREtQqzsIdgPPDZA8VW36k2rlnhMB7i7sJLqijWJ
         vYuLmhqtylJm4UhPByqDsodOFUMWMry46WSrdwEpZpNlJK9agaXPxo723zV2lLdlNVXM
         hF+Tzi9fELqQRbQQBiE9Ae+pFJxqM9Dn1QndgPStm+H4OZxU7dQOMnZ3cfFplP1imTMN
         k4Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719145353; x=1719750153;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uCngDWXR5xLT7dNGS6wKeQXz34zWbBoZqNqT6a3rtyM=;
        b=jWiN52A1UciCt8KIIH0Iz2lm85UEjYvVKSsf59XBZ8EDgBMvahElrzCRpox3AG0fPq
         PG+GT5T9F5HJN+tjn/SA8OA/Qz35BE8Fc5CduRqFzkUtIxYuBCLIXkYIHWIUNMjIS09K
         yAlOxUOk5ZPW74Vq9DyUX48PeNR/cs0jXM9P9EhjcQsvCpAJ8/A/LXtol0gadRCEKulf
         w9NMRtIWU63sq7cNM2D2oy/uNhbsuOT3R18lixVEO+D8Gds4ZGPYPhdjH9pCvYONif5/
         rIedwJYIoR/Vz3psXZnsfieyuNq8hU/Xa5B5pTidQ4VxR2N4cqSfJxNDxGe0UcypK9ik
         89JA==
X-Forwarded-Encrypted: i=1; AJvYcCUStqucdL/HcwrxbzwuMADUSssYmebYIcTaHbN9as+TBvHqJtrypXzh855YlTvpTl9IZdqeGMpcI1kWNe/ikcCRG6MJ0gHJpfIpsg==
X-Gm-Message-State: AOJu0YytG/js2ZbrP6o//K3m5pS1MdYh70tCkJFQHoo9cHuHdXXKC4z4
	9bJ44FLqvdM+l6ExrDRP0G7iZwBhaoNvgIzFAq7DRCZFaTgafaf/V3VLx+3naBg=
X-Google-Smtp-Source: AGHT+IG1ajDJwHzlbEYhg6OIEi3VvA/YKrK5c/OvtnDMI+KP/GPDROApZPX+ndF9eQ6DUcTbb2FxCg==
X-Received: by 2002:a05:600c:3146:b0:422:6755:17de with SMTP id 5b1f17b1804b1-4248cc73dd6mr18288105e9.41.1719145353394;
        Sun, 23 Jun 2024 05:22:33 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4247d0be841sm136955455e9.20.2024.06.23.05.22.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 05:22:32 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>, 
 Olof Johansson <olof@lixom.net>, Krzysztof Kozlowski <krzk@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240613134910.7862-1-krzysztof.kozlowski@linaro.org>
References: <20240613134910.7862-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] MAINTAINERS: ARM: axm: add Krzysztof Kozlowski as
 maintainer
Message-Id: <171914535207.46985.16943803331169294823.b4-ty@linaro.org>
Date: Sun, 23 Jun 2024 14:22:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Thu, 13 Jun 2024 15:49:10 +0200, Krzysztof Kozlowski wrote:
> There is no maintainers entry for the ARM LSI AXM SoC, thus patches end
> up nowhere.  Add such entry, because even if platform is orphaned and on
> its way out of the kernel, it is nice to take patches if someone sends
> something.
> 
> I do not plan to actively support/maintain AXM but I can take odd fixes
> now and then.
> 
> [...]

Applied, thanks!

[1/1] MAINTAINERS: ARM: axm: add Krzysztof Kozlowski as maintainer
      https://git.kernel.org/krzk/linux-dt/c/296c0bb50e31f9077c391e57bf43f3e23a73835e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


