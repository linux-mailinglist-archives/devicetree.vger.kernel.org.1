Return-Path: <devicetree+bounces-41197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A55852B96
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 09:47:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF6DF284DC5
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 08:47:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C482121340;
	Tue, 13 Feb 2024 08:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kHTbhMp/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8861B5BA
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 08:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707814027; cv=none; b=ukgBll8oeTzzcl9TmcbKRTzfK6Lq0ybHbyOtsW1hFHI1nE7GXfxpdrQxjgcjMImBH4bzs0+4eFknmsZ99WkfkyvtN87LLk0jIMUAwje/iS1hXXh4rbKWEosrlpxuOQU3hITdQTFbdz9wMJi4K/feA10NlGVBHIumjrWUxCTudT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707814027; c=relaxed/simple;
	bh=tvHravNgd3jxxlYpmzxgNbxwIapeUR8I82B4ydoZbJU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=JeEz7JFkqEtXzLHyfCGf8iuDAxTWNL9/V/LmHTwI39YZsboqjTfdewGfmkvkJPDvONO2r469D/t79dLaEkeJe/bpe1+0++j1gZHbitXHCTG/GLEezJ2datTcNT5geanWMaXIAAfTyXdMQe6w1gryt9FdvcETA8fOF5Y55TApJeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kHTbhMp/; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-33b8807b55aso777333f8f.3
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 00:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707814024; x=1708418824; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=75EEaodnUavPyXiDW/zXiMugNJn4rgT6eT/hJD3ce5o=;
        b=kHTbhMp/k1ere/hLIDtH7BZ/wk7txj5m5MX1FpBaV0GvgLFmu8CYLihn1rt629UBsJ
         FkZaK1bymo1PFF3ppK/GFzBYMlvc2LJA/ecc46FvR4Dbd8AZJmMF1jZMJfGLCTS8+opx
         WdmS3z8DFn2eAAkAfhxCu5uAM9O0e7Ukf7KgHtQd+BBx7Qk5JLJ5Zvqtg8MtI7zsUa4G
         9Y4pk2kEhI1WclSRFZUdp+wVWyuODhRVYR1jlzuHG8H6ipGUPv2EPaQYeThd/HBeyygw
         O/R/5SLNJLIlAWXWK1oNixEoh3Jom6xWnnN5uksXie9WiUifL/i73Kx3pjmv9AhQnSBJ
         yncA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707814024; x=1708418824;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=75EEaodnUavPyXiDW/zXiMugNJn4rgT6eT/hJD3ce5o=;
        b=PD1DCUMiFBJe6C0+NHxs5ENIh3EQzmQS8cc0lw1Cmxqt/5ER22CJ5lRyiiQyqGkj7z
         4Fuub6c1z683wUGJvLyYDYABHHmSH5IXBX8fAJmDrLAm4DAJFtE8S+j6lw+F/ABv90Tz
         1oghCzj4f0baHDYlrQhoVFuPG7OAHYEjbdjbqElLheJE8kV6lrcN4wJDbG2ZSnJX8rZu
         3k8VosfjZzLT0cHBLj7Os1L+YC3PSSzG5xI55GI74sM5Sk2HVmYbXDmQF2CeOMc9qBds
         d9a1ux538ojPTSXj7nfFPrLVa7bZBVME7JT1jSLWZnhBS9Us7eXLDEgl8/zcvF6BrnnL
         UGVg==
X-Forwarded-Encrypted: i=1; AJvYcCV2B6jEaTL1PLAi/oGWvpWOFfRCEQ7QHL5WM9BCBtwuU/zQTmaZ8rOYWdU/T3+3hk7BuLU8+FhklD+AB6WX7TZQQBNr9VartgpJMg==
X-Gm-Message-State: AOJu0YzI4psQK4yihFsL5otmgdbQWSLSLlWzyyojEp5GUmKgp8GxqQhN
	oSjMdjhHMP4bXNdM6+KehIFI2PQ6nVv/VnFlI406ihUkSc4lxmcySM/Z9StGXXrd9y8rg6QALHX
	y83hFkQ==
X-Google-Smtp-Source: AGHT+IGTdnZvyHeh7eWYeSJDhc86QdOUzEKnpJMoqWenO+UTYHFk+lx6eFsx1MZkCcVxpEVcl/39mw==
X-Received: by 2002:adf:f24e:0:b0:33b:304d:36b7 with SMTP id b14-20020adff24e000000b0033b304d36b7mr7221572wrp.56.1707814024476;
        Tue, 13 Feb 2024 00:47:04 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUeTf7UecjwlGIodtLfDFk7swIZwWcjKycfmtkhdv94Npda/6KaT4lh+JHM9lkBjhtJIkLDZArH8INQQn4CcNWQKUASNUwySyYIZZRK2kgnM6MtKGZ25uzNIthThiIdltkY+mDvStB1dRji9LNKZPmz4fy3isYJeQKdAM+3hV5vpiqawGk8ufN3PytbE8QBLW0cdDUfKjG1sm9/OoxODLVQES4S3lzr94SXWTsC1WTgtY+RRZHCJb/xMOGjSCjJ8bGuwldGnh8tx0dwqZYe0OZWA1i6CdfFtSyqvyxZs7sQyifHVcm/pcezmSf+6cICv3GP8N1gkcpA6ZPMYIcju8MUcDJC5IXZ4HTyHkTJVGTk+Yxz4l+zjNyHcpno83O7LQ/+COWkP38qXks8P7SCs7/HdCIa5/Pr0fmXBKRysE+eyGAUibPVLRbN9B2Ca1JHnv+VXYqspWrBxK63iUf3FoQYff1C45Ym3g4J1w==
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id y8-20020a5d4708000000b0033b507b0abdsm8888707wrq.32.2024.02.13.00.47.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 00:47:04 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org, khilman@baylibre.com, jbrunet@baylibre.com, 
 martin.blumenstingl@googlemail.com, 
 Alexey Romanov <avromanov@salutedevices.com>
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 kernel@salutedevices.com, Dmitry Rokosov <ddrokosov@salutedevices.com>
In-Reply-To: <20240124130623.3471236-1-avromanov@salutedevices.com>
References: <20240124130623.3471236-1-avromanov@salutedevices.com>
Subject: Re: [PATCH v1] arch: arm64: dts: meson: a1: add assigned-clocks
 for usb node
Message-Id: <170781402367.1503948.783057553743938971.b4-ty@linaro.org>
Date: Tue, 13 Feb 2024 09:47:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4

Hi,

On Wed, 24 Jan 2024 16:06:23 +0300, Alexey Romanov wrote:
> To ensure proper functionality of USB, it is necessary to use
> the rate of 64000000 for CLKID_USB_BUS. For instance, adb may
> not function correctly without this setting. This information
> has been derived from the vendor SDK.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.9/arm64-dt)

[1/1] arch: arm64: dts: meson: a1: add assigned-clocks for usb node
      https://git.kernel.org/amlogic/c/d1159418fbd5880d3285f4797d3f11eeaf6d0d42

These changes has been applied on the intermediate git tree [1].

The v6.9/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


