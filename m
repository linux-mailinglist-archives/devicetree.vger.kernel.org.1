Return-Path: <devicetree+bounces-125301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BC29DB81C
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 13:58:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C2121162261
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 12:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 272BC1A0BFB;
	Thu, 28 Nov 2024 12:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tZOg6ewZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B64D3196C7C
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 12:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732798712; cv=none; b=n+vxtBjOKBYU6R4H129Rey/yfI1HaOZdoj/dlaPJwWLyuAscRRqyzt/YSRzkaKYMIzka/MVKQ6jKLDSSX7dzjVy+WuOFRskBjWB5bEaATWcWtiR8VpyTgH8AmXN/luDoH8YnjOdcaKEsZjgl/hNEEvjiJKOfihsn4ghpGkMHKYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732798712; c=relaxed/simple;
	bh=nRPqJYxOCjl7tvhVBCbxH0p8aaX2hLWTIe3ub8XhSEQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jakStftRRaFgkElRKbfPsAFmK7G24luttzJ2CJmwCS1GoOC67cAoqunlW+ezWwf2OqMivDEWA4Ltj9GFqG5IcG4SvFBBnc7Vd/mAPJbcYLJCXbm8wp/kVjXwJCa4jVWAFewJbtKYY2P/LwBMWq2lEMy7r0VvzagRUbJR12BdmYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tZOg6ewZ; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53de035ea13so786961e87.0
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 04:58:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732798708; x=1733403508; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pL1gpN62/B7uzf1v5jSEYWiebBaoTtCpETANPcVdDOo=;
        b=tZOg6ewZcV6e9ijZS2G1ziy/ZNEXdVMyxhYGCpMYtj4UiYUgi2Hl9KPv5aBslGeoVF
         IOx4B0zmWJUMPbggKSyOl8vM0KNDFGszu5lP1xxtCbZyWIXfu4qXcAyFS9PB9CbIlKHN
         PXwlWAV+oIEGWndfVkZoN9vSnVnJri+9HSd13LfnLCn6evtiwGjiPCMdFbvBE14K9R71
         CSOHQpu8UaPnhY/UpA2wcOxBK5PVypa0K7dpMzQoOmohBGQsrUr1R6H/7kXhxyv4GBSy
         h70vDdttaTa7TbbMa9e1Cv/rnJuZhCfbixwLlqtbI5UnRVTCYRsr6+fxS52C3kmX8sum
         0s2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732798708; x=1733403508;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pL1gpN62/B7uzf1v5jSEYWiebBaoTtCpETANPcVdDOo=;
        b=sVuj9fkeI1yZPGzdQenkDx6uonEiMwlfVLan7iFbbe0atxT/x5LLx6Csl6W2pJXj+4
         TBGWw22BZ2Jk6SehPNnSPxrYT8R6sheTdKRJpocxsvJfTENFqgwVvlZAtWGjb9LJveWx
         aRQCywfIvOpKCOe0qsTP0XhIQJyv6qppECYdUPDdDinXmldV/loTX4Qg3qPKPvcNEzZ4
         lWzAlbQmDvEsEentZlfaiZYsK5fNbxrUTgDPd6QmgtPRU1hTyeZFs/rVOW4Jv6l0OtwF
         SUTYH2REvKjX70VIdalVwWN9xF5tXcjHsVx/qciiRCGO3GVcD9OBqGWSk9f840r8WKKi
         C+ZA==
X-Forwarded-Encrypted: i=1; AJvYcCWr5QtAhxYsZbUS/4hkJre+d64AZJkiziaDnhnl2B3bt9bRp/a6dSE8vfjmrcVDMz2luGFLA1ZUQcJa@vger.kernel.org
X-Gm-Message-State: AOJu0YxDZTmHrytHMfDmnBuxumsHo9Mg1gS+bp5ET+HcttggZhz1zPHn
	35A2L0F3C8UYPZpL+osquMgDKNejXzIwpu77UZNbWm4T9K5KtCkUhAMy48XEr9E=
X-Gm-Gg: ASbGncurF/9ax3n35xi0+EA2+ALs9FIqJF5qGQPLncca3fb0pLx11YsD1Fz0HAmQtYK
	rQPsc7t2ufmxT0wddtE2v+xor4tBtxl1UoSeBqMq2AsrHtf39/6Ab02T+sY0f0MizbiP2POQtDB
	5gKYK65TfT6jHUfroj0ygTTCDCHITEdtql8F8V5kMPOS8qFdxv8mErmGNJj6KobwZqFuao2H5Tq
	5SJG9WcZomBvEzyHRLdYQ5EjrUWam9Xqp968Jtsd4GB/7rmSsV1/gv0U5ihH09TQMIKk1Ksl9C2
	7usIbgyKnJs8voZVbkY68eLfscm2gg==
X-Google-Smtp-Source: AGHT+IECkq4RJ4Kyf5ZH00xXO2lbZry3yS9adckrC/jFJpC6Vz7bBgiKeaJmRerQcaQaVL3xVuFs3g==
X-Received: by 2002:a05:6512:3a8f:b0:53d:d572:98da with SMTP id 2adb3069b0e04-53df00dc973mr4003454e87.26.1732798707907;
        Thu, 28 Nov 2024 04:58:27 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64433f9sm171803e87.102.2024.11.28.04.58.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 04:58:26 -0800 (PST)
Date: Thu, 28 Nov 2024 14:58:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Cheng Jiang <quic_chejiang@quicinc.com>
Cc: Marcel Holtmann <marcel@holtmann.org>, 
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Rocky Liao <quic_rjliao@quicinc.com>, 
	linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, quic_bt@quicinc.com
Subject: Re: [PATCH v1 2/3] dt-bindings: net: Add QCA6698 Bluetooth
Message-ID: <jaq7tjdq4srboo7m4byfofdbigy5hyeeqwyrgh72t23xgwb65m@lz5yivskxbwd>
References: <20241128120922.3518582-1-quic_chejiang@quicinc.com>
 <20241128120922.3518582-3-quic_chejiang@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241128120922.3518582-3-quic_chejiang@quicinc.com>

On Thu, Nov 28, 2024 at 08:09:21PM +0800, Cheng Jiang wrote:
> Add the compatible for the Bluetooth part of the Qualcomm QCA6698 chipset.

... 
And you have misssed to explain why do you need to add it and how it is
different from WCN6855.

> 
> Signed-off-by: Cheng Jiang <quic_chejiang@quicinc.com>
> ---
>  .../devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml   | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> index 7bb68311c..82105382a 100644
> --- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> +++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> @@ -18,6 +18,7 @@ properties:
>      enum:
>        - qcom,qca2066-bt
>        - qcom,qca6174-bt
> +      - qcom,qca6698-bt
>        - qcom,qca9377-bt
>        - qcom,wcn3988-bt
>        - qcom,wcn3990-bt
> @@ -170,6 +171,7 @@ allOf:
>            contains:
>              enum:
>                - qcom,wcn6855-bt
> +              - qcom,qca6698-bt
>      then:
>        required:
>          - vddrfacmn-supply
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

