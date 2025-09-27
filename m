Return-Path: <devicetree+bounces-222077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D1290BA5BAF
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 10:59:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 081391BC065B
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 08:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2D6D2D5934;
	Sat, 27 Sep 2025 08:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="tORB/4U3"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B61B2D593D
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 08:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.17.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758963537; cv=none; b=sxTRJUhkJyw4x+FvyHaOI8QlBM5+Yx2huTpDCsVN+sj7vhbEq0FZ+c/0krxUIAPqyarki+VDbn5f7D2Nvp5a3AmrKdI8AqKkkeDhKS5PKq5XroWILQP6EyWjxdrMEcBfxxLJjoHA8j04ScgmAVef6qDEwWpOKp/dFC2EqJ1WbDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758963537; c=relaxed/simple;
	bh=B0pAbBqp6hhY+qU5XIRwOAqLBsaXhEyu7Y5QnbHdSQM=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=BZUseaNjZySPMhX6p6Q53FUJDXYTTbU+b85VZfcyipfWKdW4F1ieL78SnRVoCar5YJeiJFHrkrb/6PSaQ4KSpvovUzwKmcbu1+4RCfhTN41z1tMwlGY57Sh8DiW40rOR+Os7T5P9AL9LGAfpb+B6ZshVNOrWn62x3NWe+1awu9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=tORB/4U3; arc=none smtp.client-ip=212.227.17.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1758963533; x=1759568333; i=wahrenst@gmx.net;
	bh=B0pAbBqp6hhY+qU5XIRwOAqLBsaXhEyu7Y5QnbHdSQM=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=tORB/4U3me8HIDuRr0m6Bo+XZWuaPCMklo+8YmMIJtkx7dHUhVXh6HdfnReAfnNt
	 66SdYN55j4cFVCp9DsvY3osNPYvTGhqd3ANDFEuUDDE+biFvYW/+gls7oCb7+kXzF
	 qbRaJ/zgmMVcSDQflvZtBSABbxICdxwcWiCd3MnOiv3ngphOzZL5WJr4Nn9gDL63L
	 1ia5sICb0Zo099jDT3cDy0yD4ORLIQE17sJqknbwMRVE8BGe9Wm+yZJ9j9QhdEKcA
	 6nLyMOAox4UPfeHttVv5GL9DdTuso3c28h3VN6pKnsdviMKdgkdcth9wONqdnkR3G
	 eINfxl96961SHpR2sA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.105] ([79.235.128.112]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MKbg4-1um0LB0B4e-00WgZ6; Sat, 27
 Sep 2025 10:58:53 +0200
Message-ID: <e8e5e15f-b6f6-4a9a-a3a8-7f71ab8fd78b@gmx.net>
Date: Sat, 27 Sep 2025 10:58:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: broadcom: bcm2712: Enable RNG
To: Peter Robinson <pbrobinson@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Phil Elwell <phil@raspberrypi.com>,
 Andrea della Porta <andrea.porta@suse.com>, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20250927075643.716179-1-pbrobinson@gmail.com>
Content-Language: en-US
From: Stefan Wahren <wahrenst@gmx.net>
Autocrypt: addr=wahrenst@gmx.net; keydata=
 xjMEZ1dOJBYJKwYBBAHaRw8BAQdA7H2MMG3q8FV7kAPko5vOAeaa4UA1I0hMgga1j5iYTTvN
 IFN0ZWZhbiBXYWhyZW4gPHdhaHJlbnN0QGdteC5uZXQ+wo8EExYIADcWIQT3FXg+ApsOhPDN
 NNFuwvLLwiAwigUCZ1dOJAUJB4TOAAIbAwQLCQgHBRUICQoLBRYCAwEAAAoJEG7C8svCIDCK
 JQ4BAP4Y9uuHAxbAhHSQf6UZ+hl5BDznsZVBJvH8cZe2dSZ6AQCNgoc1Lxw1tvPscuC1Jd1C
 TZomrGfQI47OiiJ3vGktBc44BGdXTiQSCisGAQQBl1UBBQEBB0B5M0B2E2XxySUQhU6emMYx
 f5QR/BrEK0hs3bLT6Hb9WgMBCAfCfgQYFggAJhYhBPcVeD4Cmw6E8M000W7C8svCIDCKBQJn
 V04kBQkHhM4AAhsMAAoJEG7C8svCIDCKJxoA/i+kqD5bphZEucrJHw77ujnOQbiKY2rLb0pE
 aHMQoiECAQDVbj827W1Yai/0XEABIr8Ci6a+/qZ8Vz6MZzL5GJosAA==
In-Reply-To: <20250927075643.716179-1-pbrobinson@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:RuHiGwxU4Ve2BuN2wcz39L36XPgnXjnXFdQo8vC4pRjmWfGGSc0
 mF0N1xH1o2MfN9ARtkMW1VnzpmFEjJoCW1JyviOLczUJi43im2HnzvHWUAmLoJ7ZavUTnap
 W4A/bI92jEJ5j9gXCOFO1Ar1IDLyLa0t0i0VspzjPkPX/2sYXPAOsQWz5FerlNYGozR4vOE
 IgJlvOsqwzLZNQiG6uPlw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:04lHL1gi68Q=;GgtlaoUC9NUxYfznkRwdu70kRfP
 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

Am 27.09.25 um 09:56 schrieb Peter Robinson:
> The RNG is the same IP as in the bcm2711 so add the
> device tree block to enable the device.
>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
Reviewed-by: Stefan Wahren <wahrenst@gmx.net>

Thanks

