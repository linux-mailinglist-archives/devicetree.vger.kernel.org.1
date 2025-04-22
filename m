Return-Path: <devicetree+bounces-169228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 647D9A95F57
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 09:27:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83FB116AEAC
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 07:27:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 736C0239099;
	Tue, 22 Apr 2025 07:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KllpG6/k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F121F4736
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 07:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745306867; cv=none; b=hahSJRPQGnxoT5i7Gww+7GZxAZLsBZUhB8GIFuoviXIa7GickGlYIGzaburfwEdg2feL/fdFSki4fwxf8ggTjZ0aRVzyAvoWSMsrUPMbDC7Ddbtc2f9wOBdNSlkrIwztRDvoklR4Qpu9ai7UQbQI2onaRaqb7OkuurRPQQtoF+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745306867; c=relaxed/simple;
	bh=QSwQkdxEHDadVWYRWOGp5sINS/hCVTWyTbOnftCEV8w=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=BQN7Wl5I9A7QW+8NaSwvouZ7fbTJYtNkU9r0QxcWXg35U1g1UG9xHYV9F0dYqJZSy4i46NRYl+1kv9/o25S0iYXhNssndkU8Y0pAVYGozM5QexU6v0dTa8eDjTVccd3Gz9K2VCy53dpXHdwPNLFXGh2ja3PnllGAxVJJkbHFA/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KllpG6/k; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43cf034d4abso41988575e9.3
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 00:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745306864; x=1745911664; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C0X0JZ/sJPZkI4lLJkZG4Lcqmvumgx8c7FdFwse+1v8=;
        b=KllpG6/kovEGVL563S54LS/kaYsUY7GUgJD7CwLm0zAo3alDFtX0QI7Sb9NyqSkKrr
         1hIiWC3FeXnXbhf5pd9ZcOY3CT3+PqqrgpTuA0OKG94DOI255ZynAYAOIHrvwFzwv+f/
         EzaHKwCrQU4A9EhN5L9XC3uAp1mr5Igx3hnF53MxkqZ4mn2yuwU7K3vNh0xaIWYjrc5J
         SwEWQDYacV7/efE3+iesdhLLgSYq1++k5IHBi7tQp94Uo+Oh2FIkV0fvmb/EyAJg293D
         HH/5xk9C3M10l131XvWLTNZN62lcMx0a1UYbX2kPu6CjPnRZ/bjtqxGyr7dHlU0asmtO
         U3Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745306864; x=1745911664;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C0X0JZ/sJPZkI4lLJkZG4Lcqmvumgx8c7FdFwse+1v8=;
        b=mbitB2kkIrjDEsypGB66iWGqlTzDNgmy/MtWcKROkpw+KZsErkgkpxYtnqfMJj8lMD
         vvTLkSNtkOUt5lDEX5f3LZI3I3bM4m4WQ9alSQkG+X/HfFFJc2/dUg5t4iLCOTRLaBbQ
         X289N472ozcp2IjsXOBZGVU79lx3iSH7kcC7XGpsUHhG6AS6F64CaANaKBgT9IebOYEW
         G7C4epsOnl9Vgj/3UY+YelG7DrfcL0vSrklWfhlplnSPnSToy+rgFEl1t57FQvox7g9j
         kffAljpcLJ5/u+MPfXbC+h5NkdomDsUrXcbjed1pkmSl6I1VrqoRuN6lg9fiz2FoCroR
         r/Ag==
X-Forwarded-Encrypted: i=1; AJvYcCXrIVXlRCA8sloHP0/RZ5ZHZPQGzsY3c4/i/UepfCSPCNul9yzgtihwvud8dzwJ3HQpwuZ1919K+fWC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3wqTE6khvCMKiPS6IM1s+W9Gsh+3riKvKA29L4saVoTzvbcO3
	k/YW2Ql9RB9KZ96nvNLXscVWlbm5cgwoYf9zb415aQXEtHFCBpzLSzlUn5PdPhA/h5gEgfQi66O
	i
X-Gm-Gg: ASbGncsqlT6wftIKYTDIlZHhK+ml/mL3jm/fXaThaRrj3hyNnU9FGyCVgRcRtbPriev
	mDLmbw15HP5O+ETEpO8dqcOLbYqlsN3bxviHvqRIzHJi88SwG51DmZ5f0Uy5bTdUmEelj7h+RDn
	fObDvIbD6y4WYTzsNTeR88cW3roRUeiR2DqgDHiltMv0xsQstw1LrXxRB8+/7oMg4mytr3TCzHL
	zQmgKE1ekCCIAyLMR6ANP/deKM2V225dPppSE5LDtcUr1cRtuaWOFn9Hd9Au3X3Aynt0x8ZkTBK
	rZhEjtE26yxT/aDgMcuu3URdMwv5fUcPaiwcCNDYkMKq42+I+E9T0Is+q4gmWw==
X-Google-Smtp-Source: AGHT+IHWhiVi1ueArODLM6UBb5a4IpmaUoKJy65slIk54wuHnzDLgvlXzR90XdNucBZm/loWgUlT5A==
X-Received: by 2002:a05:600c:510d:b0:43c:f78d:82eb with SMTP id 5b1f17b1804b1-4406abb2066mr131093765e9.15.1745306863720;
        Tue, 22 Apr 2025 00:27:43 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4406d5d7aaasm160798255e9.39.2025.04.22.00.27.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 00:27:43 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: linux-amlogic@lists.infradead.org, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: jbrunet@baylibre.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 christianshewitt@gmail.com
In-Reply-To: <20250420164801.330505-1-martin.blumenstingl@googlemail.com>
References: <20250420164801.330505-1-martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v1 0/4] dts: amlogic: fix FCLK{3,4} clocks for new PWM
 controller binding
Message-Id: <174530686316.2776757.4066244887775087849.b4-ty@linaro.org>
Date: Tue, 22 Apr 2025 09:27:43 +0200
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

On Sun, 20 Apr 2025 18:47:57 +0200, Martin Blumenstingl wrote:
> Christian has reported Bluetooth issues on some of his boards, for
> example on a (GXBB) WeTek Play 2:
>   # dmesg | grep -i blue
>   Bluetooth: Core ver 2.22
>   NET: Registered PF_BLUETOOTH protocol family
>   Bluetooth: HCI device and connection manager initialized
>   Bluetooth: HCI socket layer initialized
>   Bluetooth: L2CAP socket layer initialized
>   Bluetooth: SCO socket layer initialized
>   Bluetooth: HCI UART driver ver 2.3
>   Bluetooth: HCI UART protocol H4 registered
>   Bluetooth: HCI UART protocol Three-wire (H5) registered
>   Bluetooth: HCI UART protocol Broadcom registered
>   Bluetooth: HCI UART protocol QCA registered
>   Bluetooth: HCI UART protocol AML registered
>   Bluetooth: null: hu 0000000023fa9791
>   Bluetooth: hci0: hu 0000000023fa9791
>   Bluetooth: hci0: hu 0000000023fa9791 skb 000000003f7acf2f
>   Bluetooth: hci0: command 0x0c03 tx timeout
>   Bluetooth: hci0: BCM: Reset failed (-110)
>   Bluetooth: hci0: hu 0000000023fa9791
>   Bluetooth: hci0: hu 0000000023fa9791
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.15/fixes)

[1/4] ARM: dts: amlogic: meson8: fix reference to unknown/untested PWM clock
      https://git.kernel.org/amlogic/c/3409f843c04df9434beb637602382eeee90e0bee
[2/4] ARM: dts: amlogic: meson8b: fix reference to unknown/untested PWM clock
      https://git.kernel.org/amlogic/c/a994b58f9d1163c4f559bd169721f0fc15866919
[3/4] arm64: dts: amlogic: gx: fix reference to unknown/untested PWM clock
      https://git.kernel.org/amlogic/c/511d388a4007ba580feeb2fd2e9ba35a614c093f
[4/4] arm64: dts: amlogic: g12: fix reference to unknown/untested PWM clock
      https://git.kernel.org/amlogic/c/a08b28c1ed454502abeb90ffa4a55445dae1d22a

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


