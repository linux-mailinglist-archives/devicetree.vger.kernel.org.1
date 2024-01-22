Return-Path: <devicetree+bounces-33701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D688361DC
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:35:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B7218B25E83
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:28:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFA9740BEF;
	Mon, 22 Jan 2024 11:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="je4PIOAV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346E4405D6
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 11:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705922113; cv=none; b=LkMISGVFo9+ufW4gEzPCC5tbUC0wSkwDGpExO3PXfMRqN7XZNH8JYCP4nbCxhrWQaItP/Th3x0Ay2l2ZMhIGhrcjCx6rwZnxM5F3c/AeOJw8sNsdgUVj3fMpJNzBfyNtfsBQ5sum/uwdbuSY8M1hUtfjKnmqT5lXb4kQYcg+VR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705922113; c=relaxed/simple;
	bh=HYAM8EgzXVA1Kud19vhLN3giHEsJJesyvO7gFmlQ8VM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=X89FcMNQECTa55YyTn2fiKSWERHP70E8tjr+BdO240hCjZOOQXTeNnKeVnuatZb3B3GC06Ojj7gKwQxL1vEvWE0sceOb3iPidq65++hBF7HhlLvaaeL53HQgN6bhEEiKT0TtRgvw2FBcvCrLJxlTnEjMA7EKbT+xSLjdcx8C7zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=je4PIOAV; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-55a86795a3bso2290501a12.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 03:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705922110; x=1706526910; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qxQNSlyJnY/ttn6I0V/WoyWR+UBmUHmiAiYZ94P4UV0=;
        b=je4PIOAV/f3OVlPXTYI1KXJ+0mm+RgtccuzGiYJjzerwgLEwhANraj9BJOIESPfwfN
         cLCAU3zd8UBFHJp4ye1g9/u4w+y0VZNCDOHt2RD0Nh3jKGZOn4ZagB3pO13ZvPON/uRJ
         hpMnaTb3zR/LuIIodlmkfCHW/OepcKTzmcjgNSPpzWmHL/3nXReBlsrcy/80XBAuJybc
         XDgT6h6+/EB+ZKsilxBA4xyfYAlKYnuH76L46JpSr1XAxaSk0Kbl1LkhCOQBIsUBfRpK
         +NJNNf/EhVhXOdAiMxc23LxadAgbKTUsTlxoBfuurlSHe+bGyOe41bIg2n6C3Zd4EoGc
         edYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705922110; x=1706526910;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qxQNSlyJnY/ttn6I0V/WoyWR+UBmUHmiAiYZ94P4UV0=;
        b=jcksGQy2wBu4QBzjIocqvfnThnA/ntEZDmFhVZyTLE/ci3wO4BC91/bKSb8WKL5Bkm
         zUEC72FmWWSTgvGQs1Avk0g87IS6FnJeI4XPimq2gdFErYN8W8jBkR43Mmrej7NT8oOt
         eUHUQpx1ASkLjSyVy/7TKwxPfnw/zq+1uDtCL0V94eJzrut1978Dw2C3zS5gntwAqS69
         WkCNO0Syslmsu8bB9srGCnajlr+ivuBGG5homE5r/yvAykfttT1Xwiz69IyIp4cRSfej
         RqNQiIUQEfMhZaRnErjY8JIHN+IVaGPdeDs6Ae+np+wHtNDd4Qz94+4kVwsIgZBvL/eK
         sXkg==
X-Gm-Message-State: AOJu0YySWMH39AK1GqDQ/h+P61pIS88Oc0+w1zQdam/2osq1MZ2mK3Js
	nctXc+0kDZF9DAnf/Q3JJ320bF+6RayCNSXp+x1YFjMhnsVu7+99habrNTQgDx4=
X-Google-Smtp-Source: AGHT+IHZxllW6LxJBdq7T2db1G0MkzhkX1+U6xWgYkAlU0uevDOlsZ6L0jBHFwWxQt9NFA8ejggNNA==
X-Received: by 2002:a05:6402:f27:b0:559:b070:a5be with SMTP id i39-20020a0564020f2700b00559b070a5bemr1675074eda.0.1705922110546;
        Mon, 22 Jan 2024 03:15:10 -0800 (PST)
Received: from [127.0.1.1] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id h27-20020a056402095b00b0055c643f4f8asm179422edz.32.2024.01.22.03.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 03:15:10 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: LKML <linux-kernel@vger.kernel.org>, 
 Mark Hasemeyer <markhas@chromium.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Tzung-Bi Shih <tzungbi@kernel.org>, Raul Rangel <rrangel@chromium.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Andy Shevchenko <andriy.shevchenko@intel.com>, 
 Rob Herring <robh@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
In-Reply-To: <20231220165423.v2.7.Idc995ce08a52ba4c5fde0685118ddf2873fc8acd@changeid>
References: <20231220235459.2965548-1-markhas@chromium.org>
 <20231220165423.v2.7.Idc995ce08a52ba4c5fde0685118ddf2873fc8acd@changeid>
Subject: Re: (subset) [PATCH v2 07/22] ARM: dts: samsung: exynos5800:
 Enable cros-ec-spi as wake source
Message-Id: <170592210890.45273.14448162620821099224.b4-ty@linaro.org>
Date: Mon, 22 Jan 2024 12:15:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Wed, 20 Dec 2023 16:54:21 -0700, Mark Hasemeyer wrote:
> The cros_ec driver currently assumes that cros-ec-spi compatible device
> nodes are a wakeup-source even though the wakeup-source property is not
> defined.
> 
> Add the wakeup-source property to all cros-ec-spi compatible device
> nodes to match expected behavior.
> 
> [...]

Applied, thanks!

[07/22] ARM: dts: samsung: exynos5800: Enable cros-ec-spi as wake source
        https://git.kernel.org/krzk/linux/c/df294f4ec618c9f0d7e9a2fde1c541b731972389

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


