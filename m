Return-Path: <devicetree+bounces-166630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E625A87D77
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 12:22:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A563188EB39
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 10:22:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50B48267B77;
	Mon, 14 Apr 2025 10:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eCTtFxzo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4231919DF5B
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 10:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744626130; cv=none; b=QyucqXDxl3e1IXbllVTtcx1bohLUUqS+l6+HEOvjdpEjXEbWP813tPDblCWJyltM0j6JSBjnjVC9MMSvMF/XP4jkiZ/2BvIh1BCBkBENsKecFztEwgvKCCsRyb216GhrtlHVCfCOjhWTHfn/8clSQnw/C33TJl66Qnn5fS0RWMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744626130; c=relaxed/simple;
	bh=R7HtG40WcOpirUi7l0xNR5wubXrlUN5xrUi66Bh4PRw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=rqu8uUHVRlnuLUhkit2sOiVweonlUXihPj3FFonTYcBr4Zmup4r+Y64oTQp3nHHJVsoLDirGTvuf/wjQr1szLY7iuNp4rUYWvsRXfOTUL9WzbTujOEZcpEZU11zTxsOy0moXD++RsRVew5CPECffhSvTHNWZJaozl5qhAkwy+wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eCTtFxzo; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3914aba1ce4so3505805f8f.2
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 03:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744626126; x=1745230926; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c03obW5LsKMo4CGjzfYGD7yKrSspSapWD8522GDRY+E=;
        b=eCTtFxzoEoqCT7h1aDpjqTsidx3dGiSRh3nIOrovUuI4e8u3woapvrlcYMCLQ3rnKn
         Ygaq8yDgym8a0l9g3tZOu0PnfWvuesXGs/HbFvk+5OgdLh6EOlTYDd4ZxYlVeNGK9K+e
         LMw8EcZ8lJDB8P+LDa9PXjLqlxktsRQLm0rdeh+NjIl4dtnLvlggFv6O9ZbnzRU8SsAn
         eBbwKsK04uyqcjbmHRbkBaBacf2iUc9fieb/OlJ8xKW2PG409Jvveazyc2kTJPUX0Ke8
         MKA3hSRGXw71nfSNA6sUHGAp6MjWtEWVI6QhIXNuErrTUeohkhrxI/PLiReu2VLTYei4
         3Abw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744626126; x=1745230926;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=c03obW5LsKMo4CGjzfYGD7yKrSspSapWD8522GDRY+E=;
        b=VMm33rovJWfu9opAoBy9NywQQ/EnRF1ekEs/O/I8uDffBnXBSMWepqQFwZtjrQx4iq
         fkWxTXgg59BJ7o+ChE9YfnnaV9SmI/DDRgPLIjA8jkGX+zEawvjKzpWQM4yq1hDGSGI1
         XpY1dmStJ6wcLk+HavfTJl3p0Yzn9KjX8MDoszb3XY02moIOOJN7c+UUYBJKgHqHlgkL
         a+/gRbm5HquDg6dE9QnK77RNeODGthTkmvLUVWBWF2cclE3N/akjNICva/vc9Ub3I+gL
         u6AJ3C6MspwOJ6YPro5II845Rl4n5gcU6NfMXumLJiBNQzQXlC68Lu5v0uPsB3OHJ38k
         Jbrg==
X-Forwarded-Encrypted: i=1; AJvYcCW5lKwU0pNnA3pEqtIGm5i39MqblWQDwXtl4mbxuW4ypkvBmcRyn2lR1pNW0t7Cam+ZUI1pG1pikZ2b@vger.kernel.org
X-Gm-Message-State: AOJu0YxQPx56rfa91GG28fGScF1MvgmXWV1tEK/fwfOFaE6MPoGrYnkH
	Qt1p4lbcRhIFikI8mmUVCptP0FCODBAaffGzjAHsqzkE0D34kjbUSPnYQD7cYTc=
X-Gm-Gg: ASbGncvP9w00jAAnMCampETjTCRsBvX9xPm7DGnAt4PgW9VItVkGEzizMM094tdzZ6n
	2CcEQySEfkZ9mFn/IMzgSsShSgR1ATlM8HmhFeJ1Q5GbBiQNok+8J52xOHQxwAaLrPN6Bw8RArU
	0doysBaZVS/1B4d8Vuv7M5ieFTNeT/4n+zto6jrhfrmM9Mq0ljLTJtu65pcEQo3C3iiCmfNNYzb
	hz3kX/9Bz31bZUQTzGTNZoDROXGDhA9hHn4q4r0HRzxyrYiOmARE2AUBAjXSutMI2Mdhj1N0CWy
	5DO6X3dQ70AznP0xp6ErGoAuFTDK/hhLP+IZJJ3dnHuPcXnNNTXLzPrgNanZ6+cuffmCksjWyqK
	OKRsu7h7PWioS+gDjgA==
X-Google-Smtp-Source: AGHT+IG3Fteb6fKVMQ8a4Y/6aL+K9VtOylBs6apDdCb2Zm0pQ2pWFytupwBh7IsBWbm67TQyeEH02w==
X-Received: by 2002:a05:6000:4285:b0:39c:1efb:ee8a with SMTP id ffacd0b85a97d-39eaaebdecfmr8897783f8f.38.1744626126394;
        Mon, 14 Apr 2025 03:22:06 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:bf8a:3473:5c13:9743? ([2a01:e0a:3d9:2080:bf8a:3473:5c13:9743])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eaf43d053sm10696481f8f.68.2025.04.14.03.22.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 03:22:06 -0700 (PDT)
Message-ID: <a6eafcb0-8fa8-44f7-9afc-e368f931127b@linaro.org>
Date: Mon, 14 Apr 2025 12:21:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 4/7] soc: amlogic: clk-measure: Add support for C3
To: chuan.liu@amlogic.com, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250414-clk-measure-v2-0-65077690053a@amlogic.com>
 <20250414-clk-measure-v2-4-65077690053a@amlogic.com>
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
In-Reply-To: <20250414-clk-measure-v2-4-65077690053a@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/04/2025 12:12, Chuan Liu via B4 Relay wrote:
> From: Chuan Liu <chuan.liu@amlogic.com>
> 
> Add the clk-measurer clocks IDs for the Amlogic C3 SoC family.
> 
> Signed-off-by: Chuan Liu <chuan.liu@amlogic.com>
> ---
>   drivers/soc/amlogic/meson-clk-measure.c | 157 ++++++++++++++++++++++++++++++++
>   1 file changed, 157 insertions(+)
> 
> diff --git a/drivers/soc/amlogic/meson-clk-measure.c b/drivers/soc/amlogic/meson-clk-measure.c
> index 82c008ade894..810454ac4119 100644
> --- a/drivers/soc/amlogic/meson-clk-measure.c
> +++ b/drivers/soc/amlogic/meson-clk-measure.c
> @@ -494,6 +494,146 @@ static const struct meson_msr_id clk_msr_sm1[] = {
>   	CLK_MSR_ID(127, "csi2_data"),
>   };
>   
> +static const struct meson_msr_id clk_msr_c3[] = {
> +	CLK_MSR_ID(0,	"sys_clk"),
> +	CLK_MSR_ID(1,	"axi_clk"),
> +	CLK_MSR_ID(2,	"rtc_clk"),
> +	CLK_MSR_ID(3,	"p20_usb2_ckout"),
> +	CLK_MSR_ID(4,	"eth_mpll_test"),
> +	CLK_MSR_ID(5,	"sys_pll"),
> +	CLK_MSR_ID(6,	"cpu_clk_div16"),
> +	CLK_MSR_ID(7,	"ts_pll"),
> +	CLK_MSR_ID(8,	"fclk_div2"),
> +	CLK_MSR_ID(9,	"fclk_div2p5"),
> +	CLK_MSR_ID(10,	"fclk_div3"),
> +	CLK_MSR_ID(11,	"fclk_div4"),
> +	CLK_MSR_ID(12,	"fclk_div5"),
> +	CLK_MSR_ID(13,	"fclk_div7"),
> +	CLK_MSR_ID(15,	"fclk_50m"),
> +	CLK_MSR_ID(16,	"sys_oscin32k_i"),
> +	CLK_MSR_ID(17,	"mclk_pll"),
> +	CLK_MSR_ID(19,	"hifi_pll"),
> +	CLK_MSR_ID(20,	"gp0_pll"),
> +	CLK_MSR_ID(21,	"gp1_pll"),
> +	CLK_MSR_ID(22,	"eth_mppll_50m_ckout"),
> +	CLK_MSR_ID(23,	"sys_pll_div16"),
> +	CLK_MSR_ID(24,	"ddr_dpll_pt_clk"),
> +	CLK_MSR_ID(26,	"nna_core"),
> +	CLK_MSR_ID(27,	"rtc_sec_pulse_out"),
> +	CLK_MSR_ID(28,	"rtc_osc_clk_out"),
> +	CLK_MSR_ID(29,	"debug_in_clk"),
> +	CLK_MSR_ID(30,	"mod_eth_phy_ref_clk"),
> +	CLK_MSR_ID(31,	"mod_eth_tx_clk"),
> +	CLK_MSR_ID(32,	"eth_125m"),
> +	CLK_MSR_ID(33,	"eth_rmii"),
> +	CLK_MSR_ID(34,	"co_clkin_to_mac"),
> +	CLK_MSR_ID(36,	"co_rx_clk"),
> +	CLK_MSR_ID(37,	"co_tx_clk"),
> +	CLK_MSR_ID(38,	"eth_phy_rxclk"),
> +	CLK_MSR_ID(39,	"eth_phy_plltxclk"),
> +	CLK_MSR_ID(40,	"ephy_test_clk"),
> +	CLK_MSR_ID(66,	"vapb"),
> +	CLK_MSR_ID(67,	"ge2d"),
> +	CLK_MSR_ID(68,	"dewarpa"),
> +	CLK_MSR_ID(70,	"mipi_dsi_meas"),
> +	CLK_MSR_ID(71,	"dsi_phy"),
> +	CLK_MSR_ID(79,	"rama"),
> +	CLK_MSR_ID(94,	"vc9000e_core"),
> +	CLK_MSR_ID(95,	"vc9000e_sys"),
> +	CLK_MSR_ID(96,	"vc9000e_aclk"),
> +	CLK_MSR_ID(97,	"hcodec"),
> +	CLK_MSR_ID(106,	"deskew_pll_clk_div32_out"),
> +	CLK_MSR_ID(107,	"mipi_csi_phy_clk_out[0]"),
> +	CLK_MSR_ID(108,	"mipi_csi_phy_clk_out[1]"),
> +	CLK_MSR_ID(110,	"spifc"),
> +	CLK_MSR_ID(111,	"saradc"),
> +	CLK_MSR_ID(112,	"ts"),
> +	CLK_MSR_ID(113,	"sd_emmc_c"),
> +	CLK_MSR_ID(114,	"sd_emmc_b"),
> +	CLK_MSR_ID(115,	"sd_emmc_a"),
> +	CLK_MSR_ID(116,	"gpio_msr_clk"),
> +	CLK_MSR_ID(117,	"spicc_b"),
> +	CLK_MSR_ID(118,	"spicc_a"),
> +	CLK_MSR_ID(122,	"mod_audio_pdm_dclk_o"),
> +	CLK_MSR_ID(124,	"o_earcrx_dmac_clk"),
> +	CLK_MSR_ID(125,	"o_earcrx_cmdc_clk"),
> +	CLK_MSR_ID(126,	"o_earctx_dmac_clk"),
> +	CLK_MSR_ID(127,	"o_earctx_cmdc_clk"),
> +	CLK_MSR_ID(128,	"o_tohdmitx_bclk"),
> +	CLK_MSR_ID(129,	"o_tohdmitx_mclk"),
> +	CLK_MSR_ID(130,	"o_tohdmitx_spdif_clk"),
> +	CLK_MSR_ID(131,	"o_toacodec_bclk"),
> +	CLK_MSR_ID(132,	"o_toacodec_mclk"),
> +	CLK_MSR_ID(133,	"o_spdifout_b_mst_clk"),
> +	CLK_MSR_ID(134,	"o_spdifout_mst_clk"),
> +	CLK_MSR_ID(135,	"o_spdifin_mst_clk"),
> +	CLK_MSR_ID(136,	"o_audio_mclk"),
> +	CLK_MSR_ID(137,	"o_vad_clk"),
> +	CLK_MSR_ID(138,	"o_tdmout_d_sclk"),
> +	CLK_MSR_ID(139,	"o_tdmout_c_sclk"),
> +	CLK_MSR_ID(140,	"o_tdmout_b_sclk"),
> +	CLK_MSR_ID(141,	"o_tdmout_a_sclk"),
> +	CLK_MSR_ID(142,	"o_tdminb_1b_sclk"),
> +	CLK_MSR_ID(143,	"o_tdmin_1b_sclk"),
> +	CLK_MSR_ID(144,	"o_tdmin_d_sclk"),
> +	CLK_MSR_ID(145,	"o_tdmin_c_sclk"),
> +	CLK_MSR_ID(146,	"o_tdmin_b_sclk"),
> +	CLK_MSR_ID(147,	"o_tdmin_a_sclk"),
> +	CLK_MSR_ID(148,	"o_resampleb_clk"),
> +	CLK_MSR_ID(149,	"o_resamplea_clk"),
> +	CLK_MSR_ID(150,	"o_pdmb_sysclk"),
> +	CLK_MSR_ID(151,	"o_pdmb_dclk"),
> +	CLK_MSR_ID(152,	"o_pdm_sysclk"),
> +	CLK_MSR_ID(153,	"o_pdm_dclk"),
> +	CLK_MSR_ID(154,	"c_alockerb_out_clk"),
> +	CLK_MSR_ID(155,	"c_alockerb_in_clk"),
> +	CLK_MSR_ID(156,	"c_alocker_out_clk"),
> +	CLK_MSR_ID(157,	"c_alocker_in_clk"),
> +	CLK_MSR_ID(158,	"audio_mst_clk[34]"),
> +	CLK_MSR_ID(159,	"audio_mst_clk[35]"),
> +	CLK_MSR_ID(160,	"pwm_n"),
> +	CLK_MSR_ID(161,	"pwm_m"),
> +	CLK_MSR_ID(162,	"pwm_l"),
> +	CLK_MSR_ID(163,	"pwm_k"),
> +	CLK_MSR_ID(164,	"pwm_j"),
> +	CLK_MSR_ID(165,	"pwm_i"),
> +	CLK_MSR_ID(166,	"pwm_h"),
> +	CLK_MSR_ID(167,	"pwm_g"),
> +	CLK_MSR_ID(168,	"pwm_f"),
> +	CLK_MSR_ID(169,	"pwm_e"),
> +	CLK_MSR_ID(170,	"pwm_d"),
> +	CLK_MSR_ID(171,	"pwm_c"),
> +	CLK_MSR_ID(172,	"pwm_b"),
> +	CLK_MSR_ID(173,	"pwm_a"),
> +	CLK_MSR_ID(174,	"AU_DAC1_CLK_TO_GPIO"),
> +	CLK_MSR_ID(175,	"AU_ADC_CLK_TO_GPIO"),
> +	CLK_MSR_ID(176,	"rng_ring_osc_clk[0]"),
> +	CLK_MSR_ID(177,	"rng_ring_osc_clk[1]"),
> +	CLK_MSR_ID(178,	"rng_ring_osc_clk[2]"),
> +	CLK_MSR_ID(179,	"rng_ring_osc_clk[3]"),
> +	CLK_MSR_ID(180,	"sys_cpu_ring_osc_clk[0]"),
> +	CLK_MSR_ID(181,	"sys_cpu_ring_osc_clk[1]"),
> +	CLK_MSR_ID(182,	"sys_cpu_ring_osc_clk[2]"),
> +	CLK_MSR_ID(183,	"sys_cpu_ring_osc_clk[3]"),
> +	CLK_MSR_ID(184,	"sys_cpu_ring_osc_clk[4]"),
> +	CLK_MSR_ID(185,	"sys_cpu_ring_osc_clk[5]"),
> +	CLK_MSR_ID(186,	"sys_cpu_ring_osc_clk[6]"),
> +	CLK_MSR_ID(187,	"sys_cpu_ring_osc_clk[7]"),
> +	CLK_MSR_ID(188,	"sys_cpu_ring_osc_clk[8]"),
> +	CLK_MSR_ID(189,	"sys_cpu_ring_osc_clk[9]"),
> +	CLK_MSR_ID(190,	"sys_cpu_ring_osc_clk[10]"),
> +	CLK_MSR_ID(191,	"sys_cpu_ring_osc_clk[11]"),
> +	CLK_MSR_ID(192,	"am_ring_osc_clk_out[12](dmc)"),
> +	CLK_MSR_ID(193,	"am_ring_osc_clk_out[13](rama)"),
> +	CLK_MSR_ID(194,	"am_ring_osc_clk_out[14](nna)"),
> +	CLK_MSR_ID(195,	"am_ring_osc_clk_out[15](nna)"),
> +	CLK_MSR_ID(200,	"rng_ring_osc_clk_1[0]"),
> +	CLK_MSR_ID(201,	"rng_ring_osc_clk_1[1]"),
> +	CLK_MSR_ID(202,	"rng_ring_osc_clk_1[2]"),
> +	CLK_MSR_ID(203,	"rng_ring_osc_clk_1[3]"),
> +
> +};
> +
>   static int meson_measure_id(struct meson_msr_id *clk_msr_id,
>   			    unsigned int duration)
>   {
> @@ -713,6 +853,19 @@ static const struct meson_msr_data clk_msr_sm1_data = {
>   	.reg = &msr_reg_offset,
>   };
>   
> +struct msr_reg_offset msr_reg_offset_v2 = {
> +	.freq_ctrl = 0x0,
> +	.duty_ctrl = 0x4,
> +	.freq_val = 0x8,
> +	.duty_val = 0x18,
> +};

Same as patch 1

> +
> +static const struct meson_msr_data clk_msr_c3_data = {
> +	.msr_table = (void *)clk_msr_c3,
> +	.msr_count = ARRAY_SIZE(clk_msr_c3),
> +	.reg = &msr_reg_offset_v2,
> +};
> +
>   static const struct of_device_id meson_msr_match_table[] = {
>   	{
>   		.compatible = "amlogic,meson-gx-clk-measure",
> @@ -738,6 +891,10 @@ static const struct of_device_id meson_msr_match_table[] = {
>   		.compatible = "amlogic,meson-sm1-clk-measure",
>   		.data = &clk_msr_sm1_data,
>   	},
> +	{
> +		.compatible = "amlogic,c3-clk-measure",
> +		.data = &clk_msr_c3_data,
> +	},
>   	{ /* sentinel */ }
>   };
>   MODULE_DEVICE_TABLE(of, meson_msr_match_table);
> 

With this fixed:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

