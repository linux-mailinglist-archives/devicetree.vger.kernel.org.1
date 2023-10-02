Return-Path: <devicetree+bounces-5050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBE77B4F32
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 11:41:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id EC7F11C208AF
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 09:41:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BA42CA46;
	Mon,  2 Oct 2023 09:41:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6692BC2CC
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 09:41:07 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB09083
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 02:41:05 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-317c3ac7339so15647709f8f.0
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 02:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696239664; x=1696844464; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ybb+TX2Yr+4fdiR5/Q6ko6tUC5VumPuBodZb0zBeRPk=;
        b=dZlybY3GxEtLmRf6wF6BibYKiBJygGKJaY1yDfOv8Y7tNgvBgV/q6SqUnuQnUn6Jdp
         6VhDJurYzIB1z0ksUs2UjCGGwOQFuKDcvwhorgfrBRydiAR0gNJXhxjKM/0K83gOJFYr
         VE88X+pSgFHuA01LU2FloWNZjV83bB041S4eRjVMC0kKQiHNXPRCiG5PrThrpfkn6Wbu
         gKw8JjjHvKnpou4aoheJUBIHwLgcowsn8anV6jBDvh25USwybovvFwkQGX6rz+rufauP
         aHfEnRSJl1yaLiiPNcWBBZ66vg8DsjSCg2obe37WkN2CDGZbg/BQjynDjwMGKDyPgnxB
         Q83g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696239664; x=1696844464;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ybb+TX2Yr+4fdiR5/Q6ko6tUC5VumPuBodZb0zBeRPk=;
        b=OS5fIvIlei0nd7El9U6zBq1/c1fjvAuS7E9axooeolS/EOEN7BSzqmUrJDYHH8iEfS
         7YIRlhHZ5W+nVE9GrgCkJ8147ybpHin4PK3djwlp3Hvz2s+alzUR+Mf/NIArlmYnOwCF
         OlYNjIxcWzBimw19oJ9ZhZ4c9xx87Z9zEIr/QkJQMbONBBKxQiRxm9LU+cHfYWz6smSG
         QbjkLMYhg2GxvrQ/EiCzoVlIc8iVUCr9eIw655plD5/PQ+UFII7zKW32IYwb2y3r2rr6
         08pQ0xTUjA+pJ2NlHRsNk9ZV/XGTvi0ZTK/UEpB+1zLzzOoe8rNncnwQZYTb8TBjiBGq
         2NZQ==
X-Gm-Message-State: AOJu0YzNXtamEFghS0M6dHnPVAReCyz3gOUIYc0FlG4Kcyf38jjap2CZ
	yWDMnEyvq9svAl56ypckOqdo5Q==
X-Google-Smtp-Source: AGHT+IFomp7eeaOYOU4xGUyCwHb0n6mST0gZMRH5wBq7Z30l32U/tKw9twAwFWmBhEiwL6c7M/6veQ==
X-Received: by 2002:a5d:408b:0:b0:31a:d6cb:7f9d with SMTP id o11-20020a5d408b000000b0031ad6cb7f9dmr9717930wrp.24.1696239664047;
        Mon, 02 Oct 2023 02:41:04 -0700 (PDT)
Received: from [172.30.204.164] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f1-20020a5d50c1000000b003142e438e8csm27628559wrt.26.2023.10.02.02.41.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Oct 2023 02:41:03 -0700 (PDT)
Message-ID: <7c842030-ecc1-1302-4dfb-fc10f458f63d@linaro.org>
Date: Mon, 2 Oct 2023 11:41:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 5/6] ARM: dts: qcom: add device tree for Nokia Lumia
 735
Content-Language: en-US
To: Rayyan Ansari <rayyan@ansari.sh>, linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht,
 Dominik Kobinski <dominikkobinski314@gmail.com>,
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
 Jack Matthews <jm5112356@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
References: <20230930221323.101289-1-rayyan@ansari.sh>
 <20230930221323.101289-6-rayyan@ansari.sh>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230930221323.101289-6-rayyan@ansari.sh>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/1/23 00:08, Rayyan Ansari wrote:
> Add an initial device tree for the Nokia Lumia 735, codenamed
> "superman-lte".
> 
> Co-developed-by: Dominik Kobinski <dominikkobinski314@gmail.com>
> Signed-off-by: Dominik Kobinski <dominikkobinski314@gmail.com>
> Co-developed-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> Co-developed-by: Jack Matthews <jm5112356@gmail.com>
> Signed-off-by: Jack Matthews <jm5112356@gmail.com>
> Signed-off-by: Rayyan Ansari <rayyan@ansari.sh>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

