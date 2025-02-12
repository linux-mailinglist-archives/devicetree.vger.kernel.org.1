Return-Path: <devicetree+bounces-146040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B70CA33109
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 21:50:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 83FE1188B78F
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 20:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FC15202F7C;
	Wed, 12 Feb 2025 20:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sUPxZGmH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1B8202C33
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 20:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739393407; cv=none; b=LoyEBG49IDYerBD4WGU+neaOyNYHz6Q0jILMSwUwjJXzVW6BG5ad0D+/pTDrcZvY84ww9RIQaSKtCheysqzSqp+YeFisbU7nZQraAn9fXhEzFdiEgUCyxczpni1bbbwXxwr8/0Y+DczCad+uzhxVINWTfqYXm5GgdhbUAJcBRcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739393407; c=relaxed/simple;
	bh=7QUo8lq0zOXvMRM2Kkw4Zo86apOpRGfWnw798xZKkyE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=BZsRaUV1hfdR3ndMLM6PIpdwwcfzypzNc3949q/fjjWYdeMp4jRaT2v9MHOJElJMelfMne0Bz8KX8m90KiQuEzeWH2cIQe94VRpCwCy2k/6AKjeKupCYOUC55B3f+lBuV1JiPqUy+fuO63fwkP0J1MyxiFf8o5fsgroWQ36Or9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sUPxZGmH; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4393f97e9ebso218365e9.0
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 12:50:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739393402; x=1739998202; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=05bFiLRqtjieBdQP28ZStS6jjJuxslhK7B+dgz1ufHY=;
        b=sUPxZGmH6+T8TfWhYjbrhXBcSBRJa4d7zR1ZCLnpgdGzzyHzSr8de3fKfCIU+FWFhw
         ptGecWGAIhHCS1THIHD/0d5YWTHTdNZqpqyM44/y7usTRj+3ehhpNJVYcqcpog6gVag5
         Bz0l9FW4lT4dq3Shg5Vb9wx8M69nKHEyBfz11wGVQLWKWPBsNPTfKlsZELBXQppjeakJ
         W6GFcd1CCazI6VTq0kDrAu/BW4NMFal2bp0jR2e/sIIbRiypuuJfJj1wpfXCkaLeaR/J
         Tlms6obbVYht8vo+dlVOBCSng3/6v6GZ0baCghapHjNdsePqLkHdFk1GRsen/3Ej9977
         AkcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739393402; x=1739998202;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=05bFiLRqtjieBdQP28ZStS6jjJuxslhK7B+dgz1ufHY=;
        b=ZGebagolwPrl3TjApmS+G954sjS/uIVXYT0MNenvYBSq0EWEBCz1+yffCHh31iwY4g
         fLachXa4sVuZW8PpWrvhZOgqOFvhxLUpsHVJnacCzj6pkepzLeoiylXawr/6K6fs1SND
         AVY7w+vblJ5LWXjxBIH1TRcNDsF6FJrAEuKvDeCDRbYyU98OewD/70tpCsMWnMDLdDkw
         8rwwAardMCS4cU694kZlTnVNcW0cXhKg5kOUbqLv/5SYG99x2ts2mV8D0hZ7bOBXFCto
         ViwcC9serxlMj6KBHvl+amZsfd7VMT3R32IeyF/5Xbd1xqZ7pHPxO2YSK37SX34J7/bL
         x8RQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUXoY3ajbAYw7ifJIuATk10j+gJWYfslW+E5+VjoTB3UNTHpcd8hvHOCTBGjvSAgIC510QSLSgYDKf@vger.kernel.org
X-Gm-Message-State: AOJu0YxRGmRoJOQCA8uEH8eKycmKm9/HxGc7JEL0XhgT3V3+QbhLtB8U
	O6d9c/F+PRXm/xkxUkwOEsgH8fDdugOKaHm/N86Pb6Woy7RJs6E0N46liARzyaY=
X-Gm-Gg: ASbGnctCp27ZH+N+ZmKt6avVWI5V0pwsqLsZe6qdvPSSarcgjr+BH4JUUTeAf7LJJSk
	j/CqYHndjS+9x3nXXLv4WA3JX3Sg0oANQa3DNSDPuvREMnQPGuOeG6FC18AroMilPTdVMHuI0Ga
	bG6cS6lA431hmJepGHhGEMhcEW6044tasdzsXtyAaH690OFr822hSJMm/N0vUgwul8tm3evuN+Z
	58c4op4PXp40WYZzJDtHIqXmPfrFZTcqM5DkqPXsabk4LBNAA77JT2avrO9mVkdim1NzDF4NTKB
	vvzcDWw2lApU79GJ+T7Vfi8H/o87Wts=
X-Google-Smtp-Source: AGHT+IEBtbJJPvZYtnqI1EcUYSzvnE3bHzpiZAK+Kj6ubquz7Vmwq6Ph8AWnkEWgLrniziBTqXUdZw==
X-Received: by 2002:a05:600c:5103:b0:439:560f:e7cc with SMTP id 5b1f17b1804b1-439581bfdd8mr18910825e9.6.1739393402471;
        Wed, 12 Feb 2025 12:50:02 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a056151sm30461495e9.16.2025.02.12.12.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 12:50:01 -0800 (PST)
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
In-Reply-To: <20240717-anvil-ashy-544e80a1317c@spud>
References: <20240717-anvil-ashy-544e80a1317c@spud>
Subject: Re: (subset) [PATCH v1 0/4] Removal of non-existent DAC nodes
Message-Id: <173939339997.59416.11108011581545463665.b4-ty@linaro.org>
Date: Wed, 12 Feb 2025 21:49:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Wed, 17 Jul 2024 10:37:52 +0100, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Recently I've been getting triggered by abuse of the Rohm dh2228fv
> compatible to get the spidev driver probing in Linux on development
> kits by employees of various silicon vendors (like NXP or my own
> employer). I had a look around the kernel and all users other than the
> original Clearfontz board added by Maxime appear to be similar abuse.
> Drop the non-existent nodes from all of these devices :)
> 
> [...]

Applied, thanks!

[3/4] loongarch: dts: remove non-existent DAC from 2k1000-ref
      https://git.kernel.org/krzk/linux-dt/c/854a080f0b73ff966a813ec2dc53891831daa28d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


