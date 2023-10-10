Return-Path: <devicetree+bounces-7217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EDA7BFB75
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:31:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F3481C20BB6
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 12:31:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 580BDDDCD;
	Tue, 10 Oct 2023 12:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jA1Zfbbw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7230C45F43
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:31:53 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31D7799
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:31:51 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-99c1c66876aso1013605066b.2
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696941109; x=1697545909; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2CYZ+/+DyhZ52BIz8QU22nLu1za05uFMUaEH4Bw/fqc=;
        b=jA1ZfbbwHFi/221nnKcBzWJ1nDGHJVDss9/TBghYOwUe/25ozgCa6N5JYDpT+IrDR0
         juFFOPqdqkNzfzNvJZHszC7N3jeKpO5RizCYMhqBKC7XZTlM+PKC+c2ZycAyOxuW0L6t
         dpPxjC9z8+zc4RicA8jB7wD54+o0FFRlCGpISldS8Sf574IYd1NYrSfP3fiylefzpcS4
         Gvt/2t8sKlOuZ5+ZlB3/KvRVXI66DL4ICorBwdGXfF/a+ymy61VE95PwFv4AgrsaaQCb
         WyVJFRaEA4+Ki/UuoTYfQvMWoqLye+QHto4hVAE4MZD3KVNDKkkSaXCbN1VLaTNAeQS5
         RbEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696941109; x=1697545909;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2CYZ+/+DyhZ52BIz8QU22nLu1za05uFMUaEH4Bw/fqc=;
        b=Zf47ATMtxGuz+BZuMx7bfpFjaog9n/OOe6vp5moHO0sMFFViHdXRkw+3N7mIzdiPx6
         k3x9nJGChJ7ieCl1uzPID2G18BU7AbtI9+CC99vrfyEZ7CaYkogx8P2u/OUtzNwhqVjf
         pwMwiSIR5u7l5V9Nf1cXRb5maaFLxZlYByg5jBLHOPMhho2n51TLaCjYZ//JSJlmlACj
         v6jV2wt19dRIzz20HT55d/vy2g0iCnIDP3gVHZgOTt/Cl1C1YMEXOl4672Tdnj3SoJnx
         By+D/2DBzG0sHHFaJItDvDp/dedMr3iO4fJA23M9mzf8aMCiV/GW80Jc/fJjVQcz8Zi7
         F7fg==
X-Gm-Message-State: AOJu0YxAsA/xo4s+2bJJuC0wsPEQBJuAXCYDfzLvtxqD9+waC+ymYV6u
	qcBi5waEkT5d4u0Vv9uKgEhB9A==
X-Google-Smtp-Source: AGHT+IGrJz2OZy7bjQItLxH2CVQ0LtUM1928DgKjvDvFMaoCllpF2bQB9OvuQc+61e+7xUGcp/crSw==
X-Received: by 2002:a17:907:7613:b0:9ae:55ae:587f with SMTP id jx19-20020a170907761300b009ae55ae587fmr14973981ejc.37.1696941109625;
        Tue, 10 Oct 2023 05:31:49 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id f5-20020a170906560500b009b8dbdd5203sm8394159ejq.107.2023.10.10.05.31.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 05:31:49 -0700 (PDT)
Message-ID: <ea2b3e42-9bf8-489c-b2d9-584ee2d909f4@baylibre.com>
Date: Tue, 10 Oct 2023 14:31:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt8186: fix clock names for power
 domains
Content-Language: en-US
To: Eugen Hristev <eugen.hristev@collabora.com>, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com
Cc: allen-kh.cheng@mediatek.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20231005103041.352478-1-eugen.hristev@collabora.com>
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20231005103041.352478-1-eugen.hristev@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

On 05/10/2023 12:30, Eugen Hristev wrote:
> Clocks for each power domain are split into big categories: pd clocks 
> and subsys clocks. According to the binding, all clocks which have a 
> dash '-' in their name are treated as subsys clocks, and must be placed 
> at the end of the list. The other clocks which are pd clocks must come 
> first. Fixed the naming and the placing of all clocks in the power 
> domains. For the avoidance of doubt, prefixed all subsys clocks with the 
> 'subsys' prefix. The binding does not enforce strict clock names, the 
> driver uses them in bulk, only making a difference for pd clocks vs 
> subsys clocks. The above problem appears to be trivial, however, it 
> leads to incorrect power up and power down sequence of the power 
> domains, because some clocks will be mistakenly taken for subsys clocks 
> and viceversa. One consequence is the fact that if the DIS power domain 
> goes power down and power back up during the boot process, when it comes 
> back up, there are still transactions left on the bus which makes the 
> display inoperable. Some of the clocks for the DIS power domain were 
> wrongly using '_' instead of '-', which again made these clocks being 
> treated as pd clocks instead of subsys clocks.

-- 
Regards,
Alexandre

