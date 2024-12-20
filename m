Return-Path: <devicetree+bounces-133161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BB79F974F
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 18:04:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 27B9216DAB6
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 17:03:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9852721B182;
	Fri, 20 Dec 2024 16:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CwFFs38L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A41CA21A447
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 16:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734713751; cv=none; b=MZN8L7OF7kqalBe826VSX+V79st7CaNncw5Lr4bmohxLytUXOzMq6yv1MpYjVuw9wgpOdE0cR5CxPEV6Z04mu30GsNgwp7XlP2s051OPdaBg/6jiWWzJxrqCFZ4Mm91gMYcjAePNLkbXzCaNIu57p0CyYvWcLw9x8+4R23Zky9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734713751; c=relaxed/simple;
	bh=ZJ6BlFTh6Cd2QrVCVjLhtbcAD4DALAZMyCALpAZOwdY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=s2R5MngI0H6JuPhn8we5mx4ydReQNOhEwncJ6Ghq3uw9EK3qepUzaVRZDByK+tw+dONW+NdbXVtndLLZrGiLE+l2HWAFEiW1WADTGFEMjh1lpJrzdgQiMi4ZqyFrVUI8K5ReGW/+pvgfnzu1RoxhuKxcY0KhHXvwz2EKkiHHnHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CwFFs38L; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-434e3953b65so14928495e9.1
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 08:55:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734713748; x=1735318548; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bRMVd2Ct+RJM9mKq4M10JLL1AVbRbgv8gECSUOI9cfA=;
        b=CwFFs38LKnX2qjiKc6bbdAzbp+KdKtYBLIujleUiabOgYkHbqcGa0k2A/rafCQj8oG
         zTm0dUnZMLWXNwoeaINUX8puistLCf+mec9B6KJg/Dd1/08WkBe5YDgz9zn/QUYmQKGB
         oiRyBx/B/Yh+7Y2D6Rt1Pe4j1/Y/fu+ElvY0hmgyQqfz3TaqNTk+buN9T5tWZDaNQDDM
         nhGemds2do3u37g1NHKApqv0C0o6rjWrC5j0kcSDQgxAIwawT8gXybXxafX9Fmd34x0L
         JV40zfdMOszC3960x/BE44M4ycp+t6oWjo9DK4Zwh+F7GGW1lwc/f1KvMu3kKCkywWjt
         OmLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734713748; x=1735318548;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bRMVd2Ct+RJM9mKq4M10JLL1AVbRbgv8gECSUOI9cfA=;
        b=ttYj1QCXXURu/3CeWnQ+zY7AyZCeZ5yA8gOj/g+a49MoWXNt2WUEJbIZDz+faPI6Qe
         ASUGyOoqds9j5sfkW97INai9czG0rOJ2pEH53YFm2BmpDBTjttrUjJ4cyhJemeGAtHDo
         dm0FEteIwODLicfN8VTm29bpjz6Gg3lT1Ge3CAFbnZBuWGYf6UxZUQ+vTvhBfxAVGeig
         NbPhUQ4xDZcWDgtWifEs09Uf/bsq4WpZu5tX5SGf4aZIFjtyMxRfmVNMGu3xlrXW3XVB
         wqP7oSbEjuYNGOrCtD1X1xG/Eb5WEOfm4S00QO0Vf0IFo8RjtgjzCNlw6j7tYAaGSwcv
         rHsg==
X-Forwarded-Encrypted: i=1; AJvYcCXeY79oRPaCVmE7LOuh/8iqjiLE49SkF4HusQ96L2/a8ik82hGdtbSb6ujFLtW56wX1pazL1/NhSZz7@vger.kernel.org
X-Gm-Message-State: AOJu0YyknHwIRcyuJ40QQxeJVfPcSuGKzV2SaTMrZ9Es3+eyztjaCfjl
	QqRe3zFcFi6u3kKMTcgePnWZXwLjEvBL+F/TxTmD5b7qTGcAAnrMCZXhjoHeJ2o=
X-Gm-Gg: ASbGncsMHobS9ltVsE1cstRvSXpSS82C4ayY0VelpKNMQsKHCyRyJnicm6PgIIH3o3U
	NfWwiXeMKy4d8Z1J8hP+BD0XYi/dDUP+2YGbxQQQEH8OhBNQTnnxQbRaFBrNmvJwqJw8HhlDEwr
	+79jvhQzbrJyYtI5FGsdrJc0/ddoDoA9J6nQ+LwsGXy5gFKUK9Z+AbKcDS/jR5CrJqwGv5NX4TZ
	OTFPRXDryM9VBLIpMm+j0o18SV6ZFm5ym/gcT/s9Ex+6u4zKxBPp4kue9JXtunMht8Iu2nQeYQ=
X-Google-Smtp-Source: AGHT+IEdH/GxYvmGV9OhqkZ4EH1vTHNkVaouX931hJminJB7ZTbk13vFQOd2dc1W1czg+c63hAfImg==
X-Received: by 2002:a05:600c:1c87:b0:434:a10f:c3 with SMTP id 5b1f17b1804b1-4366864320emr36500145e9.9.1734713748019;
        Fri, 20 Dec 2024 08:55:48 -0800 (PST)
Received: from [192.168.68.114] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c89e261sm4491454f8f.76.2024.12.20.08.55.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 08:55:47 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Joerg Roedel <joro@8bytes.org>, 
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 =?utf-8?q?Barnab=C3=A1s_Cz=C3=A9m=C3=A1n?= <barnabas.czeman@mainlining.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
 linux-pm@vger.kernel.org, iommu@lists.linux.dev, 
 Dang Huynh <danct12@riseup.net>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241220-msm8917-v10-0-35c27f704d34@mainlining.org>
References: <20241220-msm8917-v10-0-35c27f704d34@mainlining.org>
Subject: Re: (subset) [PATCH v10 0/5] Add MSM8917/PM8937/Redmi 5A
Message-Id: <173471374655.224301.13708019576127725452.b4-ty@linaro.org>
Date: Fri, 20 Dec 2024 16:55:46 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2


On Fri, 20 Dec 2024 12:26:13 +0100, Barnabás Czémán wrote:
> This patch series add support for MSM8917 soc with PM8937 and
> Xiaomi Redmi 5A (riva).
> 
> 

Applied, thanks!

[2/5] dt-bindings: nvmem: Add compatible for MS8917
      commit: be7eb69d5db54ac9ce794c4dc7d278890a78e0fe

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


