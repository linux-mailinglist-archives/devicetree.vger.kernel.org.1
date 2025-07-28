Return-Path: <devicetree+bounces-200210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10344B13C7F
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 16:10:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8081A4E42CD
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 14:02:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A7FD284B59;
	Mon, 28 Jul 2025 13:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KiNI+HKV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9701283CBD
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 13:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753710966; cv=none; b=M4Hlv3YLmTlhDMYIlQsJb2Goy8C01uqd9eyU8hk2+CxJzlrqIn1gpAHSsYTesg9CVVsSuCd6yFTa9JYZTMY3iQ1rimK+2X1Hy8Ee0use60x5cMyVw8UaGROBJcRRiUg/b/vjwHl5dh832qkcKCEJ6UaRUUqrIS/WxRauPfzaaZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753710966; c=relaxed/simple;
	bh=ypSzciL2jkJ+Mog3EIhQdI7vmqYVGIRiOmTYgtOu+Fk=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=KpIslw7tz1wm+mYj1WTolfVvWALHhdQGE1Fw9gTJM31Ekfgla5wUkZUV6r4EWKY/0H9xu26MJzbcCayeZ3gITpc4x4bfGPSqOg4ZXB+vds4r9vH3C7TPuoPO4m2XEWDSa0nrMOQJvhStUIYqN+TltxguzXYOAzVtsnlyGpw0zxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KiNI+HKV; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4561a4a8bf2so50158935e9.1
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 06:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753710962; x=1754315762; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EV0p8ZNhxkQtgdsERR4qTiYCDN9W/4GIw/qe1A8PF14=;
        b=KiNI+HKVEPezd0gTl+RaSybfvWwFpJ/GZrmflnNS4MeQ2FZIm4BNz4JoseAe0EwrmA
         nibGuBGlrl8Tlsm8kxkCElU6+km7FSlRaTvgf0DG4AY2KlPOtqFrHo7nEYwWGSxtgGYl
         LkuIjBWp3qIQmBFAYYL2irytbZfzYDxMyPtupGsEkZmyMQM4PJO9pN5bN7jl8WGlZ6yq
         G34CnoFX1XnYYPR1d4f6hQkdguqlRrwslcrGB4g/uO2iMZtb8/vE6YxKNQcUrF88lyBS
         QUcn1HZvPC5ixo9fLG5nuK63OgKQVGeAHDvK2evq0SeXda1OCe289PWMurSd/pYv1Z3v
         Fi1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753710962; x=1754315762;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EV0p8ZNhxkQtgdsERR4qTiYCDN9W/4GIw/qe1A8PF14=;
        b=exvT32g3bZS56gt+Lk396ei5BxcYPRGMBB4Ynpa5wYVHBVynvAL6sohi95WECh1/Dg
         PaU/5qTii1OmA6BlVU4t+e/mXQkWWLAA0XnzQttNdhKYQUwDaZF5rXwjXUtqQ5CkhUZ+
         ESE2IkWtNF8ABhKnEQomwCTD0fWrZbPPd0pw44mYdyH7X5QfK9BuxsrmyHLiRFeQRxxH
         6ztUtTrCvCAdu3uXr2ZAGw69aUajTTUe2gGTNVWt7dAzVLEf9G0xptmh5azY68kpsjzh
         w2ST8RZGP5beFfIDcGffOxyNSEiOs3MDgUQFCI4ljIoZvMn8davuIdOKMxW4qG8GB3yl
         79Tg==
X-Forwarded-Encrypted: i=1; AJvYcCUgB+yZYCU2fG7ewhVYNGS30f85x8EtL7OP2ldC+I/cx62nwoZp78T93MQBGka8DCd/W0SfXDrmyWmZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwryyWKqAiRrZTbddMzdEdTQY/e+WC94aJkq0TM5Lo97FHS5Fgr
	7iqfgVEGDXMxC4p/qo7N5T6kKHHNP+bUd741r15NNdWwY4OTuf0KR2okpY6llewwZDQ=
X-Gm-Gg: ASbGncsPYh6MAVMfDFIppWf5LgFrlYOglD78beW5S31yBovjfwU5wNcb/HBbxmE604w
	dy04DhV3ydUe/lxpBca/daWJ7w/pB2oje5m+vKfHiiTakuUgCG95U/gDijm5QeX4KtTY3zclymu
	BzULkzwHdpL8XSHjy6FufRPCdg1MH9ZBzXiDlGjjjr49sf8TLzgcOhDr7G3xT3nzCQw/8ub98Uf
	biguVPPxF7noEmIk5esJFq3/cRcOhnvjkQg6ax/WnQMQZV0ZcVoOSoo4fFdBtczbtqbDHOpkfJj
	pSnCGwoLla3dwytsoNhsTh16vZrc4vNl1m69Rbe7RP/coTAkp0zDbohprx6qEgcSrElh2x19V4m
	2sYg9ZcLS0aqGjSwsyyUCdit2QpI=
X-Google-Smtp-Source: AGHT+IHSRNjCsvA+a17XVvG0X0bD2L2S+7tCdoJMe7B6ypVA2l90htjyJerFVwbt0qj0fz/EWvewhA==
X-Received: by 2002:a05:600c:35c6:b0:456:1d06:f38b with SMTP id 5b1f17b1804b1-4587d335362mr66236365e9.8.1753710961839;
        Mon, 28 Jul 2025 06:56:01 -0700 (PDT)
Received: from localhost ([2a02:c7c:7259:a00:ef61:42d3:92bc:95e1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458705bcbe8sm162665305e9.17.2025.07.28.06.56.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 06:56:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 28 Jul 2025 14:56:00 +0100
Message-Id: <DBNQNHBU5D4Y.1YB8M6DTKR6E9@linaro.org>
Cc: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] arm64: dts: qcom: Add initial audio support for
 Hamoa-IOT-EVK
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: <leqi@qti.qualcomm.com>, "Konrad Dybcio" <konradybcio@kernel.org>,
 "Bjorn Andersson" <andersson@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>
X-Mailer: aerc 0.20.0
References: <20250728-initial_audio_support_for_qualcomm_hamoa_iot_evk_board-v2-1-58aa30b60c7b@qti.qualcomm.com>
In-Reply-To: <20250728-initial_audio_support_for_qualcomm_hamoa_iot_evk_board-v2-1-58aa30b60c7b@qti.qualcomm.com>

On Mon Jul 28, 2025 at 8:16 AM BST, leqi via B4 Relay wrote:
> From: leqi <leqi@qti.qualcomm.com>
>
> This patch adds initial audio codec support for the Hamoa-IOT-EVK board,
> including WCD9385 configuration, micbias voltage settings, GPIO reset,
> and power supply bindings. It enables basic audio functionality for
> further development. Basic test is good in Hamoa-IOT-EVK board.
>
> Signed-off-by: leqi <leqi@qti.qualcomm.com>
> ---
> Changes in v2:
> - Updated author email address to leqi@qti.qualcomm.com.
> - Clarified that audio is validated with this change.
> - Link to v1: https://lore.kernel.org/all/20250723-initial_audio_support_=
for_qualcomm_hamoa_iot_evk_board-v1-1-816991701952@quicinc.com/
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 232 +++++++++++++++++++++++=
++++++
>  1 file changed, 232 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot=
/dts/qcom/hamoa-iot-evk.dts
> index 843f39c9d59286a9303a545411b2518d7649a059..91618e22e86c46c698b3639f6=
0bc19314705b391 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> @@ -124,6 +124,94 @@ pmic_glink_ss2_con_sbu_in: endpoint {
>  		};
>  	};
> =20
> +	sound {
> +		compatible =3D "qcom,x1e80100-sndcard";
> +		model =3D "X1E80100-EVK";
> +		audio-routing =3D "WooferLeft IN", "WSA WSA_SPK1 OUT",
> +				"TweeterLeft IN", "WSA WSA_SPK2 OUT",
> +				"WooferRight IN", "WSA2 WSA_SPK2 OUT",
> +				"TweeterRight IN", "WSA2 WSA_SPK2 OUT",

Could you please check/confirm that above routing path
"WooferRight IN" -> "WSA2 WSA_SPK2 OUT" is correct?

Left path get input from both WSA_SPK{1,2} while the right one only uses
WSA_SPK2.


> +				"IN1_HPHL", "HPHL_OUT",
> +				"IN2_HPHR", "HPHR_OUT",
> +				"AMIC2", "MIC BIAS2",
> +				"VA DMIC0", "MIC BIAS3",
> +				"VA DMIC1", "MIC BIAS3",
> +				"VA DMIC2", "MIC BIAS1",
> +				"VA DMIC3", "MIC BIAS1",
> +				"VA DMIC0", "VA MIC BIAS3",
> +				"VA DMIC1", "VA MIC BIAS3",
> +				"VA DMIC2", "VA MIC BIAS1",
> +				"VA DMIC3", "VA MIC BIAS1",
> +				"TX SWR_INPUT1", "ADC2_OUTPUT";
> +
> +		wcd-playback-dai-link {
> +			link-name =3D "WCD Playback";
> +
> +			cpu {
> +				sound-dai =3D <&q6apmbedai RX_CODEC_DMA_RX_0>;
> +			};
> +
> +			codec {
> +				sound-dai =3D <&wcd938x 0>, <&swr1 0>, <&lpass_rxmacro 0>;
> +			};
> +
> +			platform {
> +				sound-dai =3D <&q6apm>;
> +			};
> +		};

Please sort subnodes alphabetically here and below.

> +		wcd-capture-dai-link {
> +			link-name =3D "WCD Capture";
> +
> +			cpu {
> +				sound-dai =3D <&q6apmbedai TX_CODEC_DMA_TX_3>;
> +			};
> +
> +			codec {
> +				sound-dai =3D <&wcd938x 1>, <&swr2 1>, <&lpass_txmacro 0>;
> +			};
> +
> +			platform {
> +				sound-dai =3D <&q6apm>;
> +			};
> +		};
> +

[...]

Best regards,
Alexey

