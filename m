Return-Path: <devicetree+bounces-123845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF3F9D659D
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 23:16:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E59E282206
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 22:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 809EA18B47C;
	Fri, 22 Nov 2024 22:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ij7m8Td7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B55EE15D5CA
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 22:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732313801; cv=none; b=meKs+M6utdZ11Slkk7QSsi/5LhWvAsq8gA//866vnYL/8ZvQlFEp4goiRrXssnv03dOcnrXOHLMxnhQ8Jn1Hglg7/uYsEzraFyKTg11a0BJoUPASjfv6XLWd2jpamqu2nAk+XV9Ab2Rt//V0CfDoejWKuEClDdwyXqtPilaPwHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732313801; c=relaxed/simple;
	bh=aOG6ClrY6lqefMk44UT4DZQKlYJU8tKP5/H9aVO6OZ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qgLbHLr6cQkQ2Ntxd2K/w2Dod4+OgbcfJbcSnugm2/hBSQH2Oiw7Il+Ha0CU+HWUWO0Z2832X3vd+7VoXQHXgWtFV9YGb3IB9ajuxzuP/p7M2GbwM8boUW/5M0aEN6TpOa68b1VMOyAb33Kf3zPDZp/zULZRzAkCUN5Z3csA580=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ij7m8Td7; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53d9ff8f1e4so2981283e87.2
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 14:16:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732313797; x=1732918597; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5NFj02jhNQNdIiYin2GDKXP53mu5BQwP426EP/zKK4E=;
        b=Ij7m8Td7fNbHjeweGrfGRLoKLkmolfOZGfArAhCcmj7slaALn4LZvdjdRBPrN4ssFO
         jxl7llYkbCdnJ8g9OGBqXfNZhloP+damFSiot3l8TxbEE9t3yLrBKKUf8GPLC2nfAtE4
         42uUJZKX6e5cDuhMAKHKOyZMPWCzA2hBwBPCkOs/3Z8SLLY6iHQ6n4ifskWX4gPfY4R8
         P4TSGSMzaITeCyRC3cVmuzZQJZsad2uHCR3V53sTpgp+Dh24xC+q2xlHemxi5bMJ53m4
         QNnwpx2UluiA0smFKkyySXfXiu7+gFJGqpBjuFo3LEii8TPoglPYv0/QH0odqB5Rjk0y
         6EmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732313797; x=1732918597;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5NFj02jhNQNdIiYin2GDKXP53mu5BQwP426EP/zKK4E=;
        b=QZLFg0usfYu0KW5rBHqnLjwT+KohX3BNhoSXe9bssr0wrhcxp3Q8HirpR1aEd1F6n9
         0k5M5LoQLK1AIYQPBeniLW1Q/Lws9V1pYaS7ae18EiWGpm7PbtscETaYkTHoyAuEMXil
         SGnDGyPh3/9veq4c5HxHS/Lk9rhlu6FqeFoSIUH3nYfun25YQ8S4WOnZsCC6k4GhEJki
         l/o2khJ3ZAsImZhXv/ZdDlkVNF3SfxnZ5XdkulWxgVcn6LherUxwrq8R2CWmcpUaRFLR
         CFGL6272zb/WxzM0dapdoGtmgLNCmNm6yxRxFK2vXAStXYC+K0szW1CwWcPv3Lspl8aQ
         NU+A==
X-Forwarded-Encrypted: i=1; AJvYcCXuCSkw4z5fhIZJgFRwD6N27/QI7sQ10357czt+wr6+VkkXaYTom3F0cCpXD14HxTKShqqNIKrbix0Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9ufO7xIsd3RjpxSVLYHQejJ40s7T/mVMAB1tuPxLp1ZuWhqp1
	TzU39Mqqhh88WGUbbOy/UkZSIl3V7ZCENI/qtHBdrn3oW32ivXcvxJBR4BtOtcE=
X-Gm-Gg: ASbGncsGZBlTt75J0qT944yDdvrw79BuwtKUF8l2dhJaQ0UYOiYpBUE3XDCJ94baR72
	568P/QG+UM8d2ZhL6RV1Va9cgOY73SwCvqOeRcj95UF3U2uEPgU1S8pU3UG/ldD604pFhNdDCj/
	kTQ+8ys8kSWxDpCxXIheDbdCoyXOBhaV/eEQCNoYtO3WIxVc7RpCXTwEssKQQqsLosXvyEChd2h
	BjHBhHM6V4kWuv6lO4AgRdv91fh/CIV11mzeAIPY1By7yl+l/iTJvVgfDjEsa17Sj6U5NUKzIEc
	giAn7Li9j/EujXfcMmwWoV40NF6tmw==
X-Google-Smtp-Source: AGHT+IGDdynUZU/f9IFLUQqvS6pNdTQ+VSJ+DMeR8Cru5dJY0qXDuv5b6VTt88UdQU0hNw5zRSNqgA==
X-Received: by 2002:a05:6512:2382:b0:53d:c322:e782 with SMTP id 2adb3069b0e04-53dd389d3f5mr2814612e87.28.1732313795952;
        Fri, 22 Nov 2024 14:16:35 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd248b40bsm575233e87.198.2024.11.22.14.16.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 14:16:35 -0800 (PST)
Date: Sat, 23 Nov 2024 00:16:33 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/4] arm64: dts: qcom: sm8750: CDSP and modem
Message-ID: <gt2kci6nntiq33fkcu5tmffsmsbjn4ivuiaxc24btjj72wp2ws@iumjaevtdgbc>
References: <20241122-b4-sm8750-cdsp-v1-0-9a69a889d1b7@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241122-b4-sm8750-cdsp-v1-0-9a69a889d1b7@linaro.org>

On Fri, Nov 22, 2024 at 04:26:47PM +0100, Krzysztof Kozlowski wrote:
> Hi,
> 
> Context of this depends on my audio patches:
> https://lore.kernel.org/all/20241101-sm8750-audio-v1-0-730aec176459@linaro.org/
> 

For the series:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

