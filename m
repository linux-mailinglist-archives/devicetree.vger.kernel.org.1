Return-Path: <devicetree+bounces-134544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DD25C9FDE6E
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 11:10:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B7C5118826F2
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 10:10:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1F0513B59E;
	Sun, 29 Dec 2024 10:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ErzQKxvw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF5D5126C18
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 10:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735466992; cv=none; b=W/8HaAjrUoFQX5V4iMLMP/9ugVFVPvzPzbOSHCcsFXC1VDcJBFp0pN8YK8sVLiRBrcyiXX+ESq6gJXEmVoIj8fRc4XSwbZG1lezFSVrQD+GUF2/Eg5XLAqEj8AEoeoYi+Y6xqgSottlY7NIME09JnaAfCBtZL5DascC8m8eSpJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735466992; c=relaxed/simple;
	bh=jPOh1OynGqcbQC5/mSoptiKpbQiYMH0Azq4m2i6raNE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=OkOEysfQAC5KaEKPq2QeZN1up38xHkiCc2xHkuyBwOEuJyEhUaY4nPX6P4LDU3disIAJEcQcGSnpQnoSL67/MiSpF3PM7KmL/xLMET67VCGj3Ii7+uf7gF7spzaNa0nsYFR8Gro6SdKBNIG/90XJGA/bRNQK0nqCP3jq+3PiGeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ErzQKxvw; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-385d7fe2732so847937f8f.1
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 02:09:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735466989; x=1736071789; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B1e4Zcdd64n/Uq8SZYq9uZiFwUddDGBarfIwN7jA5P8=;
        b=ErzQKxvwPX8Xq2SF75I0DxtROwSnLosp865rPp3yRN2++9G9/UulYRT3F/KhwGPkxU
         EFOJMu3zW0b7Vv79X8/3OJja7Cx+ZqO/36KYNW+DkVtTJfFU0nyNJjrEfRhRh1Iz1qSj
         AhNzp8MGwHxW061bzkRoifYC0Ypq+yDL4drC4QMknwVbqYiwJVhfeuE/GP0fSEGlVj2i
         NTuRT7SdcEEj0k+/h1u5qhY1qQkoghmcMA2v4PiwUl9vPT4uEKTfoph1sZUb2BlGVW+b
         3xvib0P7Lqb/+MoBTb+rUkB/1bhpSKsKsXs//DdS/WY8GBjS1xwkUX54tq5nSiZerdpW
         q4JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735466989; x=1736071789;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B1e4Zcdd64n/Uq8SZYq9uZiFwUddDGBarfIwN7jA5P8=;
        b=ATadv+0hCthMUXbP8sIEZUHGDbn1UXhzrujTN6Kq1neKJjpAn1HJt+tRMKN22G1bBY
         huLwXecPLUgHUzf8bbCtwuL2Hi5zwkEZSgFMKYhbReC+qq33P7aENSRmEvFILFHKws1a
         W2zfoiNhAAUdIaFkGKU1X7Cf79ByJ7kqieUny3yUmF0o/IIHPFBeMd3UGO1fX3ZBvSCU
         Wh/O920J0kli5kqYkD43hvz33NZ5zi+M6vPOdbKWaf/dVYzXf+kyCS51hodUy93IEdKC
         imm+R70hsFBNUzO5HQEb/ziNbalqangV8c5uSpST22fWGhS+Z/GtLcKGxCwj2cLTwzUt
         uQlg==
X-Gm-Message-State: AOJu0YxoGF4Y3esKQ2C0jr47kxnhdnwbbqi4xPZOeHbExHwX0Q61lFeV
	uMmgTf20O+NvbdUEYlxGLAPv5ODWRCufGxY26p1RCEQKjPny+rkDPviRupXXGss=
X-Gm-Gg: ASbGncszMZFvqFvUaNUIM627YjUlXAqu6EfepUy7IOx45PTADMcVgxEEu8tglODBA9N
	CTcf5F0cQoMrxUJ5ZKpopwObNV/g8AHuSs6Ok75CEk+nGfroAKJqPXV+VzPcDXocQyQFt6k4fiK
	jxkxnURMxR/hKc2hXjNCzmo72liQiXkfJ4FATPf7jMDQB2JvqKiG/2BFoLe+oQzzZQoKlNXu2Vh
	MGpTYjxH0Vrk5mghYd9brCtthOZiSxCWOkaN6FAag5URvO+kqmDHupqdHkm9peX0pbWn/Vg
X-Google-Smtp-Source: AGHT+IFqkvxQps+KrzRziDHQFsICEA+v2gm37Qee519mhPRQQR4sbGLqJY626OMpwV6K23g0gpxUnA==
X-Received: by 2002:a05:600c:1d07:b0:434:f335:aa0d with SMTP id 5b1f17b1804b1-43668547269mr115138885e9.2.1735466989158;
        Sun, 29 Dec 2024 02:09:49 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4366127c493sm318174575e9.28.2024.12.29.02.09.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 02:09:48 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Igor Belwon <igor.belwon@mentallysanemainliners.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20241224-cmu-v3-1-33ca24b2413c@mentallysanemainliners.org>
References: <20241224-cmu-v3-1-33ca24b2413c@mentallysanemainliners.org>
Subject: Re: [PATCH v3] arm64: dts: exynos990: Add clock management unit
 nodes
Message-Id: <173546698710.10457.3695234536331992206.b4-ty@linaro.org>
Date: Sun, 29 Dec 2024 11:09:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Tue, 24 Dec 2024 04:33:36 +0100, Igor Belwon wrote:
> Add CMU nodes for:
> - cmu_top: provides clocks for other blocks
> - cmu_hsi0: provides clocks for usb31
> 
> 

Applied, thanks!

[1/1] arm64: dts: exynos990: Add clock management unit nodes
      https://git.kernel.org/krzk/linux/c/f21231ac28f44cd5daf50bc8fdae381f451b46c9

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


