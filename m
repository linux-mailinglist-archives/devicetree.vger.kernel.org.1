Return-Path: <devicetree+bounces-139251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CADE6A14D64
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 11:17:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DF34A7A06F5
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 10:17:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A89D81F9EBD;
	Fri, 17 Jan 2025 10:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cL19o9w+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5761F76C2
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 10:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737109029; cv=none; b=b+ygUrRglInxvuvw54bwVrKAoQfbsnW/WoV1JgYtB/R/9L8TWjP90RxYP9mTDb6cJjfbe4oHGFGONfRzomCl3yXoQY0HVKiTcMrYmURee98o8Y2pJofz9JpwxnKJ7dKrASR240r388skb5ZBK33KTGnIju9nAzsFDogu5JcngZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737109029; c=relaxed/simple;
	bh=/HEbNf1Ro9YgF4R1T7Nvqh0UP1b8QAiB/ETowmozyXo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pgI+KPoo1b3d6cJBkRCL7urkzhMY15ojE6drR9AIdroGhOkdojt6wvO2UX0Vm9mR6j0sb/DtiImUhnUaBiTi7BWw8g3J/dlVpxnnvWwf0lFy2FtHFoNhxB4BOqkjw+Ivx0r4FGLBnlQapDsHsxAz8WR0l7OUvlx1bJNLwxtHe9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cL19o9w+; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-3061513d353so19123501fa.2
        for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 02:17:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737109026; x=1737713826; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UCME0WrlU1H0nyJTDCQLugSxkWOknxDVprqMSMXYaGw=;
        b=cL19o9w+XGzc8/lPWnweD4ln2v7UqJ3n5xU+2pywfIxRkpD0P+Yp4kGF1HnR7rGgsJ
         RsVWEMGS80nYuo0RfaqMqjC9yGTXvqFSzSMM7cHKp2gEO05Ko73eHpHAbWOu90ZgdscT
         tPU9A+dOsqlN6k7q7OlQWbV0zREIAfZvHdbS42wFV6iJLfIPNZZqT6J6UDUrddOTu+2u
         0J0P0AoITCs8Ck6yeB25DmjlSRetHOYnUF80Gd4BuNKiXB43Rncpn3tO2AXMldA0vFM3
         WrD2dE9pWcRrIvdqgmBBmwVd3nt702BBAa8k7CMNySxULuDq15rEs7dC7tkfK0YGqoKW
         LRHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737109026; x=1737713826;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UCME0WrlU1H0nyJTDCQLugSxkWOknxDVprqMSMXYaGw=;
        b=N7+Sem1tfFj8Vd/ojb3I9ZpIIwe+j6kmIP+OkZEA30cU7Tci0dsZliD6jARfAYcLon
         wKrwBdofFDNTvOu+UHTo4tgdivWSweMBJ4sz/QyZTsZonLDvwmUyQmPdMO5HkOf+2/Q7
         GCXE/0m3LFo+al+VNto8uQR0+QFwBT53yjRUJn9M6WsPw4tqU9bhElr9DHJDh5zBOKZ7
         ijv4sFcrJX1u8f0IfYbz98CRHGWgsr8R1aFfXRbzhWBwcEZuCx1lkGyf1vU6iYepe9Cn
         ubSUggbJnMtQy7zd00uB2osXGc59wc+wCKBZpNUXZ+N8riSjWEM6GHvUbvEd6w+6KElz
         S+Fg==
X-Forwarded-Encrypted: i=1; AJvYcCVBVxdcVlnOiJ9M6Bp2ONy5Y2azEvv+btAX4Ze9FBn083bJQc0H9InD7WCoCA6xkqItTxnXJuPu3c1Z@vger.kernel.org
X-Gm-Message-State: AOJu0YxNOZEuQjuf2AyRywfpncBCRuJeH2/5i1qoRUOY+Oy9Jp9mq7qg
	Sh7vBPfzXdnuBf+nONKF4y/vX0Qo/T0iHOjP9E6Ogm8umlwUB/s3tTsfHi7/ALA=
X-Gm-Gg: ASbGnctmbwdO//DVM7lpuvLd+cExf2YgkW18QwTpxG/JHao4T2+bQXf5ROU1XjTQGqC
	PSUHlRMmuRkseaJpooeZSwTE3xgDlwwGcsBQ1z+7xx/NjVXgfH8QgSBRZh5UYz8d2Gmv3SYl9qt
	FsTfeMnQhdNa+g8bM1wz+1L5PCGiVruIFGFM8jTVkgarNw0bJAQvfwCEkb0sCUcwy+QOncYSsqK
	X2zklRdQRl91MTU1LhcWXV1+VLTa0gWiVs3TkBsQWk/6dg8L5v3jY/YoPeopXVD+9/lQ5ixTdc+
	6TbkKaTD3XbEmJ10lHEVamlrZr71OoYlbS6D
X-Google-Smtp-Source: AGHT+IF77IBzYQonMfNeuElN1UvWqUjRoXcTNWAo0Nb5IVz/wYH50H38fEarrgL/9qMCoXJ63HVVKg==
X-Received: by 2002:a2e:b5cf:0:b0:2fe:e44d:6162 with SMTP id 38308e7fff4ca-3072cb0def3mr6912161fa.26.1737109025888;
        Fri, 17 Jan 2025 02:17:05 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3072a35a919sm3625971fa.54.2025.01.17.02.17.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2025 02:17:04 -0800 (PST)
Date: Fri, 17 Jan 2025 12:17:02 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yuanfang Zhang <quic_yuanfang@quicinc.com>
Cc: neil.armstrong@linaro.org, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] arm64: dts: qcom: Add coresight node for SM8650
Message-ID: <cchokycqaigagaoqbfb5bxt6zq5dd4le7bpirl4lu5em7byqv5@cpjgz5dbsdxq>
References: <20250107-sm8650-cs-dt-v4-1-2113b18754ea@quicinc.com>
 <be7b0acc-495b-4bb6-91e1-5db8e301503d@linaro.org>
 <28eec718-2950-40b5-b5b7-b4ecb5699a6b@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <28eec718-2950-40b5-b5b7-b4ecb5699a6b@quicinc.com>

On Fri, Jan 17, 2025 at 04:20:01PM +0800, Yuanfang Zhang wrote:
> 
> 
> On 1/16/2025 11:57 PM, neil.armstrong@linaro.org wrote:
> > Hi,
> > 
> > On 07/01/2025 09:48, Yuanfang Zhang wrote:
> >> Add coresight components: Funnel, ETE and ETF for SM8650.
> >>
> >> Signed-off-by: Yuanfang Zhang <quic_yuanfang@quicinc.com>
> >> ---
> >> Changes in v4:
> >> - Re-sort these nodes by address.
> >> - Link to v3: https://lore.kernel.org/r/20250103-sm8650-cs-dt-v3-1-759a3f6a3cc8@quicinc.com
> >>
> >> Changes in v3:
> >> - Move ete0 and funnel-ete to /.
> >> - Update coding style.
> >> - Link to v2: https://lore.kernel.org/r/20241210-sm8650-cs-dt-v2-1-cf24c6c9bddc@quicinc.com
> >>
> >> Changes in v2:
> >> - Update compatible for funnel and etf.
> >> - remove unnecessary property: reg-names and arm,primecell-periphid.
> >> - Link to v1: https://lore.kernel.org/r/20241210-sm8650-cs-dt-v1-1-269693451584@quicinc.com
> >> ---
> >>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 166 +++++++++++++++++++++++++++++++++++
> >>   1 file changed, 166 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> >> index 25e47505adcb790d09f1d2726386438487255824..49d6567fbd2e68b66b517d8d9180c7443f8bf611 100644
> >> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> >> @@ -365,6 +365,40 @@ cluster_sleep_1: cluster-sleep-1 {
> >>           };
> >>       };
> >>   +    ete0 {
> >> +        compatible = "arm,embedded-trace-extension";
> >> +
> >> +        cpu = <&cpu0>;
> >> +
> >> +        out-ports {
> >> +            port {
> >> +                ete0_out_funnel_ete: endpoint {
> >> +                    remote-endpoint = <&funnel_ete_in_ete0>;
> >> +                };
> >> +            };
> >> +        };
> >> +    };
> > 
> > Why only the cpu0 ete has been added ?
> > 
> > And why are the other components (TPDA, TPDM, STM, CTI...) missing ?
> > 
> > Neil
> > 
> At present, only ete0 is used, and other components can be added later if need.

Please describe the hardware, not the usecase. If there are other trace
cells, please add them.

-- 
With best wishes
Dmitry

