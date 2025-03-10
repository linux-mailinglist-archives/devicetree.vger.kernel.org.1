Return-Path: <devicetree+bounces-156067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D114A590B3
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 11:04:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 333C9188CBDE
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 10:04:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B34AF225A50;
	Mon, 10 Mar 2025 10:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tyhQFcly"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66492225A47
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 10:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741601071; cv=none; b=evy/6R8vvOhm5R+KLJdkR4K8eTy+eRdpuhzG8KaLv3+gPVnjW0Vc5HpdLeQjlDZuNI7J3caD3wL1PZmhdUnz+Hw0cj7HQIGIbJPABGID6U4lnfO5l8n1kjrNkHn37ndQHqcDvLupJNFoNE7nbWM5NAxcBYo+Ft6V+64M7fO3yBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741601071; c=relaxed/simple;
	bh=N1D+HJpnsYxDpdlfY8rFvIZivaRl8RkUHS+RuFooO6w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OBEHJ1Tx8hK7zsZgRuMpgY1BzGIweR2zEYkJpuYe96D/d+8uK0/pKwVtpiuiA8150UVZ1Njn9pT/a0pTB54Jiuxno2u3OEvBusvGHQsK5C/1p1Ch8B/IQlfF24BSu1KRgbYQXgh+QzFpiYEv6ZFAaIo5lRupmB5ROxNMK6fKQXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tyhQFcly; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3913958ebf2so1763764f8f.3
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 03:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741601068; x=1742205868; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FMmB7C6GdDSQIb1MdRYMbiBDFafOAbha/ZnZCufI0c8=;
        b=tyhQFclymAWe5F0KzFKB++hijW51ykomNHvWIFeJxV61Xa0ldwTU1sTwFw/trSEVJN
         TdsMU+BZ7ijNUnwWTLRFOugwQ2L0I3j2VROQCejb80roJAeVNhvP4Nz4Mv2cXG3oyZ0q
         dtK23sJw/m/j8qDz7K2r+CZU6koSWigweXQE9gVqdUPHMcrj7bY73AhhD+ZBiO9mWTso
         HdXSMn+maZOrPitZnhA5UboKf3m7i2AUgG3j+zkn2sr2o9C0SCezISwKNlfHOiAb7pXl
         ZZpNf/U7KxZD4iqwdtk5W79UqPv30KwGkAzOfK5BU7yEbWihuOmncV76y9rl4SlCP1gs
         u4gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741601068; x=1742205868;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FMmB7C6GdDSQIb1MdRYMbiBDFafOAbha/ZnZCufI0c8=;
        b=iFpyq2jc2p8L67Pj3G1SyYJRC6sN+wKt7wYf7iy3WjNA3T8BaW9GvDakJIMc+x4AXg
         NCBF+E+yJxUGbD5olRrlRERVz29qcj7e8NH6EqEIHKrYFvNtOo9lX+l840DO9U8lnyuc
         4PJHcnCuLsa05ruZ36sYlTwoLZPuJNlF7GdMnJcjNkxd06mHqtFIzp/I+SoyO/n12Y2w
         z2vaQ4+qS2N7yflif46sGoKyQocJWaFF7NEJPNqgfQzvdTnNlFdpRIhN+CF/8PUv3BE6
         l6EDKwQXYj+564JqCZDsMjczaTaK4DAEuRM1jLAUY9NCoUWoTkYIi3pUL+eZQdqQkh0F
         Kowg==
X-Forwarded-Encrypted: i=1; AJvYcCWzlxrkFULAGGqgXqHiN/OWDl+1uLq6jYNsQ10kEegCAN5zVrBTywGWdmghDGHInzu3eOKB77UGaaUA@vger.kernel.org
X-Gm-Message-State: AOJu0YxVtKxUgqzxw1uNwyHoZpKXYukxUeG6cXRE9qxlBMUuKbG9MLzw
	y8jo/CI3FMj2a+S9rW4aEEOcSsVusTXuIZthxwEkFy3OgsYXWRwLKzvw0pp1yZ4=
X-Gm-Gg: ASbGnctFoNxgf3QE3rcGjW+YnL32DezKCPpX2Rt22kiOiDFlIJevFsO2lOvdud19LND
	mI+UJqYyU1Xnk4Jg/DNKA3n9ELHfPf6SW4fKq3+0IMsrcrbtqCjva/orBVZJYC4AibpuFkyyRz0
	lsRm/KW0WJm4Sw5OxPQJ5RFg7OtUU/nh5z7ooknytNEGMqOWMKCqD3H1wP+NKxMPgqX1CRYVEqv
	l5TKcnKimA7/nubMydBBwU9KElMhPTqQDl9A9ubH+TezzBbwJ9cNmppnhKhn7aAXemtRDg2Kde6
	eo7GwWZq0QI8VMHCkVqVZAAuOFxQbudhwctBAYG7gaWjVilRenpcKJp+E3iERdpweLuwcmfp16+
	oOK1zPd3WauivxzkuKibUtmakCA==
X-Google-Smtp-Source: AGHT+IHVDGL9yAGgPhwwPg4SOVnRezC9H197dgGjQGfk5VzYoJ2tNp0DsVGb6s/MeViXMstj6N8JkA==
X-Received: by 2002:a05:6000:400b:b0:391:2d61:4542 with SMTP id ffacd0b85a97d-39132d074a0mr8135391f8f.11.1741601067665;
        Mon, 10 Mar 2025 03:04:27 -0700 (PDT)
Received: from ?IPV6:2a0a:ef40:1d11:ab01:5743:8dc9:85c4:5f56? ([2a0a:ef40:1d11:ab01:5743:8dc9:85c4:5f56])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912c0e4065sm14594645f8f.62.2025.03.10.03.04.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Mar 2025 03:04:26 -0700 (PDT)
Message-ID: <53224260-4f3a-447b-9e7b-f68c5c4ba05e@linaro.org>
Date: Mon, 10 Mar 2025 10:04:25 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/7] Subject: [PATCH v3 0/7] Input: synaptics-rmi4: add
 quirks for third party touchscreen controllers
To: david@ixit.cz, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Vincent Huang <vincent.huang@tw.synaptics.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht, methanal <baclofen@tuta.io>
References: <20250308-synaptics-rmi4-v3-0-215d3e7289a2@ixit.cz>
Content-Language: en-US
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <20250308-synaptics-rmi4-v3-0-215d3e7289a2@ixit.cz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi David,

Please at least give me a heads up if you're going to resend a patch 
series of mine. I understand it's an old series but I don't think that 
courtesy is too much to ask.

On 3/8/25 14:08, David Heidelberg via B4 Relay wrote:
> With the growing popularity of running upstream Linux on mobile devices,
> we're beginning to run into more and more edgecases. The OnePlus 6 is a
> fairly well supported 2018 era smartphone, selling over a million units
> in it's first 22 days. With this level of popularity, it's almost
> inevitable that we get third party replacement displays, and as a
> result, replacement touchscreen controllers.
> 
> The OnePlus 6 shipped with an extremely usecase specific touchscreen
> driver, it implemented only the bare minimum parts of the highly generic
> rmi4 protocol, instead hardcoding most of the register addresses.
>    
> As a result, the third party touchscreen controllers that are often
> found in replacement screens, implement only the registers that the
> downstream driver reads from. They additionally have other restrictions
> such as heavy penalties on unaligned reads.
>   
> This series attempts to implement the necessary workaround to support
> some of these chips with the rmi4 driver. Although it's worth noting
> that at the time of writing there are other unofficial controllers in
> the wild that don't work even with these patches.
>   
> We have been shipping these patches in postmarketOS for the last several
> months, and they are known to not cause any regressions on the OnePlus
> 6/6T (with the official Synaptics controller), however I don't own any
> other rmi4 hardware to further validate this.
> 
> ---
> Changes since v2:
> - reworded dt-bindings property description
> - fixed the rmi_driver_of_probe definition for non device-tree builds.
> - fixed some indentation issues reported by checkpatch
> - change rmi_pdt_entry_is_valid() variable to unsigned
> - Link to v2: https://patchwork.kernel.org/project/linux-input/cover/20230929-caleb-rmi4-quirks-v2-0-b227ac498d88@linaro.org/

Please use lore links
> 
> Changes since v1:
> - Improve dt-bindings patch (thanks Rob)
> - Add missing cast in patch 5 to fix the pointer arithmetic
> - Link to v1: https://lore.kernel.org/r/20230929-caleb-rmi4-quirks-v1-0-cc3c703f022d@linaro.org
> 
> ---
> Caleb Connolly (2):
>        dt-bindings: input: syna,rmi4: document syna,pdt-fallback-desc
>        Input: synaptics-rmi4 - handle duplicate/unknown PDT entries
> 
> methanal (5):
>        Input: synaptics-rmi4 - f12: use hardcoded values for aftermarket touch ICs
>        Input: synaptics-rmi4 - f55: handle zero electrode count
>        Input: synaptics-rmi4 - don't do unaligned reads in IRQ context
>        Input: synaptics-rmi4 - read product ID on aftermarket touch ICs
>        Input: synaptics-rmi4 - support fallback values for PDT descriptor bytes
> 
>   .../devicetree/bindings/input/syna,rmi4.yaml       |  18 +++
>   drivers/input/rmi4/rmi_driver.c                    | 140 +++++++++++++++++----
>   drivers/input/rmi4/rmi_driver.h                    |   8 ++
>   drivers/input/rmi4/rmi_f01.c                       |  14 +++
>   drivers/input/rmi4/rmi_f12.c                       | 117 +++++++++++++----
>   drivers/input/rmi4/rmi_f55.c                       |   5 +
>   include/linux/rmi.h                                |   3 +
>   7 files changed, 258 insertions(+), 47 deletions(-)
> ---
> base-commit: 0a2f889128969dab41861b6e40111aa03dc57014
> change-id: 20250308-synaptics-rmi4-c832b2f73ceb
> 
> Best regards,

-- 
Caleb (they/them)


