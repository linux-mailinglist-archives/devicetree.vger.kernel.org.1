Return-Path: <devicetree+bounces-141659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E45E6A21CFF
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 13:18:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1EC36188761E
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 12:18:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDDF81D9A50;
	Wed, 29 Jan 2025 12:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="I7p+zRP6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE261AAE08
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 12:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738153116; cv=none; b=Y7xxLUXMIsfNv/jY/6EwQ7oHGfwlm9K8WOdqa+JGO5B+1jZy1gFFubIfF5svaAmbHQZEvjt+pcvb2Q462Z7rdfRpFiebfeFjbJDI779zKVR2M/IZnMP8Zpo/ZAv4awOn82PpiB5xDoIlRdbFDc2TRvLRITgxduIRPh73gLPznGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738153116; c=relaxed/simple;
	bh=jcNFTng4JpTktWw7YXtZvIo27Dg28rJvqH6VwF4e/HU=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=TLTmxDHNacl0DdGfjHchIxsSlvAbWrYbl9H6LjMwn2MxMS4+kE3y5aYTcI8whiv70Fv6WVYQ1FLIPoG+PCFQvZlwKJoHydtPEr9g60DzJUo5aFaa0wNUUlvzWDWIY8JtW9CwvnWfcW0g/pfTcLASs7LaOY+gfDlz8eWJ9MPfRgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=I7p+zRP6; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ab69bba49e2so563158566b.2
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 04:18:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1738153112; x=1738757912; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a99qlDNqWURU1I23MuHjH0bNbiC9ObSxp1hJlpltb4I=;
        b=I7p+zRP6TbfJOsKHGmVbFoBI9P7j2pFcpMPJNqYtUeYAloGZiFDEhvGCeR/BgU6pkR
         sLYgpmh+6EbWEmRqlOz3QJNlrT0vp1kI2C97+V2VmtT/MDHe5GICnBvRwbi9bo+E3HFJ
         k+zfMGH8Py6GXZkenyz5taq25fXQgqerh//OuPh0X+QoJx7iYjpYEBKj0QpIMihCoqeu
         pjZtEWoVSx2UWjFlBgqjcpnhNc0EF1FDxoMH2olUDtodDKcJiEuBAq3p42g5UUpIeyVa
         O+5wwbHWzrrG6G0Frnjf1IQcK2+ot9UXf2uXfpoqHlNL6waXnnl8E3cKorDUIX0KGl61
         u/bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738153112; x=1738757912;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=a99qlDNqWURU1I23MuHjH0bNbiC9ObSxp1hJlpltb4I=;
        b=QwK32Y9X83u1nAyuk6pha3jDZVzn+aLc2VFKZUi7ihMnoppgz7TxLu10dvJgPd+EZO
         P7/beD6vJu2a+VlXpdW6LHd19jkDEAAcMI+xqipJ3xCrlZozOIklZh8r3963XZ1Xnlaj
         NeMfi2jySibgmQboDXAFDoc8K0n/PhfCqsqiYeMRBqTfrwiedXN1fmYHIJ5Z2Ax23yyj
         5ru45Znh9713YlT7U4/PDZbihgrrUeDLw+PhcGdVfMO7xzRye9K60Wo2v3z2bn5VYaKo
         9LPywLpGroILCX8Imvf/Se50D7A9XDMNQo6rrQBud4OpqfIYwaxMFxEnC4P3bCKAuUZy
         w/8g==
X-Forwarded-Encrypted: i=1; AJvYcCVsDM2x4570rKjNkNmXUc6a+WMiwtP5Ty24+F++Vex2NsHuy8FBCZRcl32vmZN6nGWd1g+bRGfznMvd@vger.kernel.org
X-Gm-Message-State: AOJu0YzptgQkG74AsXU5yrodmLd+rcgDqlb/hdtm7bv4+NfvueKUuruS
	mq5SvHTGI7tFshxXDbBvpOplgp14+zbAchN/Pauh4MTzUSEN+LK8kf4HgDNZLIw=
X-Gm-Gg: ASbGncsUfxMv4ACzLsXZ3wDa7gCDnWnJjBScotp0PkNEyhfa+VL0pP8UpDVEkzFDNLN
	hbXEtQusBCIoi1RKRT0Je/OkyJzAg3SXH5KVgotoZCINk4W8pFyUD1oCT1ijUZwDX/ty/r/Jfm8
	MWP+Z7vHJWDaS0IWsiaj3bMQe7mLS0w7rs6lU69YeTO0APt/d/KVpN0V0MKwdh0ZsmYNRgc7uu+
	X7aUFB/AiZIiBksoDojCsFdLlVY9eb2W2gD8Qo+GsXs2S8Y0IfXE6IDTff6r/gPrTMI1cXZXUzk
	P8ej7XT+rKtbvrTjTCzsE0xqdt3dmmTrFF5H+0VXmwjv0hrrezSLwDk2rjGL
X-Google-Smtp-Source: AGHT+IE9RV8AZf9n5LiaC3XoEM/GOC9XhjHjo71lzPz78MtaJuaZQ+Wp2nT+KhqzBf5BZq1p/ceY0Q==
X-Received: by 2002:a05:6402:1ed5:b0:5d0:ed92:cdf6 with SMTP id 4fb4d7f45d1cf-5dc5efc5e30mr6844761a12.19.1738153111906;
        Wed, 29 Jan 2025 04:18:31 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6760ab363sm965675166b.114.2025.01.29.04.18.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2025 04:18:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 29 Jan 2025 13:18:30 +0100
Message-Id: <D7EJURP1JU6R.1TNVVAGA939RR@fairphone.com>
Cc: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: qcom: add all 7 coresight ETE nodes
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Neil Armstrong" <neil.armstrong@linaro.org>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Yuanfang Zhang"
 <quic_yuanfang@quicinc.com>
X-Mailer: aerc 0.19.0-0-gadd9e15e475d
References: <20250129-topic-sm8650-upstream-add-all-coresight-cpus-v1-1-96996d37df8e@linaro.org>
In-Reply-To: <20250129-topic-sm8650-upstream-add-all-coresight-cpus-v1-1-96996d37df8e@linaro.org>

Hi Neil,

On Wed Jan 29, 2025 at 10:54 AM CET, Neil Armstrong wrote:
> Only CPU0 Embedded Trace Extension (ETE) was added, but there's one
> for all 7 CPUs, so add the missing ones.
>
> Fixes: 256e6937e48a ("arm64: dts: qcom: sm8650: Add coresight nodes")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

The subject line is missing "sm8650"

Regards
Luca

> ---
>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 163 +++++++++++++++++++++++++++++=
+++++-
>  1 file changed, 161 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/q=
com/sm8650.dtsi
> index 86684cb9a9325618ddb74458621cf4bbdc1cc0d1..d925d5e2c8182d522dd5b8e1f=
a0e253f5de2f7a7 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -365,7 +365,7 @@ cluster_sleep_1: cluster-sleep-1 {
>  		};
>  	};
> =20
> -	ete0 {
> +	ete-0 {
>  		compatible =3D "arm,embedded-trace-extension";
> =20
>  		cpu =3D <&cpu0>;
> @@ -379,15 +379,174 @@ ete0_out_funnel_ete: endpoint {
>  		};
>  	};
> =20
> +	ete-1 {
> +		compatible =3D "arm,embedded-trace-extension";
> +
> +		cpu =3D <&cpu1>;
> +
> +		out-ports {
> +			port {
> +				ete1_out_funnel_ete: endpoint {
> +					remote-endpoint =3D <&funnel_ete_in_ete1>;
> +				};
> +			};
> +		};
> +	};
> +
> +	ete-2 {
> +		compatible =3D "arm,embedded-trace-extension";
> +
> +		cpu =3D <&cpu2>;
> +
> +		out-ports {
> +			port {
> +				ete2_out_funnel_ete: endpoint {
> +					remote-endpoint =3D <&funnel_ete_in_ete2>;
> +				};
> +			};
> +		};
> +	};
> +
> +	ete-3 {
> +		compatible =3D "arm,embedded-trace-extension";
> +
> +		cpu =3D <&cpu3>;
> +
> +		out-ports {
> +			port {
> +				ete3_out_funnel_ete: endpoint {
> +					remote-endpoint =3D <&funnel_ete_in_ete3>;
> +				};
> +			};
> +		};
> +	};
> +
> +	ete-4 {
> +		compatible =3D "arm,embedded-trace-extension";
> +
> +		cpu =3D <&cpu4>;
> +
> +		out-ports {
> +			port {
> +				ete4_out_funnel_ete: endpoint {
> +					remote-endpoint =3D <&funnel_ete_in_ete4>;
> +				};
> +			};
> +		};
> +	};
> +
> +	ete-5 {
> +		compatible =3D "arm,embedded-trace-extension";
> +
> +		cpu =3D <&cpu5>;
> +
> +		out-ports {
> +			port {
> +				ete5_out_funnel_ete: endpoint {
> +					remote-endpoint =3D <&funnel_ete_in_ete5>;
> +				};
> +			};
> +		};
> +	};
> +
> +	ete-6 {
> +		compatible =3D "arm,embedded-trace-extension";
> +
> +		cpu =3D <&cpu6>;
> +
> +		out-ports {
> +			port {
> +				ete6_out_funnel_ete: endpoint {
> +					remote-endpoint =3D <&funnel_ete_in_ete6>;
> +				};
> +			};
> +		};
> +	};
> +
> +	ete-7 {
> +		compatible =3D "arm,embedded-trace-extension";
> +
> +		cpu =3D <&cpu7>;
> +
> +		out-ports {
> +			port {
> +				ete7_out_funnel_ete: endpoint {
> +					remote-endpoint =3D <&funnel_ete_in_ete7>;
> +				};
> +			};
> +		};
> +	};
> +
>  	funnel-ete {
>  		compatible =3D "arm,coresight-static-funnel";
> =20
>  		in-ports {
> -			port {
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +
> +			port@0 {
> +				reg =3D <0>;
> +
>  				funnel_ete_in_ete0: endpoint {
>  					remote-endpoint =3D <&ete0_out_funnel_ete>;
>  				};
>  			};
> +
> +			port@1 {
> +				reg =3D <1>;
> +
> +				funnel_ete_in_ete1: endpoint {
> +					remote-endpoint =3D <&ete1_out_funnel_ete>;
> +				};
> +			};
> +
> +			port@2 {
> +				reg =3D <2>;
> +
> +				funnel_ete_in_ete2: endpoint {
> +					remote-endpoint =3D <&ete2_out_funnel_ete>;
> +				};
> +			};
> +
> +			port@3 {
> +				reg =3D <3>;
> +
> +				funnel_ete_in_ete3: endpoint {
> +					remote-endpoint =3D <&ete3_out_funnel_ete>;
> +				};
> +			};
> +
> +			port@4 {
> +				reg =3D <4>;
> +
> +				funnel_ete_in_ete4: endpoint {
> +					remote-endpoint =3D <&ete4_out_funnel_ete>;
> +				};
> +			};
> +
> +			port@5 {
> +				reg =3D <5>;
> +
> +				funnel_ete_in_ete5: endpoint {
> +					remote-endpoint =3D <&ete5_out_funnel_ete>;
> +				};
> +			};
> +
> +			port@6 {
> +				reg =3D <6>;
> +
> +				funnel_ete_in_ete6: endpoint {
> +					remote-endpoint =3D <&ete6_out_funnel_ete>;
> +				};
> +			};
> +
> +			port@7 {
> +				reg =3D <7>;
> +
> +				funnel_ete_in_ete7: endpoint {
> +					remote-endpoint =3D <&ete7_out_funnel_ete>;
> +				};
> +			};
>  		};
> =20
>  		out-ports {
>
> ---
> base-commit: da7e6047a6264af16d2cb82bed9b6caa33eaf56a
> change-id: 20250129-topic-sm8650-upstream-add-all-coresight-cpus-a3418606=
b354
>
> Best regards,


