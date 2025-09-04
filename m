Return-Path: <devicetree+bounces-212823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E74F5B43D2C
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 15:28:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 74FA018882FF
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:28:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6805C302CC2;
	Thu,  4 Sep 2025 13:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wqmGvf53"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5E13002DA
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 13:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756992513; cv=none; b=XRL1J6aXCbty1cS+2O8KaPffAB4PVQzZxy/VLge1KZvYnUTFNPv7SoJKSiCHUtiqgemUK0mQPbLNo5DMu2uL7OiouLLTkwUN4OUulnfwNHfqH4X3bpkj4HQMQo6RgkkvkINYobwLPUtGJfy/xYbSvJzkF7Tlin14axFS4zhWxQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756992513; c=relaxed/simple;
	bh=ScXnF6zPN2urQTV2s9IF2aE1owi1if90/n87/FgC/yI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=aKQ5NqmXRGhnP5y4rcgDIcQQMvzg5nZlXwQtfQjdQHt+CDxkuoKn7N+r7NXiU8dB84DLwrTFUp0b+CugCyXvCBfr7LzLlC9F6WOW5n3e2iRODlBBZ8X/0hl9E/KyuWQLAtTxkXnJtp6Tfry41aM8oMQghi7Knrt992AFk09btwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wqmGvf53; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45b7722ea37so5227965e9.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 06:28:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756992510; x=1757597310; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wg9RQ81pLZ+ciihaHbHh+VHe51/1jd/flpRJCWP5vTY=;
        b=wqmGvf53RXEbz5cHRxj8MEPL2DvWA+VFmMQjACA+J1kI9BBnJXNB6fK1ztSP7jL83k
         LIKMWSGr4+RfkAy8VMvZg4bFEnlREE4TkMCRNQCsOXseW0MuJ03KZbvXCzFxIFxYutZ2
         gafSmON3AbjveNOla3UzstA/VJJK+pbD0PGWFsBIiWJrOWwxmcqih8zRi+VPvy1sGCXS
         3i2+M1qx0VU9PefM8oocRSHXFv8/fw7+OR04FZX/x/VDQj9S5Q2Ip0voJ1EQA6/NqwFE
         td8E9wnmMrhLXAja0i8jsmi+FGT1gXobc0iUxYM6c6Np38SQnNl0yY10m5pED7HotDKj
         6JRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756992510; x=1757597310;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wg9RQ81pLZ+ciihaHbHh+VHe51/1jd/flpRJCWP5vTY=;
        b=taVmllShZ9CZvzAlInu99gXkh7JnoJ+iokIX6egkVtXfGckVkFY5XSInXMlUvk8BN0
         tQ0dTAW/C76wDOhe9zFvTFVG1vDUulpHxP/4PyMCBsY1oDB+rmZumjr4KyQaJWes89gr
         Ay+2V7SuFv3Iq6b8RjgJbUihwqygFENdkQff4NjkE5nodp1Cbn7jE+QmW1eoRPVn9Vus
         P6SDxE5l5JC+8THtWSFxokbBX5e3+Nymu4AuUcLo1lz6n/0TwtBmtwoiac84JU81RV3x
         Xxl4B6SOzLfjLfSkrpuk+I3WO70B+9Eklp2hTN4tboIdKYf777+FWrLrtg90Kggubq2N
         vsLA==
X-Forwarded-Encrypted: i=1; AJvYcCVgWD+hrKhqbLnLe8EOuxVs1onDVzTTCpHsuoYOQAj2RH5TkB8puGnDJb/lSwhkktA7et+IZui8wVnN@vger.kernel.org
X-Gm-Message-State: AOJu0YxA9LkTyxmJHC49RIkMg/I3a+44+9bqzaBK8j0kYoxPMfj46I8J
	/hVBUJNzPa/WzNFqE2B4rWSi0S8w+s678s5axmzVhoMJELh+VqckPDJ7aAPzK17vEnE=
X-Gm-Gg: ASbGnctfiS14qpl0FUAE7cqUlVzfyRKcybgROWWx1QOYmscDpZVvnBClgxOIwO7rs6o
	3LOANLLh1pwsihsdSgka/nJsNUgQtpVbzDMObn14qY1gxdYCPWLoKUEEe7Rxkd22GlRPj2uKMgn
	T2k12KdDvGv2HyRt//s8khjSmYyAbQL3owkrSwwy54biQwl2CmbJVKqlp/kl2J/v9PnHaX5lNvX
	5jMm/6H75MX4N46a2c5c6ELppXGLuFc4ZyjHUOM84POy+B87VyagrqGUJ97V4z+5HRvTZu7SxCQ
	DxVTOUjG0xh6/I7OQhDNwQIXsO7aNqqEOVCW01oXIRqlMS1C7XLLFMDoPacm76oOBom2AT1d4ya
	rETO1OsdAuvJnJrZc1vP+SZIn7pf2JHuz9xVMVU78rxE=
X-Google-Smtp-Source: AGHT+IEqR0+n4/kIxFH+iZ1e8ctE7JnfjyeZG2z9hWnY3yB50qjsaKmYnmnDkhp/9C/R0KCDPHIUFw==
X-Received: by 2002:a05:600c:331b:b0:45c:b501:795c with SMTP id 5b1f17b1804b1-45cb50179cemr38578945e9.10.1756992509525;
        Thu, 04 Sep 2025 06:28:29 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7e8879cesm286165305e9.12.2025.09.04.06.28.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 06:28:29 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Yiting Deng <yiting.deng@amlogic.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: linux-amlogic@lists.infradead.org, linux-rtc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20250717-rtc-c3-node-v1-0-4f9ae059b8e6@amlogic.com>
References: <20250717-rtc-c3-node-v1-0-4f9ae059b8e6@amlogic.com>
Subject: Re: (subset) [PATCH 0/2] rtc: add amlogic C3 RTC node
Message-Id: <175699250880.3374853.13696019102809895067.b4-ty@linaro.org>
Date: Thu, 04 Sep 2025 15:28:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Thu, 17 Jul 2025 17:38:36 +0800, Xianwei Zhao wrote:
> Add C3 rtc compatible string and device node.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.18/arm64-dt)

[2/2] arm64: dts: amlogic: C3: Add RTC controller node
      https://git.kernel.org/amlogic/c/59b4c260582a74e641c973d016725e5dca32f300

These changes has been applied on the intermediate git tree [1].

The v6.18/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil


