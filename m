Return-Path: <devicetree+bounces-193122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D56AF9667
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 17:11:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C61567BBF66
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 15:10:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E63FC2BE7A0;
	Fri,  4 Jul 2025 15:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AM2+kpb6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76451CAA9C
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 15:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751641883; cv=none; b=CAuabpjNxaLyvTyWqTJnEve67HuwjkR4ElLEBMZQTDr4AeXR9v+x+ANDtuhi6OAz8xz96bw/QCGgJrVj0M3v4Ihvh/jKzP+Msr58Py7CLsmJQsmg1zO3zOzZL18WXuTf5bxLBIPwJBTlVGHbtbkLuIBtDRtIfwHmO/OOI/HNiKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751641883; c=relaxed/simple;
	bh=2minLDyG5d0VogiZ/Ke52L2s1w2fOZUyNC6Repf/8Yg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Dw+PrbqhCkckCu52KGQFsWuOCq56ZgyK5cskecI0H4UNQzF6v9eB/6wrvm9QTk3p/LQt9LR089fXSYXKEaI2hjHeCRk38sHmbmoe4+ASWyweZJmIVQA8W7jA1BRXBxpRG1kuprtmgDKs7I688fCkPNdnTSLbvAaI+NUHyALPxPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AM2+kpb6; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3a548a73ff2so1024541f8f.0
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 08:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751641880; x=1752246680; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RoEspbh1eRKE7g7m7KXe/ScKkbCYU5aYNDNwW3OSB14=;
        b=AM2+kpb6WSatxQN9kZtzec+9cZiDo6vbdgKH0IwaJF5XL221H0yovD2t26ZynvooML
         1h+17ffkoi9HSZHBNy2B2DWGc3JpVXXjUXIqt8apDbODB6uaZJiBL2UKKG9mYCxI8q1u
         oANS00dBhe/+sDiac+3s/G4Y8qdU6Swl5+ziT2Ubm3bsWbZf1SGZqMnMv2y2irblVJWg
         9DP6Vz1Q9I4ooEM9BNs5LdO/mnCsBbrm1JIYI8tGMBs3d06gV5EuntmXWr5mpIccE13b
         ZFiGwglYzLukMjOgEV6j/CyN754NtJAUUvEj+vGJ1CVFsGeMrFrUyJ59gLTY0TKk/pPX
         eIWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751641880; x=1752246680;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RoEspbh1eRKE7g7m7KXe/ScKkbCYU5aYNDNwW3OSB14=;
        b=dhGS8h1SDhZciM/5ZZbQF/QtyEd2KoFAax1DwdfJJJgcm2fVXqm6XTAwpr4cEF84NA
         YaIj1v775/DK4j1ac96DHsgOswk5qKz8nEn5KsKSOz6krWc93lAQ9fsL9AguFMeunzUM
         79mUsDKga1/wKRlrONJ5YXXVpWie7wHowcChlD9UEae60Nf6VGuhmaLsLVxgkeWr/z23
         kctiIjs7a5r7xXRKKHnsxpcd3KQX50qh8pIsqMt3PUZZTUVhcySyrIyWn1muTRm2mL+M
         v9L+JpEFETDeDHkhw5AEWX3nk6IZP2K4Qsb5eDUaF2hRZCy14q9EedEQusVTrLAPNMzn
         ovQg==
X-Forwarded-Encrypted: i=1; AJvYcCUjYXHJmHbbVnLxUq867DHlQeUI9UNbDDrORoihokZLF3AvrmqtPUhMlijsnp6CnJ1Nr6ifqfn6olbp@vger.kernel.org
X-Gm-Message-State: AOJu0YzpWkP19hVEP9vLB2rjupjY7fWSIwQi+YwUVlCVlKEVp4NOIr6G
	R0li4f++4//C9Nnh/uAWyjxZd6bX4/M2qPqBHc3NRr9+tm9CwwSpOR32pTrEKaTxDVc=
X-Gm-Gg: ASbGncttGJbh3S4r2Md5+FzHZRvX7d0NHaxk3cN79mgWMd5ReJpYiOaHbDSPhM3mjiC
	n+/ws9MQ/3l9yAC1C3lt3M0kF/qrU5Yltyr/ty3DI64h6qt713sOwvCiYSgH85aCmFupEAScZw1
	N9JA54CK+1XJ5z5bUjdDpI1V5JeuZrwJbKPTK3WuhgyCHxjUTP7zDwfJtK+hPMS45sJLTTLgDpI
	xJXsmi9mQYDhv39fhEQ5HowtKGvhi5cmQWu7Sc6EyES7Jnx+Bwx6JYECDSYZpdCzvju7hoBCWc7
	DUto5gg8VMl44VGHGWdZ8O2M4IgfNtJUt1IrJrNNLtiQ9rMAo71rZrMKdTaMnLs+wMJaE2faJoA
	rycKX7+CxnzHxbS6btw==
X-Google-Smtp-Source: AGHT+IGJq4QH4n1fa8cinoR1z+3JkFuWIr6OSpZpSR6Ueat01j+mEIj1olmOHplIEibyLWK0AicYSg==
X-Received: by 2002:a05:6000:250f:b0:3a4:ebc2:d6ec with SMTP id ffacd0b85a97d-3b4964f8b3cmr2987717f8f.14.1751641880123;
        Fri, 04 Jul 2025 08:11:20 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b470e928aesm2675416f8f.44.2025.07.04.08.11.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 08:11:19 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: linux-kernel@vger.kernel.org, Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org
In-Reply-To: <20250522092940.3293889-1-tomeu@tomeuvizoso.net>
References: <20250522092940.3293889-1-tomeu@tomeuvizoso.net>
Subject: Re: [PATCH] arm64: dts: amlogic: Enable the npu node for Alta and
 VIM3
Message-Id: <175164187949.2868628.8689971906930320435.b4-ty@linaro.org>
Date: Fri, 04 Jul 2025 17:11:19 +0200
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

On Thu, 22 May 2025 11:29:40 +0200, Tomeu Vizoso wrote:
> We now have support in Mesa and everything is ready in distros such as
> Debian.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.17/arm64-dt)

[1/1] arm64: dts: amlogic: Enable the npu node for Alta and VIM3
      https://git.kernel.org/amlogic/c/587c1c00f75565567d1f26a333a3392f7a21c28c

These changes has been applied on the intermediate git tree [1].

The v6.17/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


