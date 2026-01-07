Return-Path: <devicetree+bounces-252377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 13444CFE2E5
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 15:10:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D2AD93007EC4
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 14:02:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EE653126C6;
	Wed,  7 Jan 2026 14:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vOxnCsqh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5CD830B520
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 14:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767794570; cv=none; b=enhf6FdrWX8R6dAESYT9z6/NAM5eARogcjYW3IHOJ6muO/KfBnYWx1QMZb95spHwZEOxZj2aFLUTDEbUF3MNQRpCEpveGBm3ndK5EJ4wBnrlEQmauzoXE8sAuOb+uRjs8sIr5UGYj9IaMcWjgTdaHUhePzp+GpTmNgz2j14Vhnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767794570; c=relaxed/simple;
	bh=1NF9Qj92UtRr3GThNi2K98Q6rx3/Rz7NtcX2nkIH//0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=tGktcOxEdXs/FwjmF5j3/tVtgov2ps2zQoQ50xjKZIWjmC9ppPPsXQRT0hVamdB3gjbCtys4DoDLSuJvhA1jHz+V4c0ohlmNYoj0Z1jxLpSDzBBuyUWC7kkzXlHrGNPi0//pjcWGPW+w/5mT5nIa6ZF4YXCwfJLQ8zn+vPXS21s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vOxnCsqh; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-47775fb6cb4so12156065e9.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 06:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767794567; x=1768399367; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6BDG7xbVRj31iwvp2QZLc9MANiXnQroW5ucqDh8y6XA=;
        b=vOxnCsqhzTxvMJfG8SNGKEwKv1Fk3NDQPadzwdBBY+NrNvzR+Qf+9Ber3+UPJrDh9j
         hyoMz0ByQaF88c7chXfOyEjFdS4zF8VrmtGQFNS6GW+A6Bpy6J9MnLKJDG/EzITOfMNN
         FAlPRG8Uh1st7MJaiV7ZWy0KEtUmGtudJBW7p0lAG12G9CnvkE+vkXS4EbNFbV1SwXwH
         np441XD/UXvmiAeA2gBfSYGl1UfC+osSIrKJpyEDI5nY4/6bLoaqcec+HZGh/6IHbjJJ
         rrOntQyGLJptc8vobqiVQcCZGMcXxE7PxNLyfFbzm1WJ+DZTSxpLQTmd1/anUDnOSjQK
         Aigg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767794567; x=1768399367;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6BDG7xbVRj31iwvp2QZLc9MANiXnQroW5ucqDh8y6XA=;
        b=GukC8cez0cLvJWbPjV+fC2me/ZUCXAvJvPJHfJwHvAGbb6ungWEUC4PWkCRiVpNlWa
         UR06tCFCMY5QSB1w3KAONUKIvO9SjlP80plNfbIjnQC5zMsr4cZPPpeNVl3ClOoNBF8q
         LYKx4IqZORyvlQj0w7O9IFm1bZpLz66j+uZfYqmRGTJilxwZlIfDvPwQcXUMTd3/Dj/S
         N463pO/eBL4Rs6fjwgvSuwOBBN5xhFqEQFRzC598mS7w0iGz0batZ7vtjZ+0foRoAux1
         gl350USxUH2BJPUt1drIFBY2Jqew+BgUtbeV48xPa3gDImj5gPc8NkeSrktEjqZ6I837
         CCQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQPG0XyFzfV/sILPvxBztmkD6KV5QYXMtNUuIOCHjH7pVcFJ1YhLxB2ktV8VhnLynEVy+grZ2cLj62@vger.kernel.org
X-Gm-Message-State: AOJu0YykzyNJt7ag4bNCAYGYPeLiNOt6dK4ZYaFi9Sv1AYwSuNDtmbCF
	Qt6jlgDGFjg4hUqGhsADobzaqPv5j2MXnzam6k3vHXBdR4iTji/uTxfMBtEm+bVGwmU=
X-Gm-Gg: AY/fxX4kK8ffJuyaNHVa2KDGS9glDUlzfdkoJf1KN7S6Mu696xB5axny2W/k2YzFLQX
	sCHHFwln4mZd0P7UIXetlEYb5dmmjh/+Aq8oIDSWLUi2MKiw13NHb8njUE3Vm09X8d0zLQss5DX
	buhqebgPK2rKgJ0x0B0dSzyiORFYcqMZmWMkUbIvDKqc+r+gaZi/ikhLz3JoUCI4FK2pc+2HGy6
	pTAkklRS/1aHW5YUfeAoMDA5H5ftHIkWyopa+mNRNbdBnuN9w8d+zkymnfauwn0TVeRL8S4GzuU
	tHkn50ZYV+iBBlhT0Qz77fV8+JGgpdEshvphss2g88VNwxJWif0t7o4fkIMuUOByFjqnMuRV1bs
	HjyYJBmk5GRyjF7nXxUH47dYE1pXylEVv9rRzxDwheIQwTnxVIgN+ARNuGvl8M7koQNqArRtWYO
	3ETxncfdyRwsvaxv31e9UROqJ/cOXHX8LCHa+KtRw0rQ==
X-Google-Smtp-Source: AGHT+IF8g7JPh9nCMCzQBNOrHSzDkobpLseaf1/RjnitIhd9ll3VtbdpfKbAXuC/dOThCTR3xUtEVw==
X-Received: by 2002:a05:600c:3e8f:b0:477:5897:a0c4 with SMTP id 5b1f17b1804b1-47d84b0b315mr30859255e9.4.1767794566851;
        Wed, 07 Jan 2026 06:02:46 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5df939sm10401879f8f.21.2026.01.07.06.02.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 06:02:45 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: linux-amlogic@lists.infradead.org, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20251108211503.1578711-1-martin.blumenstingl@googlemail.com>
References: <20251108211503.1578711-1-martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v1] ARM: dts: meson: drop iio-hwmon in favour of
 generic-adc-thermal
Message-Id: <176779456526.1559433.8154425618822276172.b4-ty@linaro.org>
Date: Wed, 07 Jan 2026 15:02:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

Hi,

On Sat, 08 Nov 2025 22:15:03 +0100, Martin Blumenstingl wrote:
> Commit 85b21fdec906e ("thermal/drivers/generic-adc: Register thermal
> zones as hwmon sensors") made "generic-adc-thermal" also register hwmon
> attributes. That means we now have the temperature sensor shown twice:
> - once from iio-hwmon
> - and another time from generic-adc-thermal
> 
> We need the latter for SoC temperature control, so simply drop the
> former so userspace doesn't see duplicate sensors. Also
> generic-adc-thermal provides a better name to userspace
> ("soc_thermal-virtual-0") than iio_hwmon.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.20/arm-dt)

[1/1] ARM: dts: meson: drop iio-hwmon in favour of generic-adc-thermal
      https://git.kernel.org/amlogic/c/5ea75722eaec226c60472dc578a302aae1d1fa3e

These changes has been applied on the intermediate git tree [1].

The v6.20/arm-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


