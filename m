Return-Path: <devicetree+bounces-134545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3496D9FDE71
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 11:10:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 508CA7A0FAA
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 10:10:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C66612DD8A;
	Sun, 29 Dec 2024 10:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pNJT9whs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E0C13790B
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 10:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735467005; cv=none; b=PCn6GZIt/51xvTOq94Z5HadUjFN1stKK0ILLYHXSaoLik/ep0ER1/CX7NW+5/VriEV/iHLr0ZdJpuS5zs2tnrBweCdWBGo/YXnIQ604AuAIOFOYs+reQBykeCxEv/+JLiyEpSmGSE5AGBn9s12Eb1jrODwGHeWssohxLlq8dr54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735467005; c=relaxed/simple;
	bh=MXdX52JXPaPeRjNreD2b8PAGxtJmsLoO66i8UJWgPE4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=MMddL75+Ywz179sFTV/v6j5QXE+6R+Q2qYnZZrhks8Bt1809BQRNwKx8F5d5dswKTX5ula04CDomIMn0k8xtwzNoh3LgNv1k/IJvc8yl8qto9bLVIPXqQgkHrTrYa1ry1bNwY0zWaG4lINtIwNVEfIwnxlfkP9vCmNDvD87JvI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pNJT9whs; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-436203f1203so12032645e9.2
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 02:10:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735467001; x=1736071801; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=khsQQuQ61UqfLoQjYcyUre/fUsjYTl1Aj9lrnLjhkeI=;
        b=pNJT9whsxXeMoV+lAeV3Na1l7QvnXDYxSBkyqp2qU822rR7uQ4NSwodw1ZWmvaHu/o
         zFhB/GzAmvihiXq1heZkY+UJKo2YYSyQ419vGiBUFjhx7EO1M5Hh+RW40ajb9wm713C2
         wQzP+JnBlusgRt+uvAHuVWfRJkDGlQjFZF4ZY/0LamttFsP4CBS2X2qSBW6A7XXBvPzW
         5FIWp+K2qs4yM5FJQw49fHZlsKZyKdY9/daWGRwp+UxIkMjs6diQVeJ3VdahfcPTz/T2
         ojJwExMBIWq9fvS5mTLBZDdEGBlXNPdC2Kp+mNGaSAVW4xaU6gh9fti1b/JgjA3n56a3
         5REA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735467001; x=1736071801;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=khsQQuQ61UqfLoQjYcyUre/fUsjYTl1Aj9lrnLjhkeI=;
        b=iDnCxaNo8fA+cwjGvwZxlvc7hpBWEWYEqi/KH6FXHUFzTRhPhWpdtworIM4P4TXxFu
         IztWQ7TQGkpmdokrOhOK+b3XTVIOZnlRmQ5OFKtSdKTpOpy/9gJ4RmTg7gZLzYFpHgDO
         8wTfqE+nIKl0KNv7AZmEFqwmmvy9LZHQ1Y9BMg8VDxjWAprVcH8El858GNYMRdkNc9Er
         QBQeod1pdMECUs+l+f4QPIz8TxBWGk+VOIC7vcySLQSmYbeGKQjvDs7c1/neMPHtqG4k
         R59UM7P/j8sMgiZdsLQLU/ikhX99C09TrZ28f97mg8AYeW1WMn0qO+Kqf18yBFDACuCd
         kJxw==
X-Forwarded-Encrypted: i=1; AJvYcCXQFnCCqlYPPtcFHz+CjmiSv9rz8Gvm07OY4Zlpfp56Q2SFgx7uC7UIbNhA+T3OrjxhPUw1lN188K1S@vger.kernel.org
X-Gm-Message-State: AOJu0YzVVKBUC4JRXN0/Hg+Mh2UJAqgYjY8LylPrd/6ArVRwF9+/9bQx
	+9SO9a1JVxZKH7QGB9lT2FuquH47UED9XD0cn0ZDzyQA75RqNtlJAWIVZDgjnZQ=
X-Gm-Gg: ASbGnct4QBtnhJiDh6kCVUGnDgQKqJlhOa1wP8VychMJFRPAlZs//La9giEqZo8Du8c
	IotylDfjqBXUgxJ61BEdqj9irzP8pRAMKz36tSpOgHTVMA+Dz9mnhrYCr9dOtwjnCEqNOljMXVM
	QlUexe9GeeZ2ZHUiB28hqduTHY5UdUZmE8cPCZ2kb3jXUdlgo2oym2LBWIL07ks1Xh41OKvFw7f
	1UcZUY/7H7yH0OCtXxT2dZ1lIb9inift+Bn5Ix+U8LCxjPPSSuaJfaMztzs8bnH4yYjceJ8
X-Google-Smtp-Source: AGHT+IHe3HeMgdBYJg120JuyBz3xv5V39AfkqdmPSMsMsnaeeM2fsQk5UW2Kgj9EB8ub9FEeeqqGaw==
X-Received: by 2002:a05:600c:4ec7:b0:436:6460:e688 with SMTP id 5b1f17b1804b1-43668bab39amr110519775e9.9.1735467001515;
        Sun, 29 Dec 2024 02:10:01 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436611ea423sm325608385e9.2.2024.12.29.02.09.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 02:10:00 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: linux-kernel@vger.kernel.org, Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, 
 Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Huacai Chen <chenhuacai@kernel.org>, 
 WANG Xuerui <kernel@xen0n.name>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 imx@lists.linux.dev, loongarch@lists.linux.dev
In-Reply-To: <20240717-partake-antivirus-3347e415fb7d@spud>
References: <20240717-anvil-ashy-544e80a1317c@spud>
 <20240717-partake-antivirus-3347e415fb7d@spud>
Subject: Re: (subset) [PATCH v1 4/4] ARM: dts: socfpga: remove non-existent
 DAC from CycloneV devkit
Message-Id: <173546699896.10551.718059378827423411.b4-ty@linaro.org>
Date: Sun, 29 Dec 2024 11:09:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Wed, 17 Jul 2024 10:37:56 +0100, Conor Dooley wrote:
> There is no Rohm DAC on the CycloneV devkit according to the online
> documentation for it that I could find, and it definitely does not have
> a dh2228fv as this device does not actually exist! Remove the DAC node
> from the devicetree as it is not acceptable to pretend to have a device
> on a board in order to bind the spidev driver in Linux.
> 
> 
> [...]

Applied, thanks!

[4/4] ARM: dts: socfpga: remove non-existent DAC from CycloneV devkit
      https://git.kernel.org/krzk/linux-dt/c/ba9dfa76ebb030df6b605e16239a8052c3c02171

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


