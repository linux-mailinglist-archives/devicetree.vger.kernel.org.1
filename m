Return-Path: <devicetree+bounces-150089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EF324A41278
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 01:19:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4CDB170528
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 00:19:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43ADF11185;
	Mon, 24 Feb 2025 00:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aUlQ1RHl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF8DF2AF1D
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 00:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740356367; cv=none; b=cs0+YKiY4FvHmFPvBJU7/eOo42zEikf2sh+CHLrNWfF29/qkMQViDD8H95uo2r+/odX/yUFyXDb9sj7YvdytX0FsCt/V2c0ua5/pehxEWVNdEzRG0MAD1DkG0eXRcAjd6gJmdTfezrxgQEFmDhEewm3qqDAIaPQ20AqmlmM720g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740356367; c=relaxed/simple;
	bh=mJRxLtLX96QPS+W09kQbtgthZev7JKYRvBjAfO240g4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NTnP0YHSISqjKLkfJCqPYBManqVG28FsOnIKQrKzbgYSD53vowWG57dTCkC+dvXqaHxEpHX3bW+8eaMi5Ir5iRRytYjNN/U4Mmfsbw629lW7Jhu0N35QIBsBCQ4dvKsLxBwfYiy5AHBq3bDwVIx8pDEj4okGe+d1Ek3EWuBiVF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aUlQ1RHl; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-54622e97753so3569781e87.0
        for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 16:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740356363; x=1740961163; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R446aIN2RLdqu5QwrgfAwmYyzyFgaoXG1ioytOKBEEU=;
        b=aUlQ1RHlt9cIe9SM5rK4MHnDxjhDD3hDYCFtnTjlqWUso2oJaE4O7dgRWoMsRrEb92
         xNeeGPPynAsCptvxisEjJyNi/fxVBO7epH6r2OHt/MYXRT8fFaNY1/ZrVNFpp6Qjx8F4
         +VZGEuBOzdlWATgncxqNgDUHcjnrzd/icGix9GvEA47xQ7H+BOAv8g46LV9kMDmWGx+x
         FnhKYez/4kKRL+F1SpeXMNXGWovOLphpu2bAdlpHkcJKBmtBZ5v0KPdZCobrNUkCOvG+
         rF3VRQqYhK4Y/bxmM5mashBG5xTZNlo90iWZKhPL+nJSMIy0wSN3jtk87Nhv9hSeyAOQ
         aGug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740356363; x=1740961163;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R446aIN2RLdqu5QwrgfAwmYyzyFgaoXG1ioytOKBEEU=;
        b=mzawBXCIi2ft7wY9xE/VZIKOiw8QG9F47DIkuC/u9sc2qaBje7K8+gF/nCtOJckRns
         /D7+pdVzKhdkOT7gz42Vvbw0WntcniuKtCULKV4dnXe8LtbOCdjY69Gr4KBR/lCoffTj
         31S2/Mbmsj0iAJgXcA08uGlq702r7C6zEKnCLIgVLpqmlFp/mwZnjtzpg82utlIcYzkV
         FwNBRkcZYS4jyj2R5Qlm2fAW4/R9UYBNmjcOjOSagG0+KkCTk50C1ezzmpIzPJFzJw3e
         FpKKWhLUF8q71n0Hp3FGaZGInkkOBzv60S8sV46nVVVc5ZWAD4vkpoX6G2Y2UfZ8v7sS
         omfg==
X-Forwarded-Encrypted: i=1; AJvYcCWVacfZD0JT3Wx57GUolMfcjaOKSap0T7L8SAqjpYSGmS6WqVDnJWU0a5CghoQG3g0VM7USIODReXOo@vger.kernel.org
X-Gm-Message-State: AOJu0YwkoZNvBUyRkmMI4SyimpDmjb0xj2dJ0cdnRyr4KIoDG1OIRhRO
	pDHrefx+gXYBi+w7KTXHZDVoXrAMIm9myQJ/pB594JAr0QCvNEWQJZFeLPhLNRs=
X-Gm-Gg: ASbGncspQND1y3cGZ8H3MQLgEv/pYfHntdkt00HRyG4Dg+MNvHvH+XwKbsSAjd7YIsP
	eoM0vt1HgbE2rihTLl19vtHd3UuNDW2P3D3pH7IU4jnYoiGh4xcyJETdxErrOVOsuuitt1Kflx7
	rke6PtCLgC2EDWliL0/IRVuChe2toJpmr/u2rSf3jKL6+Evkp9yteWFW6uSRzLhZtkYJ5KguzwF
	w5PQwjt51LBfJuVmSQbmwTlm/5Q8FTSKnEtYl7FKZUudpOWZIgOsGb6m4LzwoX8kUwXI3U9xPbw
	r5u8gqJZWMra//7R53CnwegHeLOAn+wgiz29L6rlYMksiq+QXMZxMdvINrZfTv9U51G18i9H1Vv
	EkhfLnw==
X-Google-Smtp-Source: AGHT+IEpkhmi94KeSpVWykQL8VUd3CBwi10V/U7azWBMHlDu+KWmIDkAfZsUghpQkQNQWo9rzJEtLw==
X-Received: by 2002:a05:6512:3b86:b0:545:4ca:d395 with SMTP id 2adb3069b0e04-54838c56efdmr3781893e87.2.1740356362733;
        Sun, 23 Feb 2025 16:19:22 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54530df9016sm2710726e87.36.2025.02.23.16.19.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 16:19:21 -0800 (PST)
Date: Mon, 24 Feb 2025 02:19:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Luca Weiss <luca@lucaweiss.eu>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] arm64: dts: qcom: sdm632-fairphone-fp3: Add newlines
 between regulator nodes
Message-ID: <b7atryuxrqqo24q6rg5s3nmt3f54nzayaaipvoekf5yb4zv5bz@57zg7s7qgk2t>
References: <20250222-fp3-remoteprocs-firmware-v1-0-237ed21c334a@lucaweiss.eu>
 <20250222-fp3-remoteprocs-firmware-v1-2-237ed21c334a@lucaweiss.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250222-fp3-remoteprocs-firmware-v1-2-237ed21c334a@lucaweiss.eu>

On Sat, Feb 22, 2025 at 02:00:48PM +0100, Luca Weiss wrote:
> As is common style nowadays, make sure there's an empty line between
> regulator subnodes.
> 
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---
>  arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

