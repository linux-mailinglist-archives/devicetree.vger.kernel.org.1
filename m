Return-Path: <devicetree+bounces-261896-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOIlNIbdgGnMBwMAu9opvQ
	(envelope-from <devicetree+bounces-261896-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 18:23:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED1ACF8C3
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 18:23:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 977603027121
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 17:20:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3551B3806CC;
	Mon,  2 Feb 2026 17:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="uI/HwipC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com [209.85.210.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A87929ACDB
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 17:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770052835; cv=none; b=GXTR5fdUCixEUOmBy1pqfS5KlG5iVSAH3WtZRmJDIprlLibp3NRm9v4CBHQUChfcnRkiaT6+0K0dQ4R9gZTtDFdbWhfVxpGhUjRhChI1zdl2+KTRHJY6EysL/mIrIZhtOiyS+yuDIO8L1oi18v+uaYVn4YtrmAp7z9mC5ccHaMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770052835; c=relaxed/simple;
	bh=a3QekfMeF0DCtIw1H9A5ab6FXw824gdVFqGbb32mEeQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fVa5WwmnyhsiO0UjWFpgrdKriRX8GvkrzWS+TZ4mw9hcnKT85Hg8HNVGQFlqDacJCPqFatICYO28ve2rz/RTTfmr/STOe3phGmCAyMRDbsuRFJEDviCSBPh1RdDbBAWKx5tX0QY3lY5A/KvA+kR7xv1ACPZ1SXMAh0OBfeb++YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=uI/HwipC; arc=none smtp.client-ip=209.85.210.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f66.google.com with SMTP id 46e09a7af769-7d189e5b05eso2318279a34.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 09:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770052832; x=1770657632; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=idcn5ztOB8vCVixROzXdUZZgLSFHdenUmBztFP1iIws=;
        b=uI/HwipC6z5w1+7FQg5j07vhUoTiqHQijl0StO5mBL1xh3wv6pLbvpKRNYB82s3KvW
         xPp0j2lUQpbizgsieQcR7uXy8ggtyQvkvMtYboO/qYEwofLT41tsM93SjsTWdlDX80UV
         o+aIHTZQtHaMN0IUOWVNkOrXLMqGZ+vCv4WyoC5BRsH8O8zavcDP7xLFSc7Ya9PywPip
         yufjiVhBJcNbZVNW3y/0x215+cOBikrT49WkuFmsuKmn4YSI6cyfzNhfDkVjlkeJW8Cu
         bWY2PGCdDMzk2LNn8qq0Ti+nTkIEbQxW28goi46RTc3+7ry8DlITe1eO7iE/CcQDIiYQ
         282Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770052832; x=1770657632;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=idcn5ztOB8vCVixROzXdUZZgLSFHdenUmBztFP1iIws=;
        b=SIFtln2puvmNR6HHXyQA0wUX1Lp/fZCmkf3gE7abTNzAjvZ6Sl7J4O12wsbCGlhZC3
         f57ZBr3/SnpuIbpMlfSdWpSUVAvuQalRRLWeCqQ48EgVpi9STs9k6ylppLIDxgFBELp9
         SSuiWaK6M6jJpzTZkk+R35wyUQqmGaLh2+ZcMYXUYmKt2ltxvOE76xL2EJE6kvfDKpj8
         aJCjhX/RxADAkHh8qO1M04gvHRN0c5eRdOL9HEJiaMm3TjYz0y1PmzzXbm8LT1Yvy6f9
         sPjSghP2Z7wTzl7rD9772SRIGDOaFIGP4Mvvw4JPLEyl5L1cWnszgdwIyImsonx0xhVN
         VzNQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7T3GRJ5q7uBqDF6Q8AY0EvdjaRDAESDSYJycXOnx9sT+cPGhgo1VOLGZkwu33VyeeGpPWXmYB5Ied@vger.kernel.org
X-Gm-Message-State: AOJu0Yye6+NFWVgawagicNbZ0rz1nH/H3WGJcqo6EGlDwOW4oUc5GAZk
	n1UoYWSQ7vXOzK0RBkAQ78Lwx4aWjY+kuUl0y9LVFwjio9LaHcpet9xRp5zuQjpniJw=
X-Gm-Gg: AZuq6aK2AlWE4SLXlxn+ffUUIeUh5X+VZT82uN9ECuy7j55B//p8cXKeWaRKqOvZU6u
	R3sCsxsA5PfJXV+Nlq9wBJjmgZwofFWI/xHBF4VYfBxlGN22ZwxRGGxtX07potjEQ1+T87Aiw+w
	HrD/8fBb+0Wu9rBc0xj0pF52C5UAPIDWNP/Lyr26V2x2UEhig6DlIdJgPwmkJ+SgVEm2y5oUvvw
	Nnoim1wngQaDssN5OOV2zoCU+W1jMSk8eVT/Y/R23I/glVRjES6BeWU4l8nJsSKtw92bslps2XD
	aNk+mq3baky0js5XDrOjCqxkK9tOSLn7ZcuBlMIu87L4obP/4wJ7nW53uqh3BcEYEYiLOIZf9Y7
	8A6d96G9M9Mge2TUQQrg/PqDvHKKeV+Y7SGi75/izOOwrRUo8Vpagg0hY6rxGNnXiXet5lmJ6U/
	6P3op+CRtSw7iCBJQsCh8Ms2a4JPZN4j/z+IUM9NOG601LqiepQomAktPzfpss
X-Received: by 2002:a05:6830:6584:b0:7cf:e41d:f0b0 with SMTP id 46e09a7af769-7d1a5341a34mr6832027a34.18.1770052832041;
        Mon, 02 Feb 2026 09:20:32 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:3695:6954:27c2:42ef? ([2600:8803:e7e4:500:3695:6954:27c2:42ef])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d18c7ffcc7sm10907066a34.23.2026.02.02.09.20.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 09:20:31 -0800 (PST)
Message-ID: <25bc9ae2-5c27-407a-aae4-6c619367664a@baylibre.com>
Date: Mon, 2 Feb 2026 11:20:30 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: mediatek: mt8365: Describe infracfg-nao
 as a pure syscon
To: =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>,
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Alexandre Mergnat <amergnat@baylibre.com>,
 Amjad Ouled-Ameur <aouledameur@baylibre.com>,
 =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
 Fabien Parent <fparent@baylibre.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20250502-mt8365-infracfg-nao-compatible-v1-0-e40394573f98@collabora.com>
 <20250502-mt8365-infracfg-nao-compatible-v1-2-e40394573f98@collabora.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250502-mt8365-infracfg-nao-compatible-v1-2-e40394573f98@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261896-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FREEMAIL_TO(0.00)[collabora.com,kernel.org,gmail.com,baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[1020e000:email,1020f000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.155.183.72:email,collabora.com:email,baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid,baylibre.com:email]
X-Rspamd-Queue-Id: 2ED1ACF8C3
X-Rspamd-Action: no action

On 5/2/25 11:43 AM, Nícolas F. R. A. Prado wrote:
> The infracfg-nao register space at 0x1020e000 has different registers
> than the infracfg space at 0x10001000, and most importantly, doesn't
> contain any clock controls. Therefore it shouldn't use the same
> compatible used for the mt8365 infracfg clocks driver:
> mediatek,mt8365-infracfg. Since it currently does, probe errors are
> reported in the kernel logs:
> 
>   [    0.245959] Failed to register clk ifr_pmic_tmr: -EEXIST
>   [    0.245998] clk-mt8365 1020e000.infracfg: probe with driver clk-mt8365 failed with error -17
> 
> This register space is used only as a syscon for bus control by the
> power domain controller, so in order to properly describe it and fix the
> errors, set its compatible to a distinct compatible used exclusively as
> a syscon, drop the clock-cells, and while at it rename the node to
> 'syscon' following the naming convention.
> 
> Fixes: 6ff945376556 ("arm64: dts: mediatek: Initial mt8365-evk support")
> Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8365.dtsi | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
> index e6d2b3221a3b7a855129258b379ae4bc2fd05449..49ad4dee9c4cf563743dc55d5e0b055cfb69986a 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
> @@ -495,10 +495,9 @@ iommu: iommu@10205000 {
>  			#iommu-cells = <1>;
>  		};
>  
> -		infracfg_nao: infracfg@1020e000 {
> -			compatible = "mediatek,mt8365-infracfg", "syscon";
> +		infracfg_nao: syscon@1020e000 {
> +			compatible = "mediatek,mt8365-infracfg-nao", "syscon";
>  			reg = <0 0x1020e000 0 0x1000>;
> -			#clock-cells = <1>;
>  		};
>  
>  		rng: rng@1020f000 {
> 

Reviewed-by: David Lechner <dlechner@baylibre.com>

It looks like this never got picked up. I noticed this was a problem in U-Boot
because it was registering this as a clock provider. And I sent a similar patch
[1] recently that has also not been acted on yet. I prefer this patch since it
also fixes the node name to use a standard name. Who should be responsible for
actually picking up the patch?

[1]: https://lore.kernel.org/linux-mediatek/20251216-mtk-fix-infracfg_nao-compatibile-v1-1-d339b151ac81@baylibre.com/


