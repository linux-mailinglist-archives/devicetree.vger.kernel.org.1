Return-Path: <devicetree+bounces-52881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EF688B059
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 20:44:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 58AB7BA6A65
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:35:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86695143860;
	Mon, 25 Mar 2024 11:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S3nKnyP9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D7A144D27
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 10:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711364261; cv=none; b=ZonVv8gq19dUOZd27qxgBKoAxQGnqLBuvVvgu3WDfLgE6pyBt+p+uLIU8xwk0e/MP2z0zmtu42KtBSk7shpE71+vKOSP/bRXx1GaQG1+dKVLcq1Dx0nQg79FuAjFCdhW2iL0hp/UPjx9fqJbv3RZ96iEeK6uhWejjrIlx4MvGFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711364261; c=relaxed/simple;
	bh=duLQQ6BAaRBO/CQqapOxYRljwktDL8WobuwPxozbmmY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=acdJLoWp8m+m7HrCIrYRgKdCwHgFKw3Zdui4XgUFiP5dgaBtP8LtxvnwdpFwCDk2sbGGHulW/g81NtprwrtrcjvbwaiQPk/capszS23Po8ie7erEdApKfC0Y1El7eBWHvuc8CrmQDGGHqLk1YXgkFxiSMCxs9OvQhODq6KAzOws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S3nKnyP9; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a4644bde1d4so558724566b.3
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 03:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711364258; x=1711969058; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QD0cdggtjV1TkD8Ph9DL7CmS2IaWiqd9X/ZfwAu+OwQ=;
        b=S3nKnyP9K14eu+0po/1N6+9RINelGnj2mKeR5UVhlBfpFL5IpNJ3mUd05HJg/z6PqA
         6DTw6o+AT5LA+4dikWi2x/s2GwrtVdilJi3IUwCxsHsjNvL/Ph1SvX3/cIy9Pib6Yuq5
         MIfO/pBpr9MgiVKuO+rW/+o34FmHn3znW6Ol5vAa2acur2ClibHrH+fR3AB8ADcHomEo
         luWMt3Q3ekkJhsECdPfm7n6dTHX2sb6MQ6W31L3urBhWWCzuV10+1DRKGJJeCDq3P1I4
         ZekYx/92qkRmRrSqV2InVdI3xp7IcjJUDoa9AJF1cGUTdkwYNFfo0G8gFBZfPWi13hWX
         lxnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711364258; x=1711969058;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QD0cdggtjV1TkD8Ph9DL7CmS2IaWiqd9X/ZfwAu+OwQ=;
        b=P9y0g748K30nTSA6Xm5BnBTszjAyfC6dU8jwNwcIIROQ5RqnLcRXiwe5UqluwEWaTi
         ox8YKi+g1i9mIuLyjMRJ5QMBiRfc+eU6phaupK9f18HSCsZcNhFGtH13PuGLhllhw9QW
         N8i+4fDDi0rahzOrRDbNkmcK26NthtebGHf5effaItyckeAT+crTg9p72pCpwAQ2B9MD
         9ecle7pwaO8+tYf3WMlK5UK/Or19/66MHLC1hFBIelTYRi7ozl6WUg+gINVTieDJXQxq
         irKV7Q78ViCaATT8Wm5VHqN+G8lyrTEby7515jJJvV6vK2f9T/Ecwuj2m7+SwudmIwnB
         VNGg==
X-Forwarded-Encrypted: i=1; AJvYcCWR/DSQU8MTZG1kFCFa+PSNtMRC3e1o3Cvcs473wLw2JV5s4lZQSc/Y1JxJ0emWLSxM2gdHjW9TblR7YJeFth9JTGJsz03m81aTvw==
X-Gm-Message-State: AOJu0Yx6Q9TrYFqJ7wMROUpg9wmZCZB8H52aGgrZFw5OZhPwSbreaArv
	cFZaGmhIZ1H8T+yGzp1jpkLvsoEBzqy0KNlfzD2f/8GR9+2xUYSeTBrD4niFeRg=
X-Google-Smtp-Source: AGHT+IFDX4rKUcKoTdeaTTV4l3TeX2yEBossccN1iHdS9NBr+kRIauoX0Ul0+w3u/djQAxflPkgHiQ==
X-Received: by 2002:a17:906:23f2:b0:a46:f279:8f77 with SMTP id j18-20020a17090623f200b00a46f2798f77mr3980316ejg.43.1711364257666;
        Mon, 25 Mar 2024 03:57:37 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id c19-20020a1709060fd300b00a45ff5a30cesm2940522ejk.183.2024.03.25.03.57.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 03:57:37 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Thomas Abraham <thomas.abraham@linaro.org>, 
 Kukjin Kim <kgene.kim@samsung.com>, 
 Grant Likely <grant.likely@secretlab.ca>, 
 Sachin Kamat <sachin.kamat@linaro.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: stable@vger.kernel.org
In-Reply-To: <20240312183105.715735-1-krzysztof.kozlowski@linaro.org>
References: <20240312183105.715735-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/4] ARM: dts: samsung: smdkv310: fix keypad
 no-autorepeat
Message-Id: <171136425618.35431.3551782280953584023.b4-ty@linaro.org>
Date: Mon, 25 Mar 2024 11:57:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Tue, 12 Mar 2024 19:31:02 +0100, Krzysztof Kozlowski wrote:
> Although the Samsung SoC keypad binding defined
> linux,keypad-no-autorepeat property, Linux driver never implemented it
> and always used linux,input-no-autorepeat.  Correct the DTS to use
> property actually implemented.
> 
> This also fixes dtbs_check errors like:
> 
> [...]

Applied, thanks!

[1/4] ARM: dts: samsung: smdkv310: fix keypad no-autorepeat
      https://git.kernel.org/krzk/linux/c/87d8e522d6f5a004f0aa06c0def302df65aff296
[2/4] ARM: dts: samsung: exynos4412-origen: fix keypad no-autorepeat
      https://git.kernel.org/krzk/linux/c/88208d3cd79821117fd3fb80d9bcab618467d37b
[3/4] ARM: dts: samsung: smdk4412: fix keypad no-autorepeat
      https://git.kernel.org/krzk/linux/c/4ac4c1d794e7ff454d191bbdab7585ed8dbf3758
[4/4] ARM: dts: samsung: smdk4412: align keypad node names with dtschema
      https://git.kernel.org/krzk/linux/c/ad722fc2ed6f056ba6c49bf161cf45a3e1b88853

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


