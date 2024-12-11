Return-Path: <devicetree+bounces-129825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF119ECDC0
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 14:56:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9755B1633AD
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 13:56:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD86E2336A1;
	Wed, 11 Dec 2024 13:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mRLikzjc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC9BA22C353
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 13:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733925386; cv=none; b=SGkk3OnK179jDFrlmhJQL6SzBEmAX7f0WCTil+FS0eo861yRuBZSGTh1OUJ2QB7+gHG7N+m00uHLr1tMNY9z2LbJrEwR3qPFRqDCQat/S6qgX3/7XbSZJuBbKw2Ky8RaBDxCxoOMQDyhwBYwhhf6gDpRpnQjREyuKCSA4MYAROI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733925386; c=relaxed/simple;
	bh=jJNvd5CzRMOJ5gUrBQXY1b7u4hCix9pxT1OewNbVyCg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mhTk9rfVvEc7iexQoL7mNb0l3MKtKbJ5bMSFjyM5yQvvqATTGz6qzRESNtGNDZA9Dq5vHC97tr2gdkr2JUiR/4IXYM+JzlaodrfcJLlG9zoS9G2vcJfn/a86OErjYTSTQHE6LrX5Oug/1gDDDr0re6caXdZ3CrtCjvmSoL00pYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mRLikzjc; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-434a852bb6eso64651555e9.3
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 05:56:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733925383; x=1734530183; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jtSEM+vm+bIJ/KTsXmMQlqO+KHdG4/pkOfrFSV7O0Lo=;
        b=mRLikzjcayj7jg7rQppmNaqnvV6z25LWDzY71mbo84HYprBkKtze/LrPHGqB3YlB8r
         pp/21g1/Cvds0yKrtnLI5qckd/1L5hU622ieRwdBQ5sIiUAUXQTT6vPEIWEBdME+Pxxp
         PutO3Vbvl+lhJuaCMzVyLXvdQRjtJfqWpaZ26pzTPPyXaw324EWdmYeRAxE7IijdHqW0
         MLNkMM6MvFi3t28R9P8Bct5TUDnqeyNrjUwUHg+U4ktWUymb/ryeiYkeZ5APfxVuRfTt
         Ngu9ngl79yRx/9P7xoUHGVeiDCkliYFHJlaakqAd25xerIyTM1CnjNr1FYUMBwIMYYX4
         rsqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733925383; x=1734530183;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jtSEM+vm+bIJ/KTsXmMQlqO+KHdG4/pkOfrFSV7O0Lo=;
        b=c2wQXgTz9KdGxi1KjFFcC35zOym3yLtR+eIrxLUYSanD2qgbkzp+pSUzrxyUqMN+TI
         NvBeROH3XmBWjs6vjH7FwugapumHB+cyJPoI4uOkDZh14U005j4SK3Mdrln4k5Ekph3+
         /vMd2v/rRBv6fPihhAfMO5gq2vgO5eDwymU3E7XTXtGqKBeOsuRSpM+P3dJhDixAOwOv
         EYz47gD2CZ4yHGxjeM/wTwrf3aGo+Anc897pqyfWAVbIWy94Hb+Zi1pZqVHWYyuSdTc2
         kaabaoNAw78qpl+WJr23q95FFCUgBA9aYegu50nre4SPGpNKo1OdPHPWVAQ/+o2FMJ0c
         kCJQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9UXf+2fBG2j4xzUAmZrJvsAV8iYO+Kl6iW0i+mX9aYEL+Mz+bWmxxXzaBeSgugA7cUphFzrw01Rmp@vger.kernel.org
X-Gm-Message-State: AOJu0YxCVILSHNA99swPseCAIqx4KRumWhfIQiB+eXKRDKWFGNQEyYa+
	HhZx3I4MaNNMYAgOdHqy70xdk1au60DBogmzhXsCLkzNCTRCyJwhwLPLFNrY3yg=
X-Gm-Gg: ASbGnctO63FsdTe+xNX5oqwQ78N5dpC0kZjoQgAxkDe0E9BNn/Zcpd3gMO7Gh9vZABU
	vtoo/HwIWlwZ/WLasIFYKsvfxvJ+UlwPdcXV0mJlwoSOZazL+BAhc5Y1IHKoznf3tZZDR+5irCt
	3nKlFKlGyBjvJ/Zp5cSSFU28VeSPfh+Pd06JA1pSW5LQR54K+uLVIhhsWK/y/bF+0pc1H9wZaCS
	vLNKVIOEXNRKctTNROe3bUjpqnwi3kKux3ZrrCZ5q1jZ4cZ5ZOQ
X-Google-Smtp-Source: AGHT+IF2z7GNLeCXaPcEuFWlypAl7tCU8l7GX3KX4YAoY6IJG61/b+lP2czNLPCrQwDT7QmPykXLwg==
X-Received: by 2002:a05:600c:c89:b0:434:f5c0:3296 with SMTP id 5b1f17b1804b1-4361c3a35f8mr23007175e9.18.1733925383220;
        Wed, 11 Dec 2024 05:56:23 -0800 (PST)
Received: from linaro.org ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4361ec75410sm13569135e9.1.2024.12.11.05.56.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 05:56:22 -0800 (PST)
Date: Wed, 11 Dec 2024 15:56:21 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Johan Hovold <johan@kernel.org>,
	"Aiqun Yu (Maria)" <quic_aiquny@quicinc.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: x1e80100-pmics: Enable all SMB2360
 separately
Message-ID: <Z1maBcM3jG2SjhAo@linaro.org>
References: <20241210-x1e80100-disable-smb2360-v2-1-2449be2eca29@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241210-x1e80100-disable-smb2360-v2-1-2449be2eca29@linaro.org>

On 24-12-10 09:36:01, Stephan Gerhold wrote:
> At the moment, x1e80100-pmics.dtsi enables two of the SMB2360 PMICs by
> default and leaves the other two disabled. The third one was originally
> also enabled by default, but then disabled in commit a237b8da413c ("arm64:
> dts: qcom: x1e80100: Disable SMB2360_2 by default"). This is inconsistent
> and confusing. Some laptops will even need SMB2360_1 disabled by default if
> they just have a single USB-C port.
> 
> Make this consistent by keeping all SMB2360 disabled in x1e80100-pmics.dtsi
> and enable them separately for all boards where needed. That way it is
> always clear which ones are available and avoids accidentally trying to
> read/write from missing chips when some of the PMICs are not present.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> ---
> Changes in v2:
> - Clarify commit message, there are actually two SMB2360 disabled by
>   default (3rd and 4th) and not just the third (Aiqun Yu (Maria))
> - Link to v1: https://lore.kernel.org/r/20241203-x1e80100-disable-smb2360-v1-1-80942b7f73da@linaro.org
> ---
>  arch/arm64/boot/dts/qcom/x1e001de-devkit.dts               | 8 ++++++++
>  arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts | 8 ++++++++
>  arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts    | 8 ++++++++
>  arch/arm64/boot/dts/qcom/x1e80100-crd.dts                  | 8 ++++++++
>  arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts      | 8 ++++++++
>  arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts   | 8 ++++++++
>  arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi   | 8 ++++++++
>  arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi               | 4 ++++
>  arch/arm64/boot/dts/qcom/x1e80100-qcp.dts                  | 8 ++++++++
>  9 files changed, 68 insertions(+)
> 

[...]

