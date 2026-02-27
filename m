Return-Path: <devicetree+bounces-269427-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UED0FmkUomk0zAQAu9opvQ
	(envelope-from <devicetree+bounces-269427-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:02:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F311BE5F5
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:02:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 43BC53015121
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 22:02:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A04E246AF0A;
	Fri, 27 Feb 2026 22:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zb6xL1p9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38155361DAC
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 22:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772229724; cv=none; b=o0c71hugAKmUZMo7Q7iFmDMwVAca0PZwGPwcg/r9xpN4notIBGCZoS5hCi9qe0RkS/3Cthk31GReI3WhX28Xhx/pGRVC/VGezIfWVBslUo494C44B5KAlsuwn4qV4euz6e13iphoUG5D+2BPi3oDW/wff4lK8dRCY4g+x1hR/XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772229724; c=relaxed/simple;
	bh=0XfJAAwPpqZPTa0S4qXdpqC5AbA+tYTKPN+ODpQiwPw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=E/i/ofn3F13tGIEwtwV1MkMjQgBbkRLMUqEBlM1Hf7hbr/+O4DBy3tSwqsDjOrGFdtAHhBahxj1N9qrb4H9XfC1gLDUPWnRrApJq8EXWCkdVDMZkJ6PIQTxSrWF0mKAdKWo/Rw5Ot93dh699qaZpqVdKuJutQjNboWhZ1t125as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zb6xL1p9; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4806ce0f97bso20760955e9.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:02:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772229722; x=1772834522; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tBsw+oV5b4W+q0aJyjGVPBNMIWpF08k90ryvmytPfX4=;
        b=zb6xL1p9x/bHkcL2dvE0RE2kZQVvdWVq5/8k0525HWTE9GdQ2gqRbOYqhyU+CbUVAw
         UExSA5PXugxtuOEXJJF9VZe6qT7L2MivWLvU9OtuWan8lWAVsOM0Utg6Rvv2IeYPF96D
         AyJ9G70FhrbTBud4F36hvrfDweCrrLnK4hxyFgVsR0MppdzWbjcKPKLhPRusaDQ1G7mk
         nCGHZAgErcRLEVi7dT3hNM9KiRh7YGF/HoI3ljGJwmUwW77rTyoyznLCDSul/4WSl4TA
         XjCANZkwbJZhRDUViZG//MNE/KNiw7OEnzPlGCV191uFQTWoh1KbOYdszu45e2Uc+ngb
         nAmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772229722; x=1772834522;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tBsw+oV5b4W+q0aJyjGVPBNMIWpF08k90ryvmytPfX4=;
        b=AOe33hOheO+cXIN+VptpeSEMPNbFAVaPPbKRVAARwKar7FlacQ6XvsPTNd997UFcV2
         ZXLYs1o4q8qy5vm1YCJVBPX0+EpW7CvE8qP6uS2UdxZQPvqD26TUEB6PWvVMRMCKchYr
         ogImrqxslwXfZnGFWxh6RxssWMQT98b4PU560oLIbpFYmWHdT6C92G9KGMV30cniipjm
         2qXF0lkCUJn8nc3RriPCJTaNSH8S+ZDIXnP6dIis+0bI6lVBoxhGgZL0MlMySlEsAVqh
         uQkscbsNj1iYizhGS3gH14c/chJq1y7BZrmb6Dn9gpdeGGXUSrmZZ/YGPlMV/MV/Ju6D
         5Sbg==
X-Forwarded-Encrypted: i=1; AJvYcCWgAAAT7QbooDVx1thQ+wkZSojRHQHBXOmTbxEh6bAqkX/UMmaI9y1wIPMUACTrevSIVthd0rokjxbk@vger.kernel.org
X-Gm-Message-State: AOJu0YxYQpDjgZVdeUufcFLXfUYa+mjkwaNsBaFBXRUB6tpmCzSqkXbR
	xgmnjSzvuQejLEtHImSEgl+mMCvGbQoSGBDzjvI8g3lBml+XPbTP6WUxwuQNsllnCkU=
X-Gm-Gg: ATEYQzzccDrjF4x5AY0QZURuG4npc4RaM7p7C9+0lZuTxDua2mPD9pahheZ3ng3goh9
	/GIk9pIMiw6xKYI4V2GI/ZaxsN1+akN7s8bZOGC9McUkRxxJKbkwpQRloSNiEuaFqOBfi9BP1vh
	3sM80fftcdCEFQWg5HUIGcfi9TlvM7tAnc4AnkMYxW+eiiwOs+Fxet0Xku1KmmJlQ6Hjz0mtoUC
	+lljHreQh4h/CPKvBaDx4q++mR7NLeEYMTy8ofxCuXWP2Jdyo2A9nRMKMXkwJissTv19nCqMKao
	da7FW+kzknf9fMZsGKWOU1Dge+14sE0XvT1dZWTr3n9F3fE7VG44/UTu9MEFFsIbbezSIk9DRG9
	xL2+2GVAJ+sMIk9B52kVljf+JIUmy2jldodWCIc0pwAn1bm3kChU+2h+/TCq5XVCvLwpVDIqzee
	+mx+Ontpsy986tDFmahQggp6y5J2Pe7ye7oqoK+oLbddC0YWIpKmVYIZamwl3zbKp0Z9w+bAP8Z
	B39UKyWQMNh47LTiQDTbq6q
X-Received: by 2002:a05:600c:c8f:b0:483:bf23:1915 with SMTP id 5b1f17b1804b1-483c9ba68fdmr70282765e9.2.1772229721570;
        Fri, 27 Feb 2026 14:02:01 -0800 (PST)
Received: from [192.168.16.154] (host86-188-11-239.range86-188.btcentralplus.com. [86.188.11.239])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4399c765b6esm10086901f8f.33.2026.02.27.14.02.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 14:02:01 -0800 (PST)
Message-ID: <e00a03a6728a92f34f7fbb431254f908d0ea49f9.camel@linaro.org>
Subject: Re: [PATCH v8 04/18] dt-bindings: media: qcom,x1e80100-camss:
 Reduce iommus to five
From: Christopher Obbard <christopher.obbard@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Bjorn Andersson	
 <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Robert
 Foss	 <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, Mauro Carvalho
 Chehab	 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Bryan O'Donoghue
 <bod@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 27 Feb 2026 22:02:00 +0000
In-Reply-To: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-4-95517393bcb2@linaro.org>
References: 
	<20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
	 <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-4-95517393bcb2@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-8 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269427-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,baylibre.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christopher.obbard@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: 13F311BE5F5
X-Rspamd-Action: no action

Hi Bryan,

On Wed, 2026-02-25 at 15:11 +0000, Bryan O'Donoghue wrote:
> Rather than bury the BPS and IPE inside of the CAMSS block we can define
> them like the CCI/I2C and CSIPHY as their own individual devices.
>=20
> Remove the IPE and BPS iommu entries from the main CAMSS yaml. There is n=
o
> upstream user of these iommu entries right now so this is safe to do.
>=20
> We will instead include these iommus in the BPS and IPE device nodes
> instead of jamming them into the existing CAMSS binding.
>=20
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

Reviewed-by: Christopher Obbard <christopher.obbard@linaro.org>

> ---
>  Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml | 5 +--=
--
>  1 file changed, 1 insertion(+), 4 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.=
yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> index 462b1355c9fb7..d39013d4a83e1 100644
> --- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> @@ -98,7 +98,7 @@ properties:
>        - const: sf_icp_mnoc
> =20
>    iommus:
> -    maxItems: 8
> +    maxItems: 5
> =20
>    power-domains:
>      items:
> @@ -353,11 +353,8 @@ examples:
> =20
>              iommus =3D <&apps_smmu 0x800 0x60>,
>                       <&apps_smmu 0x860 0x60>,
> -                     <&apps_smmu 0x1800 0x60>,
>                       <&apps_smmu 0x1860 0x60>,
>                       <&apps_smmu 0x18e0 0x00>,
> -                     <&apps_smmu 0x1980 0x20>,
> -                     <&apps_smmu 0x1900 0x00>,
>                       <&apps_smmu 0x19a0 0x20>;
> =20
>              power-domains =3D <&camcc CAM_CC_IFE_0_GDSC>,

