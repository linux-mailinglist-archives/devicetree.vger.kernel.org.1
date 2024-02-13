Return-Path: <devicetree+bounces-41198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03480852B98
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 09:47:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 365501C22855
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 08:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 346E1224D8;
	Tue, 13 Feb 2024 08:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TpYV1u+L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506B420B27
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 08:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707814029; cv=none; b=V6sgXJAOnRCicv67/kub1XnLVP8aqdwHpqeG93gKMAYFmRRqOBUb4Zkpcpe95gQvVsRkpPGZoelPJUgXU+Ntf68LIXY6YraVxcaW+ySJFC6AI3fv8gyfJyWLQTIlQpaVyB8JA5phrnf534DaGPHZ4auPmluWWGdhsS4T8XUoPmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707814029; c=relaxed/simple;
	bh=a0AhMvMBCr7vWzt23NoYNTU1Wgk3fVcDnc7zQ2mzpms=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=pv1DFzjezJSoOs5iDrOz1pRu75/LiO5AI43VA7XuMKaQjOxry2nvjWIlGJDxRFu5J3aiKDJ//qK7sU703x4/ANvvt5N43MAZ4E+3LTBjTjxxXK/d2NixpAufFTLs70gYpAr0nrl62vaB2aPg0g9RFul5ZvuL09QFtnPHs/FgReg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TpYV1u+L; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-411baf44a0aso2762735e9.0
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 00:47:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707814025; x=1708418825; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UL6+54Bn28isJYNVVsc9wHQqBtpvekWqbNxClEEpQwE=;
        b=TpYV1u+LGjKw9rrAoKMaOzxmeD7+Kf+FBqfBPDtOh4CTrtNm4hOSO6gA/Tmq0UcMbG
         0rzNdzXexT56VbUGNuSfW4247Lt1b1cliSMoRCpDBu+OrbuofyjVi+0XafOyg2rjHGfs
         gj+e6R4iRoWVDDY0mDGnSegToJpStCsLBGZytpJKMVCpZDkO85xeNdDNIRnoLNmpw4QY
         PnVjPsE3xkaXTVeq1MIOpuTSGAvhSGaaPz0iubJsm5m0MuujljUQUiGJstYzdM5hEpTI
         xzzO0JVD6HWUwpk8CQ3DCF+RPqT4tnlN3UwlG8nf3ai4eUZjzm1IOMC9+Qi7GKLfen1N
         fH6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707814025; x=1708418825;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UL6+54Bn28isJYNVVsc9wHQqBtpvekWqbNxClEEpQwE=;
        b=mXODnxanPHlMdix9iTwVLS4X1Oi+Ja3gF8WSR4XyXtBk2fSqPMjAeGiBBmBLKYKdIV
         OhaQhQ5puzOWirMlYqKctx1y4XVMFoJKFQyy2vOFEDqd+ml+UlHjzd49REDmq0QTB25a
         eCwQP68mpmxkQyiYT0l2GyqqeUtpQ27lRLV4R45gnydARNYpjTRUrwTMEfcIUF8GpUxY
         kJmRsvO/1o8+yPkBIRslLQTxALMBNZa82+CKuS4ZfwrfA4MrB8nAgR4tZxq2kaPMAAm+
         UlnGDBU+lWtxyTkbMpTpgoU0j13Qe6D5XhnXPa9x+LSHvIp8zkWXbP4LTqDt8FnnH0Ng
         ZB5A==
X-Gm-Message-State: AOJu0YzKQ2YXbDLwnM/pix2qAptaJrJdGPR50+EpEhrimwOLOODLmt30
	HpLdtZycwfHwqqATfXiobCdq2gl4s89Fl64r+wNTVpK7eRFue29LwXZmXJBVDwM=
X-Google-Smtp-Source: AGHT+IE8InF+/Xt1UPuRw5x66d6evDnELpDvPFVVv4NCMEUADrcu3PB0+DvyfdVb86EzCr4XV5tKVw==
X-Received: by 2002:a05:600c:1548:b0:40f:d25c:41d0 with SMTP id f8-20020a05600c154800b0040fd25c41d0mr8388501wmg.29.1707814025459;
        Tue, 13 Feb 2024 00:47:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUT0GQy7Y8azAepuXHPWUSf2Lg7ZCjC/Cahq9AjpQJPu3FHOKTpR2lqb1bONeEGM+qBzGe+5vj0rGvixZJS+yysrdtV67nrQNLiLOYjCLc9d7WE377YSh4FqbCNdUHf66/x/rv1YvksGU9CdwwX99lkHoF1oG6Q2Iq8QtlWw0vFQ2wcdCwjfzq3pbp6MMgEdMyQAtC1XxBUnlK79xln4z9Vhxg7rAwck3VHfLlXmzp4I7lomnr2O/47ggsudjG0gdojuSfWRtyABSUG1HPHRABdZB0Xj+4vFRtYiPskLmBcyBiVYLniNiUc5nAQ5hjupV+YzyJXIb7wGCnCIUIhP64hw8VCRvj3aHtxlvMdfHFKoiWKZxcvBYYOBOoxsZb6WxrhqSKA0QhL951tGwOMLA4oqhcNbdlB/T32Ulp/QhUP9tk8tf8WCnDuqNFW2qa2Hmmhv9HUV873KaB5jX7kKCzZ+gZ/N7D2fXbed8v7VJQGA5kTUGiBc5ueXBDBlIP7y9NFLEqysPrhuISi5JutHSbI4SifKbrvO6i8axq/bH9zg8+Vrk14lVqadZmLJZlXhfgGDIA=
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id y8-20020a5d4708000000b0033b507b0abdsm8888707wrq.32.2024.02.13.00.47.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 00:47:05 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: jbrunet@baylibre.com, mturquette@baylibre.com, adeep@lexina.in, 
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, khilman@baylibre.com, 
 martin.blumenstingl@googlemail.com, conor+dt@kernel.org, 
 Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: kernel@sberdevices.ru, sdfw_system_team@sberdevices.ru, 
 rockosov@gmail.com, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20240209212816.11187-1-ddrokosov@salutedevices.com>
References: <20240209212816.11187-1-ddrokosov@salutedevices.com>
Subject: Re: [PATCH v1 0/2] meson-axg: properly setup CPU power management
Message-Id: <170781402460.1503948.8383837524449723560.b4-ty@linaro.org>
Date: Tue, 13 Feb 2024 09:47:04 +0100
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

On Sat, 10 Feb 2024 00:28:04 +0300, Dmitry Rokosov wrote:
> The Meson AXG leverages the SCPI ARM protocol for the management of CPU
> power, thermal, and frequency. This series addresses several issues that
> have impacted the functionality of the power_allocator thermal governor
> and cpufreq cooling devices.
> 
> Dmitry Rokosov (2):
>   arm64: dts: amlogic: axg: move cpu cooling-cells to common dtsi
>   arm64: dts: amlogic: axg: initialize default SoC capacitance
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.9/arm64-dt)

[1/2] arm64: dts: amlogic: axg: move cpu cooling-cells to common dtsi
      https://git.kernel.org/amlogic/c/7c3215fe05fe3b8faacc03245cc922c4b98075d7
[2/2] arm64: dts: amlogic: axg: initialize default SoC capacitance
      https://git.kernel.org/amlogic/c/a06d4fdec1ce800188bec15c0219d6774dd145f8

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


