Return-Path: <devicetree+bounces-12238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9DB7D8880
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 20:43:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D63AA2820AD
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 18:43:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14CB738BB4;
	Thu, 26 Oct 2023 18:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X7RqHWdK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B4764426
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 18:42:59 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99FEE1AE
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:42:57 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-31f71b25a99so785569f8f.2
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698345776; x=1698950576; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+QYVxFMIK+d/9mUTkspGoeUwkCqC2XLt21uyeNzGMBc=;
        b=X7RqHWdKtMJN9Fd897kGYN/fFujBPsJ7oFSJk642johSRYQfG3QOkLzDebzyyEzdHb
         8X+x4c8tAnGJrwvkhb8IlqMHFu0ttuMt3Adm5WC0uUK6kNeY4OUaRN1c4jnfeourriQB
         u4IiV4uTNpiiX6PkOMVC7nhPUiT+ybghrMxkPhEY+2exczQ9cryxPI03RdcmF0N/4tPv
         igR93nmcPkCoazPcOhUz6l7giw03JBchBN3uqcau3knEY/OTAeBpxbDpS4OdlAAC6gLM
         qt5Ew/io/FlwP5rfJaUVEV70dI3gq6jdetSvpoeKQ+ERjAcNovt31tf68pfDKbh8uY7c
         mSUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698345776; x=1698950576;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+QYVxFMIK+d/9mUTkspGoeUwkCqC2XLt21uyeNzGMBc=;
        b=wuI3DU9fgtDRUXWlnxa0Spgp5dgdZUj2+9p+Ps7/7pSoQLGb8sfvTEZng5a7L9k3vn
         d1hKorgaOQ6Pki3xNyes6MBzZqvmh0n0tB0NRgHqblnK30PBkuA09YFR6tyU3uWkHNa+
         DH4UsRUg09WnG8cvuPPLQwQ5n/VXhdt9G7vtUkvcbUc43KtdjRlo7dd1qlXixrPe92D5
         dclCZxBIYz7GRgyA93DtoOJq71I0P8vdORzAyo/C0Y2nNXX9ySgwO3Gz/L0hgswjFz4N
         HpVPC39C4I7r+4D+xh6i2MRsNt5FSLgBkmuNuLMOBsCZYHhwjk8cZ18TMusn4fHABrgI
         M7Vg==
X-Gm-Message-State: AOJu0YxEpEHqFQg4+OpHM/dKSedPLPkllKcCaOKDwa1a+DJEMynml78N
	5bp0kl3d6JfQomyN+5h1p9CiGA==
X-Google-Smtp-Source: AGHT+IG1fgLc96stbZJuy+8r4WUH6ETZyD9Q2v5+kWPmrovdmXxzDQOnIdUpRMV2sD7k9mrtc+StSg==
X-Received: by 2002:a5d:6549:0:b0:32d:a283:de94 with SMTP id z9-20020a5d6549000000b0032da283de94mr358358wrv.57.1698345776014;
        Thu, 26 Oct 2023 11:42:56 -0700 (PDT)
Received: from [172.30.204.255] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id l12-20020adfe9cc000000b003232380ffd7sm25522wrn.102.2023.10.26.11.42.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 11:42:55 -0700 (PDT)
Message-ID: <77314fe2-2936-4f89-a347-4eb288507c47@linaro.org>
Date: Thu, 26 Oct 2023 20:42:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] clk: qcom: ipq6018: add USB GDSCs
Content-Language: en-US
To: Robert Marko <robimarko@gmail.com>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20231025104457.628109-1-robimarko@gmail.com>
 <20231025104457.628109-2-robimarko@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025104457.628109-2-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 12:44, Robert Marko wrote:
> IPQ6018 has GDSC-s for each of the USB ports, so lets define them as such
> and drop the curent code that is de-asserting the USB GDSC-s as part of
> the GCC probe.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
Applying patches 1 and 3 without this one breaks usb, no?

Konrad

