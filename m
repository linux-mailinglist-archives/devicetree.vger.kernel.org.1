Return-Path: <devicetree+bounces-37555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EDD845592
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 11:37:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 418501C2A494
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 10:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A013215CD66;
	Thu,  1 Feb 2024 10:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yh8Ofelf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E280815CD4A
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 10:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706783804; cv=none; b=ckktpZtngKkivdEC16msV2+VDDkL/pLRqZU+1tskTtoIzquvR9Qw2LLbuHXvE88FNQZdEWNKpASSoRJSz2VK0duuBXeGhycAQykiy71ND2taGDyrGfk3dISv3ydeJiYvpuK8R0qGlNC5PWECabOSGoLM66FtMRtZWbOkJlopJdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706783804; c=relaxed/simple;
	bh=qgxGtqz0Hm8lEhfsyYOFZ9uLr5Gy8MYtN5ATEsQTVzs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=eisIRsJq8bE0whN5nXZfMSj5Nd1i4AZhj8ZfiQWiF9XqWfVxG+RRY16kbW3TetKhJBf+3ffk1Uy8RkahF+h5LAIXWqEhM5Mwrcwm8frTtZXSIcWmXyQKjGgUY35HGmsfPl3p29/QFjHcU8O7Wo8kcCjkhK+aJ7aZul2biBP/6tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Yh8Ofelf; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-55fcceb5f34so108925a12.3
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 02:36:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706783800; x=1707388600; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ELqpTZvLgMMzm02/IMeIQHM4yd50odkFSFWfS3rIHB8=;
        b=Yh8OfelfyjqLUJiInJH87wphodH2rFuwk0fTEWUGNMCVSo2yFVn9fM5nkapWiPkWew
         BEZw3WYOZG9BggtEeZPzPRoGRyCPsWuvESURIZGj2yf5ILH+zMneQA71vyoByMRICVBF
         SVrKm6NvwJKhgBQXTJxs2DF9+x35vcMmezqfeKdVJE6IDpy7IeK3Bh46lJSsck62BWCu
         riNKUtO1cVVbWoTR927seDAv8EQcQwmStUC2piJuJCRKVx2fD/+GSTALXkdi1+UN1LmM
         Tq/o7xWpow4S6uUpDD3RgxEs3WBpd6eXyGDLHC11N6WiK7HntSxLTlOkX2fLpznfw918
         vlRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706783800; x=1707388600;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ELqpTZvLgMMzm02/IMeIQHM4yd50odkFSFWfS3rIHB8=;
        b=bzpZHRQrNsUIzQThrh35+R0EhgW9/IyKjic4rNQxqkjQ6cnl9MftTLwPtQnLspOo9Z
         NMLrtxjS3HF4tcYJ6IQ1tbAlkvqeA7z06XtYaAnFfRaTudv8sPL/YySBc9LeM7Ackd61
         hyUCDPYPPRp8m2GTx/x+q2a9RoZA8C4bVvKow0iWuKB749jZM5AzF/CK1LjQ5n0p69iZ
         Sm7j+Bd+ZgjDTxyDqo/F/oYVEIGY8CZXOfEiyJyrNi9PqW1pIRVPGJ6IQQt4kFxQb/AG
         c7ycSkYXgFKIbLgVTb+UP5o28Cmy5p/kcEhDZ/Ewr0Nn2U5xVCQUNK/Z3sLO3IcbbYlg
         pUAQ==
X-Gm-Message-State: AOJu0Ywe2I+t7xbc08flj1E7Ss/9kFbOKZeyOGh4Pve4410JcOIetohO
	w5D2EFl7GWjABgnSnTf3Lb1b6hzYPxDnFW08dNy/A2yYNFoGIw0kASGzwDmNAjk9h9v6Vdy0FgK
	Y
X-Google-Smtp-Source: AGHT+IG51xzHVAwchknDXRBtyIfXiaNx3yhCsqxzIRo2AHV2f7ixQ6e7ZDydPbZDY8bN3iL8mvK8+w==
X-Received: by 2002:a17:906:e2cd:b0:a2c:5139:8b11 with SMTP id gr13-20020a170906e2cd00b00a2c51398b11mr3336749ejb.56.1706783800692;
        Thu, 01 Feb 2024 02:36:40 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCWmc9aGbJwGUYavUlRyMX9smG3xrl896IawCZCtAOTT5UuQQXkuBD41PHVIXBbT8uW9fvjz/KaDJXE2x94kOE415xUE0y6g0/MCYwp7fN/PFCDp39uHr2P8giHMLydukrFG8xEWOKlnu7GZqShsAdRJEukR/hpFXSLuVbEZ7ztWCfMWa1OeBGmcG42jXAxDMerKDHTPo24xhucyZmfinM5aHTTwP+wZ8DTiHbrd8urlSE+nWjZaWkrcl/GJilx9nRfH9EiPHbrE4aDbR5aQZfiN8aGm9e9uvMkem+nxGh4B29HLpMoe9VRUtooFzf+6TUSlbqQjLm5TYLNbNPRd34vpRMZKoadNL+E5hY4l8/VQ1atvR+4kt6Pz+X0SLkAwE9J/X559QjvurlSL7xKjKul+ff44eKfEJbF/yGMoochVwnHon8ISkQTlqjEHQdw6Yc9nw00Y1qwQ38pfztASo4sUTO9DdVzSrlh4O9D3ODEAnI5nI/3IdRA/bGHjoksV8PraE+pOHRqy4J6F06cXcLmdychwPzfzwHZZyawAFMY7TLGVSh3N6yQWQLlBeuCSoXUpmGAWtgVvYIBM2Ai1sMLf83ziqPzAzW6rfJsVpjbYzdy3IxbRPowrSBHdYvz9P2qwSTdQUXq7P53KxeCtLyckBYIJxEtnKPMMN1U2svdvOrLODg1Xeg==
Received: from [127.0.1.1] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id ty5-20020a170907c70500b00a35a8571419sm4552308ejc.135.2024.02.01.02.36.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 02:36:40 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org, 
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com, 
 tudor.ambarus@linaro.org, willmcvicker@google.com, 
 semen.protsenko@linaro.org, alim.akhtar@samsung.com, s.nawrocki@samsung.com, 
 tomasz.figa@gmail.com, cw00.choi@samsung.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20240130093812.1746512-2-andre.draszik@linaro.org>
References: <20240130093812.1746512-1-andre.draszik@linaro.org>
 <20240130093812.1746512-2-andre.draszik@linaro.org>
Subject: Re: (subset) [PATCH v2 1/6] clk: samsung: gs101: gpio_peric0_pclk
 needs to be kept on
Message-Id: <170678379863.179994.10165116011101753606.b4-ty@linaro.org>
Date: Thu, 01 Feb 2024 11:36:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.4


On Tue, 30 Jan 2024 09:36:40 +0000, André Draszik wrote:
> This pclk clock is required any time we access the pinctrl registers of
> this block.
> 
> Since pinctrl-samsung doesn't support a clock at the moment, we just
> keep the kernel from disabling it at boot, until we have an update for
> pinctrl-samsung to handle this required clock, at which point we'll be
> able to drop the flag again.
> 
> [...]

Applied, thanks!

[1/6] clk: samsung: gs101: gpio_peric0_pclk needs to be kept on
      https://git.kernel.org/krzk/linux/c/8a96d2701f7c794e45102a9cc7fc4a5c4951e699

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


