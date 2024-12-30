Return-Path: <devicetree+bounces-134701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1099FE51C
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 10:59:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6EDF418813D1
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 09:59:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC6781A38F9;
	Mon, 30 Dec 2024 09:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nwVu9lzC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9AF81A2C0B
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 09:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735552748; cv=none; b=gmJC3MS6JAD6FEFaxpg13YgjSx9Tc+3PHDPWqQ+ESWlzmwjLkwHoZqJAaaSSTluBdb78btdwx5Xicwtz+Qt5TVqZifK+7TLSfUrWBG9vUZHAtsGEI058s76d7dFEhkEku9QDj+Ajthj2Bick8Vvo7GRGGq7DMr5J59KNMNyVd78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735552748; c=relaxed/simple;
	bh=D+iKqPVLy/B0YbqcmPK1ifVZbyOqCHeLanFLei0mkZI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=LEqE448979pI8CQCZ+MI2v7PvDeQfkZm5/3ppx77v9PkMF2UpDrPlbisOF4RQuDKW52MhVZELBrJehjy6l7rhQz2PG8SitpCB3uX4/GrXc7wrkt3J754GegraoIi29T3E0756tL2BoLuImxswjriBpH+golXNoASZvrKs2w9osA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nwVu9lzC; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-436637e8c8dso91093825e9.1
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 01:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735552745; x=1736157545; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wg3rOrpJ/V4ITpzMYa7ur6drZTaKRgCmtn4RTKqUP6U=;
        b=nwVu9lzCt9Rw4qqqRJH6ACwU/6oIQlKH7EzRUNbS3myhtHx0MVz/9z/9LfPvwOzBKS
         vm3zSgIJDDs2bQSPAAT/6XxrftGE0xzf7m4gWESpelerEeoqrsi/ip8TXxdtJEpn4IK4
         jeU3rNlJ9E/ptCaA6Cx0elCt9q9GCD6SP13FTmZxucz7rNIxK5n2GrDzzuR2RjfDOE8T
         FEyBkm5Ktz1TebBybnOVv22L3LWbRdOuEDwo4zc/PcsebL9MmbgoyjU3G/7QOo8477YV
         QZxUG4yHjgaI3t8KmPz9Ujhy7yRqoX6eyJYF1iFYC1wi9YHGWiTi5euuT478Uwkzq4yN
         iUjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735552745; x=1736157545;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wg3rOrpJ/V4ITpzMYa7ur6drZTaKRgCmtn4RTKqUP6U=;
        b=mjxjbqn0DnpaZpcERMCSpwrbzLz8k9BwUWcXHtJyMj55bhjVQJasvKSCa8s3rcE1Z9
         rjCrbb3g2rpRhIcVAD9MtWmyxdNrC08+OGlooqWmyGScVroOfLuvqOlFzSkT3xOQt16+
         3+vyg6SfsHYoGc7Rv2a/OiDbTMZXV7Lf9pE5YH9JSrz3EUMOjDUBtW7WyrGjs9uxvtWI
         G0hOcDcE2DgjI9hNRh+3pL1WzbqX83I86Aokt3Mk55x4zemhf3jcwJV5IvNXpMGKI6aB
         1tu4JTB1fbRG6vvm/wefTseohSRRfZnVVWwjnoWsVod+eH4dn3DtOkXlmpFeFlo4Ku2x
         KhEw==
X-Forwarded-Encrypted: i=1; AJvYcCVGsj8RE1tOtsSxwvca6At7Ko2umuzam08UOF2//ncQ8lL7z3iZcedvA59EqcH0isgwjS8i60B2xp51@vger.kernel.org
X-Gm-Message-State: AOJu0Yw41d/ITPalTHcrTWmmhFzhZfnFEs+Twn1zKvNJNG4LAe3Yeveh
	ivqW/IfSjlH0ejm5D1PGFkSfO5Bgo06LQ2CxzvQvgMm1MR27PxDVdheAsfNHozg=
X-Gm-Gg: ASbGncvrf31WH9zEkPdLXUZnv60pKr7ZmKTlZoIg6EjY24oy7k9yKJ0hViOEfuJA5yK
	XDEgUVQBiGg+XfsS3D6/Z7kaHBpvm5/AL8+Kpx72bW1ECUzFKuF49Fz7AZgEExnlgO9UN+FtKSE
	u0DYBTD/HwApTYTLqt99o3jYCRJOtOUY7YNqMPyV411D7ti+/V1VN5xDOiaTY0TA1m55o98HUb/
	KWGZybLZNbT5/1qMS409jj+riVCImRhPVN/6PIg3COZLX1ymGTUxw7Cvmvan9eaG4JOHjFaVZBG
	ew==
X-Google-Smtp-Source: AGHT+IHr0EeJk2baaepc6dGYNclRyZGkhsRUfmQUaioxZkb4SLPwgkjT+Y6PbldALk9VG7k/0s1IDg==
X-Received: by 2002:a05:600c:294c:b0:436:51bb:7a53 with SMTP id 5b1f17b1804b1-43668643ba9mr312560605e9.12.1735552745215;
        Mon, 30 Dec 2024 01:59:05 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c832c45sm29382108f8f.32.2024.12.30.01.59.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 01:59:04 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: linux-amlogic@lists.infradead.org, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, jbrunet@baylibre.com
In-Reply-To: <20241227212514.1376682-1-martin.blumenstingl@googlemail.com>
References: <20241227212514.1376682-1-martin.blumenstingl@googlemail.com>
Subject: Re: (subset) [PATCH 0/5] dts: amlogic: switch to the new PWM
 controller binding
Message-Id: <173555274448.2075376.17109271239824246199.b4-ty@linaro.org>
Date: Mon, 30 Dec 2024 10:59:04 +0100
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

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.15/arm-dt)

[1/5] ARM: dts: amlogic: meson8: switch to the new PWM controller binding
      https://git.kernel.org/amlogic/c/d352e8fc91526bdbb70468e8dea13581b905891f
[2/5] ARM: dts: amlogic: meson8b: switch to the new PWM controller binding
      https://git.kernel.org/amlogic/c/39786592bfdd92b64a68283fa896e108ca9822de

These changes has been applied on the intermediate git tree [1].

The v6.15/arm-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


