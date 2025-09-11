Return-Path: <devicetree+bounces-215949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D0EB533DB
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:35:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8655D3A046A
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 13:35:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EA9232A837;
	Thu, 11 Sep 2025 13:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="DJJVXlpG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80BCC327A38
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757597701; cv=none; b=sgRELQS++Y4mHGkOyhx04j7NpbGjmmVVFQTgh4+VVA5Iu8rhzhM3Yw+SFPonADeDOq4EgRbnj8U1/0ET+qZprP3eAvZUIkA7euO20a+9Nm5GeQYrxS4lnjDWOw1VWs2uVi+7vNJpcU5I8OzGHilolnAJUunPkxLlZajhUIdGX8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757597701; c=relaxed/simple;
	bh=dKD8GMOoG+4Yyag3B2X/sjwh1L9UvQheZXr6rel0Y0I=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MsCgEBS/sBGQIX2/uN+Xzug6B5bTVwZVgXjmQh3G7dzv6nO6BTJQtx4fXp2l2CdkrOflzbttxhcdDGXw5V1tXnE0ks4xj45Q2cfRSgz6i7R4EhpOLh7jceUunHyMF7bUsmSIgMG1tIf0tH4oltfL02zEKYO75Sxy+IUBUtGvojQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=DJJVXlpG; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-56a04f7691aso1667264e87.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 06:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1757597698; x=1758202498; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=yuU7uzJ803t+7G/jlS9fqoPlRvJYw9o9k9ZjizAu5JE=;
        b=DJJVXlpGtzC+xDmqltEFTTxXxDcfvZnVnMmnpNhysBeDurHm9H61+W61i/22Hd2FOt
         RSpCHxsw+mv2hrtqsQdwknz47rmGSlI0HHfJDRpF/pBQ9PlQzACqFbkUIVh/BQg1hIPz
         wxfhlCr8jmZom0t2ArdnNBTKvFhG6WyZpFREKxsBByHImUjPVZVmjVgRIIuD2msZ4Nqi
         +Q2vGMMx4DInfzGlDwa+SA3jhK86a9+rlPxSdyhnc84YrH3W5yxUDjzShbxzlaTv/LBf
         qPH83HkrT1M5A0/fONxifhSRHaDcTFNwrDWY0H+4abT1rPTu2qH6mAS0wLeJM2n5K65Q
         RgPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757597698; x=1758202498;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yuU7uzJ803t+7G/jlS9fqoPlRvJYw9o9k9ZjizAu5JE=;
        b=eLuAsWfk9C4G8JY8LbiIjv/42iGe3wDexxkIsWPurUeinSxKgw+x46GKKD60Tro+d6
         2GpNpSGw8gM27kVqTRX5Ggeek2ddN+BWEvR8XZgHxSiErdi4SRzuMobLIinMq/ZpH90Y
         R9l0RN+Fz9gbAFPGUMpfJolUyfd2E4FiRR5w76juSUq7GdFOn+lQfuht0GLT+XEX4YEF
         09YoWnuMGuNx2GC5RJkhEyCsEGMqibXueBxXS2C175NJWNwaRMeCjUJ6v6nFBsoewN98
         ITjrdMXWRCiLYJ8fBqz4dddMFRZdGLPED0g9GRE/2CV43iuzeVdTb57ywxBJI7sQMkCB
         w+Hw==
X-Forwarded-Encrypted: i=1; AJvYcCWmXyIn2qVQKvmJ4edbFHIc0fT8lOLBgp0hR9CnJUtb2tSXYrN1cgx7ApWix2WVTsyguLyf9eigTFZO@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9d9SAiBy9JGgcALHxLWJsuD0R3MLWV1QhVHd6h43qW0/BCj5B
	mWWf8/0ce9K0MCODieHoU3xJMJ1siHW3golvVdSx1YQZxhAu+nZRlcsxSZVKsywvUEl0ENW+YHr
	8MnKjFqfxz2bQc9dXJeAMN795B2cgFsygiu8xNoeOMw==
X-Gm-Gg: ASbGncs7zlXdORR4bG/hB6py/p1Cebq3+/G0QZN+sVF6b9spHkTej9XCmb57mcZM7np
	IcdrSBpaOZPsfSwC/mtb9ag2oBnhM8b4IzHmD0z73a0bYvOkaDBFYBsb/oZPNeAI/Ni4aw8Ac6w
	x1qAz8ELGBXzdgt8JvsVFbYEe82U00C5FsHN0RCL/383YWLUHVh5XUfVpHP0Aj6fvFdNx7r+63w
	ovy/rocfHQQSjzUfKCr867yz2iYgg7Ft01iHktzKEFjnmgvTA==
X-Google-Smtp-Source: AGHT+IGZyVuFS0SWwhsW0GkXG7C2O7hdvLrhWa2ouKXjUmaKEWGKB5rOyUWCPW4ZDky63sjUjVaIfTVqhhGY31to38o=
X-Received: by 2002:a05:6512:3b13:b0:560:87c4:e0ed with SMTP id
 2adb3069b0e04-56d789b0dc9mr1285479e87.18.1757597697646; Thu, 11 Sep 2025
 06:34:57 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 11 Sep 2025 08:34:54 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 11 Sep 2025 08:34:54 -0500
From: Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <20250908-lemans-evk-bu-v4-6-5c319c696a7d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250908-lemans-evk-bu-v4-0-5c319c696a7d@oss.qualcomm.com> <20250908-lemans-evk-bu-v4-6-5c319c696a7d@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 08:34:54 -0500
X-Gm-Features: Ac12FXwwEtmXKsTJF1Zy2OvzYXGdM0No2024s7j2f5LD4-m8j7oBYTl11y-yDd8
Message-ID: <CAMRc=MegZ4Xe8zc0U=ruACUMA4KpP=aw6jrKCN+=KRfUKTuLkA@mail.gmail.com>
Subject: Re: [PATCH v4 06/14] arm64: dts: qcom: lemans-evk: Add EEPROM and
 nvmem layout
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org, 
	linux-i2c@vger.kernel.org, Monish Chunara <quic_mchunara@quicinc.com>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Richard Cochran <richardcochran@gmail.com>, Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"

On Mon, 8 Sep 2025 10:19:56 +0200, Wasim Nazir
<wasim.nazir@oss.qualcomm.com> said:
> From: Monish Chunara <quic_mchunara@quicinc.com>
>
> Integrate the GT24C256C EEPROM via I2C to enable access to
> board-specific non-volatile data.
>
> Also, define an nvmem-layout to expose structured regions within the
> EEPROM, allowing consumers to retrieve configuration data such as
> Ethernet MAC addresses via the nvmem subsystem.
>
> Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

