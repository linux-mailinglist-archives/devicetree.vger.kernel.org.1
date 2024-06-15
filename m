Return-Path: <devicetree+bounces-76022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F33CA909743
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 11:34:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2A5F284B14
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 09:34:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BA2D1CFBC;
	Sat, 15 Jun 2024 09:34:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MXHM2Kfj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A75372110E
	for <devicetree@vger.kernel.org>; Sat, 15 Jun 2024 09:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718444059; cv=none; b=OmYFF35QnUyaGuqABuA4Yo+DsoJcNyk7ob/UOWZsw6/61IYj+o3ck2es+4gCRrWdHkdCrkU8ML7Lb/vtNVFC8XYZHWENnXrxajAKpohPNvS3XWrdduNRsCtRihflAoimI/F8IotxcgQBpqERw69LTdeJXfQb7Y/uKNd82txI7RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718444059; c=relaxed/simple;
	bh=3za2qru6IudAnlvg331Gz6kpAAhoSS3OkP2M4j9O85s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=WKaKHZ2kXFJu5AFT/pUrweeWC3tpmzUncAHf1DYF0D6I4jxON/JKCFUMV4qqtwf42l1xP4Hmn1hRJDH4EeRNo7Qdq+1HWKCRXLsvD+70AwMgsLKLzjQlW8v31CvMxpnVhJdICUgJFiM3w38kx2Aaquzv1nC40qVHLZ0v36LbM3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MXHM2Kfj; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a63359aaacaso449243666b.1
        for <devicetree@vger.kernel.org>; Sat, 15 Jun 2024 02:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718444056; x=1719048856; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gfZBpVGHvd72Jhxh5IFoFhgV44PvrjVT+p8ObH39azY=;
        b=MXHM2Kfj5LOnLun4yzQTIVSjarBzirv3cZ2Bx85qDfdeXL9ofO3+T16Xt3V8Cvce47
         xhpTDGMblIvefVvT4JnRveX0+Xc1odQm1eBKv91JCXj9ujUe+B0+mul9i+BPR5maltct
         /m85tjihdQj/3loX6zjWPrX4Fe3+a6jzC4L1V1KG2R0ZfZzHqS4iB+BRjEOfqKCgOyAl
         sSzavHgc7X42WCu++fmMFxCkMC1lADY8TYEbV+UDidlPU7VYX4HByQzNt3kro40Okdgz
         dAqiGN7ufdvt0/BVTp0J2EC6jQQHHmAyFkW4f3PNvN/aR1hPag1uAqyv68Lfxk9h6x7X
         Gyaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718444056; x=1719048856;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gfZBpVGHvd72Jhxh5IFoFhgV44PvrjVT+p8ObH39azY=;
        b=VKKU6eSczZVLBJD1bmazc7x2z6efdkMj3IPCUjU4j1JloVcSrfPeDGuN7vJrBl799I
         ebDLRRXV1rkgx6dbjPumxYgMe3wQWZLjm21EizxhQ9t48Bu5nK9GwbX689Six+nBrDJ0
         dBr1PTYdezVCLbc23Sx6cBD5bS8Gg6YOMzpdG6HjI8ECkSOGbe8ZrSU9SNEyhJfFur2a
         D6Pshemvkqaisq5GRkdCDCpLbIglB9gRTOLGpITLzwdOAaTgRDax5GSWws2xJjo3k0C6
         ob0UTN5+RTR9WMItU14gont/m33fcUIvHM2jNdyxxfkia1Wjz/zKdGmPwWbotxyBZ+ju
         yKlw==
X-Forwarded-Encrypted: i=1; AJvYcCXrOnajvwaezFcA9U/orMW5fghTrj8Ri1RwRxpzmv29Of4MS1+mZwbbHxVeYY/jGdCJdLmg8KubmMHraYDPEInAhH30mo+wvB6UVA==
X-Gm-Message-State: AOJu0YyWTl7nFWXD/lYOx4bovr2nb2kHH26DlZ5YoruiTwLqR518DKGY
	aaZAcg+jWVwOPRSyFdEo4lfa8gCzBp6zFXayOxVKX4YBj+iu5RJfh4emWbKBke4=
X-Google-Smtp-Source: AGHT+IEtFhJEkGhaxkm/K+KEuOma7XVKbE3HuYkNhE3LESdF3P5GzSShCp9aDgvx0t1/jk5PuH9Udg==
X-Received: by 2002:a17:906:bccf:b0:a6e:7e1f:592f with SMTP id a640c23a62f3a-a6f60d4277cmr311524766b.39.1718444055716;
        Sat, 15 Jun 2024 02:34:15 -0700 (PDT)
Received: from [127.0.1.1] ([78.10.206.163])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56da3fb9sm278588966b.30.2024.06.15.02.34.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jun 2024 02:34:15 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240611-gs101-dts-cleanup-v1-1-877358cd6536@linaro.org>
References: <20240611-gs101-dts-cleanup-v1-1-877358cd6536@linaro.org>
Subject: Re: [PATCH] arm64: dts: exynos: gs101: reorder properties as per
 guidelines
Message-Id: <171844405455.10532.15057026872451571740.b4-ty@linaro.org>
Date: Sat, 15 Jun 2024 11:34:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0


On Tue, 11 Jun 2024 17:07:59 +0100, André Draszik wrote:
> * 'interrupts' & 'cpus' & 'clocks' are standard/common properties as
>   per the Devicetree Sources (DTS) Coding Style and therefore should be
>   sorted alphabetically within the standard/common section
> * vendor properties should be last
> * reg / ranges should be 2nd/3rd (after compatible)
> * status should be last
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: exynos: gs101: reorder properties as per guidelines
      https://git.kernel.org/krzk/linux/c/7872f905b246982296d7833fe820f4ba5862cefb

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


