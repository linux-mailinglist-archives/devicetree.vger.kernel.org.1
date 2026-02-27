Return-Path: <devicetree+bounces-269431-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJGwNdIUomk0zAQAu9opvQ
	(envelope-from <devicetree+bounces-269431-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:04:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3341BE69A
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:04:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0C333300E5A5
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 22:03:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC6BE47A0BC;
	Fri, 27 Feb 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yLnJzUJc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4347335A38C
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 22:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772229833; cv=none; b=UZYFeBAJ8TQoYFCeVYFKJEZXKSdUH+3GlKmXuyIlszmuFcPoTDso9ZH3awYmTJi4DnAWvTysiTJkj0dCOcINkitYe9unwZFEgxRqbFEZBNsymNI8f/+KCd1u7Kgto/sttRB8amrjbsUjE5joNFcfVgPfB+Yvkdqvt+o6BqfkTNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772229833; c=relaxed/simple;
	bh=luIj6BR36tQU2HyGVodtszn4i5/No+68y/na6FloQMQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=hMU0rVDLiWp41aVutAv2yMs78m8NxelfITpcX/UqE5uWvyMhJGgjARGwp78t3Br/YYq+c4vUwcoosQvWfKPivT+cM3wR35Drb+3vPutJNXalIhnf97v3Kjtz2FlchMIGpj0hELh+0LjiaJkcLSfBjDSw9Gf+aYrZTLOxIVkYG+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yLnJzUJc; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-43770c94dfaso2345080f8f.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:03:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772229831; x=1772834631; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zuSGsJkIR1LhU/dNFIV+PKzO73brARcfdXQ3T/xnWJY=;
        b=yLnJzUJcTTIj6PKNGJg8TiVa0TBAj3pL5ql3TgEZh2iy8DccZoZT1Uzk9rjJkk5YK+
         CBzxKtGOinQnvTneXCgQoWhgiW7qJxt92WN8gFAFAd3Yx4r8WV9PMNBIDQoP87yft02y
         j5DEwQMeHQKNpJqsptQxc6H7RNEvvl/44rZ8w2n2mux9IWKCwDID/1lEcX/0iZBNNsIm
         XZDl84B6VSYkX1L2/Xtw/c86JsL6c8cLlw4UjhMVshBZFJTRmb5JsnntEnXDdbNRIZac
         nK0Azc4C1esDGkoHc+M1ft9t+KSGHp3p2c9c4KAn3mDRQtdXtpFvd6JR7guZG/0SkDGo
         m7OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772229831; x=1772834631;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zuSGsJkIR1LhU/dNFIV+PKzO73brARcfdXQ3T/xnWJY=;
        b=CMrbacYeCnHfpwmBMA2xx2FTaY7kRa2S6JQEcQCepplxwsdrGSrHTN9cVoJGwa4zm5
         gaGIa5GXs/53IPw3lAP1zcVdtBKQ3g83SYHCvjBuAOddRDsqp6NEu1F/GYR6+CCJRKTN
         r2GwYStMjEd02kRjbXg+I/ql2+JejakeLN41PXzUgTITvc0x2o45drejnCGQABfdoq2F
         ps4p0afMu9HbRxAN78teiJYo9s6cn3ozYoH3G07883K8JJNoxLOd2VAkPYbkJV+GQfl8
         rITv4KKnPLMifRvr7TWhbb6asVlGqAY31AyN+ZOdouRY+SwSYPrmk3NwIltOZLhnp/8Q
         42Jw==
X-Forwarded-Encrypted: i=1; AJvYcCVXbjvr9mugDqKJI0XUFG0Oa6YWhCOTvw93ttC55RR8mu8xL3iFHcrZcMiP2t9/0iYZgJ3Mch2ENtPv@vger.kernel.org
X-Gm-Message-State: AOJu0YwxfOg93XNwfnY+Zv7pOPFaA1eSHz8RHwV4LK8lc9BxTzG/jZqt
	JHcwMFLOyy3MCpwyjdhQKM0jzViaXItY7vWChfZK5oNXkpUysKmZtjGKT9rcyJ0U/6s=
X-Gm-Gg: ATEYQzxWxZPDYNYp+Q5l7njhWfYijB9kL7YZv8XUeI40rJ+NlwccvDlo3PatAEK5vmd
	7nlA0Z0ScxcT4O5RGK9TjvWq+ikijMYyoIzGTrjZVn0UGVGfW00VcNCfZC2oa5lU3hea2XBja94
	17z7DmAY0NDv7Qkz0gZ6Tsb2DTgemvtxbw2kSmJc/8JtjqlXojePE6Z+Dhjzsi/H97g0Kj0YKxJ
	GeG2Il55urJ7Om8EAVNi8eEaEhhIRg0BgPBuWCPrxoPGn9wyW/Nosm8BU+Knhlc5c+nqzu+Jl7g
	/3x+cYr6db2ZszEIVLVHVil6St/L6WI+W9t8SbmX3SBLkgAT0l+G3xApzYTER9wuEgW36wxWlMc
	mecSjcLPWWlMgMC2GJvTky2KAQPURUQh9S0ZBIdyjxWtRebLltH1HiRBGBQIa8rLgDk1FrpbFbB
	OPgvtpH10j25FeK9nJ3A0gyrSmhfnw6kw//tDfdJrKDtibIYp/hDTlP4n5qLLz43+vpjBU712KH
	ClQOOorbh1bmqjGZvYv2Z8z
X-Received: by 2002:a5d:4527:0:b0:437:664c:3f28 with SMTP id ffacd0b85a97d-4399de4a684mr5861038f8f.47.1772229830567;
        Fri, 27 Feb 2026 14:03:50 -0800 (PST)
Received: from [192.168.16.154] (host86-188-11-239.range86-188.btcentralplus.com. [86.188.11.239])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4399c75b5b6sm9219659f8f.18.2026.02.27.14.03.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 14:03:49 -0800 (PST)
Message-ID: <9c7fff927b74795994202598fc05c5b81ccf3d97.camel@linaro.org>
Subject: Re: [PATCH v8 08/18] arm64: dts: qcom: x1e80100: Add CAMCC block
 definition
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
	linux-media@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, Konrad
 Dybcio <konrad.dybcio@oss.qualcomm.com>
Date: Fri, 27 Feb 2026 22:03:49 +0000
In-Reply-To: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-8-95517393bcb2@linaro.org>
References: 
	<20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
	 <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-8-95517393bcb2@linaro.org>
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
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269431-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,baylibre.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christopher.obbard@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,qualcomm.com:email,ae00000:email]
X-Rspamd-Queue-Id: 6A3341BE69A
X-Rspamd-Action: no action

Hi Bryan,

On Wed, 2026-02-25 at 15:11 +0000, Bryan O'Donoghue wrote:
> Add the CAMCC block for x1e80100. The x1e80100 CAMCC block is an iteratio=
n
> of previous CAMCC blocks with the exception of having two required
> power-domains not just one.
>=20
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

Reviewed-by: Christopher Obbard <christopher.obbard@linaro.org>
Tested-by: Christopher Obbard <christopher.obbard@linaro.org>

>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qc=
om/hamoa.dtsi
> index db65c392e6189..f96411f481305 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> @@ -6,6 +6,7 @@
>  #include <dt-bindings/clock/qcom,rpmh.h>
>  #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
>  #include <dt-bindings/clock/qcom,sm8450-videocc.h>
> +#include <dt-bindings/clock/qcom,x1e80100-camcc.h>
>  #include <dt-bindings/clock/qcom,x1e80100-dispcc.h>
>  #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
>  #include <dt-bindings/clock/qcom,x1e80100-gpucc.h>
> @@ -5464,6 +5465,23 @@ videocc: clock-controller@aaf0000 {
>  			#power-domain-cells =3D <1>;
>  		};
> =20
> +
> +		camcc: clock-controller@ade0000 {
> +			compatible =3D "qcom,x1e80100-camcc";
> +			reg =3D <0 0x0ade0000 0 0x20000>;
> +			clocks =3D <&gcc GCC_CAMERA_AHB_CLK>,
> +				 <&bi_tcxo_div2>,
> +				 <&bi_tcxo_ao_div2>,
> +				 <&sleep_clk>;
> +			power-domains =3D <&rpmhpd RPMHPD_MXC>,
> +					<&rpmhpd RPMHPD_MMCX>;
> +			required-opps =3D <&rpmhpd_opp_low_svs>,
> +					<&rpmhpd_opp_low_svs>;
> +			#clock-cells =3D <1>;
> +			#reset-cells =3D <1>;
> +			#power-domain-cells =3D <1>;
> +		};
> +
>  		mdss: display-subsystem@ae00000 {
>  			compatible =3D "qcom,x1e80100-mdss";
>  			reg =3D <0 0x0ae00000 0 0x1000>;

