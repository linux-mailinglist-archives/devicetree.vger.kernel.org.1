Return-Path: <devicetree+bounces-243853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 58424C9DCFB
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 06:42:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3EEE84E031A
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 05:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C42C279903;
	Wed,  3 Dec 2025 05:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IRYQkMEp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B8FB1427A
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 05:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764740539; cv=none; b=EWU3jcKTJ1AlLaTDtQCaa7Y0gkwCveZdKZPHrZyp97MHdN61++rHi5OJDVHbzVjf7QRpM6xY6/xM6xAQHXyHVyY4e0uLJM4l0W1UJY9Nlq5V3s/aS4g0LiMays0ETF8kHfqyb/BgSGcr+qUAd2utQ8Ef6/smYu9B0ea0JTQY47o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764740539; c=relaxed/simple;
	bh=S+5VggZEnWDVV6fzxOJHrHqHDe4EPCVX9bFyt0D343U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jkcWfkyFSxAu+NcsaFYCmUW//dmNxXmTNuVxpug3/F9Rhpc4l5c+FLVh/zUdz6WJfnZUAWOgAS5tLiLgVO0SwT8bH13geTxhZ3f0mWsbrBsyksk3sXT2QmkK1gGcUFzcrS7H6ONxeCn9hr7MQ7Eo6IPIlgWUapYB8loFFN7K8vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IRYQkMEp; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-42e2e671521so2144412f8f.1
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 21:42:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764740536; x=1765345336; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PxfbM7kuJoD5VPtlLfzvhUKZY27u02y36QHhwGGHEm4=;
        b=IRYQkMEp8lk+ojiHnxyPEdEAPTUq4Be1CD1NKAVIUjfUPJ7O+qaZlTkzoeHS3tFl5M
         ICJaSsohq46C5Iz3whGnSeIcQDaB2p8Kd+/iSDSKm390yUdCTGwWv4pAOViDH4i7pj8u
         YlNLIJgta5XHaSqMKvzMtbPM0TPx4ysi/LpeJfPxCSYoTEpAJ70KKjSDlNvqnjSK19xE
         9aBkVBEm3lv7/qJ5fEDo9SIKhMJQSdPaZJ5ME5XKmXpsFqcqI6CgFWveEAMT8GH1PqV7
         AltnerSB9KXoTOisX32DimzU6YhtuJFKW+r91tjNS6/IMBoPKmDMm0REOEyuvryIdtOp
         M7ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764740536; x=1765345336;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PxfbM7kuJoD5VPtlLfzvhUKZY27u02y36QHhwGGHEm4=;
        b=FC3wXS/Q7Xh9UJFQ8wFlEV3AlVnE/jjmdHWsFAqnlmCAlSIBz3krwZQyerJL+LvdqT
         IGL+/CntxrWLY/kyEXYFU7ObhMWsEKZZ90GMIBNBW7VwAgpZkpHhLlD5xT+qf1bj2vpt
         E29w6DH/cSYL3od1CCIGxHRD6kIwkNRgIBs8Ejzc7SEvljBDJXwvebsGOjMJrhjYadfQ
         A53oiU03O0wljp3S6FmqXUOLYzJRCkHPr10lifsOcUuvy8t2O+BAxqnIXPyoXX4chBpd
         01+eCPriK/8B0sPHktcP82R6gludOp3LcO3qAwsn3TI2HQOlmHyAYnaRLybDYXboJwA+
         hqAQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9fNM8ajDB9mov2t1j71v4J8WuKyA/weYTuOhxvpAnhqcoVbTc0YYaTsbPnsH6rP8PQ+yGCviJUWoD@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp2UubS0REl36MLAMQHsqkALt+OHr1D6NPkzmThmkLpOc2MOIh
	cGINmZlFQh+5ePUauFWwZDB+iz+o6aclnbV3CRANvCWY80eiN5UZeddShdED83YW/oMSno2XN4h
	4y51ZUVBzMweD909DADYw6ITGCeeekrg=
X-Gm-Gg: ASbGncud6J5yRMiPXoes0ckY0hZijRZgMJ9rQOROQkYDdeN7iUXBz9X4Usfe4vnyYxc
	fqC3tUdNeG0dTvwqLW5UxRSkPyDiwiIyxk6aoHShD6Si1pqgMILEbRRbd6/PMkQmSGkF3Fcqv/Y
	5EQUPr9jlGaU21RykXR3Jli+LEfto+rQ7/yx3slq9l1G8zPw95GhLnIwxie8IsJXVwjQlEDxiv+
	Y5Koe811VeuCqD2A0bR3kdDICXrWSZTebdgSPoQbsCv/7WkP0BwZ/e3HUieGHT2rKIeK0DDGE3m
	44iw7TfgpdPhbHjxminqyT+iAiU=
X-Google-Smtp-Source: AGHT+IFwCU9aRxx0MKhqPujuKT29rmxF6xmzausYLLlPgggVvzW7ukxmxusjZ9FhENtch87NXn/V5mnqZleru3GSdPo=
X-Received: by 2002:a5d:588f:0:b0:42b:5567:854b with SMTP id
 ffacd0b85a97d-42f731ca5f0mr828801f8f.45.1764740535856; Tue, 02 Dec 2025
 21:42:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251202084052.1517-1-naoki@radxa.com> <185BFDE915D4629C+83d852ac-617c-48a0-aeba-a881e3542e78@radxa.com>
In-Reply-To: <185BFDE915D4629C+83d852ac-617c-48a0-aeba-a881e3542e78@radxa.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Tue, 2 Dec 2025 23:42:04 -0600
X-Gm-Features: AWmQ_bkYAI-HnsWNwu9p3xu0D33k6sG0cDL1tSqIJ0N19bShJ-eFNSO_MvNSlj8
Message-ID: <CALWfF7+ESPGscJNrxxSEyNmJsFTRDM2crjAduiCfqaMUETd2_A@mail.gmail.com>
Subject: Re: [RESEND2 PATCH v5 0/3] Add Radxa CM5 module and IO board dts
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quentin.schulz@cherry.de, 
	jonas@kwiboo.se, kever.yang@rock-chips.com, inindev@gmail.com, 
	michael.opdenacker@rootcommit.com, dsimic@manjaro.org, pbrobinson@gmail.com, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 2, 2025 at 4:16=E2=80=AFAM FUKAUMI Naoki <naoki@radxa.com> wrot=
e:
>
> Hi all,
>
> I sincerely hope the following will be helpful in your review.
>   https://github.com/RadxaNaoki/linux/blob/cm5-io-v999-20251201/arch/arm6=
4/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
>   https://github.com/RadxaNaoki/linux/blob/cm5-io-v999-20251201/arch/arm6=
4/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
Could you elaborate on why you're linking to the "v999" branch? The
content of that branch doesn't match the contents of this patch series
(i.e. RESEND 2 of v5). The "v5" branch looks closer to this
submission.
https://github.com/RadxaNaoki/linux/blob/cm5-io-v5-20251201

Comments on the "v999" branch...it does have the improvements:
- that allows the usage of the Radxa eMMC to uSD adapter
- defines the gmac1 in the SoM dtsi, but only enables the gmac1 in the
IO board's dts.


>
> Best regards,
>
> --
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.

Jimmy

