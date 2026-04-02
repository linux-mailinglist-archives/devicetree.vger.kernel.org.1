Return-Path: <devicetree+bounces-283871-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IXaBFIvzml+lwYAu9opvQ
	(envelope-from <devicetree+bounces-283871-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 10:56:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FC23865D7
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 10:56:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B6AB8300BCB3
	for <lists+devicetree@lfdr.de>; Thu,  2 Apr 2026 08:48:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02A393C5DB6;
	Thu,  2 Apr 2026 08:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QH92+j9N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C0C93C5536
	for <devicetree@vger.kernel.org>; Thu,  2 Apr 2026 08:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775119727; cv=none; b=esXhjrhOitF8riZz+4VPNarp2cG6YOxt2ClmsUXBPWt3mPWiwb78if5P117foWqX/HWHhwmGWRgQszElzfregth7Yjcr9Z7MSX4O35SmKzxscyiB35YBQNOg+Veb8Tci2iIUwm/0EneAwujeZepXeI7GCE529Oj9+s1lLl6K2ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775119727; c=relaxed/simple;
	bh=EeUB2cb/q1piHZca/onlXUaq+LBqrgeNV1GhGqOS9D0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BfohMNvGvG/nMED2ggIwe6GIaFor2VTjuW8rn22ZQ2C8zwumYtWh/KPmB4oM+nl60a7Bble/s34yZ1o960Ewon8JhPpywBgo1yl0ZlAfvTroypeL2csi4lEDue1uXZy4ABAmrAis4Ps7vU58K3WWuEAKswS+YoQTxtlUn+yxeqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QH92+j9N; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-43b9144790dso376466f8f.1
        for <devicetree@vger.kernel.org>; Thu, 02 Apr 2026 01:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1775119725; x=1775724525; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1GIru3ZjVDgno/c6eBjpiuQOVd+IOE1T821J/rtKRzE=;
        b=QH92+j9N5HdsxjTswqLhwMh5DkoXkoW5HIUI6dMDH26eKMXP7OpXKfoUfb/yv0k9nn
         ktcigONQRnj1m/9U0+2PjofBUCqIosFS3CIWpHTBXxeyEbXt83rSeKoyYcU62ZlK1BSS
         tbvx4I0WxCJHK3Bd+hfDSJy7bUkl0FUKkwCTjQVTrjNchlFeThMI+ZGXAAJgF9uvZ5T1
         BCxXocRgMva4PcdAF+gvlYQF6sXKJl5Cj6Tm1vAVEAtbG5Irdr2ue27Z19Sw/WMVqcD0
         R97cd5VTJMr0mG45FHR0foRKTHJ05rd8T12CttMTOIc9b6fFddi4BewOD74p5y048ioU
         hhkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775119725; x=1775724525;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1GIru3ZjVDgno/c6eBjpiuQOVd+IOE1T821J/rtKRzE=;
        b=kw5iAxewjAuoGv7xjaOHqbhO2xjMliAIOpXy8WC7tBOiZuPtJ2ETJO59mGM+Qg0Ofz
         N5gdR5CDTDvgX5KGdGQ5XVhwqzyY8hbbPP8fWQ/F9KADciBMbgX98cEqUA+s7/HKcGX7
         LFyydVFaQLJPQ8l9N5bWxi6OsXSL6KtxHZibABEsdethDsU1PAw2OofPb7Jbw4FTfB/Z
         mvMJqmLE7SvV0QvHIvY5d90qQcmyobjJh7SzntACaOEPySl3wm84x42Rmz0NjuvxwnE/
         a24OCfMADUMNj7sxfabcV0O+IH0spjfgJbAnA7vT9+JgSj0dXa+pu2+h6PL0Hv6Eh/tv
         Ncqg==
X-Forwarded-Encrypted: i=1; AJvYcCXZUg73egjpf/EAOhdgKzLsW0KIpfogp9ZbQjUchw5Zx6QXr3P3IrMORwZTTGVWJfVyvjzTbX8djsYA@vger.kernel.org
X-Gm-Message-State: AOJu0YwVzXz4gfQbrvrgQ36gOgl/N0T+9u9YCQqJHu0PJ/8/qMKHk26j
	+wPxAau5XTrw5al6SrW/0DVat17eQKJ4ZHAYJrNGr/O5/7Oe9+WYlYPbRKX6IfWxL9U=
X-Gm-Gg: ATEYQzxba6HfSrr45znLUlZj+ac3UmQe9sip/YElMmNV88jdYugdyfE5ZW/ZShLCoLK
	nfdxjKpGAZ2fSI+kFXXohF2ajMZ8TGThhe0jKVwITDzSPTTVXMFNuzh6iqysmsoPsgAKYFQkBUr
	FTIso0Ia3YfrncUQNPNzG7e1OIxTMY0DHtph9LDD+gpeWmeRynSzl/7BnnlJu0Fx827Y3+zCTuU
	q2rKCHL3TdgHrDp4FTEFbKJOMXjw+DK5k3rmAlFLBIq+sTOcjAc0XTZgBp+G3HDIBt85u/WIhDx
	dJ1eNddDAdCa9Cj2fWHx8tZOtVnMPqNQsx1LUE55AXGjIZOd0jJ/zRniKU5LOoqCoEtDVfvD0q6
	RhmXEaja+EDWo8IC7VsyJGtE71dQCsSM5wJ5busguWA9csFq7gQ8QzarAGIqjkIelmBviI8uTuT
	OaGrBcKLyedXOUukDO+eHbNXJPl8/zDlg=
X-Received: by 2002:adf:f5d0:0:b0:43d:1c7a:8b5e with SMTP id ffacd0b85a97d-43d1c7a8c46mr6458921f8f.35.1775119724871;
        Thu, 02 Apr 2026 01:48:44 -0700 (PDT)
Received: from [10.11.12.108] ([79.115.63.48])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43d1e4d28a5sm5139022f8f.20.2026.04.02.01.48.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2026 01:48:44 -0700 (PDT)
Message-ID: <56c0daaa-4290-48ae-83e3-40ecc4ba59bc@linaro.org>
Date: Thu, 2 Apr 2026 11:48:40 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: exynos850: Add ap2apm mailbox
To: Alexey Klimov <alexey.klimov@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 Sam Protsenko <semen.protsenko@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jassi Brar <jassisinghbrar@gmail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Peter Griffin <peter.griffin@linaro.org>, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260402-exynos850-ap2apm-mailbox-v2-0-ca5ffdff99d4@linaro.org>
 <20260402-exynos850-ap2apm-mailbox-v2-3-ca5ffdff99d4@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20260402-exynos850-ap2apm-mailbox-v2-3-ca5ffdff99d4@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,samsung.com,baylibre.com,gmail.com];
	TAGGED_FROM(0.00)[bounces-283871-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tudor.ambarus@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 30FC23865D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/2/26 5:20 AM, Alexey Klimov wrote:
> Add mailbox node that describes AP-to-APM mailbox, that can be

okay so here it's AP-to-APM mailbox.

> used for communicating with APM co-processor on Exynos850 SoCs.
> 
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  arch/arm64/boot/dts/exynos/exynos850.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/exynos/exynos850.dtsi b/arch/arm64/boot/dts/exynos/exynos850.dtsi
> index cb55015c8dce..fcb665ccc7ae 100644
> --- a/arch/arm64/boot/dts/exynos/exynos850.dtsi
> +++ b/arch/arm64/boot/dts/exynos/exynos850.dtsi
> @@ -298,6 +298,15 @@ cmu_apm: clock-controller@11800000 {
>  			clock-names = "oscclk", "dout_clkcmu_apm_bus";
>  		};
>  
> +		ap2apm_mailbox: mailbox@11900000 {
> +			compatible = "samsung,exynos850-mbox";
> +			reg = <0x11900000 0x1000>;
> +			clocks = <&cmu_apm CLK_GOUT_MAILBOX_APM_AP_PCLK>;
> +			clock-names = "pclk";
> +			interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> +			#mbox-cells = <0>;
> +		};
> +


lgtm:

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

>  		cmu_cmgp: clock-controller@11c00000 {
>  			compatible = "samsung,exynos850-cmu-cmgp";
>  			reg = <0x11c00000 0x8000>;
> 


