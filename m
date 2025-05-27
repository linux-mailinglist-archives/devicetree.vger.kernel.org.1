Return-Path: <devicetree+bounces-180888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 819E6AC5310
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 18:32:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C95A1BA23B6
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 16:32:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 884B427FD41;
	Tue, 27 May 2025 16:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sslJajJC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2AAA27A926
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 16:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748363544; cv=none; b=k3YkEUaDF36fWfvbaAnXC2nfNa5oYcgY3gNYd3VHr5m9bMA4lhmj9yz7F01T5ZYc+LGJbWZO3s+VNmOGLpbOymiSEkhV4/YX1Iu0NSMcfVMPL68+wZ1e4alFprLACnisiXTVzdrxZPR7kScHhpONr6DUFBfKfrN45AQ1Xv61eB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748363544; c=relaxed/simple;
	bh=2sIt4equTxMf7zNksQU/+IeDziUhiC69Jled1PWpUQE=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=OJcyKA5vVuF80ml++I6iP6Az6Y1Th42Hy70aLhwBz3nWZw1h0OpffYHOCWclaPlNno2N1rELqKMt46uWketNQOHfTVzIsBRhrzhMC06gjL3P3QkBv2hoCcdjM04Jm28gQQWsKCUF+UmN1pUm17eKKu5q0f7tfMBLEyK41/c8i0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sslJajJC; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43cf848528aso38521345e9.2
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 09:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748363540; x=1748968340; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j4ceyXfpbHOb26b8XCYLDg0Adii9j8clPXP8isRHjuk=;
        b=sslJajJCJsXGH1OU5imgef6CxF90BaOM9UBxOexziU1MFTfXryj133Ryw0898TK/oq
         K6wy9zhUouFdvmTDuvYVs3NJx/QJS7ZfQI0IdEaaDZeScpKGI1bM84j5ooCO2Vgpy4jr
         gqJQxDmUG/Ew2SszVOzFv+Y5pChEJxCbqj3YazYSgwpuJLjJlcjiaw++ZChkCRgFKXUR
         HPpa4mxRLNRqm7jZNSaAZnXfAhDMmbPy5wkLniRNPyoYRDx7XBq+tX3e1HpOpn2vfUCh
         RqjrTWNAJN6m70K8L5dKlHE3WbPgJknZJXL5/5RjI3Tmq4jXm+b4e5vqVVogvGQeGVcW
         ppvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748363540; x=1748968340;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=j4ceyXfpbHOb26b8XCYLDg0Adii9j8clPXP8isRHjuk=;
        b=SKUTYqmmNYExUmjcREcOKfufZND8qzng5sEoP3YYDwjPTE/GbB7DBH6stPGs0fJJov
         CzTqlqNnO2JxDva8SSA1EVOiHOrbnQkZBUmSB8b1v9nbZBCRpq5ohu8tNfYcXTTT4H6A
         lYFI9A/NtBRPrtgZICGIU9xN5uA+jEcUmhcNeI8QRGCHR0pflsROsNnrHAoxVGvpkAhM
         ZhYLzOv4ZVTEfNLRKtupiscSqS9FumtO/EYMToxkUHLlDdUvU+Gmn6+DJeOU0Bz6cLtf
         SWM3hJOkyDFvMt3zij184OU3+ddrcYo6lwxvYYPPK226M+UEYGuoGqOcBYE9be1AKlvK
         n7fA==
X-Forwarded-Encrypted: i=1; AJvYcCXzs+HLagGT2bx+fuvSSlvEBKf8QIeUn7PIW0CNx+Jk3yaTOZAl5VBmzWyo4fVFPW0f4wLcF9xxqd5H@vger.kernel.org
X-Gm-Message-State: AOJu0YyvoJi5OW23M7h1ZEli0KKYUrm0rSKafjFGshJw6kALmry4uo0F
	2kuOT/8ekudcjZ0va8IP297CLdP/hsnnHUKGAzZ7MNRSE+p5ZNDILCYVoLUXAWy4ZNM=
X-Gm-Gg: ASbGncuFsEuzmS3JEP5LYTG3LXTO9BV9YNqzy+Wygq0lEwH8dFZ713YBmZ/By5vsbzj
	Jq6FZnNq76bX/Znicsb+IY8T0tNK3oa6rH4QgtpHQELGsRSiCzqDJdGJVnZjo7n4IQBvojt4WLL
	KsR8duxxrMZAYlwfrDe7zjLcRamYBxOiZMXoZw6Xa/knitK9/wp05yZtTxEDUVgls0BCjhbVANC
	Zgwx35IvjDnVT/4PutgLyayc2GXlIBmHkvzvARjlCDaImU7YtSzlT7zpj0bJJM1RFDxKZkL4K2O
	DdMAu822B+Dk2pdIl2kbXk7gHDWX0k8PIkt8GImZIuOj7TmCLxyGQpMuxQ==
X-Google-Smtp-Source: AGHT+IEmErbjqw+229GOiiiNp1gk2yeXCVD0vFAogvu/2yFKvfiLTxs0BLJ5USyClF4cC7YxbXHYeQ==
X-Received: by 2002:a05:600c:6286:b0:442:d9f2:c74e with SMTP id 5b1f17b1804b1-44c932f9428mr116536725e9.23.1748363540016;
        Tue, 27 May 2025 09:32:20 -0700 (PDT)
Received: from localhost ([2a02:c7c:7213:c700:f024:90b8:5947:4156])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f3dd94d1sm270586605e9.34.2025.05.27.09.32.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 09:32:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 27 May 2025 17:32:18 +0100
Message-Id: <DA735DM0N649.3NLLMFUW7ANNM@linaro.org>
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>
Cc: "Srinivas Kandagatla" <srini@kernel.org>, "Mark Brown"
 <broonie@kernel.org>, <linux-sound@vger.kernel.org>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Bjorn Andersson" <andersson@kernel.org>, "Dmitry Baryshkov"
 <lumag@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Konrad
 Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Jaroslav Kysela"
 <perex@perex.cz>, "Takashi Iwai" <tiwai@suse.com>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-gpio@vger.kernel.org>
Subject: Re: [PATCH v3 07/12] arm64: dts: qcom: sm6115: add LPASS devices
From: "Alexey Klimov" <alexey.klimov@linaro.org>
X-Mailer: aerc 0.20.0
References: <20250522-rb2_audio_v3-v3-0-9eeb08cab9dc@linaro.org>
 <20250522-rb2_audio_v3-v3-7-9eeb08cab9dc@linaro.org>
 <26afac49-2500-470b-a21a-d57e4ff14fa6@linaro.org>
In-Reply-To: <26afac49-2500-470b-a21a-d57e4ff14fa6@linaro.org>

On Thu May 22, 2025 at 6:52 PM BST, Krzysztof Kozlowski wrote:
> On 22/05/2025 19:40, Alexey Klimov wrote:
>> The rxmacro, txmacro, vamacro, soundwire nodes, lpass clock controllers
>> are required to support audio playback and audio capture on sm6115 and
>> its derivatives.
>>=20
>> Cc: Konrad Dybcio <konradybcio@kernel.org>
>> Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> Just keep one CC.

Question is which one now. Konrad, is it fine to keep your oss.qualcomm.com
email here?

>> Cc: Srinivas Kandagatla <srini@kernel.org>
>> Co-developed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>
> Missing SoB.

IIRC I took Konrad's changes but at this point I don't remember how much wa=
s changed.
So I need to switch to Konrad's owned completely or somehow indicate using =
tags
that it is initial Konrad's work.

Konrad, what's your preference here?

>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>> ---
>>  arch/arm64/boot/dts/qcom/sm6115.dtsi | 132 ++++++++++++++++++++++++++++=
+++++++
>>  1 file changed, 132 insertions(+)
>>=20
>> diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/=
qcom/sm6115.dtsi
>> index c8865779173eca65f9e94535b5339f590d4b1410..045887ae215b0965ffc098fd=
31fd18ac1ad90b7b 100644
>> --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
>> @@ -2689,6 +2689,138 @@ funnel_apss1_in: endpoint {
>>  			};
>>  		};
>
>
>
> ...
>
>> +		swr0: soundwire@a740000 {
>> +			compatible =3D "qcom,soundwire-v1.6.0";
>> +			reg =3D <0x0 0x0a740000 0x0 0x2000>;
>> +			interrupts =3D <GIC_SPI 296 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks =3D <&txmacro>;
>> +			clock-names =3D "iface";
>> +
>> +			resets =3D <&lpasscc 0>;
>> +			reset-names =3D "swr_audio_cgcr";
>> +
>> +			label =3D "VA_TX";
>> +			qcom,din-ports =3D <3>;
>> +			qcom,dout-ports =3D <0>;
>> +
>> +			qcom,ports-sinterval-low =3D	/bits/ 8 <0x03 0x03 0x03>;
>> +			qcom,ports-offset1 =3D		/bits/ 8 <0x01 0x02 0x01>;
>> +			qcom,ports-offset2 =3D		/bits/ 8 <0x00 0x00 0x00>;
>> +			qcom,ports-hstart =3D		/bits/ 8 <0xff 0xff 0xff>;
>> +			qcom,ports-hstop =3D		/bits/ 8 <0xff 0xff 0xff>;
>> +			qcom,ports-word-length =3D	/bits/ 8 <0xff 0xff 0xff>;
>> +			qcom,ports-block-pack-mode =3D	/bits/ 8 <0xff 0xff 0xff>;
>> +			qcom,ports-block-group-count =3D	/bits/ 8 <0xff 0xff 0xff>;
>> +			qcom,ports-lane-control =3D	/bits/ 8 <0x00 0x00 0x00>;
>> +
>> +			#sound-dai-cells =3D <1>;
>> +			#address-cells =3D <2>;
>> +			#size-cells =3D <0>;
>
> Why this not is not disabled? That's a bus. Each bus node makes no sense
> on its own without the actual devices, thus it is always disabled in the
> SoC file. Just take a look at other DTSI.

Because I didn't know that. Ok, I'll add disable status to these.

>> +		};
>> +
>> +		lpasscc: clock-controller@a7ec000 {
>> +			compatible =3D "qcom,sm6115-lpasscc";
>> +			reg =3D <0x0 0x0a7ec000 0x0 0x1000>;
>> +			#reset-cells =3D <1>;
>> +		};
>> +
>>  		remoteproc_adsp: remoteproc@a400000 {
>
> Looks like not ordered by unit address.

Ok, I need to sort it then and check other parts to see if they are sorted =
or not.


