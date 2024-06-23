Return-Path: <devicetree+bounces-78918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 439ED913A7C
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:22:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 91022B21BF2
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 12:22:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 396A117FABC;
	Sun, 23 Jun 2024 12:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BLhBL6Bk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B5AE7CF1F
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 12:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719145355; cv=none; b=uUpVrQdC0pStKjXE9LSRrtfSYfSn+U0bvGlQCHhXljbb3DjaTjkErCTja7K6fB1OsxHUNAnhhZ6o98YmAUAD97v+aImc2tXPm8635Qb/9zKAP+/pfEzWPwy3v4qERMFRdSIM8jBK/3+5AZfY8Vpz7Cvqu9JFQheEOlLGK1nEqPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719145355; c=relaxed/simple;
	bh=D4Iw4/aPpxQOaB20LsfT+FDu3000BK2fvHzMIYJWQIw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=VyXCYvVDlC4cMfaOsRBvd+/mRia7/obWSFJFd8Y9p454W0+OBRnId3rVgxrhAJq2B9PCVsdlfJ+bnnax1Dv3+vnExxIWRZRXP5QS+F2Qjm2Ep8/7FzjKR0nzjYnUrn4Pwf31bXz2EXoHP/GnKwxcCbRGOyCIa/DYlv8MQ3PLMVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BLhBL6Bk; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-424720e73e1so27979195e9.1
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 05:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719145352; x=1719750152; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kb8ny9tIcXj6YkhCaKESC1JpcQVyglNrA+gup/lxwkY=;
        b=BLhBL6Bkgsz9NOHjTqu3ugjejD1FYzDLSMRKnCItABgn6IVugbXkHxm1ocbthurhuU
         lZz3HnOggQr9dgUGleWeGTnLeJ6tzQnPdYltQQB38O7IzgXoJE9ja7B3NfcQcESMASeH
         9DimKO7paLX0QCmWVhrmQpr4Zp/cQZquVkIWAkyUGB5MB0CdeBmUwtrz+zcBEdhzSFVl
         tNy9Aclur4AcJxw15d3T8Yb0abYekZgdBv4qrofaIeP9J4YYDNSPW9DF7w/BaxDsNPLp
         ISQczfjxq/QZQyYDakG4B4JZfUxnuMB4fQmQ5xRaT8nNVsEv+waTU9aUVY/L/D9oFtda
         bmSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719145352; x=1719750152;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kb8ny9tIcXj6YkhCaKESC1JpcQVyglNrA+gup/lxwkY=;
        b=kfaY46yHx9FIuNeE7LDmbP5RZo45ZmjnNzTMtkcy5IKcouOYX506jtr3Vw1Tcvm202
         n5So2evInYroLKN1TBBqtDQu+aZ96ZuWE+v4z8Pein8VZ0akJlk9Q7gF3bm5FDZn02dG
         yeUxvaYSmvO3wIgp0uWWtT28LJrLiRNhSlN5vP87MdTRr0NSTOHyIxeb2/8+bp8yCvXo
         kM6pUsIkWDaNt4o/TKanQleXVxF0VJ9Mu1OsEqMiWfE+GErqrcfVPA0lDecqkX/32DZK
         Kv7xTgtpKu1S4JWdB3YxutzSKEG6TZhBxpXhWtkHCokZLGjyJ4LoyrCBkJmiYItdd11h
         mJUw==
X-Forwarded-Encrypted: i=1; AJvYcCUeZf1khwbQJ4/QXLxEnFM3iIZERMSz5XW1apwEyiG6lY9I9vCkzoiwO1UcVSKakq6czfmPL8WnOehFmy7grtLr+9mP0fze7RSKrQ==
X-Gm-Message-State: AOJu0Yzy+AUDqF0iqfU/yVsV/V5gdJaBAliiGX2d5eiU49IRJmCuwfrI
	vz4pIGVLLwDA8MrrJ1zkSqcMGUiCSpuJaVGVyaEZQVCmgsBafufXQCcKTgDYeCA=
X-Google-Smtp-Source: AGHT+IEi6pdBP9htP3q8cAH2s+06i5LtrSmdWnhYi+tkfC+1Av2olrSw3T8JlNjH5jqv+RNrmHXLTQ==
X-Received: by 2002:a05:600c:2ed2:b0:424:914e:3e64 with SMTP id 5b1f17b1804b1-424914e3f43mr496725e9.28.1719145352062;
        Sun, 23 Jun 2024 05:22:32 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4247d0be841sm136955455e9.20.2024.06.23.05.22.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 05:22:31 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>, 
 Olof Johansson <olof@lixom.net>, Krzysztof Kozlowski <krzk@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jonas Jensen <jonas.jensen@gmail.com>
In-Reply-To: <20240613135956.8899-1-krzysztof.kozlowski@linaro.org>
References: <20240613135956.8899-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] MAINTAINERS: ARM: moxa: add Krzysztof Kozlowski as
 maintainer
Message-Id: <171914535096.46985.6140109226251749754.b4-ty@linaro.org>
Date: Sun, 23 Jun 2024 14:22:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Thu, 13 Jun 2024 15:59:56 +0200, Krzysztof Kozlowski wrote:
> There is no maintainers entry for the ARM MOXA ART SoC, thus patches end
> up nowhere.  Add such entry, because even if platform is orphaned and on
> its way out of the kernel, it is nice to take patches if someone sends
> something.
> 
> I do not plan to actively support/maintain MOXA but I can take odd fixes
> now and then.
> 
> [...]

Applied, thanks!

[1/1] MAINTAINERS: ARM: moxa: add Krzysztof Kozlowski as maintainer
      https://git.kernel.org/krzk/linux-dt/c/4c54173d5965937b9e8280b7ec900fdec65d0c36

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


