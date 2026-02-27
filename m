Return-Path: <devicetree+bounces-269436-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OMnO18Vomk0zAQAu9opvQ
	(envelope-from <devicetree+bounces-269436-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:06:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 833F81BE760
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:06:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2F11D30B5627
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 22:05:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45E9A47B427;
	Fri, 27 Feb 2026 22:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="krn+TKrO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3899447AF7B
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 22:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772229945; cv=none; b=mSKoM3lUbCcCIL0IV2jiT/aIwYPqm3/utEJ82SuMpQaBFlh1ZetPbHK/JtxIFAcJaRpjl466udKsipZhhprq8ZGLEf46GcavkgZaCP9QmJMPvqGYQITIMIrnw88QZaPPe6tLEKtBouApLKI5S5MIql2qSIJTg5iaYbDaf1N4I/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772229945; c=relaxed/simple;
	bh=Gb6QcE9aWdGZHOycjMfnRVrXJxZtn+RbpOpm64+TpQc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=RQa/FmmzqJ2oaecgRsabHoxWvhDqCjylT6ZSXW3GxBKWo76n+b1vMZidsoydNshd1wy5E6tff/B2HT5jPs9tWqlXAQz6sjd4ylVb8+LFw7xjMhtU5Qk8801H7hlixLlNC/F6gDWRE7Guox7d94Bs9cyDeslzVFjhX5urGbBrxQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=krn+TKrO; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-483703e4b08so22391695e9.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772229940; x=1772834740; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4JMcfUdK/nUzNjmnLhc+bvOBnyXoR2d2FLx4EtX6jrQ=;
        b=krn+TKrOU3HnqkakNzoqDwrOdJEX7JC2ghY4PugqZBTlT/GGRbRooh/6Oc8NR59y/i
         pAORAZY6QmXZd6GPc5/HovR0ciI1rwvCEqY2vzbgaVrBxa959moB3qPbE3Sazn8bvmwi
         mE8B9OK/5pOyKnXBeRUt+Etu5KXZABUJjlshNuvC206YoKp2kqIp9baaT1bcv1e7kHJv
         0988yw8J32p+5KckVtUTEoFIv4Cjw2Cqz9fKqBXfkqzA9CZli4mtAngOq8fYJu6XZDCx
         7TnuAVnhiLSlfMMHB/lfQI2F3PU1vbDfZD/3453IpXiOrH5Cqk+7HEVTx3aNtjh4eOIh
         554Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772229940; x=1772834740;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4JMcfUdK/nUzNjmnLhc+bvOBnyXoR2d2FLx4EtX6jrQ=;
        b=b56OHsjb5c/yxvWFPPvXbymRWIWaJBBhR2XNSo8euXZ1W5SZrkQRV5Wj9EIz7UrLOQ
         nqCPSkcEY5iuQGyFSNgyxrsmp3AWizlyckLcp8X5zC3L4LWPc9MrNMziHhS4NghmndiA
         LZfJygd6MwUGIsTahq03xFEGTjtmqYBpjyUURFhI1Y8wFEAPXsxVbvpoFmMwOC6O0G/Y
         rZV3VTawQ7NwjeQmvismPt25/vPl+5+hesQeQ8IdIZLbxhVKm3I6RX9T27jDeLY0SxXk
         +4sg7g1KsHQtq53Qv0KoNO7vztdRzB4lyu5KZXVpnaatKlYjeHcUP2G3HLUERzYNkn2Q
         mWww==
X-Forwarded-Encrypted: i=1; AJvYcCUYlA99P4hAev5B/eS5wYlOm/FM/Fzmi5Q/1IcjL+DwA9mCqyE+K4USY4WJKKfzHgrH+ILzlp2Hzjb0@vger.kernel.org
X-Gm-Message-State: AOJu0YxrQCIKkA03oBpnvM8ykay3HFSfcEi9Aq0fr1na9gZmPlHWZawF
	iJ45SwwJWPhO2PvLw+7iG3685BtQpcwANKwWL+83SpjmS12GJ+WjsDV86YGTqokJylc=
X-Gm-Gg: ATEYQzxBS57XfyjYmQEVFWznJtCoU4dtdA7z2qN02BUFi1QHnIa88fOrxdy2tQmI6aM
	WVkbp6S6N+29gKMfEQo6BjVycPMC3VCEWMjF+F5y9SsPQe7qw01RWhrhsMpO+ZhDtuhapViZ7qe
	yYtZr5jL77fx3wSJtz2BCKoIoFIINgIXxd0wYH4+ztu0QCK5kpPfmcEhD3iSOd/srJAqiUVxPwr
	URw1rT9gG9ZXFf82NCNS+8RPWTvLThUUTIKaf0WhPvT8jpK8d2CNuY4Tu9RBqFOsmQsBuYz7eCz
	C3D+ACnYBSEI/cmKZlIK9iuL2atcoiToZz5MMcBZPCRDHCnORUMcSiRVeSv5BJnDZNCPyqUxZeC
	rf0bhS8sm123PxqADYS8NNQirUCdaWEqpK+35X8cLXuB3Vye/I60i5fiMFZIVFjTzZsaDtowLX8
	vpAg/JgjsEMzF7euA9NN+07TY8jEvflgiQJkmWrEueDpVhlGMOHo7mPcpkIDN1SqrVp3hh8o+s/
	WTXQOc3v8ZNsPr/x3VGXCA2ih5OlpfM16k=
X-Received: by 2002:a05:600c:1549:b0:47e:e59c:67c5 with SMTP id 5b1f17b1804b1-483c990de68mr72621495e9.8.1772229940362;
        Fri, 27 Feb 2026 14:05:40 -0800 (PST)
Received: from [192.168.16.154] (host86-188-11-239.range86-188.btcentralplus.com. [86.188.11.239])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4399c765c67sm10252283f8f.32.2026.02.27.14.05.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 14:05:40 -0800 (PST)
Message-ID: <a90ab7f217e3d2ad4ac9b926fcb5c9d8a6ce43e6.camel@linaro.org>
Subject: Re: [PATCH v8 12/18] arm64: dts: qcom: x1e80100-crd: Add pm8010 CRD
 pmic,id=m regulators
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
Date: Fri, 27 Feb 2026 22:05:39 +0000
In-Reply-To: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-12-95517393bcb2@linaro.org>
References: 
	<20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
	 <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-12-95517393bcb2@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269436-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,baylibre.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christopher.obbard@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,linaro.org:mid,linaro.org:dkim,linaro.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 833F81BE760
X-Rspamd-Action: no action

Hi Bryan,

On Wed, 2026-02-25 at 15:11 +0000, Bryan O'Donoghue wrote:
> Add pmic,id =3D m rpmh to regulator definitions. This regulator set provi=
des
> vreg_l3m_1p8 the regulator for the ov08x40 RGB sensor on the CRD.
>=20
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

Reviewed-by: Christopher Obbard <christopher.obbard@linaro.org>

>  arch/arm64/boot/dts/qcom/x1-crd.dtsi | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/q=
com/x1-crd.dtsi
> index ded96fb43489b..c89f5ad0aed56 100644
> --- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> @@ -865,6 +865,36 @@ vreg_l3j_0p8: ldo3 {
>  			regulator-initial-mode =3D <RPMH_REGULATOR_MODE_HPM>;
>  		};
>  	};
> +
> +	regulators-8 {
> +		compatible =3D "qcom,pm8010-rpmh-regulators";
> +		qcom,pmic-id =3D "m";
> +
> +		vdd-l1-l2-supply =3D <&vreg_s5j_1p2>;
> +		vdd-l3-l4-supply =3D <&vreg_s4c_1p8>;
> +		vdd-l7-supply =3D <&vreg_bob1>;
> +
> +		vreg_l3m_1p8: ldo3 {
> +			regulator-name =3D "vreg_l3m_1p8";
> +			regulator-min-microvolt =3D <1800000>;
> +			regulator-max-microvolt =3D <1808000>;
> +			regulator-initial-mode =3D <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l4m_1p8: ldo4 {
> +			regulator-name =3D "vreg_l4m_1p8";
> +			regulator-min-microvolt =3D <1800000>;
> +			regulator-max-microvolt =3D <1808000>;
> +			regulator-initial-mode =3D <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l7m_2p9: ldo7 {
> +			regulator-name =3D "vreg_l7m_2p9";
> +			regulator-min-microvolt =3D <2912000>;
> +			regulator-max-microvolt =3D <2912000>;
> +			regulator-initial-mode =3D <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +	};
>  };
> =20
>  &gpu {

