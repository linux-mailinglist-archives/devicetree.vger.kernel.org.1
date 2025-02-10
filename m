Return-Path: <devicetree+bounces-144702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E595A2EF83
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 15:16:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D00C1646FA
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 14:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A68AE23644C;
	Mon, 10 Feb 2025 14:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c8vMEviS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD5C2309A4
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 14:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739197016; cv=none; b=I+6TUIJdZz/GF20Kn5MIg9QQ1k7iMihvOG8n83e5cp83SwDin1Q79hvx6HCau4uvQ3SPK6E8/RixQiPjAda70XkwcOq5/G9i93xx8GFUbva807mCoqo0NF1Kb+pc4y+cRDGcdss4qwJObjG3TpeAD1OO9EIKtV/hmbSl7D9f+uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739197016; c=relaxed/simple;
	bh=2yxORkU0BwHhsffL3ulJIkwpSZLMqKG329zUxbYPPkQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=OO329v2aOTFEPToHIeexQRQfzsfqolFBPPLo367RIcaTnPO0Fmbc569H9L8tWfg7vFR84kHWeH4/zljyx9YPrVv7mFDmBgspb4SHG1FmB2eQJrFpAwSHztjNeX3lJvSrL3J1NgZ1g+hwGweZNRnbEtt6J4BNMFmGnumWl5c33Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c8vMEviS; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4394036c0efso7678475e9.2
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 06:16:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739197013; x=1739801813; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2yxORkU0BwHhsffL3ulJIkwpSZLMqKG329zUxbYPPkQ=;
        b=c8vMEviSdGGG+OwqL+0FhZh92J0mG42QRkGQp2qetOhZSSiBRIu/HuMruZZ4Zl8+OK
         IBCNDZrl/fM4aN3QtiaeUFtDIlOTUoK0pYFXzCmKjzhjXiNCflCrQ8jEZR5AIc9ajEll
         uQhWQbnR5LF2e0kjNodZo4htgr0v1+QTQtpxbuP9kEEID47atMToE65WV5JnpxUVKM7k
         BGXvLsY9hapb6NmeWn9zgPxvGJDo+ygk3EUvnvuGG3OwWmc9aA7iEYtSZPLVR3+F6D4p
         PAMOQqedMRFzJr94QFDmoTcThZjPWkqGtyG2bDy5lcbti1Fx7YHTyD8iNvd44qIHUcXU
         VI1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739197013; x=1739801813;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2yxORkU0BwHhsffL3ulJIkwpSZLMqKG329zUxbYPPkQ=;
        b=vuby4YD1d1jFhn2msrr1m8F1Ob7NdddEz50YwnmSQkBYtVTwgGgxZgNcPHLY/DTx8u
         TxM2nmpV3XdjwMNt9NBgLe484+VS3qCMr15/4oHRSSmp0aB2mS0X8Qn4FiDyC7/zUBmA
         gcnjqBZvFq5uUvHdV3DBVMEQlzYfwJfIm76FvT4cGEltPdg4r/0trxcRq7FiXpZ/mccj
         pwO41oxN2OS68DDm0wdmusbQ8AbjL/lTx2RRPC+LDb7TZM2csrRjW+rTSLINxmkyfRF7
         Wlz6H+ems1Sk8u0X0aDoakajvRJxaXvz9jqVd7HYT4dHM0htFOD+zP+vcSjlXR1SpIJ7
         5+vg==
X-Forwarded-Encrypted: i=1; AJvYcCXa1zJcBaeMBbyRryvdnTex7bCgy/wjZ4zqAqFIxjYM7rUlXfpB03sDRVAoiZ55wScRSEzQILD7/ymm@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8FmDlHYMGoL939YFgwcqgIFiljmRGRyHso1259rPOlY8EISnd
	zxG/fCN6Oe9SSCNUUlw9sRoh032TJnLdTnYxW68XSFeoYnIejq5L
X-Gm-Gg: ASbGncvUl0mIvI5nQCH6XUysbQwKX4uN8u5GvoaAdZMkCjT6Tdbot0jMk1cAzw0vupk
	1l349+k+VRo/lfSQWNPhCZNMJjSTvy0UY9RyWWHve1FLOIhFfE+NwEc1F5fzJTEcd2CHc/H+hlb
	IQ5jmbQq91I1N5db4jQYBWgnblOwRcVZHRFzp30VRP1iFf3FE69UHmGdXwnZtbJzEAwlGgWXvep
	UOwFIgH4wcZVXSEyQ+texbcUKLuqWQ54lRyN4/VpKijnVbWube2w3zNSXw2PeNLOAyuGm2uySs/
	hSDACU5NCzNdoHPJAKQbTMM2FBNKXQy0
X-Google-Smtp-Source: AGHT+IHNOu5fBQbgxx/H3Ub0lE217C3Rg7B6vLrKoEEdX+bR5RhSjkNikHnqhQxwOe47XQ6szqa9EA==
X-Received: by 2002:a05:600c:1913:b0:434:faa9:5266 with SMTP id 5b1f17b1804b1-43924991f73mr111581495e9.13.1739197012751;
        Mon, 10 Feb 2025 06:16:52 -0800 (PST)
Received: from giga-mm.home ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4390db110dfsm186220095e9.36.2025.02.10.06.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 06:16:52 -0800 (PST)
Message-ID: <5e08940e72d4669eac3d4090fec84c8a1ecb17c3.camel@gmail.com>
Subject: Re: [PATCH 03/10] arm64: dts: sophgo: Add initial SG2000 SoC device
 tree
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>, soc@lists.linux.dev
Cc: Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto
 <inochiama@outlook.com>, 	linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, Haylen Chu	 <heylenay@outlook.com>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann	 <arnd@arndb.de>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>
Date: Mon, 10 Feb 2025 15:16:50 +0100
In-Reply-To: <g7gruyv5rczuqybblnxy7myh2rakk2dmldy3ks247evjb6k3zj@ffkzilxgp3gy>
References: <20250209220646.1090868-1-alexander.sverdlin@gmail.com>
	 <20250209220646.1090868-4-alexander.sverdlin@gmail.com>
	 <g7gruyv5rczuqybblnxy7myh2rakk2dmldy3ks247evjb6k3zj@ffkzilxgp3gy>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Inochi,

On Mon, 2025-02-10 at 13:05 +0800, Inochi Amaoto wrote:
> > Add initial device tree for the SG2000 SoC by SOPHGO (from ARM64 PoV).
> >=20
> > Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
>=20
> Can you add a riscv version of the this file too? This also applies
> to patch 4 and 5

this would require binary Sophgo RiscV toolchain, which was the whole
point of my ARM64 BSP. So, while I could add RiscV counterparts, they
would be completely untested.

On the macro level that how I see the current state of upstream affairs:

RiscV:
There are necessary upstream packages available required to boot, but
there is no upstream toolchain to build them.

ARM64:
There is an upstream toolchain, but the published U-Boot is being
linked with ATF binaries -- I was planning to come up with pure
U-Boot BSP for this, without binary blobs.

--=20
Alexander Sverdlin.


