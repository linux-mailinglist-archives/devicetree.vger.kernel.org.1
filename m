Return-Path: <devicetree+bounces-238946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFFDC60236
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 10:11:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B43E34E4077
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 09:11:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDDBC26CE32;
	Sat, 15 Nov 2025 09:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y+lsSIQW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE1919DF66
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 09:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763197867; cv=none; b=HxplVHP9Fr2DKAsItxMSwZR/o7RBrDKSttnD0nYjRDLWpQXRlnwHEamjI9RoSuC3yr/QL9Vq/t2sYuPBz9xGWbmYC/BBalF0DvYTa+fq0BZhvWh+gwDWM2mkbTrglL3ocbg8tz8iDsiROg2i/4pW1Dzub9+r3+rZaAnXyC1aqs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763197867; c=relaxed/simple;
	bh=dlBNths3bjgJwIY82AdXxJk7nz28NGpPfCGP2ldQ+VM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QojtH7otc5Quh1mDEvuxauAlvwpmC+ZQvFlWB8HRy+WAXRvEHobShyXVnnFF3Oc/cF3OTlTHsYCZeEHLJcuSDy3z7qI9wx+cMXEnFKX9L8ZRK8tuD25wuMxhvMr55pVMLv0nG9kZxSGNyLxdzEKo3T2bGU3KagdYp3peqLQziF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y+lsSIQW; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-34372216275so3155467a91.2
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 01:11:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763197866; x=1763802666; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Xq3fPnKASXQtpwph9wF/EfbRc92D/a+itaxLGojV4Lk=;
        b=Y+lsSIQWDzq5XlgkkHNYVdyUuDP91J2mTrc0+vCdVkzBwMD7g93NYl7tNzDeb7sdWp
         O94182UO9hA3u+wFfS3adetQo7KcWd5uIpzhE36nABBISP+j69Er6PMw1PJuXKde+Lrt
         JvcM6UjBHaY4iQwT2pYcpprzBswu38a2lAkUVubS8yMq+Onu2iHIK/bpB7KLFQ7U4YvQ
         7tmwJ6ay0WID1V7yNu9cFosYZfyIuTw71Kog0oGe9wdVkBgVw21faprYYjA2gQKFxlye
         d6MKk/dNOhD2Xw07D+ptcPIt6DP6gdHrhXBaE9+gzHVmaN/LI3I0pZOzjQnaw5qqUWIg
         FEWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763197866; x=1763802666;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xq3fPnKASXQtpwph9wF/EfbRc92D/a+itaxLGojV4Lk=;
        b=jkz45Rbz8+aaFF54HLh98k2V5rJicuZxGKb9f2gM4eCpnAWnd2YVrqKoT5cdBHeV89
         rCTov0fhkxYom4RNj4ESmQUl2LmuEcWE+9iMgc67xJRPkLmkOqRWaFQ8YqtGeb+j6iGn
         CYjqfPPzQP7NbPi9gC2crGKZVe0mSjDovkMzjsgKtmSa/2gdhuv2dFSjius3f0qCnYgO
         dytLvm98OkcIE9//dl1ywIDgwG5gC1MlqRDhe/mOe2q/7xZ08eVJWwt29j9Dzh07RC9h
         vgNKUYr0Yl+wn0yNnWRA26WHoWUFQ0kWa3EXb/arCFBIYl0TWOvMx2iM8Qba1+zt1HF5
         wEhg==
X-Forwarded-Encrypted: i=1; AJvYcCWP5No7zrK3aVoPlj62jm8quvCtJtLrLzeKCjGNmgPtO4l7nmTTr9B70yG4XXt1QsyHWa69kkNm3vj6@vger.kernel.org
X-Gm-Message-State: AOJu0YzLGOW6Kwva4z6C4RU3qFJT8o/teRSu45jueTy3qbSiVDLBnww9
	kmh97sfhP2kz+ErT8LwtQp3MdlrSrEt4WvHlrmuL8uCs8pFfRO2NfX9p
X-Gm-Gg: ASbGncvemhk0xSX0MPs8X7OFBIUo3eWwBWCIJUL7B+yUjY2FaJsXqFEtCZHaDmUQjip
	zZFu72M0s6jHOWeaPQmUr+y8OUlnh5HAqBTrOnvK1CbJ+oqqzIlFde3W88dRh4OLEpYr5E4T8Xx
	pv1JZcILzDoLrbGvhhSz01+z5HHzFtBUlNRXkFPWSiv68xikvnuKkvKVf4ORJU3mky3BgFyMjm2
	uVopTeZ3S8YMnBr0dB5mqrOWw2kAPTZ7vP4SRHKmWn7YVA0Xqoy5divlHe32AdR5itvgxcUh29H
	kc1uIOGPsaNOslDL4dPWyG+yx+Q3/sGtfGnD0fsLsj2NXAWgOyOLxQm8qXIosmOicNEP+FHAChd
	KG8MdYiNjfbr56hYbJhx32voh/batj2CRtumvF55pt+s6qdTQhlFHTrPdiGzDf+ns/LF5Wz0o/x
	qceLmzvq3Z
X-Google-Smtp-Source: AGHT+IH9/crdAL/odtABr+5A97CdQPw4u3wDAvn6Sjfb7QYJpDPxj2xNfdzG8PUpaUTw8aHQvHD0Zg==
X-Received: by 2002:a05:7022:69a5:b0:11a:26dc:eb61 with SMTP id a92af1059eb24-11b40e7b696mr2640354c88.7.1763197865521;
        Sat, 15 Nov 2025 01:11:05 -0800 (PST)
Received: from geday ([2804:7f2:800b:a07a::dead:c001])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a49d695821sm22799663eec.0.2025.11.15.01.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 01:11:04 -0800 (PST)
Date: Sat, 15 Nov 2025 06:10:58 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Geraldo Nascimento <geraldogabriel@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>
Subject: [PATCH 3/3] arm64: dts: rockchip: drop max-link-speed = <2> in
 helios64 PCIe
Message-ID: <53332edec449b84d8a962f2b5995667766359772.1763197368.git.geraldogabriel@gmail.com>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1763197368.git.geraldogabriel@gmail.com>

Shawn Lin from Rockchip strongly discourages attempts to use their
RK3399 PCIe core at 5.0 GT/s speed, citing concerns about catastrophic
failures that may happen. Even if the odds are low, drop from last user
of this property for the RK3399 platform, helios64.

Fixes: 755fff528b1b ("arm64: dts: rockchip: add variables for pcie completion to helios64")
Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index e7d4a2f9a95e..78a7775c3b22 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -424,7 +424,6 @@ &pcie_phy {
 
 &pcie0 {
 	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
-	max-link-speed = <2>;
 	num-lanes = <2>;
 	pinctrl-names = "default";
 	status = "okay";
-- 
2.49.0


