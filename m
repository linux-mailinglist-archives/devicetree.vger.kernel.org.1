Return-Path: <devicetree+bounces-134702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A11129FE51E
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 10:59:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6191A1625EE
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 09:59:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 184741A3A8D;
	Mon, 30 Dec 2024 09:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AAXhAxUS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439DA1A2C29
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 09:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735552774; cv=none; b=Gkv4yrQLXPJjwP21FQl4xOdZ/zfOlviuIb6sjtPVxtTp8KPlcLYyDImhYiLIOY+AC0mk5ww+1Mliy5oObQavJrPoNWFjfbN6T4k+OExO9IeitgZ5GB90W2yEY4YuBvIm4G3n86zHBu7bMtBZPtKccAGpPoVgQPm1HdCZK53rtFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735552774; c=relaxed/simple;
	bh=QWl+IMNt6dYd4yMN7dMLpdd1vkvox6dV8tedMPzqA4k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=rz6qieI6jP0B7LwT8RXoio7psh8RYp0qwJF4PMZA9ZlVP45GkGL7T/PVXqMkmHlOwB4dRmF5mX4bmkcSmMLIZXQeJdtr5S7OJlLx49LJ09VQVjgG2BIyGwLV76nj66fKM4ToXndFxecdfkqF7ufj/bdPzSSTlec82nHqd+0GAzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AAXhAxUS; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3863c36a731so6919368f8f.1
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 01:59:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735552770; x=1736157570; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ORCqMwl+SAp/HgeyDZWrdJX6WYlSwrJwZn4hxNWVVck=;
        b=AAXhAxUSETPR2+GA1CXeUqYKpqIzrCeg7Xdd4mrz+l82dw9FTwULyLY0YTfkBRJuGd
         pV0ApMFwf3WNfdmKzR7pRooAMjQ0daiaEyhxSmMrcWdB1VS5S0yV84G0kmft1PNdYgHP
         dGD5lEvjbyE0sTs662XTvhJ7n7bbbN4tE24Q3ZffeFSxXnr2n8Q0XmJLEyEEkCpn3ZZR
         TGMFyQ9ICsOnvVSga30KKo2uSxVEgdp3UDZbxZestZV6fQH5Rm3jemA2qE8CWjIrCH5O
         GPrSQkxqPs75odWMSXqyIXmysNlR26FTQOkwCpOu3xlSLDDgx13gjHYYmZ0kdNPLeKuz
         Npeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735552770; x=1736157570;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ORCqMwl+SAp/HgeyDZWrdJX6WYlSwrJwZn4hxNWVVck=;
        b=n5GlBbIneIHBHaWzlfm/DiNLPmPHgHNxDxedtTNJV9ubSPOtoUGJfMikbrXREVBPbt
         NqsNeWRKF1C5g/PITPk3IZsPhbOR6Ui9UQRuQMP3Hcnee6pWkroohSDzVF92RnLphGmI
         4mI/xjqdKsP9wSt0vOg331fudD2Hv9pijLXqz41FkHnEuFCl3g9w5E/Q72knO6L+Q8Od
         AmmWvmNDsXF9OZY81OMvv1FDAeU4Xl0OHS+W3F4pYY9giw/VYkv2RtnP23bJJF8wqi70
         jxVXKd8/DVaBIJ9peH2uTVglTq5Yihb6SX+XDgZz+FICXQRCz+3dzsU1DaS2nl+JYMZX
         fHmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVISyggKicelbp1D7RPVNxae7VHDSL96FQ/a3waeFW5NGutLs+YL+xppC/8Cbx3LwUYy5cKVYxE4q5T@vger.kernel.org
X-Gm-Message-State: AOJu0YxU7B6FBFk78nEWqq40zskA4GpPfcNlvimDUZCGZ9Vn/KqzN1gT
	qaNVyzkp5CMqgzFiIwtpbmItnJpA2xQDD05RCJJovxqg6N5MYzNMatwkXrwmTKM=
X-Gm-Gg: ASbGncsDAXCin+EHRYaAqtSP6rlGVwGsJApdTExhosc8r/rQM45IIRXnx1yVD1K0as9
	gvzVfIxRERBc+vwGDSsigftMf3aTm8ZrSobqoXXUcRNFRDn8dsE99ql2izlres6475FWEW2owb8
	XC9wbMZ0/+d/d9bI0iHXUcblDAw1n8TeHo/evG57G9rtelvESeYQN1y37eol5znOtMR6rmmfNVX
	MaVfnnE9BCzNy8ThMRAd+ZUU8UA73qOEAsxtEQIbQKhqO3Evc9iwwkp2eebRHoExQhsI4LCqk12
	KQ==
X-Google-Smtp-Source: AGHT+IEtZftynNsczV2vu95ZXDwj5mXq7bMZgAVBOfkVYRXoJZgIO+SXbYok4rrRMwDseSXqu17tkQ==
X-Received: by 2002:adf:ab0c:0:b0:386:37f5:99f6 with SMTP id ffacd0b85a97d-38a223ff225mr24971091f8f.53.1735552770588;
        Mon, 30 Dec 2024 01:59:30 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4366127c493sm347650735e9.28.2024.12.30.01.59.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 01:59:30 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: linux-amlogic@lists.infradead.org, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, jbrunet@baylibre.com
In-Reply-To: <20241227212514.1376682-1-martin.blumenstingl@googlemail.com>
References: <20241227212514.1376682-1-martin.blumenstingl@googlemail.com>
Subject: Re: (subset) [PATCH 0/5] dts: amlogic: switch to the new PWM
 controller binding
Message-Id: <173555276981.2075882.719017533990914280.b4-ty@linaro.org>
Date: Mon, 30 Dec 2024 10:59:29 +0100
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

On Fri, 27 Dec 2024 22:25:09 +0100, Martin Blumenstingl wrote:
> This series switches all Amlogic SoCs to use the new PWM controller
> binding. The main benefits of the new binding are:
> - the pwm controller driver now picks the best possible clock to
>   achieve the most accurate pwm output
> - board.dts don't have to know about the pwm clock inputs anymore (as
>   the driver picks the best one automatically)
> - new SoCs only need a new compatible string but no pwm-meson driver
>   changes, assuming only the clock inputs differ from older IP
>   revisions
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.15/arm64-dt)

[3/5] arm64: dts: amlogic: gx: switch to the new PWM controller binding
      https://git.kernel.org/amlogic/c/12abaac5a70994490e565249dcffbb5c329b30bd
[4/5] arm64: dts: amlogic: axg: switch to the new PWM controller binding
      https://git.kernel.org/amlogic/c/77747dbb11466d5ac2ee11a260e8de0b65f3fd1c
[5/5] arm64: dts: amlogic: g12: switch to the new PWM controller binding
      https://git.kernel.org/amlogic/c/06c993691a2fdcabc43053a8fdd813cdeef516c4

These changes has been applied on the intermediate git tree [1].

The v6.15/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


