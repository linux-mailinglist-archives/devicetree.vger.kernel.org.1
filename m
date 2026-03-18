Return-Path: <devicetree+bounces-277501-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDcfGLAuu2ksgQIAu9opvQ
	(envelope-from <devicetree+bounces-277501-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 00:01:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0612C3B2F
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 00:01:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B795030382B7
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 23:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A13F1F2B8D;
	Wed, 18 Mar 2026 23:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="OE8gDemK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7409114AD20
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 23:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773874849; cv=none; b=lO0Fadzhv818iu2QsVy4VRkG4BRdXOaYoYd6jj+QqDmT+xNy6bLqVOSZ11iJnWMhcNXyMb0BxkTgsMkpbNe3kQ0tC6rr1Y79Nh7TKF05Hkg1CIuYsUupwWlKhcJM4Gm36IE6gEDm/AKEGWoZqDSmw4u2O0B+CEBQt4IjT0Se8YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773874849; c=relaxed/simple;
	bh=NvYYBRGAeWtKVYoN67ySXdYRyGcLlgtmbG657mYPVhg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=upCDT13nyD0LO/zwOErq1+Ep9yKkD+yLCNGUhZ06QELzWCcEZuZqX67QPL9AiQLybJk0z2F1YUfwT/sd2XVBS6EK4/VCN9bTePNjK55RsX4t6yHisv3Vypn7tgn4ejjTJBJdLIH3Jv4uL0oae3Y1/McOAt8VAn/aP2FLygKoShI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=OE8gDemK; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7d74aa6bcdbso247320a34.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 16:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773874845; x=1774479645; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gXk/XAl/MQx/OXuZk0UOeHJIU6eSq8cRls/Q/FJTwAA=;
        b=OE8gDemKQzGDMIqqw4/3ZwA/2dH4vME+TPVVaSXxcbmtON7tpc5uPP8KPMNPFuEgDh
         30LrUqeV5c5XmkGg3bJxkTp73tUxIk1NgLiUfRkCzfusoiNX0csnXrnjz73cFcefgSTz
         GPa/Yh5AWYZ4zKoZaf1Zi4DWJobSclbMAI5GrJSuC28yo7mOWWmvy8yzTkIjFwuyvtIB
         EKbUGZipAsA0VWJRa7qIKLN6M10fuXfkIvYnP61c+cYF59HRdx4fU1b7EUBPlnVKD1jc
         bhcl6KAHckiUsGwjXexy3HQ3Rb+vIA1bzkfOXIrCUAKS/cq4lwSBKJzOB3zQMc20ksnv
         SxiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773874845; x=1774479645;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gXk/XAl/MQx/OXuZk0UOeHJIU6eSq8cRls/Q/FJTwAA=;
        b=Ulbebb/6s+8ps67c5dUeJRSoMJpb2M6RfL6Os+KoqPaKTz9ZZaUnheFZHrBQXQq65n
         b8EE8Z9Pc6qJYH+fHEB/qyr4ukiCdNg9e6lJ77vG3clRvugFY2b0cAeqCWS3CmQPyRbt
         Lruxg2nBy8IOXEA6Vll6gIV3SQeh4GHqmItZBZ8T5iNDzYigBAtf4zFloFPG6sj0REDx
         MZPpnn3XjfsR+K5E+IwxSVMKzv5VbBA9CVbWvwhpgOEk3peAf/hWKfDJxhVJ0J8EyFhG
         wcWQZW0m2N+91QIIFory/5pqjTgZKxghwr6D1Jd3Bm9t/ZAQNLAyj7HfksAJtSn3vRdg
         Lmsg==
X-Forwarded-Encrypted: i=1; AJvYcCV1AEtvJREOWSNVwUNjol5H0d2Y9XGNRanJpMcBX/9W7TYo+W4SH6kVtw4LM2pzgUS8JOkhgkZD9nbJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzXh2ci8/JZC0ANeskv3xSY+aC1l16fLxKob7vKe7WEbdjsPPgu
	GbAc6nJwqS0cgME7vsNbw3tzJ/XC6Asbayo+iHFu46/Pe0OewoQymkIvagvkYLVVwtU=
X-Gm-Gg: ATEYQzzh1Edjh+3cobIjKW3EAP4xtvwkO85oLEXV+D51BxrLTLPRXKWlVBo9JsZ6zgt
	q/BwjUX5FTJZNMxZIvJJM751tc84/xHAboY/zRPQcRc2Pc+iav9BkhmABUZblsSLMq4E4uwNiQM
	Na0g1UAMEkm3JqC0yWuonSG5LPgjGe94NGWPt6tua5dumbPIg7yYXWvgOPY67VWHZYTcX4XXXxZ
	R7jJwlu/uo4dTM9Tb2gnrYbcjpzzZFM0a/bnjAYSmwLicPrD6OKfGNXvd46QjGCDbODck2iCmwA
	8KbOHdzvCK3VWfVD1966mLsrMkMONqP6HY5//S65u/Jvh9Qy9E96rurH/LLv7DzhpXbs2t1tMHV
	ER6EtauMcAW4MwFNasnmdtgcfYlYZ3w8WNUKQCpijOOCeL93BmTA1xZBNDQdPlDIt6gWgp87rBb
	aS31L0+wWznvmo4Y6fRsYRKsAFe6bZIUVnAU6cf43+9qhKtbTkch7UoNq3EGPVFrhfdjb5Q8eu5
	w==
X-Received: by 2002:a05:6830:730e:b0:7d7:4921:897d with SMTP id 46e09a7af769-7d7ca2bda63mr2987245a34.0.1773874845232;
        Wed, 18 Mar 2026 16:00:45 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:244c:fc8c:8216:1344? ([2600:8803:e7e4:500:244c:fc8c:8216:1344])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d7c9950d99sm3182160a34.6.2026.03.18.16.00.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 16:00:43 -0700 (PDT)
Message-ID: <4cb07b9a-249a-4c13-b09a-6dac9f72265d@baylibre.com>
Date: Wed, 18 Mar 2026 18:00:42 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: mmc: mtk-sd: Add support for MT8189 SoC
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Wenbin Mei <wenbin.mei@mediatek.com>
Cc: kernel@collabora.com, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20251203-mt8189-add-mmc-support-v1-0-f5ce43212fe9@collabora.com>
 <20251203-mt8189-add-mmc-support-v1-1-f5ce43212fe9@collabora.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251203-mt8189-add-mmc-support-v1-1-f5ce43212fe9@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277501-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FREEMAIL_TO(0.00)[collabora.com,mediatek.com,linaro.org,kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0B0612C3B2F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 12/3/25 5:45 AM, Louis-Alexis Eyraud wrote:
> Add a new compatible for MMC IP in MT8189 SoC.
> Even though this is partially compatible with the one found in MT8196
> SoC, the MT8189 SoC register layout has some slight differences and
> additional features.
> 
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
> ---
>  Documentation/devicetree/bindings/mmc/mtk-sd.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> index 6dd26ad314916a3e40cf55ff69a7d93ed63dbdd4..eb3755bdfdf7e001602c3eb870898275085df3e6 100644
> --- a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> @@ -25,6 +25,7 @@ properties:
>            - mediatek,mt8135-mmc
>            - mediatek,mt8173-mmc
>            - mediatek,mt8183-mmc
> +          - mediatek,mt8189-mmc

I think this can be in the group with fallback to mediatek,mt8183-mmc.

I was able to make it work on U-Boot just using the existing match
for "mediatek,mt8183-mmc" there.

>            - mediatek,mt8196-mmc
>            - mediatek,mt8516-mmc
>        - items:
> @@ -192,6 +193,7 @@ allOf:
>              - mediatek,mt8183-mmc
>              - mediatek,mt8186-mmc
>              - mediatek,mt8188-mmc
> +            - mediatek,mt8189-mmc
>              - mediatek,mt8195-mmc
>              - mediatek,mt8196-mmc
>              - mediatek,mt8516-mmc
> @@ -240,6 +242,7 @@ allOf:
>                - mediatek,mt7986-mmc
>                - mediatek,mt7988-mmc
>                - mediatek,mt8183-mmc
> +              - mediatek,mt8189-mmc
>                - mediatek,mt8196-mmc
>      then:
>        properties:
> 


