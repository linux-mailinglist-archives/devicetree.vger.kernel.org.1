Return-Path: <devicetree+bounces-147807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C152AA39631
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 09:56:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A901174EF8
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 08:52:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E35D422D7AC;
	Tue, 18 Feb 2025 08:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IcKf2uAz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B8022D4E7
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 08:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739868731; cv=none; b=g3jJwcKdL6BdQZUHy7uEPHwnRGBjuPG0fJ0RPb3Ynryn5h4SMGsyrUmB4bwwCyHNZzqvioG11tex8GtU6ey8y0NyA7A5pA27j2YAqHL+sF1dWf5CDG9xcLyBPZLe/xsREwXp+9HzMfGO1WipGW6WehVgOizjGHKhzMgdC7CaBeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739868731; c=relaxed/simple;
	bh=hohWpCiWYl0GtjqjZvwmp0qm84o88J+U82iLURk3iYI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=nqKW75yMOYNDTzL+PD7tL9AY6KSkHZsYbdG5zi1lT1LCC0DOHW6pAwClhGPwh+UM+g8mpal9qtIweu3iHV8r/FuREmJUQH4/1XcAgfNxKeo5u7tv3s3IJkc8Il82bfRASmzTry908YnGCH2cQBhjwQhB/N8OyWf6acyUrRpT348=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IcKf2uAz; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4395dddb07dso53891805e9.2
        for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 00:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739868728; x=1740473528; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T5BxUQzEBXqVbjM46JfdgSswKF0/4bTgi+k8v6ADAZU=;
        b=IcKf2uAzJdixDAPIRJX20sttXX4Zh50YvEtuaXY/RyypRMLu8k++/tNOZpNzSpCJgg
         XFSfIO0RJaQy0y4Odxa1Ds2VFsanooUgDFqERNeC9VbosDQvZGa42i9dY89QdO0RUU+X
         zswOLsO9VPk2zZ6ELQHO6s497EJiTLuGgKq/9TgLKyHdLkNj4OZ/hbp2/9sNIlaWNMkf
         PlqJ1QH0pA+8QAZQrNseJxV+KZLYNawLehV9967xJqM4wTKJfutc1egHwFG95SyGClyl
         liq91RmRAO50rC4ChEcZ6U4FlrW82QQZivaHN8JNdCQFm1GKU7gvUCRnH2P9q36kl6Gi
         Q+iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739868728; x=1740473528;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T5BxUQzEBXqVbjM46JfdgSswKF0/4bTgi+k8v6ADAZU=;
        b=v4TA4lTAKpIXcf8fCl2nCTKMDYQuwkOhGVkR9tQsFs58Y4MU8/olrL+Zak/OjMO4hD
         MaE7pmy/9CVmCU0wq+RpJG+VWNFE+VsPj1qAbkbedmi3aYQe1AOK8YXaM4MVZnL+/a3z
         zqD/dVxXNuXYpEC6FhTLFbhDON81JkYbtFxBh2KLJRqTSE4QeX/xGZTSXk4+olMctF32
         jLDud5Igjx7Sc3F9Cz+Nu+Hucb7hEfZxq7fPI/PbfIE4E6HlnE/QqYAlsYjLclv9qN1s
         KBKBv0LoywfMbYNydZ5d0qv/u01nRHjwjrfEpn4IV41lxXrqrJmK1Rh+A+y7uKTUU86Z
         vJUw==
X-Forwarded-Encrypted: i=1; AJvYcCVCo0weIWasZyNcSnPDCWdBRoqqSDJ5GHHu4T2p82sbWCVJmqnWyLuHsmIyKpMpvu1nlWeWRFd5tG95@vger.kernel.org
X-Gm-Message-State: AOJu0YyI0aUwmo2mkxE0XREFk/aDOAmQ5h8xG4h24IyVTaJZ8lW5wshi
	GLVeJHeD6Znxxd2C5dw+a4PxUAoSMFuG+Rurzzppn7ctP8BzREYR9s83jjG7pWU=
X-Gm-Gg: ASbGnct9UAwcEzvv3U1JR14K9nVC9X2uDiQv5gTyKynbwDGK5MtMoqWGf9B95D9vkHj
	/tjvaMWhxwZocFRHLLMLlWjzbdgJ+4VmX8YcLBM+ssRlHLflK5DDrFwPPdAyHzuJH9g2nWhLA6k
	R6+4pMHFOAvXZp9eV5b+uyJ9u/Mm9pN+IDCpjunqkiCyAASsvEXXWGQRcGTW3uNjK5Y2TQKC6UG
	t/kNYFUDlQz5ol7em9s+18yTb2sxn6Yc8LaHjjHdjNbC+lBofNnUUuYtxzvnH5SlVtBfUa945AZ
	z4S2J+6TfbEpDS9Q/rgZ0JgSsgwtbIixSA==
X-Google-Smtp-Source: AGHT+IHQey7aBKjO/+bZ8evsTyt3LBHAHH8MDbvNvER7wVei0OIq3d9tcLNdJqfWdMZRdCMypqcS3Q==
X-Received: by 2002:a05:600c:3b1b:b0:439:9595:c8e7 with SMTP id 5b1f17b1804b1-4399595cbb1mr12314565e9.0.1739868728258;
        Tue, 18 Feb 2025 00:52:08 -0800 (PST)
Received: from [192.168.68.111] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-439872b5a46sm43381535e9.32.2025.02.18.00.52.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2025 00:52:07 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250217-sar2130p-nvmem-v5-0-2f01049d1eea@linaro.org>
References: <20250217-sar2130p-nvmem-v5-0-2f01049d1eea@linaro.org>
Subject: Re: [PATCH v5 0/5] nvmem: qfprom: add Qualcomm SAR2130P support
Message-Id: <173986872682.63312.17862303711697418550.b4-ty@linaro.org>
Date: Tue, 18 Feb 2025 08:52:06 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Mon, 17 Feb 2025 18:33:17 +0200, Dmitry Baryshkov wrote:
> Qualcomm SAR2130P is one of the platforms which require 4-byte reads
> when accessing the QFPROM data. Fix several omission in the NVMEM core,
> rework the QFPROM driver to use readl() instead of readb() and finally
> add compatible string for the QFPROM as present on the Qualcomm
> SAR2130P.
> 
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: nvmem: fixed-cell: increase bits start value to 31
      commit: f5175dd69428ab517c8d68e772c4d287b6570d8e
[2/5] nvmem: core: fix bit offsets of more than one byte
      commit: d5d9e982a0886a1a99a1a8ef5320c57e257b4fb0
[3/5] nvmem: core: verify cell's raw_len
      commit: 11ccaa3121119eeff9ab9d537e0cf6be3b10698b
[4/5] nvmem: core: update raw_len if the bit reading is required
      commit: eca73df072715efb5e880514bb8395e0a4e74a59
[5/5] nvmem: qfprom: switch to 4-byte aligned reads
      commit: 4770132f37dbf327d25455d226e54fafbef6a5c4

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


