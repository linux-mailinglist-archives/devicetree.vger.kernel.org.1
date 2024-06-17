Return-Path: <devicetree+bounces-76492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B79590AA81
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 12:00:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9132928E59B
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 10:00:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D66CB19415E;
	Mon, 17 Jun 2024 09:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bn9qNNP1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F61C19149E
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 09:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718618389; cv=none; b=lqWlWllNOn3JTTDPhwEywzhAae9G51BZUXBpj/Xc6maR1sT03jgreU9jChOndnN7+M4Pw37z/5E9r463hAo9BZEj18RDBB5hJRZMTH0GXc42B/4nc8YvaeqlkIM2CcBAMjbTOfrEulmbUWn8YcYXyBSRYnYySv/gCaC25pE0Nv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718618389; c=relaxed/simple;
	bh=YkQy2wTRZsbKD/4ew/BUj3p85LEw1FBVPUs5rIwP0mM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DNR9f35lxTERIw5/FYFZXFSbaHXU4MjzVnqa5eBLykw8SmiNcsz7AdAZqwnUx5oXsctk9aD1z048WNYFpzWBccuSPtoiuHeCG/0noLLPl/uO5NIhVDDB7L/LTo9hQQGEW59AjhamzfKdeRCQ8Ok4JtJZ++RhiAPPEDQ+wxcFdHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Bn9qNNP1; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2eaa89464a3so47892901fa.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 02:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718618385; x=1719223185; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nVuk4pXbnXqOx38k4X8CXmgXa5i4k02Sgi5On8BtkKs=;
        b=Bn9qNNP15lLpSn9qe6/LFL5Gt2wvO/4YGyP9/X1By8y89TaLRKiN2Ej8fNlQT0fPzf
         3O7Qk/JX1fGlbHC/hOYCaHArstWbC6FamYaiSsrZbrA5BswQ7WLROmRv5gApPB37MhYB
         Eryx9hk4btRXdFVdufZEPHo0gDJag18IZ7Nw4OLxhwcFIE9KH29bVE+BONe0vdg8IJSs
         DLftzNU1MtXCktIVSabP7ZhjVDUdtdbTLWmwBuzgfkgjft7rQSM1201y60VyFA3QqwVC
         tZUyEMRamyu34rJhgWNtdG8nA64fP+4UWgAzD9hxyiFrpLSlH0wLUQWKSF1p4F96roxH
         GrvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718618385; x=1719223185;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nVuk4pXbnXqOx38k4X8CXmgXa5i4k02Sgi5On8BtkKs=;
        b=UqM899agUlGZYDtcRhHxnIcrdIewt6iv8S+0J1rbfTOrjLdXt719s+OKgZWbKWbqUJ
         KhUe4TIV14nTbro7z0fG9p6U8zwpQjDpNaQenu+o5Sg6EYdPr33qQ/AgwyNB46xkU9B0
         h5bUUEw6V8dGnVau96K46L6MTEk6jafrJprR/sBMvtKcLpcC0JE5AjvDvtLwTXGJxZmn
         ZOVtdyaOl3n31lPhTKbHRm6pS5OTbQNj2qFVM/p+zjEr9NXuT1N8QCQ/vh3ZWNzuzTiu
         8o1kxHsV4GmRE6UQ5l3IIK8GovmqK7UCfGTjQE2psyeCULgjPNrd1akas3svN0eh01OZ
         1QaA==
X-Forwarded-Encrypted: i=1; AJvYcCXBu6EoXId8vn36DtEpTIzul+i3B+OtCMTssqu48uq65pXpsK+K1vL86FsAj+sLlETbIwC1QZ77p8AsN+ophjZqVzc1b1ezf2xSBg==
X-Gm-Message-State: AOJu0Yza5N7kNbscPrxXdinUPFNdIiPLzq5/HFB81EBZSeHmg219nnRc
	+jPBcUO5qb6D1ak9Np8cfZVyNyZn7Fy0iUAq5QwelXWkbw7GXt+/nVDjz8spBlI=
X-Google-Smtp-Source: AGHT+IHrGx+n/r1ExKv6HBMKYiG8ynIit+k+jwW6EzWY3ydr62spei+DHKjsc353pM5B+vuMkkolkg==
X-Received: by 2002:a2e:9e15:0:b0:2ea:e98e:4392 with SMTP id 38308e7fff4ca-2ec0e5d1888mr57009701fa.27.1718618385692;
        Mon, 17 Jun 2024 02:59:45 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec25647ec2sm6142071fa.56.2024.06.17.02.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 02:59:45 -0700 (PDT)
Date: Mon, 17 Jun 2024 12:59:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Caleb Connolly <caleb.connolly@linaro.org>
Subject: Re: [PATCH v9 4/4] arm64: dts: qcom: qrb5165-rb5: add the Wifi node
Message-ID: <3iknhgyp7fnfzjwkj4fmo7bszvhokvw6xi53jzqkx73o55xkpd@an6bqrw4432i>
References: <20240605122729.24283-1-brgl@bgdev.pl>
 <20240605122729.24283-5-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240605122729.24283-5-brgl@bgdev.pl>

On Wed, Jun 05, 2024 at 02:27:29PM GMT, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Add a node for the PMU module of the QCA6391 present on the RB5 board.
> Assign its LDO power outputs to the existing Bluetooth module. Add a
> node for the PCIe port to sm8250.dtsi and define the WLAN node on it in
> the board's .dts and also make it consume the power outputs of the PMU.
> 
> Tested-by: Caleb Connolly <caleb.connolly@linaro.org> # OnePlus 8T
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 103 ++++++++++++++++++++---
>  arch/arm64/boot/dts/qcom/sm8250.dtsi     |   2 +-
>  2 files changed, 93 insertions(+), 12 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

