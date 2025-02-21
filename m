Return-Path: <devicetree+bounces-149315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5094EA3F0CC
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 10:47:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DF57F3AFE03
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 09:46:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82473207E03;
	Fri, 21 Feb 2025 09:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sktPy6l0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4DF5207A3B
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 09:41:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740130919; cv=none; b=kKU8xFFRk3U8hojPYxPvR2+IT6B2x8ANJkDlS+VmUFxJ1gKktYNkrTSKMjsemDKidwW05XRLjuxWm5Ooh0b8PFQPQs+co45XWOT67u49/GPzgOsATnzk5Y8LyhSJp3gOOHNloP0qOdplqqQgWEaOpYRmj1ERVYXT0NaBMW8rfVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740130919; c=relaxed/simple;
	bh=IKR/9VGhkFlJ1I5hTuDF78Fb+ATo1J45kT4X3heZ8gs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=MeriZOzr/STYQPNFfntNDL7XmyJjcRkFhOMqaUmteOaJAz/NWRN4eRhK7/zR1pTL0WS3F4xbb56LV/FyOY4huUXJ/4m0DH0Lo2KrJeU61bU52khqc7di2Q51gsnCB0H8TxYkponyMmnvqe3LXvuKDSJI3X1yDfKjfOTyJn98oHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sktPy6l0; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5dc5a32c313so346087a12.3
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 01:41:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740130916; x=1740735716; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vdXYR/I62+aZcxW37aH9KmdUU3jeSFhaY6J6vyoXK9Q=;
        b=sktPy6l0ghLaloebH3iJRPfolp5lpZWD7oWeG5/ZeYcIMJmoqwJpwQhyG2KLzNHw4f
         R9+U1pKHOhmXHb8g1okQ1UIwiq55Lfw53P2qHqflLhvcAq5KH3b+TmeBNg2HAHFUfHXe
         U+FtlolvhldLC2sMySbv0aZybiC/n/9nVIUn36yOnbHPWHLyZEvvuZI7jm1u2RC3oQcL
         m1BuuMOb/3Y8TPN8zj9Vb3K90lUqXgL6Gv0t9026M7pFPFEdBzd0freII3az3dWx1vc3
         7gudrR+8sJGlQk580BV3BsovdHc2Q8iTdBevhetclD8a0mT7ADmR2R3zHhVV3zhOXI/K
         HRPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740130916; x=1740735716;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vdXYR/I62+aZcxW37aH9KmdUU3jeSFhaY6J6vyoXK9Q=;
        b=S3hSnhPyHYiF27e5R4JdqZko/SBnGh4OEM6EUPDepooabnP7uecxdnP92cV4b148vh
         R6X66EZNM/ThWRbHojhOhEQzbzeEYY/uTehQiH0obq9XMDqFyDPoaulLzgyVGPZEkXuQ
         myvpge8o0ZIXIA5BrJQ6JnA3InSuGCpf5Zv9TuRfg03yMS2ADLMbAz3Yqc8QtuMHVOOf
         Ds7ZAW/a9YdfsEiX/z9ILeZFQTBuXaHmb80ldL6DdGnCh7Xvf7OHgkRgdK0cVkjdOYhV
         D9ybA7iu+Fu67iq/cKGLyKvXEgaYGZm/RA1JcIYHbWF7XpUA7bPBjhJB0P04wReSwfGx
         +k/A==
X-Forwarded-Encrypted: i=1; AJvYcCUVEj4GqRLPD2eOPYiXdVNbJ5FB+OBOCeyC1aw6RQOM9S7uTrrzvDI4kLsVp71svk0fOCM+tBtHlv9d@vger.kernel.org
X-Gm-Message-State: AOJu0Yzv8+y4iEQtXfzFARWBdfBdIiSb4cpa94GV+4FXYqzvEs1AsY1a
	UfRC4eb/ytZxROLlAsYHn9PhrPGh1D21YXUKv149bwH4tJXLvk0aHONoWOkBDIs=
X-Gm-Gg: ASbGnctpQNLRjLrscJDLz78s+udwUwKsvm9j41p6wXUznw39ZM/VN4qA+J39aNX/all
	+9WbJ7ByLP+L7ivwBQz5FwPSJJOFrUfveBx5MvY+rt/orbVKAv6dwRIY706MGvUs3eI7nu9bLwx
	qmRrRARXpZHauhxXir4hlRwf8nMqh2n67sTchrrPTrNTyq+x78hvSCOUtpxcoAcQt3WDgvlw+Cm
	WWQkkqxaZQTuuL3h8xMb7T8OjIlKld6eZaiVbjyG5PIrrkdrcn5aEq4gEIHqtCTiryO6+2joePq
	CV2QFG06K7/9H4/6CYfsjz2ayHKPT/M6MC9LxT+RByPN6XBpJdQP0lWfBzTEeFmm+K2LQ7pJPc/
	T
X-Google-Smtp-Source: AGHT+IFL/lM+F0ktUjddFj5OzpJ2DJG7fI8Z19V6vvQBBy7jA2Fb4GY7EiIh5I5iCTTx716z+h+jMQ==
X-Received: by 2002:a05:6402:34c6:b0:5e0:8275:e9dc with SMTP id 4fb4d7f45d1cf-5e0b70bc3c3mr703304a12.1.1740130915955;
        Fri, 21 Feb 2025 01:41:55 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba5323226asm1617470366b.8.2025.02.21.01.41.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 01:41:55 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
In-Reply-To: <20250219-exynos7870-v3-1-e384fb610cad@disroot.org>
References: <20250219-exynos7870-v3-0-e384fb610cad@disroot.org>
 <20250219-exynos7870-v3-1-e384fb610cad@disroot.org>
Subject: Re: (subset) [PATCH v3 1/7] dt-bindings: hwinfo:
 samsung,exynos-chipid: add exynos7870-chipid compatible
Message-Id: <174013091442.25434.11831404613747395475.b4-ty@linaro.org>
Date: Fri, 21 Feb 2025 10:41:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Wed, 19 Feb 2025 00:33:11 +0530, Kaustabh Chakraborty wrote:
> Document the compatible string "samsung,exynos7870-chipid". The
> registers are entirely compatible with "samsung,exynos4210-chipid".
> 
> 

Applied, thanks!

[1/7] dt-bindings: hwinfo: samsung,exynos-chipid: add exynos7870-chipid compatible
      https://git.kernel.org/krzk/linux/c/0a86ea5534a9e4ae988a2e174e741b102d8a8691

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


