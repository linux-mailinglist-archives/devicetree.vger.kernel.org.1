Return-Path: <devicetree+bounces-260149-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oP/7Ds47eWkmwAEAu9opvQ
	(envelope-from <devicetree+bounces-260149-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 23:27:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA939B085
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 23:27:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BDDB9305E308
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 22:26:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFE4D361651;
	Tue, 27 Jan 2026 22:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y+sMq+QE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D16334C33
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 22:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769552769; cv=none; b=u4JyJ7gss1l9ul+k6kG/KCIw8LtpNm8tl+L7UVzjHIRC93O21P9VGUnx0LJTgz/SJb7CaaYDIOT9xtwVEd8lLhv5lowZhvYjkXaCAHpALGAfzkUoBnymy1YYWzPAThGl5+lGA0mCA3CfATYYX/hxNcb2TBi14pzZDLFgWkVz7VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769552769; c=relaxed/simple;
	bh=tuSMukXJSbPnemxeOAyoCOFeYGwA9TAC3Ka4b2eHMPQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O2o9plUNfp35UUJfmdp6cOJfw9GDaCudrXB/gpVB8b8MtbfBiTyQcwf+lPKAD0b68Y8n2dCyQbEhpSN9D1neHP/tx4BZWLf1BVpT9yOT66brkNYTbnKoU+xg/KiNhU8DAlDc3E/KkDzS8hBCo058O5jeaNDoO1qOYolsUNxEkmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Y+sMq+QE; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47ee974e230so53866795e9.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 14:26:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769552766; x=1770157566; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3V2tn2mHvRqtIreRC+Gc5m2OsCJCgqMxstJvF4HcVy0=;
        b=Y+sMq+QECAoGne7Gc9l7bd7b8Leh+mph7ybArv5MztU858+L5JghkA8oGB50FIuExV
         yQBQg5/7fiXvuxqVNOeUg5vtAleZtqnhxCqcPziBdGpVECTafLg3c3K1uPyzO082vQDh
         1di/47yj6yAwelrOxXoJy05VbxuBP/niCB0lePqaHM48ZGuGgn2yVufBtfXSc9N6XeoC
         +XLCapGp4Q8V/r2apIrU1xOO1my35JgBPTvj+49qzvjUq0s2s21Y8pbcweQO5IlbNRCr
         8cn73FQqglbC0KCsSg/ExhrOSem8Na4b2SfUl3dkHakDLuWtUjjACcZsLTROnpp4dpHM
         eqvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769552766; x=1770157566;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3V2tn2mHvRqtIreRC+Gc5m2OsCJCgqMxstJvF4HcVy0=;
        b=w8ao1mAzl0fchUvnmYT5EY/eYOxBZq8pjYjTaBv3aHADdcHkkPAEH416GjCgX5qdQW
         wihBp5HzzGUh1Jag3z0N97hf36ipszhfddMZvfyB2z9WZ3cmgkETRxJGoWvE4bbLQZ9E
         PZPh7gINocOA0pz42jZgxE2vo77sjZsmigk7O6X7MYV039hHew/NqmGxw16n8F7fmgbf
         0GzGk9bR8vwBwF50QarcY/nyVeMrLEUPsgIhOjQBTGfsho7OfDUoiJ9iJYEHHL52NbWU
         E/uVnfX60jpnLYUXQru9SGtEkmNYnHao3SGLP+Q2wz7aNUNyUNf+4fxEaHGRiQ88yGno
         mN2g==
X-Forwarded-Encrypted: i=1; AJvYcCXaSe3z6AjEhEguY6a+1ocs8+tHeJxzMuDzh9UfFH+NdP764TaUerXciKbMHXREtFjKlYFu2tdKLGNm@vger.kernel.org
X-Gm-Message-State: AOJu0Yyiwd0VNUTNJTGykcRUXqI6+ZOl96R6iGKa0r4kbaYPLmRQ7vzK
	U2ApCMHsZ1E5Xav3hhYYedxhjgHyva9F7/uWwU+D1hSqIodyp1TRYg7JrPapEnwdBtYKFMC3w1v
	2+aNx
X-Gm-Gg: AZuq6aLOa89XENHXSIie23Rqt08JAS8EnM7OvtLSjnz++LkbZ6MY7FfGDSKsWmPZFpP
	xa34jFkL6BSiV/CFfDtpGv77EDhP0EM3uV5nuCVxEWwlswIyAzPkK1/yeC83IJuQgMLFDG/pTUg
	3mwcFTuzSpqj59USCoWFEsuxNtD/KIWM5R+kD9pBRaeLRZ2qifRPYjdFg0ZA1Z4aw/M9kfOESFh
	6jpbroGUyF0Fd/GCkVbMbQyeKi3C4sAdoM+J4X0xjmKfHwjbbw5WeQCyWgfxpAjSIO7UqY3BuCE
	fLDhJPkTTetBzkFyvz2ImzZOM4T2mJji3JPCx26aL5sbxgmJugK1bVfAKXttfvSgEtB/rr/B5Dv
	oCwD2f7tY2wvOQTgm9gevt/Ex2dXvg8SVxFCMpd7EuR4XidOMr9oqZrxkeXR8MxouCU4LcdsH8M
	LPSdykgh1uMWOEj1ntTNEa3i+XppI9lucTlmyF49P7yzQjb5WtCdcY
X-Received: by 2002:a05:600c:1c13:b0:477:7925:f7fb with SMTP id 5b1f17b1804b1-48069c26ad2mr51439765e9.10.1769552765787;
        Tue, 27 Jan 2026 14:26:05 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4806cdeafffsm19705125e9.7.2026.01.27.14.26.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 14:26:05 -0800 (PST)
Message-ID: <e43a2b67-4f58-4a8c-b153-d9e2ba303b83@linaro.org>
Date: Tue, 27 Jan 2026 22:26:03 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/8] clk: qcom: camcc-x1e80100: Add support for camera
 QDSS debug clocks
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
 Imran Shaik <imran.shaik@oss.qualcomm.com>,
 Taniya Das <taniya.das@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
 <20260128-purwa-videocc-camcc-v1-4-b23de57df5ba@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20260128-purwa-videocc-camcc-v1-4-b23de57df5ba@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260149-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,linaro.org:dkim,linaro.org:mid,qualcomm.com:email]
X-Rspamd-Queue-Id: CFA939B085
X-Rspamd-Action: no action

On 27/01/2026 19:26, Jagadeesh Kona wrote:
> Add support for camera QDSS debug clocks on X1E80100 platform.
> 

A little more detail here please :)

> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
> ---
>   drivers/clk/qcom/camcc-x1e80100.c | 64 +++++++++++++++++++++++++++++++++++++++
>   1 file changed, 64 insertions(+)
> 
> diff --git a/drivers/clk/qcom/camcc-x1e80100.c b/drivers/clk/qcom/camcc-x1e80100.c
> index cbcc1c9fcb341e51272f5595f574f9cb7ef2b52e..7e3fc7aee854eee841176a1330f97dc91af91670 100644
> --- a/drivers/clk/qcom/camcc-x1e80100.c
> +++ b/drivers/clk/qcom/camcc-x1e80100.c
> @@ -1052,6 +1052,31 @@ static struct clk_rcg2 cam_cc_mclk7_clk_src = {
>   	},
>   };
>   
> +static const struct freq_tbl ftbl_cam_cc_qdss_debug_clk_src[] = {
> +	F(19200000, P_BI_TCXO, 1, 0, 0),
> +	F(60000000, P_CAM_CC_PLL8_OUT_EVEN, 8, 0, 0),
> +	F(75000000, P_CAM_CC_PLL0_OUT_EVEN, 8, 0, 0),
> +	F(150000000, P_CAM_CC_PLL0_OUT_EVEN, 4, 0, 0),
> +	F(300000000, P_CAM_CC_PLL0_OUT_MAIN, 4, 0, 0),
> +	{ }
> +};
> +
> +static struct clk_rcg2 cam_cc_qdss_debug_clk_src = {
> +	.cmd_rcgr = 0x13938,
> +	.mnd_width = 0,
> +	.hid_width = 5,
> +	.parent_map = cam_cc_parent_map_0,
> +	.freq_tbl = ftbl_cam_cc_qdss_debug_clk_src,
> +	.hw_clk_ctrl = true,
> +	.clkr.hw.init = &(const struct clk_init_data) {
> +		.name = "cam_cc_qdss_debug_clk_src",
> +		.parent_data = cam_cc_parent_data_0,
> +		.num_parents = ARRAY_SIZE(cam_cc_parent_data_0),
> +		.flags = CLK_SET_RATE_PARENT,
> +		.ops = &clk_rcg2_shared_ops,
> +	},
> +};
> +
>   static const struct freq_tbl ftbl_cam_cc_sfe_0_clk_src[] = {
>   	F(345600000, P_CAM_CC_PLL6_OUT_EVEN, 1, 0, 0),
>   	F(432000000, P_CAM_CC_PLL6_OUT_EVEN, 1, 0, 0),
> @@ -2182,6 +2207,42 @@ static struct clk_branch cam_cc_mclk7_clk = {
>   	},
>   };
>   
> +static struct clk_branch cam_cc_qdss_debug_clk = {
> +	.halt_reg = 0x13a64,
> +	.halt_check = BRANCH_HALT,
> +	.clkr = {
> +		.enable_reg = 0x13a64,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "cam_cc_qdss_debug_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&cam_cc_qdss_debug_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch cam_cc_qdss_debug_xo_clk = {
> +	.halt_reg = 0x13a68,
> +	.halt_check = BRANCH_HALT,
> +	.clkr = {
> +		.enable_reg = 0x13a68,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "cam_cc_qdss_debug_xo_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&cam_cc_xo_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
>   static struct clk_branch cam_cc_sfe_0_clk = {
>   	.halt_reg = 0x133c0,
>   	.halt_check = BRANCH_HALT,
> @@ -2398,6 +2459,9 @@ static struct clk_regmap *cam_cc_x1e80100_clocks[] = {
>   	[CAM_CC_PLL6_OUT_EVEN] = &cam_cc_pll6_out_even.clkr,
>   	[CAM_CC_PLL8] = &cam_cc_pll8.clkr,
>   	[CAM_CC_PLL8_OUT_EVEN] = &cam_cc_pll8_out_even.clkr,
> +	[CAM_CC_QDSS_DEBUG_CLK] = &cam_cc_qdss_debug_clk.clkr,
> +	[CAM_CC_QDSS_DEBUG_CLK_SRC] = &cam_cc_qdss_debug_clk_src.clkr,
> +	[CAM_CC_QDSS_DEBUG_XO_CLK] = &cam_cc_qdss_debug_xo_clk.clkr,
>   	[CAM_CC_SFE_0_CLK] = &cam_cc_sfe_0_clk.clkr,
>   	[CAM_CC_SFE_0_CLK_SRC] = &cam_cc_sfe_0_clk_src.clkr,
>   	[CAM_CC_SFE_0_FAST_AHB_CLK] = &cam_cc_sfe_0_fast_ahb_clk.clkr,
> 

Once the commit log is fixed.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

---
bod

