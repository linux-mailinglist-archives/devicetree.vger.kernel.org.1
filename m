Return-Path: <devicetree+bounces-305863-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +EAfNrVVH2rNkgAAu9opvQ
	(envelope-from <devicetree+bounces-305863-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 00:14:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 418556325D1
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 00:14:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=yYct3THR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305863-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305863-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 469343028CAE
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 22:14:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C381F3AB47C;
	Tue,  2 Jun 2026 22:14:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D56038AC79
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 22:14:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780438449; cv=none; b=pheublg4kGgukMfl6t+w580xf1YxF30lIGD1filkDH/TYVHkOI9Qen7rpyZN5vBESMBLgV+pZLnPUhc32UbqwnqioQuwklrSRJc5kSmr/xcv4yamQNA3QmyZ8Fmglm7cg8+xiUiv0hz2VuX+rB4omymQMZSezIfldB3/7KRm2NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780438449; c=relaxed/simple;
	bh=AKxmpzI5wH9I9UZcIsNESrl/eKnb5r5nsYZfUB/Ku6o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j/MJmWXaQxuVEw/s4weCpKiCYQ5aKWD+FYSSuX9fNvOQtYwDHaMY6FMn7cTANYz4QFiv+UbbPU5V5Nl9aoB2WFVVgmmZRGz+Cb/z+qcgW07TBvmT4f9Pij3Qv6Tqevnb0DnVo8uLSn1+ssH7dINCTT/pqGTSLbDmCewTNqMg9Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yYct3THR; arc=none smtp.client-ip=209.85.208.179
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-3966e5e7cebso4973961fa.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2026 15:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780438447; x=1781043247; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uM8Sf7FodSx2cPHTZjl3hS8JtasGDXRm7zk3IkDqzNA=;
        b=yYct3THRY/kWpfS5Rq/CqRl2eej+YGTBDtCDGC4f4YqnWmoeekjCmQIl5KCHGZIzPt
         gzGDs1dV80ma/CueoK803YzRvPUrRseByF6R23DTopRHBeC0I7srHOR+61QrtBeS7sma
         VnySkcA3tIErvDx7LkzmpgswRfJ806lh6g4X8efmqln8WMl1/jVOPraWmBmNzMqs//2h
         kyJ2o0i++zwhrHwXWfFRRNDWGCWIoNHiebC5ur4ZCtUAPh9ko6aJFzEmjDe4vG4k1TnB
         FFP/pltZuXeSfJqmcnpHEemBwGg7rx4fw/ORu6dbHlT120Z0E/yQYBi9i33FmBVFr3cd
         t/Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780438447; x=1781043247;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uM8Sf7FodSx2cPHTZjl3hS8JtasGDXRm7zk3IkDqzNA=;
        b=aKHLQbDwid6W+mjRWgiuN7lSVRKr6bXdWFKXm4rRPFty4dVdQGlMZtrIqGUDkUom40
         809iU2dDD4YxfOrCcgKQDB8mfabajhG+6KTXN9rq6UxN1MSH81vYF3svHBVW8VrnHGth
         SO3102uyx17zXsswQtNBBQ80IGtj0esUZzLvlx869XnsIzwxu/tmswMI6g+3av94TEe9
         evfbMTyyXagr2nyDqnBzRKy1XVWQHmQa2KbsaTxPW9PgW1T8SsPJH+OyFDhueAb4BcdG
         Znvtc4EzRPKoeJmJTV2oSg3xuntkp09FN2lhBpufMT3zvG43aFklMBF/aWsMfPWkTw9R
         D3tA==
X-Forwarded-Encrypted: i=1; AFNElJ/me7YdeIT5bhyAzdivW+FNLNB0qiy9Kxm7nLuIYiNCv4W8gjH42tdtjeVr1uy11RN2TYxEijGCUamW@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd17kXPmAgY546r3xdwtv7mHjdovYuDjaIysSBP2dUkFex3u8B
	mqSx4w0wXyqoqrzYUDxeZ0FcPsYpxEtSaMSwV3M7Y3RPDi9ajngEeymkQPnyrVMUzb0=
X-Gm-Gg: Acq92OGWZDU0lma3hbnPpZj2hUEI6BcSa8JVeDfh5cKWTiB5TVIxvcslzK2iBCkS3HS
	SC7pfDJOUwXoClFBKoJX/0BebotDOV9HB4OcEHYjMsbQRQhN/0KU+xvbe1BB+S1AsmaSnIlOb5f
	TFY05PYsbvGy8Brt/W50JQK+BqH8z7SW+3S15sNSCUqIP2mhQjgrrHxgS2hQryjacceT8jQvxqK
	+3FqpH8hBxdlVJFzi3ya9+FYGcfkMXTZ/y6+J7dPR8Jp/JuunbW6cOBvbhLswPibo533h1NbclV
	g8cRcth12K1Fnb+zJsAVRN4IThBinTwbtB8a79yaAxjOd1qDTVbiP94Y8M0HySGcCfIo+6IXTyK
	09Ubap4bwHlioYmiuunP7giFKGgsYiOfU4cECvYoh+TvgL76wyBT52eebtB/Wj6u/UTdkUgz990
	ziz4+leDpLl9WAEJQEZeR12JgaXu7tcm4noJvIIZcXZpciEOLZtiXKjKRqMlVPRn6q4zhTFqE86
	44IfMQuaAeCVvc7
X-Received: by 2002:a05:6512:1316:b0:5aa:68ca:7aff with SMTP id 2adb3069b0e04-5aa7bf55528mr141785e87.6.1780438446511;
        Tue, 02 Jun 2026 15:14:06 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b985a4esm209129e87.56.2026.06.02.15.14.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 15:14:05 -0700 (PDT)
Message-ID: <92ac522e-e8b3-4257-bd4a-24b9cea8b6da@linaro.org>
Date: Wed, 3 Jun 2026 01:14:05 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 2/5] media: qcom: camss: Add Kaanapali compatible
 camss driver
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 jeyaprakash.soundrapandian@oss.qualcomm.com,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20260508-kaanapali-camss-v13-0-2541d8e55651@oss.qualcomm.com>
 <20260508-kaanapali-camss-v13-2-2541d8e55651@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260508-kaanapali-camss-v13-2-2541d8e55651@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305863-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:hangxiang.ma@oss.qualcomm.com,m:bod@kernel.org,m:rfoss@kernel.org,m:todor.too@gmail.com,m:mchehab@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:bryan.odonoghue@linaro.org,m:linux-arm-msm@vger.kernel.org,m:linux-media@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jeyaprakash.soundrapandian@oss.qualcomm.com,m:vijay.tumati@oss.qualcomm.com,m:todortoo@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com,linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:from_mime,linaro.org:email,vger.kernel.org:from_smtp,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 418556325D1

On 5/8/26 11:05, Hangxiang Ma wrote:
> Add support for Kaanapali in the camss driver. Add high level resource
> information along with the bus bandwidth votes. Module level detailed
> resource information will be enumerated in the following patches of the
> series.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> ---
>   drivers/media/platform/qcom/camss/camss.c | 22 ++++++++++++++++++++++
>   drivers/media/platform/qcom/camss/camss.h |  1 +
>   2 files changed, 23 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 9335636d7c4d..ffaeeb9d1797 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -34,6 +34,20 @@
>   
>   static const struct parent_dev_ops vfe_parent_dev_ops;
>   
> +static const struct resources_icc icc_res_kaanapali[] = {
> +	{
> +		.name = "ahb",
> +		.icc_bw_tbl.avg = 150000,
> +		.icc_bw_tbl.peak = 300000,
> +	},
> +	/* Based on 4096 x 3072 30 FPS 2496 Mbps mode */
> +	{
> +		.name = "hf_mnoc",
> +		.icc_bw_tbl.avg = 471860,
> +		.icc_bw_tbl.peak = 925857,
> +	},
> +};
> +
>   static const struct camss_subdev_resources csiphy_res_8x16[] = {
>   	/* CSIPHY0 */
>   	{
> @@ -5102,6 +5116,13 @@ static void camss_remove(struct platform_device *pdev)
>   	camss_genpd_cleanup(camss);
>   }
>   
> +static const struct camss_resources kaanapali_resources = {
> +	.version = CAMSS_KAANAPALI,
> +	.pd_name = "top",
> +	.icc_res = icc_res_kaanapali,
> +	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
> +};
> +
>   static const struct camss_resources msm8916_resources = {
>   	.version = CAMSS_8x16,
>   	.csiphy_res = csiphy_res_8x16,
> @@ -5316,6 +5337,7 @@ static const struct camss_resources x1e80100_resources = {
>   };
>   
>   static const struct of_device_id camss_dt_match[] = {
> +	{ .compatible = "qcom,kaanapali-camss", .data = &kaanapali_resources },
>   	{ .compatible = "qcom,msm8916-camss", .data = &msm8916_resources },
>   	{ .compatible = "qcom,msm8939-camss", .data = &msm8939_resources },
>   	{ .compatible = "qcom,msm8953-camss", .data = &msm8953_resources },
> diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
> index 6d048414c919..2820c687e066 100644
> --- a/drivers/media/platform/qcom/camss/camss.h
> +++ b/drivers/media/platform/qcom/camss/camss.h
> @@ -93,6 +93,7 @@ enum camss_version {
>   	CAMSS_8550,
>   	CAMSS_8650,
>   	CAMSS_8775P,
> +	CAMSS_KAANAPALI,
>   	CAMSS_X1E80100,
>   };
>   
> 

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

