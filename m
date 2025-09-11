Return-Path: <devicetree+bounces-215946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FCAB533AA
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:26:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BDE40A0803C
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 13:25:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D15532ED30;
	Thu, 11 Sep 2025 13:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="FIfIOjPk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B12532BF49
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757597115; cv=none; b=l9bhgEkLzgTq3mHpSxn2M+neKbV5FuTrAgi7siqffGR2sk9ds7cdZYI+o44RmG/jLTQay1IFOmIknKw3yguMAs3I/NOX3JSeB9t1sZpi4/fVuxZurHQm2qEG2HlvLSqEU4gy/y4UzHHqWbvykIO+wyidz8ikA27lY6AKQDzMqiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757597115; c=relaxed/simple;
	bh=tvHtynkzdv1a6/2GIDVhvXbYgP7ctogGxu+SLDsFVek=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eoN+ZR+JAKmj1m3F08ZSNtIpWl1j2k+inG6PsIRgKUPVV9xXllk4rEkR9TT+iT105eM0jKBzVGZRePnXGs64L2oDW4M3MIYufkA6EIKqYzlkInA5QcOzQmVci4LShgcTs9wG/UaJESjbbXfAImFyoVCeJyEs75OSwIvcIkXPfeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=FIfIOjPk; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-55f6b0049fbso792790e87.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 06:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1757597111; x=1758201911; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=sKH9Tq5JpqAq1HnW1xohkQd88Pw1g4E8ukSxiOhM484=;
        b=FIfIOjPkSwlc6EbFu6WXdlEpy4VWaKnLjZR6H/dP1XwFlkg+C2xUgxtbIOc1g7yz7M
         GJVAZPqabKe1lAheW1Q+c9zQ2lV18QjU0DIbNJMMk7mVeT9dWXagRHkRqCMbFEAp1L9e
         ejOYM2V75YUgzrxWHgptill6ER5hots1aOG1mrlrP6UUL9RzTQfRpCBKqQLurGZG5aEa
         Jo3yGr7g5ANpqubCjx0vo3xFiN7IFMa+jUikcTnIkfgDdqRVjf9yi6RZmP8BvsoDvQol
         cXlP123VceslaCUvdMGv3JzT2H//oIcQfYpvbh+2O84RpMJeaTtmPhuPkZPOyoCfRglR
         pnHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757597111; x=1758201911;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sKH9Tq5JpqAq1HnW1xohkQd88Pw1g4E8ukSxiOhM484=;
        b=f8cM3NQ8nfmg3won3cWHtF1r7AgChZR9aoPk4ITMWGkLJT8V4DWjmtUb7+deP4Qdhe
         J3VqAapIbf6fFRgh59r7RjCG9OoDA9Yz7BgU29J6hZAWOwuH2XverK63QaUJkUAU43+C
         t5Pyf70mN/aChnH0+k6DB/M2w/5rdiEdvbksWooStdB/aV+aH/EdkcV65wBHcBCd3sk1
         IKlN3NLXaYWeg7dlCalp7FiPGI7a+UFP/hxg3VAcfaTjNKJwCYTHX1+tGjicEUN/K5K1
         pFwO1/9gnAJnNSvAdMMSrPYBIy1C9s+gQ4TxbsbKZVU5BaT/3RKJ+5SpVzJaYSUVtv/P
         84PA==
X-Forwarded-Encrypted: i=1; AJvYcCVNSvSWPtzrSRegkSrRwW21ROFhdoZERv3Yjqh/9ocviVuCcKqdUb1yS6dUTc/1Y979hP4hhMnBloyH@vger.kernel.org
X-Gm-Message-State: AOJu0YwW2QuOo1pzt2ZOaj3r7ytVVbVkgPZd0AkwSmysN1LY3Y0BhfZJ
	0Dh3B2p3gktmuBZuTdsbDnOsUZ3lKwLwnbH57M5fYTtqhQFBJvOBFMnkvArCJYknk5/mrQiQiih
	e4dxjwTf7c/OIixBIMvHxcIYIKehcLb8nWNQYqui51w==
X-Gm-Gg: ASbGncvJtV3ZRVIJTfnuvt69gbLLFvD5QQqa4KWakFglK0o9Zcnr5MfCg2DGOSoINrN
	WLicEO9X/OX969NKWGIESo+o5AOQqmW+YZepMh7jvMRGpZNWeMIDaJ0frlX081R0zN4OSabriS1
	k3UAsc4t+tmrSQhZSx8UKOHqh2xKtDpMrRr1CqE0HmTCjt8eOvaCNHrh12EuDczrqOmQOR2WzGA
	EwzeFUuh7dyDKLnUn+MsJrE0mgyoxJ56O3dSxY=
X-Google-Smtp-Source: AGHT+IFsA5ZOyU9tpTag4iQY+UEBWc1v4AgFQ6DjU2UnALeCrswvvm+lEztT+M/sSG35UIi0IcRGR77vi6rw6ChMafc=
X-Received: by 2002:a05:6512:33cd:b0:55f:489d:7bd with SMTP id
 2adb3069b0e04-5625d28e732mr6154709e87.0.1757597111174; Thu, 11 Sep 2025
 06:25:11 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 11 Sep 2025 08:25:10 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 11 Sep 2025 08:25:10 -0500
From: Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <20250908-lemans-evk-bu-v4-4-5c319c696a7d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250908-lemans-evk-bu-v4-0-5c319c696a7d@oss.qualcomm.com> <20250908-lemans-evk-bu-v4-4-5c319c696a7d@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 08:25:10 -0500
X-Gm-Features: Ac12FXyxL1zBhnbmQPIz3eBGCsQd9d-c4NEoyZ66twALqJFT9m4E9c429dd_4HA
Message-ID: <CAMRc=Mf8P=4vucch0sAtPNZ7DBB0Kw1hgvP1YLgZ5ZRfusFG-w@mail.gmail.com>
Subject: Re: [PATCH v4 04/14] arm64: dts: qcom: lemans-evk: Add TCA9534 I/O expander
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org, 
	linux-i2c@vger.kernel.org, Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Richard Cochran <richardcochran@gmail.com>, Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"

On Mon, 8 Sep 2025 10:19:54 +0200, Wasim Nazir
<wasim.nazir@oss.qualcomm.com> said:
> From: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
>
> Integrate the TCA9534 I/O expander via I2C to provide 8 additional
> GPIO lines for extended I/O functionality.
>
> Signed-off-by: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 32 ++++++++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

