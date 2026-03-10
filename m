Return-Path: <devicetree+bounces-273572-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4PPIMMctsGlHgwIAu9opvQ
	(envelope-from <devicetree+bounces-273572-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:42:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD1E25241C
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:42:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C21A33070A6
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:02:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D223391E7F;
	Tue, 10 Mar 2026 14:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c3dyHqWw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF341391E63
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773151331; cv=none; b=nHMTb3jHLaY9UyShrw6hiqZTgI69TH8P3LlFGjRuP4WGu+67fBT8v5Cv5KgCX88KixcREWSWzGnowYSXnvc+W3eYWg0ROANkCRf5Q6jr6/PHK2Hvi3Sb6PJQMATqAhu1srcMKmHajbG0WKtpfmFGAfz3gxoOWP8oQu9eAydrlqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773151331; c=relaxed/simple;
	bh=n7+HzGqOhGsbOxZ69RmOp6zLIXaoO9Pvk7J4aBTmdzE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ttzHbuExTR8Qo0jK52ZcBioaz/2qwe5m3xA9sNrdXn9Rjw5Mfvz4pOccnquZmCoXSGYg7IZzePMqF7EgJYcREyY4+3cUMQWSMC44XkqHbV8KZvzUkKso12rjBrXKwTuJU5x8WAIFCWdUfXyv12J4cssZSdWy6dPOfuGJjv4lBdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c3dyHqWw; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b942b36de08so672989166b.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 07:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773151328; x=1773756128; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r57YuokvPR8dgqEoon2TNXFND6+7go2TnWCoAl1AC1s=;
        b=c3dyHqWwAXw1CEvOFNDQ/5y24C+hD6A6M8s8ZCZ+ecgybL2OcdtxkT+TIy4HEV7JWn
         68kR30AJyzbh9nt5moa2iR1smwmycT+IWL1tsecSoB9AnrM7N7YKFie5k34S4hJ0qNSl
         Vb1Ky+4/FY2opktbJvd7bgYMzGZYQ4PO9WhmbXAlwwcP34BzheTKVOqOKndQ13cNEAq/
         zLEym4IqJm+32hAXnnO1SGukXzRfSFy5Obyg/ZRWc9NBvAH7XqLYjv7IU6JMvG7jsZKP
         2w7ZUw7DIDhgl7xI/Z6liI1JxY6ASp5RE3xtTKw6377Ttk6JJKfE3rE2RToVg5zdEF0L
         /+pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773151328; x=1773756128;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r57YuokvPR8dgqEoon2TNXFND6+7go2TnWCoAl1AC1s=;
        b=JgFlUOZdF4b7jcGBuzmzHp871PlrF4wxxQKDsylBTZwK6DCiRA+aatJY0cwuhOpzqS
         z59kwsH5VM2X2KTVRB+CKULaOjNFiapAd0O8fXOwSC95Sb7NdovOn57+7cxH7R0UcW4n
         Y8UlnDPt+zQ7vsz4K+G20pgOaaUzay7IMHZM9VGOm3Q9N0GbpJaTJCpLINzY2hUEF27R
         60Se+/Pv0pfJfeFA5NtRp4wzVcTixUiAXSxFjnWvsu62auKVzMR2ubnGEtmnxVoZ9Jh4
         FIYsJ524B9fdC1YhexlPNAKEL3haliHfRuM79oE9aK4TvS5obfUxMDqlSchbJ5khCWuK
         TKxg==
X-Forwarded-Encrypted: i=1; AJvYcCX6g+P2VRBu+vm7HV4GAEj1LALJQ0susj3MbQDqCeui4/yqv9AR4jwVd11CILmI9DD6JoJFo4MGFmEQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj++OuYEMc04LKj9WlQFmpk9xfiHu4AiHL8pd1wK3zDm2GPXX8
	2RYi3oQEJ6fCodQXWI3e26B6bCm3tu6L47P9lFIB3vSNjKy+5Mq/iqcsv3gmdlvGWc4=
X-Gm-Gg: ATEYQzxivWdvayFDc8rMcfTw88jsb+Lq4srXO4gYNrDd2aSTUUhLWreQBYfuYPQyr7u
	uQ+2RCCPLne+zNU6ZbHBKt1fBZlxGStroj9Vir1T+5Vgfhr0Cz2P1YS85sdmQFkOFIW/E6PS8gt
	nbsrnMDeVdBFfF17DFKOW+GcuhgvAy5l9BmV9aoTzsVs58sNjS0BBMWZX7JAZ9bTwwpdi6y2KZv
	TgTCbO9z/ZUX4HQJTidlDAfdyBpW9KCcgGFJV/W4E3EFb5vk2tv+sihWgVeY7sSjceQh7svqY7A
	wjnFMzbvq6Q4siHc3tsTQo8YusQ10DECKmtqy6mAOCORQoeBCeEXi9JCdNil+1Fj7wHMjB1FNTI
	Kb7lGfTS9EO4VUqAcYrytrtZpo4/NAk9qdh76y8Q2QX6D9uOkucFa/0AWrFnNKIEINnAwEJDpnN
	OaSfBY75Rl9T9onlhSltVhGx8fZ5WYy/qq/dMxxWCnrI6m0IRdpe+pa9Btyl6Jo5XIGnz1+QjIe
	1YW
X-Received: by 2002:a17:906:c151:b0:b93:514c:b420 with SMTP id a640c23a62f3a-b971190fd1emr239873966b.13.1773151327142;
        Tue, 10 Mar 2026 07:02:07 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:4d81:e92:c4c0:3c45? ([2a01:e0a:106d:1080:4d81:e92:c4c0:3c45])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b96d6c0778bsm396896666b.33.2026.03.10.07.02.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 07:02:06 -0700 (PDT)
Message-ID: <4645ecaa-1e32-4ce3-a0f6-4e29eddebefa@linaro.org>
Date: Tue, 10 Mar 2026 15:02:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v1 0/4] ASoC: qcom: qdsp6: Add MI2S clock control
To: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
 Srinivas Kandagatla <srini@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-sound@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260309111300.2484262-1-mohammad.rafi.shaik@oss.qualcomm.com>
From: Neil Armstrong <neil.armstrong@linaro.org>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20260309111300.2484262-1-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 0DD1E25241C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273572-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com,perex.cz,suse.com];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:mid,linaro.org:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,2b:email];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Action: no action

On 3/9/26 12:12, Mohammad Rafi Shaik wrote:
> Add support for MI2S clock control within q6apm-lpass DAIs, including
> handling of MCLK, BCLK, and ECLK via the DAI .set_sysclk callback.
> Each MI2S port now retrieves its clock handles from the device tree,
> allowing per-port clock configuration and proper enable/disable during
> startup and shutdown.
> 
> Enhances the sc8280xp machine driver to set the boards spacific
> configurations, some of the boards like talos using third party
> codec's which need's additional MCLK settings for audio to work.
> 
> Mohammad Rafi Shaik (4):
>    ASoC: dt-bindings: qcom,q6apm-lpass-dais: Document DAI subnode
>    ASoC: qcom: qdsp6: q6prm: add the missing LPASS MCLK clock IDs
>    ASoC: qcom: q6apm-lpass-dais: Add MI2S clock control
>    ASoC: qcom: sc8280xp: ASoC: qcom: sc8280xp: enhance machine driver for
>      board-specific config
> 
>   .../bindings/sound/qcom,q6apm-lpass-dais.yaml |  41 +++-
>   sound/soc/qcom/qdsp6/q6apm-lpass-dais.c       | 137 ++++++++++++-
>   sound/soc/qcom/qdsp6/q6prm-clocks.c           |   5 +
>   sound/soc/qcom/qdsp6/q6prm.h                  |  15 ++
>   sound/soc/qcom/sc8280xp.c                     | 180 ++++++++++++++++--
>   5 files changed, 357 insertions(+), 21 deletions(-)
> 
> 
> base-commit: a0ae2a256046c0c5d3778d1a194ff2e171f16e5f


I'm not sure about the overall architecture, but I managed to make the I2S HDMI audio
work on the SM8650 HDK with:


==============================><=======================================
diff --git a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
index 5bf1af3308ce..8316e17dc76b 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
@@ -218,6 +218,22 @@ platform {
  				sound-dai = <&q6apm>;
  			};
  		};
+
+		pri-mi2s-dai-link {
+			link-name = "HDMI Playback";
+
+			cpu {
+				sound-dai = <&q6apmbedai PRIMARY_MI2S_RX>;
+			};
+
+			codec {
+				sound-dai = <&lt9611_codec 0>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
  	};

  	vph_pwr: regulator-vph-pwr {
@@ -853,6 +869,7 @@ &i2c6 {
  	lt9611_codec: hdmi-bridge@2b {
  		compatible = "lontium,lt9611uxc";
  		reg = <0x2b>;
+		#sound-dai-cells = <1>;

  		interrupts-extended = <&tlmm 85 IRQ_TYPE_EDGE_FALLING>;

@@ -861,7 +878,10 @@ lt9611_codec: hdmi-bridge@2b {
  		vdd-supply = <&lt9611_1v2>;
  		vcc-supply = <&lt9611_3v3>;

-		pinctrl-0 = <&lt9611_irq_pin>, <&lt9611_rst_pin>;
+		pinctrl-0 = <&lt9611_irq_pin>,
+			    <&lt9611_rst_pin>,
+			    <&i2s0_default_state>,
+			    <&audio_mclk0_default_state>;
  		pinctrl-names = "default";

  		ports {
@@ -1056,6 +1076,17 @@ &pon_resin {
  	status = "okay";
  };

+&q6apmbedai {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	
+	reg = <PRIMARY_MI2S_RX>;
+	clocks = <&q6prmcc LPASS_CLK_ID_MCLK_1 LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+		 <&q6prmcc LPASS_CLK_ID_PRI_MI2S_IBIT LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+	clock-names = "mclk",
+		      "bclk";
+};
+
  &qup_i2c3_data_clk {
  	/* Use internal I2C pull-up */
  	bias-pull-up = <2200>;
diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index f8e1950a74ac..9818fbd8094e 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -6237,6 +6237,46 @@ wake-pins {
  				};
  			};

+			audio_mclk0_default_state: audio-mclk0-default-state {
+				pins = "gpio125";
+				function = "audio_ext_mclk0";
+				drive-strength = <8>;
+				bias-disable;
+				output-high;
+			};
+
+			i2s0_default_state: i2s0-default-state {
+				sck-pins {
+					pins = "gpio126";
+					function = "i2s0_sck";
+					drive-strength = <8>;
+					bias-disable;
+					output-high;
+				};
+
+				data0-pins {
+					pins = "gpio127";
+					function = "i2s0_data0";
+					drive-strength = <8>;
+					bias-disable;
+				};
+
+				data1-pins {
+					pins = "gpio128";
+					function = "i2s0_data1";
+					drive-strength = <8>;
+					bias-disable;
+				};
+
+				ws-pins {
+					pins = "gpio129";
+					function = "i2s0_ws";
+					drive-strength = <8>;
+					bias-disable;
+					output-high;
+				};
+			};
+
  			qup_i2c0_data_clk: qup-i2c0-data-clk-state {
  				/* SDA, SCL */
  				pins = "gpio32", "gpio33";
diff --git a/sound/soc/qcom/sc8280xp.c b/sound/soc/qcom/sc8280xp.c
index 7aa87e8a6cc5..c2bd5f2a696d 100644
--- a/sound/soc/qcom/sc8280xp.c
+++ b/sound/soc/qcom/sc8280xp.c
@@ -17,8 +17,12 @@
  #include "common.h"
  #include "sdw.h"

-#define MCLK_FREQ		12288000
-#define MCLK_NATIVE_FREQ	11289600
+#define I2S_MCLKFS	256
+#define I2S_SLOTSIZE	16
+#define I2S_MCLK_RATE(rate, channels) \
+		((rate) * (channels) * I2S_MCLKFS)
+#define I2S_BIT_RATE(rate, channels) \
+		((rate) * (channels) * I2S_SLOTSIZE)

  static struct snd_soc_dapm_widget sc8280xp_dapm_widgets[] = {
  	SND_SOC_DAPM_HP("Headphone Jack", NULL),
@@ -40,6 +44,7 @@ struct snd_soc_common {
  	const struct snd_soc_dapm_route *dapm_routes;
  	int num_dapm_routes;
  	bool mi2s_mclk_enable;
+	bool mi2s_bclk_enable;
  };

  struct sc8280xp_snd_data {
@@ -51,21 +56,22 @@ struct sc8280xp_snd_data {
  	bool jack_setup;
  };

-static inline int sc8280xp_get_mclk_feq(unsigned int rate)
+static inline int sc8280xp_get_mclk_freq(struct snd_pcm_hw_params *params)
  {
-	int freq = MCLK_FREQ;
-
  	switch (rate) {
  	case SNDRV_PCM_RATE_11025:
  	case SNDRV_PCM_RATE_44100:
  	case SNDRV_PCM_RATE_88200:
-		freq = MCLK_NATIVE_FREQ;
+		return I2S_MCLK_RATE(44100, params_channels(params));
  		break;
  	default:
-		break;
+		return I2S_MCLK_RATE(params_rate(params), params_channels(params));
  	}
+}

-	return freq;
+static inline int sc8280xp_get_bclk_freq(struct snd_pcm_hw_params *params)
+{
+	return I2S_BIT_RATE(params_rate(params), params_channels(params));
  }

  static int sc8280xp_snd_init(struct snd_soc_pcm_runtime *rtd)
@@ -142,8 +148,13 @@ static int sc8280xp_snd_hw_params(struct snd_pcm_substream *substream,
  {
  	struct snd_soc_pcm_runtime *rtd = snd_soc_substream_to_rtd(substream);
  	struct snd_soc_dai *cpu_dai = snd_soc_rtd_to_cpu(rtd, 0);
+	struct snd_soc_dai *codec_dai = snd_soc_rtd_to_codec(rtd, 0);
  	struct sc8280xp_snd_data *data = snd_soc_card_get_drvdata(rtd->card);
-	int mclk_freq = sc8280xp_get_mclk_feq(params_rate(params));
+	int mclk_freq = sc8280xp_get_mclk_freq(params);
+	int bclk_freq = sc8280xp_get_bclk_freq(params);
+	unsigned int codec_dai_fmt = SND_SOC_DAIFMT_BC_FC |
+				     SND_SOC_DAIFMT_NB_NF |
+				     SND_SOC_DAIFMT_I2S;

  	switch (cpu_dai->id) {
  	case PRIMARY_MI2S_RX...QUATERNARY_MI2S_TX:
@@ -154,6 +165,15 @@ static int sc8280xp_snd_hw_params(struct snd_pcm_substream *substream,
  			snd_soc_dai_set_sysclk(cpu_dai,
  					       LPAIF_MI2S_MCLK, mclk_freq,
  					       SND_SOC_CLOCK_IN);
+
+		if (data->snd_soc_common_priv->mi2s_bclk_enable) {
+			snd_soc_dai_set_sysclk(cpu_dai,
+					       LPAIF_MI2S_BCLK, bclk_freq,
+					       SND_SOC_CLOCK_IN);
+			snd_soc_dai_set_fmt(codec_dai, SND_SOC_DAIFMT_BC_FC |
+					    SND_SOC_DAIFMT_NB_NF |
+					    SND_SOC_DAIFMT_I2S);
+		}
  		break;
  	default:
  		break;
@@ -288,6 +308,7 @@ static struct snd_soc_common sm8450_priv_data = {
  	.dapm_widgets = sc8280xp_dapm_widgets,
  	.num_dapm_widgets = ARRAY_SIZE(sc8280xp_dapm_widgets),
  	.mi2s_mclk_enable = true,
+	.mi2s_bclk_enable = true,
  };

  static struct snd_soc_common sm8550_priv_data = {
@@ -295,6 +316,7 @@ static struct snd_soc_common sm8550_priv_data = {
  	.dapm_widgets = sc8280xp_dapm_widgets,
  	.num_dapm_widgets = ARRAY_SIZE(sc8280xp_dapm_widgets),
  	.mi2s_mclk_enable = true,
+	.mi2s_bclk_enable = true,
  };

  static struct snd_soc_common sm8650_priv_data = {
@@ -302,6 +324,7 @@ static struct snd_soc_common sm8650_priv_data = {
  	.dapm_widgets = sc8280xp_dapm_widgets,
  	.num_dapm_widgets = ARRAY_SIZE(sc8280xp_dapm_widgets),
  	.mi2s_mclk_enable = true,
+	.mi2s_bclk_enable = true,
  };

  static struct snd_soc_common sm8750_priv_data = {
==============================><========================================

Thanks,
Neil

