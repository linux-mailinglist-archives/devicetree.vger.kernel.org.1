Return-Path: <devicetree+bounces-152963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E866A4AB8E
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 15:13:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 399103ADFAF
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 14:13:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4B181DFDBC;
	Sat,  1 Mar 2025 14:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sflCk1nq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035221DFD94
	for <devicetree@vger.kernel.org>; Sat,  1 Mar 2025 14:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740838409; cv=none; b=RBHq8/ccp/OkaF0+8Ra87FJd5m01sNG7SVMF6TNj/7k58DFn6DNPHIatap6mi/ULEQIecRfPJ6L5x/Yt6dkZ0wQ4XlURk0EsWcV817Kc5iGrfcdqK1iYePn7laBRTNrbRgqTbqtVTVa+yVexDcfrboVAPr+Ycqdy11tjPNIHCyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740838409; c=relaxed/simple;
	bh=l0jI5ewz4E8unNwYqgNQ3772jTNnjhi+wvE+Phrny/8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=DEpVvr/WaZRX9JYapCO5GmBLLrSiizVQGl46zMuY5W6P3hFU/T4MYOwRZUDRupWsfijAADuPCuNE02mhmMng6t062jGegVrpbrMIX6WIGoPwSCAEEfVLCDNSbfGT2lPrpNJZpUySCSmyvmWRm+kU1+6A1JiTk40tAYDQrElzKKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sflCk1nq; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5e5258a2bd9so94849a12.2
        for <devicetree@vger.kernel.org>; Sat, 01 Mar 2025 06:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740838406; x=1741443206; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kICij+zGJ4SJUAMRx6vOY4fWK/HFQvlnrffeNoOoYzw=;
        b=sflCk1nqgl8RMSI2XM3irIn/+zWof5zGU3bdYiSqzzIng1o3i7Pmsgtw9HbaYtTuGk
         yltDZi+Sn27JC8dDA2x93vPla+vvoLBYjM8gYofZ5oRAhDMbKxRO1bzVtyC1/JSw/VmS
         Ht/BUdkfiFqPhahZsmisuTedEcLiLFnjpCMWrOBoUheN9yqR+7AYCEBiDvr5drdYFVL1
         rUD6W/CIpPYo7Z9huRNFLGti9MI0iCQNhQOh9O4Hz86kwbSVuBq+uDrPtxMjRR19PfFk
         Eln+WYE8U4mM/ZFqh31CvvBm+8PUBFxa6Wdl8k3ZfwoFeSw3iXkZoLnGFhd17cOl7olx
         juwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740838406; x=1741443206;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kICij+zGJ4SJUAMRx6vOY4fWK/HFQvlnrffeNoOoYzw=;
        b=HvNJLYQUqgc316+UIl+HIg01zQhdE66nd5vKeWpIvxpy79WwZHfxv6Cl3ezvyxe3OG
         V//z0nLoXGpfn2WJiQSorUzh04SFv++l3v6a44b/FOFzGNhL2S83fABsgfvLYCLDPsg8
         G5PNJlhpeFpFHlxlBcv6UAplmHS5HWoRUPaKYe5co6NduPF23DfRPpX/EPUbQ1ddX/wA
         DTYm5Dgb6yEnvHJEVFxpDQx1m/x+1TwAre5DbURrhJHdjomT6c/cUU2ZkABVGqklVJmO
         jDaZGZkiuKRDGTwziRj84TJxSZgjx2vXz596XsoxqLNaBu9eG1ry2F4mZHFr5VbTC0kY
         gBvw==
X-Forwarded-Encrypted: i=1; AJvYcCVXk1oyUraY1KqQvV6jDaF/MYfRgv0cXVDA4igoprSZtStePaz4vQUv1RX0xDEBKywtZDYpjMuEzund@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ8r0PDsedLHk2W9i1PAq75XIBdlTMy+6S+pafJVpMUTjojCZp
	fnXKLRnuv8a+my34QYueT8XMTbvGuZP5J0ZJh5+icyv67rFtl3CkEUF0b1JCnfqkBRmC/Vyo5J2
	Uldg=
X-Gm-Gg: ASbGncuFI+GWZfeq7PZ7pttF+Mp/Nrq3+yifyBtqlmTJno4Hl6J4jUI7RvT2yHjzP+p
	0NLc9TcPjZaHkawpXk2yc6C9yTzXrKk/44ON7iFYTnYuduGHXMhtov5LYfrs1NRm0BQzXFTsony
	jmmcKjZQeBYxxhDOJSgP/qfF0o4MDkQGl/XZxdQm/xjJzw3MST2gCXYfkfsqFO3smyaAuKnqkuU
	mU38o4z+C1SgdZVACbpqBvl7ITiN+wkL6Fq4AAehkvmO/VWN/vBORLeLImPTG2BNE6O3Tr7Ll2r
	XL+bmX4GTsZfkfEBFUtZ012Mf5TtJ10nNOgzJPsufh6rQFrhiWpy5JwWyj4w
X-Google-Smtp-Source: AGHT+IH4LDzdUoKTGOGgBFHqmwTZj1CstR0ayqx7aTgOFcUj9dhcl28Y1Pq7/cB2aRE6iWaW2lq9kw==
X-Received: by 2002:a17:906:da82:b0:abb:ebfe:d5e9 with SMTP id a640c23a62f3a-abf275cbf12mr350485366b.9.1740838406199;
        Sat, 01 Mar 2025 06:13:26 -0800 (PST)
Received: from [127.0.1.1] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c0b9cbfsm485532366b.14.2025.03.01.06.13.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Mar 2025 06:13:24 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250301-exynos7870-pmu-clocks-v5-1-715b646d5206@disroot.org>
References: <20250301-exynos7870-pmu-clocks-v5-0-715b646d5206@disroot.org>
 <20250301-exynos7870-pmu-clocks-v5-1-715b646d5206@disroot.org>
Subject: Re: (subset) [PATCH v5 1/2] dt-bindings: clock: add clock
 definitions and documentation for exynos7870 CMU
Message-Id: <174083840306.17657.2523115679702297451.b4-ty@linaro.org>
Date: Sat, 01 Mar 2025 15:13:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 01 Mar 2025 09:27:12 +0530, Kaustabh Chakraborty wrote:
> Add unique identifiers for exynos7870 clocks for every bank. It adds all
> clocks of CMU_MIF, CMU_DISPAUD, CMU_G3D, CMU_ISP, CMU_MFCMSCL, and
> CMU_PERI. Document the devicetree bindings as well.
> 
> 

Applied, thanks!

[1/2] dt-bindings: clock: add clock definitions and documentation for exynos7870 CMU
      https://git.kernel.org/krzk/linux/c/35b2b3328c2e02b544f49d010170fe981f20ff11

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


