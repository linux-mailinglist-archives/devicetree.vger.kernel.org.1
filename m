Return-Path: <devicetree+bounces-173652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7FCAA934D
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 14:36:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40CA53ADE37
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 12:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0EEC24C676;
	Mon,  5 May 2025 12:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ebwuewjD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DE9202995
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 12:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746448589; cv=none; b=JFDSfCMgkqV5YVM1qtoRrGJIMS/csRG3aRcm82Q6JhYMZoMjZdDY4f6Z63efL+bPNoH+n49JTzJ5OxBSb1R7IRtQs11fIdCbCynSwTtDRzetPsGCXJKZctlv34eSrNTq+9M2m7DpUJIlR4JEEw/OwPoAtuD4/31io6MrW4qkLxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746448589; c=relaxed/simple;
	bh=LC3z7RCWc/JvyjQUbetuKHaUmEJ8vDFK9bVb7iQVdFM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=OJxLBWEduc1DHe3U8a0yFjzwWuDoqrrgWW7D++bmcs0F85sahjtlB+IToVl+nxG9XH1thIA6MCNH7ne3ydODfyko/TL0iiq4DjVNiqWIpHeiDa/adQRCUPhW4b0ylNn5CVOitgaVhwNiI84CGeI9LqXeRFYerUFodT8m7YR0ZU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ebwuewjD; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-39149bccb69so3348400f8f.2
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 05:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746448585; x=1747053385; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pms5fvQ0dnJoBWv+1H4MBoKeVfIfZlhVgzVaTxFBOSc=;
        b=ebwuewjDjIQjexRgfqtFdaihjgh3tNgeiISAARecivYOz2Quacw0B67MEOFyoFAL1v
         jD5hoJIhEOt9zJb8shSBj1PE9+ouHRL0+HwtUtMDobUpXZ0xKChJKtfGLvATosVp2cXn
         /uvIJcfW2XHKJBC+5/VmS3BpgL2EmRJ7v289LP+z8xicwGmB/juYlezyuVgXXVFpi+bT
         mI2lnwZKw3KHXPw2gl6WxIxejXOEBiSEBCzfagLE5N8aMFHjA1JAjnJIF3Xy8APM8L7b
         ksU6UawgeAA2lOPZygd7r9O2qDINzS3GkzG58z33dnbRF0YqYhzl/P2yqVKoEuCg1/Uu
         hk3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746448585; x=1747053385;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pms5fvQ0dnJoBWv+1H4MBoKeVfIfZlhVgzVaTxFBOSc=;
        b=k4ml5/NCOuYTi+MGgb5YB+01V4xj15OjBQLkwV7pf0n4Z8lb/5g2Csap+xX9s3V2Fi
         P0d30N5XTrOc3AYZfQorYgKxFRZMLIvWtiNMxfEBkVNU272j2w6kIf0UBYSkSwSIwSv9
         lW73TkEd3DXBKC9WUViIreWttvEwy7xLU7FlegVuGcGEzSCC5zc3yNYpkT8ZqmWwuPWz
         WDVD7O9516x94gkv3VQ/ZuiaXfHICRnoTAPYd6wusitpIlQ+/RlVFxVEyQX5Dw2Bk7R5
         nLRXXttMr628fcLUSP4LivUva9bFzHY/rVT2nWi9WZ502jlACSbW7OtZI8P/cF4GwYKI
         v2lA==
X-Forwarded-Encrypted: i=1; AJvYcCVOEhepwueiJVtvYJ8zrspRR0CA0INIo81MATzHWbZmWzAttcoKeWmcVNf5gRQW8wYmtoS90AX8im/z@vger.kernel.org
X-Gm-Message-State: AOJu0YxXBXbuuFjbx/3UTdIDu2Du6xtW/1Ij5g0BQtJ3CwjnLwW5W0UG
	JyRgO4CJuW8BCOZit4uC0IW5INMwrAc8KWIFF7OjO2gpb/Bf1DZlhSmcs3IOGVNVNbWGUlcifSP
	5
X-Gm-Gg: ASbGncsom9hTyNmejFBKngHaiXcqMgOQXP4hWMPaIAHfKP1tAjmYPpqx0dMv5HjTkHq
	RD0m+mcP+OcUineIePlaCptHZwHd6HqBfDOQX40gXFr677vU5CX/iKvVZsuCWfHPOZzF3OBBZpH
	Cs6Stc6jND1b4x1IPoeqLLkxYULJvW47ANg01ltIxH6Rf308mVpyqT4Bq0eIQ+T/wY3WyTJBDdV
	9YJ40QS03Q9cipMKYzP/HY5IdrnSUo0WUe5qeZBPk0cdQHdz6lIPxX93U5TAPCx5x6hzliunmKS
	kK5q87qi4Mdd4GN+oV+RErmImP5jRYu2e3mO1J2j8WK7kRkHtJWQ6Gwv2yQkFrnEA84pQEBz
X-Google-Smtp-Source: AGHT+IGsEliGJnwJASNNzDOIlUfeubpmj2r4ysjGNDPlKRJUSM2MTHWLJu/fnMkKxMkulAhjanR1Kg==
X-Received: by 2002:a05:6000:1a8a:b0:39c:d05:3779 with SMTP id ffacd0b85a97d-3a09cf4d5admr5929318f8f.49.1746448585435;
        Mon, 05 May 2025 05:36:25 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a099ae0cefsm10434442f8f.15.2025.05.05.05.36.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 05:36:24 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Christian Hewitt <christianshewitt@gmail.com>
Cc: stable@vger.kernel.org, Emanuel Strobel <emanuel.strobel@yahoo.com>
In-Reply-To: <20250503084443.3704866-1-christianshewitt@gmail.com>
References: <20250503084443.3704866-1-christianshewitt@gmail.com>
Subject: Re: [PATCH] arm64: dts: amlogic: dreambox: fix missing clkc_audio
 node
Message-Id: <174644858455.1377517.9885445879892405270.b4-ty@linaro.org>
Date: Mon, 05 May 2025 14:36:24 +0200
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

On Sat, 03 May 2025 08:44:43 +0000, Christian Hewitt wrote:
> Add the clkc_audio node to fix audio support on Dreambox One/Two.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.15/fixes)

[1/1] arm64: dts: amlogic: dreambox: fix missing clkc_audio node
      https://git.kernel.org/amlogic/c/0f67578587bb9e5a8eecfcdf6b8a501b5bd90526

These changes has been applied on the intermediate git tree [1].

The v6.15/fixes branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


