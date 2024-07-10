Return-Path: <devicetree+bounces-84560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B04292CC1C
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 09:41:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9CA601C20BFF
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 07:41:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECE16824BC;
	Wed, 10 Jul 2024 07:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VeoXg4W4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392AA84E14
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 07:41:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720597283; cv=none; b=Ax82VFBEbolkEqS/n5DI66vImCx3KTH+G/b6OR1gFmvpy8QyiEnhugm1Jvw5PFza6vyxIXA/n75YXLMAFmeizK++DZeLHRD56gsXPhDhVuT/tW9fJodOWsrhbqs4Tnb7800odcbUaVCQr7svQ+ERyitdl7auIobyRT4p8h6w5GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720597283; c=relaxed/simple;
	bh=iEHxw5tXRJLGL3KYGKBlQ7KWX//I7Sr6DC/FLj3/AAw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=VCuCJJxu14YPjwkaimLNEYI4/JuhnQ2dxvGMSDPbBL59lO4sIP1DPuGxEUMbA4rslXxVMqfmxsrSwTXVPj/QuqPcOii0Ns2lUYdx+GDT7dstJF0aXE+T743cfJ8WEUpjjEaKjGmOuJiQErNQu5RaphE6MHxXJGognkz/XCzRyJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VeoXg4W4; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-367a23462e6so3579627f8f.3
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 00:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720597280; x=1721202080; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BsKkA5+o8cIHzcUHIp0+w252IM0bp/4uWhC5/Umf21Q=;
        b=VeoXg4W4lUkS4S7WFJQoDk73ONVFFacUc+0He+Bi5g9JI5ok3IKQZt8HxbPGze/FsG
         TWnTiTftD5tm0VOp0HEzLYwooSWu3pyuBilQX8k8tPODzzDVT+4wJfXFSAUyUqttaizI
         ZVo7kxyZqT9x/iQhC/rSboEqfWnJX+e2QJ3OPfBVoLQhOQj8rLg9vDPeIFG3N3+uMWeX
         7Z0v0g+wth/DRIn6DvzXVWOpQtlj2PtX2vfMz2RmxkYBssjGDFZvqv/4eZereWNGBObm
         yyCPnu8xLEGs0ksrboo60VYPSuD8vU6Py+1++hauuBJi+avnZrPXMfV3S9ArE9TFp5b+
         x2nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720597280; x=1721202080;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BsKkA5+o8cIHzcUHIp0+w252IM0bp/4uWhC5/Umf21Q=;
        b=czIqgRSSAJGbrPn005FTiVX55awLv8Qfjt25vrWYjULrvKDPLQMpiUNnHV0ZL81l6w
         X1lE0nurZTnw4WsRCZWbgVXMDFtl2WLGapLvz2vWU1xowbb3LXiI8wRTo6VQMxKx9kRo
         GfanIA1j2c8oOxVvDKbFRRPRQMOUZG6O6QS7JS0UojyYYcDVOXo07DedRj6qv/bV74qC
         9as7Tc6R1LKbNpDY+nhtZaUNGALgIQq9laNfrASTkt7Rd83Yn564mIqSpw7mhpFO1sWm
         qsX5C2aqjEEeQiA5as9yBr7R+CphgVaGrzYpDyERtS7Ggiz4Wyl5R/RDsPcX8+dyxCAh
         ddAw==
X-Forwarded-Encrypted: i=1; AJvYcCWpe0FftSxwFzPXgsQBtWxXf/FVUGr28MkQAmZKNjNCpB6I6c+U+iaHi18UuOIulZs4VzXJ7TZrI90PX4k6wDNMo4xwNaeKCSHhtg==
X-Gm-Message-State: AOJu0YxKEJSRgDsBODpjpJvmFPQyktsshxmXWEDaJsYR0Qo6mEnnS2AM
	ieeVyP6Lxh7v4x7yhFNAYi4umyHzGt/X0oGddnNgccQl+mjMa17NwnUXZlyivJU=
X-Google-Smtp-Source: AGHT+IGddrOSocTC3Aibp1Vkqu1Aje6/Ock0VDU/08zMxBW1iObesEMZ5KiX9KO+LVhFoCxjz3qx8g==
X-Received: by 2002:a05:6000:2cb:b0:367:9088:fecd with SMTP id ffacd0b85a97d-367cea46e00mr4261777f8f.7.1720597280243;
        Wed, 10 Jul 2024 00:41:20 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cde7e095sm4527144f8f.23.2024.07.10.00.41.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 00:41:19 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Huqiang Qin <huqiang.qin@amlogic.com>
In-Reply-To: <20240709-a4-a5_watchdog-v1-0-2ae852e05ec2@amlogic.com>
References: <20240709-a4-a5_watchdog-v1-0-2ae852e05ec2@amlogic.com>
Subject: Re: (subset) [PATCH 0/2] Watchdog: support for Amlogic SoC A4/A5
Message-Id: <172059727940.1289531.15312201454629239383.b4-ty@linaro.org>
Date: Wed, 10 Jul 2024 09:41:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0

Hi,

On Tue, 09 Jul 2024 16:48:24 +0800, Xianwei Zhao wrote:
> Add watchdog for Amlogic A4/A5 SoC.
> A5's watchdog is the same as A4's.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.11/arm64-dt)

[2/2] arm64: dts: amlogic: add watchdog node for A4 SoCs
      https://git.kernel.org/amlogic/c/34b60b78550eedbb596274f0336d1f86a80fcd19

These changes has been applied on the intermediate git tree [1].

The v6.11/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


