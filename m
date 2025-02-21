Return-Path: <devicetree+bounces-149529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B13A3FB83
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 17:37:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 22C3C17A100
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ABD31E492D;
	Fri, 21 Feb 2025 16:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ty4rNvAb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E2821D5166
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 16:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740155386; cv=none; b=sWyhYlih6GLqm04KV5y3nntnAx44eH2nEQHs5Y8jGBu7EnjQDgpmwMRDKkR90eW8fkJJYQkSoHsqPEi1oUjqsgFom+kJxsgwLdI8832xabAqRfPCz2JlnFk4xzbw+KE2LSB2U2PkuZ77VMJ949q05KstRG096HTO+J8Vgx2CitY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740155386; c=relaxed/simple;
	bh=fBoYCwZcQCYhkm+R9DJkHNisr3S/E8IlAULXjqlh6mA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fwX1hz59dvKqmX1Es36fIyhP0j9h0N3x+dNRUbY0j0+m0E24ZUzbz5XYaAWlMaZVoVSn38mgIwT9Fsf8JtwMG8lwzs3X52A/to7O22ak3EUsFoB5i0+7E6vwDLo9TEs8j5e+SAysG0Kpijaw6k+JiOtj/sl2kded6qTPTCM0oI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ty4rNvAb; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-543d8badc30so2677427e87.0
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:29:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740155382; x=1740760182; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RNzke/B0jvL0u/biZ2WURSdaDRxmzZ+8zMviyRXTzMQ=;
        b=ty4rNvAbl8z2NDvAZxFn3LA6wHCn///RQeYxCbcjeRUkxUuSXUNQFU/c1VDCKDITpH
         nXqSw2WthCXwE/S4b83ZF73ISEnRgpk10YlMW8xyGa/KhyGble6mNBuwcRBMMx9z28a5
         0b6POKFppfW8cW6p/4PzJNpPZivU4GSDRBcdCJg10GDJ8sJwf6luFudPApRNZNFqFpeJ
         RDc7bPJTP8qXMt3GCt0yA3epRyEE2OPolaWuglpU5VzUmRHFuVIkuHkBaJ30Q+fIAnqw
         Lw34uevSHNXoLb+vWXM54cv2bgBdyTTil/4+DVPEBAskifnCXgd3eVC9iFUI1cqZuzjs
         Dxnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740155382; x=1740760182;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RNzke/B0jvL0u/biZ2WURSdaDRxmzZ+8zMviyRXTzMQ=;
        b=cP/HY04HMn7ftOxUVzIQAO4XOEsjIwupoSZWL2/JLDJMnCkAboQYSHZf/aPGB+cYAz
         JywHWgCCjsjeOiuUctslmiNxmHfTJ0yOKFFCE6SQKkAaQPnua2INSUZVBfeF9g9Vd3N0
         tXiEuxey9UO4qsVlsOpWxL/mQHmydnFn9edkYV+SdDzubsNeCzjMe4F6KEhjivH5rdxz
         DBnvXjuw+Osrx2/lHVZYP0xaQmsCO6D4y0+oehmONT1hmvu2XNW1lhjs0gRCbnNJlyfO
         1la49sMCQjFDUdrzX2lShufbuwfOKCMibz0q4Wp8NxgWD+4nWkIJnhT84ZpbFYK/pIX9
         IHCg==
X-Forwarded-Encrypted: i=1; AJvYcCVTJqoYg2ZJuC4Lbz1gFbgsOhPczl6SdfUkVuLUuafVZGJCzZrtMbJ64niWisYFPQN2TYu0nMO8THR3@vger.kernel.org
X-Gm-Message-State: AOJu0YyGXUizZT6srbY3st2NIpHvoVW8VYcWFB73qrH222wbM0gLx6lL
	ZWiJ8D9s/RBuxsIGKQEu/Kk5rVdhKSpuMkG0gIAOA8jPVaqU7r2ujnRfZcvioEWvFGD+uNQGMfY
	d
X-Gm-Gg: ASbGncvzi2FLoyw5uZ2ScC/KmL+Wg5t2vhELnsV5QeHdB2FvXMJ1j4yyHMFjcSWhPno
	E9BmnJsEhGto5f/3X9q9fHmcFXuUkVxE+nbnX9YuHO5voJA/RmhSZ2c85UbsliGJbokEQKq6yuE
	7K53GvzQh6F3MNTLcJ7oQfrqhuKGBtPKnidTG9Ri7dDkGhWYkIAs88F7DHbpcxQJ32DymWcLKeS
	3TtiXw3+tyr4mevvWlI2ShNDa6WelqknESJqQaZsjM/ZnZcFLw8nUDwqZaWZ+WcOVlqPG6g8SQk
	WYnjOT75p0t8i1RkB3HrX5cB89KE92rrBJ2ACrIOf28f3i2SBJfLkoMjgdo+FimggZ6/83zLA+H
	gt/mcMA==
X-Google-Smtp-Source: AGHT+IHQHGtF1IRNvzfDKgAwDHfPBxdqZiPOZ1zVy8X+5men/XvW/Q187nct1imMKiSo1Kw74FRbQQ==
X-Received: by 2002:a05:6512:118a:b0:546:2f7a:38c1 with SMTP id 2adb3069b0e04-54838ee33b7mr1824643e87.11.1740155382579;
        Fri, 21 Feb 2025 08:29:42 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-545309f68dasm2135184e87.239.2025.02.21.08.29.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 08:29:41 -0800 (PST)
Date: Fri, 21 Feb 2025 18:29:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, amitk@kernel.org, thara.gopinath@gmail.com, robh@kernel.org, 
	krzk+dt@kernel.org, quic_srichara@quicinc.com
Subject: Re: [PATCH v5 5/5] arm64: dts: qcom: ipq5018: Add tsens node
Message-ID: <gozy64midqxmdguyzp37sqagzkfaozkfcgcdbq3zgzfwh5drru@znq44z5yi2ha>
References: <20250221161101.17204-1-george.moussalem@outlook.com>
 <DS7PR19MB88835D0B88C56EBE6127120C9DC72@DS7PR19MB8883.namprd19.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DS7PR19MB88835D0B88C56EBE6127120C9DC72@DS7PR19MB8883.namprd19.prod.outlook.com>

On Fri, Feb 21, 2025 at 08:11:01PM +0400, George Moussalem wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> IPQ5018 has tsens V1.0 IP with 5 sensors, though 4 are in use.
> There is no RPM, so tsens has to be manually enabled. Adding the tsens
> and nvmem nodes and adding 4 thermal sensors (zones). With the
> critical temperature being 120'C and action is to reboot.
> 
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 169 ++++++++++++++++++++++++++
>  1 file changed, 169 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

