Return-Path: <devicetree+bounces-148681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C875A3D08B
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 05:45:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E77BB1895D96
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 04:45:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79A1819D8A7;
	Thu, 20 Feb 2025 04:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yeoH+eTf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3CBC1DE881
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 04:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740026713; cv=none; b=Lq3+YfYWgG27MLTR0kWtioqsxGbO8vUSvvkxrzr+DXZn53hFTUdnTfj3O+a5eO7d3WJgTWic0GwubE8Vf9oQ2QIwil4WNUZ9YSP3fR5QplF2C0L3rnbYSOGCR5ZnLoMacPx6P4UC1OgSYkPHzeulIOFipVQ9Kf8KTP/YmesLgnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740026713; c=relaxed/simple;
	bh=KCZWGTmNI8QIdlHQfPCl4TcaF/VtA6DkYi9Xq78zeIc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gcNaKslMKGUpXV7iTsJPMnadbYEB5csXzuWE//Qs0Pq/4QyiSLgq/uwnJg322NUUWv65Y0GyWuM/obQZmUD/Hnf5JjBfzs0W/FOAX/C1CmA3vz6V0+YccL/FfVHWVLz8hmSDvX5LUmNWddW7si9VgUcF8hl62kdUytUZwSXvI40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yeoH+eTf; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-54626a71b40so533311e87.3
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 20:45:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740026710; x=1740631510; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=65LK1GfoPK6Ow7cclrATVzkjUCOxCmHzKKc+sYiStOk=;
        b=yeoH+eTfJc7gEd/B3Yio3eNAjxd+5GwwO7ZJzbOejBdGVCu7DUrEwYdShdKZkvUkOM
         w7j4tfMFiL01PwnfUfSvFex0AaRfyZei9M9Sw3DvFVp0Egz8IpRnY8MXThSD3ETOinYV
         s6WNdYZVwLjRM2wogGN/RTVP4DPLpjfWTGHz6EudNad6dubrEa2PU1x+ZaWi3X+pj3kh
         1Qidy3HgZIrO9DBNqxdvZkBwsEDvleg5n6GEbgm02wfkI3P3BuXkaGZdFzNL7y+KAWwP
         tmskH+9gb3TDdans1PFpdLuJWZSJyOPwm9Fqp21MY3SCw0uQBayGve3fcxSeFHVLXzSX
         VRXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740026710; x=1740631510;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=65LK1GfoPK6Ow7cclrATVzkjUCOxCmHzKKc+sYiStOk=;
        b=QfetWySBsEQ8g4FwkqsmQhMumdVCuqbFQiN+lG5S8Krtv1qKM/ur9vmkZo8TSJ1vAg
         2lHX1flm/iGDobgzKVBeXzzZuXk5exgG3CQ3VKyKOBPWCrTwd1aY3sy62HUpkIW5oEfA
         zVMB5J5ZnbLlJXFZAnqEI+fYGH73b2+JcymotK3C7CoQg/NKicX48EtLygr28JozrqXN
         2+HIYJQx9ig/rkVgRLLPeFTj9vS519qvt2ntyQwio+47eXviiAI22fmzGxv2/Be0+Gnm
         nUqBvmHeczWxj38gchR5DJc/1QvoQFMU6nNv+7g7NkpO9Sw6WGiDLJIAybfXTw7zjhYX
         A8Eg==
X-Forwarded-Encrypted: i=1; AJvYcCXv5mWz3WZFtMg8OAaDQ1jOt4Eyxxa0y1ki4qphEU1PPGZvYULjSzjg3CTeOlSTxi0MbnsQdl1K8om9@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4b1DgWl0UlyU9g/wfyEmXDQRqLg1vvoq3O3ePZrHWM1bG9yKO
	WmmdUZTstmAtsyAB2zzz7y1uDVLpskt1SM6jajf8NUzynKxWPhgWaqQgjKLb8BU=
X-Gm-Gg: ASbGncu1ZzxewMf+GUmaP6+bmpno4P/uexLy7Ewt+QqcE+jF8ZR5pZeE41rWGNlTaMr
	oM61VvKH00EVpzVsbHwrFcZ+zgzv9HC3p5mgERMviA/VsraWKz/hXM4Co/8fulfWsQegHm8PFDe
	alNE922db5+lnm5+D+M+GsQW9Odhcdn8WdwzaL3SWgWCnOXXKgIxmXw+mb89qcGDXONGD9siIas
	Qj+Qqw7/YWRz5qeN5ML1vBdJfz8hygmRpEG3eIZjosdsAahkiYc+u1Bx9rV8D2NpkocLVp5hRpr
	eq/BUXj0Yy1FA/59MOttOuuc6eIsqjO4uGYvv6SGh9oPpm9wBKrPUmbChqs/brfCAUrMUYY=
X-Google-Smtp-Source: AGHT+IF67NcEhyD52/u3RW2Suj2R6HsnYhFEljP4J+B/BN8q4hAx8dayZAKsUhRTCIOJraE7WVC62A==
X-Received: by 2002:a05:6512:158f:b0:545:aa5:d455 with SMTP id 2adb3069b0e04-5452fe3aa72mr8207164e87.15.1740026709630;
        Wed, 19 Feb 2025 20:45:09 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5461e731f02sm1305340e87.192.2025.02.19.20.45.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 20:45:08 -0800 (PST)
Date: Thu, 20 Feb 2025 06:45:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Ajit Pandey <quic_ajipan@quicinc.com>, 
	Imran Shaik <quic_imrashai@quicinc.com>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: qcs6490-rb3gen2: Update the
 LPASS audio node
Message-ID: <ykysfqf6vcg7tbma7cxhbdvmi6zkwpmub75yazylqng3767yqx@u7qklqyrfjsr>
References: <20250220-lpass_qcm6490_resets-v4-0-68dbed85c485@quicinc.com>
 <20250220-lpass_qcm6490_resets-v4-4-68dbed85c485@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250220-lpass_qcm6490_resets-v4-4-68dbed85c485@quicinc.com>

On Thu, Feb 20, 2025 at 09:52:53AM +0530, Taniya Das wrote:
> Update the lpassaudio node to support the new compatible as the
> lpassaudio needs to support the reset functionality on the
> QCS6490 RB3Gen2 board and the rest of the Audio functionality would be
> provided from the LPASS firmware.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

