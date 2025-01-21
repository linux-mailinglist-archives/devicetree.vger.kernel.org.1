Return-Path: <devicetree+bounces-140028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BBCA17D6B
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 13:00:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CBD01169139
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 12:00:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B10141F152A;
	Tue, 21 Jan 2025 12:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mRXUoDCJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEEA23208
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 12:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737460820; cv=none; b=joCUPQ65Zk2qpt/ALXii2Ws3IA8yuWDpQTsKXjbkGGzkp6Rzyz6ZPyevKSvIK28LmfauGlZEPizFDoBD1kJV8V8QoJXhtRKv1EnSVhwKUaMZRYoyaBbLV+4vSQBTijS896SvbtpaugMZMTcYjcKqHKxM289pYseG/BBVW565qr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737460820; c=relaxed/simple;
	bh=nPI2Tu4vDg6QkI2TbRafgsvHSTzFi4qEsYFDwfP2l9o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aDth6P+fqyTOZScXJEAIgaNiDaq9iRiKfGkQIaBPYMxAgz9wtUNx/ZBKTeG+eyYK7JczzLQxJP/gaxxmKw93dDIC4JhEy0WyFi+Oquf2fjzQmkvP2Wz7C8K1z4cIPVuRcJ9y4N5ekbLsqxwmiMhJIy5XlZ4kVPTl+pmhdaZ+ugg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mRXUoDCJ; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5426fcb3c69so4421753e87.3
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 04:00:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737460816; x=1738065616; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=P4P/Zn5V8nKpm2eBo6r/BEgRfBZnnUZPadl+oUkKO3o=;
        b=mRXUoDCJIhm8uElHrArhUjF9tgJXputNsWtqcg4Yv8HgFGafOLDqOoN3bet0CQUvlU
         aCfKLCnYwh3P6awa6ZkDT/Bl+U35SE43dD6JomzN1oEGlTVi6Alp/sIzMy9WgnJ/Hjkj
         pb2W4Elwu69diWnPVcKNLqh/Yb+5YIVoIHp/NVqlQr39qkUTAxf6YrSXr1lc+c3I05UN
         9MuW/cWqUr1vbQaIMZW6FW5laKKlXACAz5PFavdm/eVFaPn3itui/Pt7kxVovZh2iUH0
         eYfzXj7GGxFGtSBqOQG6k/F3zNoAhHrmDoRx/9XhDQ0dyDafcYBjkMOhIR1zQjPTgE9r
         UTzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737460816; x=1738065616;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P4P/Zn5V8nKpm2eBo6r/BEgRfBZnnUZPadl+oUkKO3o=;
        b=mMEIpuOXA5WoTSPQ6mDgGBt3g6Dm8YQvq6q/nM7rxpIoJYtduqXkgt04KNpBT6s3Vr
         YuI8JpzQkTvROEcsxFgKlumxrm7K4oJ4tFQJFLZUGGc148h3rBI/hWtk8IxbCd7Ojc1N
         M2b3wAD1DVXHxe+X9rtgXO4BVjuoLbg8bXLN80APwwRsK6ps7WPE3h3iaQoEkbCV2VGs
         8MEZH+I4csffP+SpidTkCeSaJJnXGLI5MlAkbzrJQ2Mp9DM+1o4Fvb4CdL9Wz7Qs1J6P
         Dpssjt8GFqiotywNCKdPS3YqxuddRCqLmdnAbzeIYOAdcgh3vUwMJp3zjvQ5AiWfqkpY
         bSJA==
X-Forwarded-Encrypted: i=1; AJvYcCXtkz5zOxCdH7Z6SVkoIbhWTp7eCnkFhFW3E18ewn2T8hKNoFW4pkwnQhmUhYFHnEZ7Gcj424xdMO0C@vger.kernel.org
X-Gm-Message-State: AOJu0YzYqkj1cjo4RcAqcBnTJsr1hXUQ8yHaZX13TWhI6IVrbbGB97/R
	DCH3fa41ZgxIy8TWTsE0LboCVnqqxFQOwzX55RVH4rZdhgZvaVGnuo3uB/roU74=
X-Gm-Gg: ASbGncuQC2ZHoBFrBqq5ENA3ERCuLpmcPw+ATv/Xa+xjPQ+RYO1inimLftewFl0QPTk
	68rTGIJ7nhMNbGfkkxAzl00YAt4I0S9Pzqz+JtQ2GwfpqYWj8o+nOjVMsLnv34M9GPawd8CyUws
	WmWT6lrxbejtHWXssmbztJBZh2w5Lrm56Qxq0UN1qiprocgwa7ylsQ0rwsvclE7cCGBiqkHNbCF
	bFtTS8wkgK1WtENfARl3IFrAR4jFQVjN4D/oV6N9OdUfdJY+gX1duoP5LeyFKaQhJkk6Uo1sJXG
	vWLe4xJ1JIKYJqV4In1NE9tmRpKrSn1VpVSra4DeT1aSGCZx9g==
X-Google-Smtp-Source: AGHT+IFCmc/JAhkLOPNv7f5yLzYMWONW1GAPcT5mOvgv7rX5VI+rhMMKYFVHMonn9Pn1wBdbPFsNzQ==
X-Received: by 2002:a05:6512:4849:b0:542:29b6:9c1a with SMTP id 2adb3069b0e04-5439c2877c7mr4917779e87.51.1737460814966;
        Tue, 21 Jan 2025 04:00:14 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af60936sm1838789e87.107.2025.01.21.04.00.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 04:00:13 -0800 (PST)
Date: Tue, 21 Jan 2025 14:00:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_kuiw@quicinc.com, 
	quic_ekangupt@quicinc.com, quic_kartsana@quicinc.com, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sa8775p: Remove cdsp compute-cb@10
Message-ID: <ish2ucfiwb2wmsjhadcsdirkawgfcpuc5fmz27ifved6d66itg@eeo5jcg6sh2j>
References: <cover.1737459414.git.quic_lxu5@quicinc.com>
 <a24385bf8e4c25228f853a14294902c483737c4f.1737459414.git.quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a24385bf8e4c25228f853a14294902c483737c4f.1737459414.git.quic_lxu5@quicinc.com>

On Tue, Jan 21, 2025 at 05:24:04PM +0530, Ling Xu wrote:
> Need to remove the context bank compute-cb@10 because secure cdsp
> uses the s2-only stream.

Please take a look at Documentation/process/submitting-patches.rst and
rephrase commit message accordingly.

Also please use necessary tags (Fixes, etc) to describe the change.

> 
> Acked-by: Karthik Sanagavarapu <quic_kartsana@quicinc.com>
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 8 --------
>  1 file changed, 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 0aa27db21f3d..81b2fba94841 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -4585,14 +4585,6 @@ compute-cb@9 {
>  						dma-coherent;
>  					};
>  
> -					compute-cb@10 {
> -						compatible = "qcom,fastrpc-compute-cb";
> -						reg = <10>;
> -						iommus = <&apps_smmu 0x214a 0x04a0>,
> -							 <&apps_smmu 0x218a 0x0400>;
> -						dma-coherent;
> -					};
> -
>  					compute-cb@11 {
>  						compatible = "qcom,fastrpc-compute-cb";
>  						reg = <11>;
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

