Return-Path: <devicetree+bounces-92869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB6A94EA89
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 12:11:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 01269B21B15
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 10:11:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83F6316EBE7;
	Mon, 12 Aug 2024 10:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="af64i5iL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB7616EB4C
	for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 10:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723457505; cv=none; b=aAzmQvB5nFgNWPcvLWAUOErhO1JJun402Sqq1iPQhwlkLxkHfqeUal/1WQE98OwH6JyBNjOMShTPhnQFsVba5scviyqg08/pUNs0xSxpjJUxUVfJ21MC3nRAohSLIeQI7GoLJm5FWbyXjLCEKGy/QjLlHfisdBZNVrHTUEfXpGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723457505; c=relaxed/simple;
	bh=m9iltBGyT0Bi16sfkw4PReJR9Nd8fQjFWqWUcM6Edwo=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lWbCw58ucbMb6iGivSjLynDmbcQlT0TezuXy6AgvB4mtFFvVSmoSOUhuivpt8bc+U2mk34EgN6BBu9NVXS291HQFs8z8Oh4aaBZ91xvH4HhJuRVZUvBSzu5W7q8+ytNQWdqUl+26n3Goum78W1aXdme6GGweUGcYzPKL89w6f8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=af64i5iL; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-368313809a4so2940654f8f.0
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 03:11:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723457501; x=1724062301; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LT4OWBWJDMSw8Klzf2pbHQrTca4RQG7pLzuzOgwkSto=;
        b=af64i5iLHkRVIvoFdYShSd4Dp2sF9VN2T9mKd7IvnYXAGqFfA7fJoav+jrpeSn4gq2
         j4UqImA1lFDMrvLXxJsFmJ5JXmchW2gT+t0wr3EO97q/6oLHH1SsFtiNoD8Y/WyFk3/P
         0jEELf1R1NYyreXVpT1/aeCZg5hkCXQV5YMaLlIJ6bLyDYffwsCK8G5vFxWlhWCa7dok
         R9gjT4rDewpYPsFk9CRhNna2oRLPIzcqZ/GjO9Trj0Ga/JDRhsnmQXSqaXOCj86ak6b5
         xGPS61Agih19kLm6oRLQHL0aYUw+YiErz9jR4QOKnbxwuHC2ztn/WuPl3cYI3WR0nQt9
         w+UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723457501; x=1724062301;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LT4OWBWJDMSw8Klzf2pbHQrTca4RQG7pLzuzOgwkSto=;
        b=DMSdbahnpAWwy34BM+vL0G0l2KjYEcG1jClLxVtxrUNKxc4z4kWRlgR28wrgPyWgSA
         n4TGJP85jAqkmCx35O0aFkouFrNZMXCNwE3WjiTInYKouhDG9DVIHcraRyNQly//1pVY
         t2eSFlpsNzVqidDuQAVNKunql6b0IqAQgfbcYMozVm6ABsnCY1+wwFYMotm/TRMVXx1t
         P1WNhSVjR7UpANLgkButpLgBlBRjntbrG5Qt2kEQRlWEH6Z+BcqoxnoirGT2gL8j8N61
         5Ariu+RL7bwrO8tqXDHcnMNXZQ4XsVIhmKa2Pnn70f39eaAy0HKX34vsIjBG4QVq5u9q
         aPhQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYEUiV+lEKd0PczUPYMD/RLmYNLyhBtie+ITgnGSEINiC3KxSxd/2OErj4wTL61HXRbiKY91EgAlVjCjoy9Ax6OexI+PZx/4EMmA==
X-Gm-Message-State: AOJu0Yy3nGfRLYLz5C4oDrdjgGn8aQGdhvuxtShGYtJ5oLGgifOEm5tH
	zrDoqDJ6oHKSDJzBCLGemZqYx1lgGJO8h53zAndaKhilJQkFIPibqTYpOFJIXuI=
X-Google-Smtp-Source: AGHT+IHxZwuhRnfMslbBFvqQ+342n8qFMtlsUgRIRzxAiFZ11aptWLFXKvHcAy2U8Cw5QOUN2k71FA==
X-Received: by 2002:a05:6000:459a:b0:367:895f:619e with SMTP id ffacd0b85a97d-36d2810977fmr8945155f8f.11.1723457500669;
        Mon, 12 Aug 2024 03:11:40 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36e4ebd2accsm7054591f8f.90.2024.08.12.03.11.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Aug 2024 03:11:40 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	openbmc@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] ARM: dts: nuvoton: wpcm450: align LED and GPIO keys node name with bindings
Date: Mon, 12 Aug 2024 12:11:30 +0200
Message-ID: <172345744176.104566.11404449092805003253.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240701164915.577068-1-krzysztof.kozlowski@linaro.org>
References: <20240701164915.577068-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 01 Jul 2024 18:49:15 +0200, Krzysztof Kozlowski wrote:
> Bindings expect the LED and GPIO keys node names to follow certain
> pattern, see dtbs_check warnings:
> 
>   nuvoton-wpcm450-supermicro-x9sci-ln4f.dtb: gpio-keys: 'uid' does not match any of the regexes: '^(button|event|key|switch|(button|event|key|switch)...
> 
> 

No one took this patch and it waits on the list for very long.

Applied, thanks!

[1/1] ARM: dts: nuvoton: wpcm450: align LED and GPIO keys node name with bindings
      https://git.kernel.org/krzk/linux-dt/c/c7b44ed960ddecb3604d1e273494a932f00f384b

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

