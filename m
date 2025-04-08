Return-Path: <devicetree+bounces-164491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC41A81258
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 18:31:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 19AB9883083
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 16:25:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 019BA22D7A4;
	Tue,  8 Apr 2025 16:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eYSPj+Ke"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0E2F22A4FA
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 16:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744129560; cv=none; b=WCeS/0OPHcLpw2I8C9sR819wvy9bGPJswGO+tqsyH06F8Tp2Lpo9xul0H5OYyIjII7acyXtdD5DrzyV2fR3Tvuj7plJDh8Dy+nne77kN5n7iOYeP/B+xgfXWhcW63bNfL4JVoUkU1OWfXHBSsM63t0TiaKq37fNRmzm0n1SqWU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744129560; c=relaxed/simple;
	bh=ljFPIOq3znfMAq1hPUQc5glriASqAaiOXMDYR6i6u48=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=JS45sbOLycaR9pKN+mPgEWe+ObVnPzZd+aFh5tc8Hjxgdyme6JifDswOdTkQkgDi5UNDdbz1Y3zbQPnkqtVpkgObSLaBkWq7xOoswUd8/KC4j+w2DXyDTPhSyOpPb7Oafzp59BPwPRq8USIpU7GSLzkFNGdsgbpkbT/ZsNGGXg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eYSPj+Ke; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43cf825f46bso4993335e9.3
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 09:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744129557; x=1744734357; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RFphVcqK3mFE7z2xyqgIGdTaijWdMSkT/C4V2pISyXU=;
        b=eYSPj+Kes8bLRHabUmJ0gn2WrliHC1zORE4e26cCsDtm65ZJ55AZGmUewn8sgUH7LJ
         /gBOs+RBRBeAvS94Yz1NP7RxSJYeu7w6949M0x/uRuYiPUDnis09fpaCARnFQV8eu96Z
         VG2MsepuGlcGlmPCcJEighzg2Z/lXYUikFTz0ttfl8VdAAgx4m69tOBjey5fctaUSjqu
         GvkUBldDd/WQKmOVPIaaSjkLPTw14xeuWnELcfBSCWwYHngXu/d/4LLVZokszjWZcBNV
         X5onQIadAY2tFoWXuh/+8Wg+j9ToOkORTWCRptreCb28gSe3XpzlruKVVwF8NAPZcBIN
         cvsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744129557; x=1744734357;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RFphVcqK3mFE7z2xyqgIGdTaijWdMSkT/C4V2pISyXU=;
        b=RU+D+T1tH61W1fw0duL964r3j6p0bti31eq7zdl68UyUNqpm76DbaXVa5Q8tN2QyKz
         cV1ui3pUOpRAeZ/XW2akHEVCrIASKb2ywLW/sAlz6GUwWyjfKFssED4TY0Ce9IKTaWZt
         rup6o9IRvmTkckMbKbf/i3Gv92P/ndIfkI7F4Gbl0CuJvcoBFf7QdcTZ8Z8I6kAjK1zQ
         cvrj1PtSa6XsNj4dzuZh2BjG/p4HtpyJNugeeOQQ7iH8huaUYNQ3SxX5jdt7SpgloFKP
         NC9jGP7kJOii18iT/002XY+6yoyDZxJaSKOF3j39GtkRNKgB3JVrmyujz36IbKWlGkJ2
         ycfw==
X-Forwarded-Encrypted: i=1; AJvYcCUi8Uhda9qzqarRID70wa1tx0uMBvFJhJDEfy+WYgnJzcHZt6HN39D4CJakPcIIz8Fq8Ry9Bf4KReQ2@vger.kernel.org
X-Gm-Message-State: AOJu0YxAD1j77DByfWYiQ323FaxA1NVQUlfhw2PwsvGVUHAJYkumknPo
	SNa1sMVz59sXNYIy3vMDzoFWJDIUP/XvGn+ozuyYiuePaq6xmhO6oBsodxRlJPg=
X-Gm-Gg: ASbGncsqY+WjTRJW5rOUIJQszkEuX93svHyQ655ylEIl5gI3lGcKr2nxsc5ZTnHiETZ
	jPwdKHo3GBl3Bh54EpqxHi9AtnlORLlVlSVPQwaiyH2KHhsWcXzavS7BVbuO96mI3CA9qY1VhmK
	LoQhJk6/N1K0TUcNtVyZxHvm2qMGAYhiTOU42+HPioil8GMpLJ7dYL0r+6ddcbpe/ci32WHZKD/
	NbCHkqG0IU7IFn/LAF+LcEbBTuBhK1r5INsORrv2I8MbLGUNHPXMRoD/Fo5QY8E+6AN0Ha0rHtd
	xaEj6XM6o+TOs59tpUqtAbzJLijzoeolPLtzWdLCFLoGqlJKpTRoXpfe/uPXRI/2rmDv2ud7NQ=
	=
X-Google-Smtp-Source: AGHT+IHcjPw7vTVflIx/On2eYRJY4Tq9MrtcT3MQ3yA+ESz6rLfbUvrWYzlL9vvcgtQLsbxNYvAtHw==
X-Received: by 2002:a05:600c:848d:b0:439:a3df:66f3 with SMTP id 5b1f17b1804b1-43ecfa18ba7mr56191265e9.6.1744129557114;
        Tue, 08 Apr 2025 09:25:57 -0700 (PDT)
Received: from [192.168.1.26] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34a7615sm164763125e9.9.2025.04.08.09.25.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 09:25:56 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: krzk+dt@kernel.org, linux-fsd@tesla.com, robh@kernel.org, 
 conor+dt@kernel.org, richardcochran@gmail.com, alim.akhtar@samsung.com, 
 Swathi K S <swathi.ks@samsung.com>
Cc: jayati.sahu@samsung.com, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 pankaj.dubey@samsung.com, ravi.patel@samsung.com, gost.dev@samsung.com
In-Reply-To: <20250307044904.59077-1-swathi.ks@samsung.com>
References: <CGME20250307045516epcas5p3b4006a5e2005beda04170179dc92ad16@epcas5p3.samsung.com>
 <20250307044904.59077-1-swathi.ks@samsung.com>
Subject: Re: [PATCH v8 0/2] arm64: dts: fsd: Add Ethernet support for FSD
 SoC
Message-Id: <174412955552.86459.1583748766350981659.b4-ty@linaro.org>
Date: Tue, 08 Apr 2025 18:25:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Fri, 07 Mar 2025 10:19:02 +0530, Swathi K S wrote:
> FSD platform has two instances of EQoS IP, one is in FSYS0 block and
> another one is in PERIC block. This patch series add required DT file
> modifications for the same.
> 
> Changes since v1:
> 1. Addressed the format related corrections.
> 2. Addressed the MAC address correction.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: fsd: Add Ethernet support for FSYS0 Block of FSD SoC
      https://git.kernel.org/krzk/linux/c/1d62af229b18bff2430ea5dde0e129d43515e12c
[2/2] arm64: dts: fsd: Add Ethernet support for PERIC Block of FSD SoC
      https://git.kernel.org/krzk/linux/c/ebeab0be707ddcffd2b7f6ff4f9bd8e0c1c49fdd

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


