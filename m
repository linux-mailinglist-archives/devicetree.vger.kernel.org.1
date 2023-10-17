Return-Path: <devicetree+bounces-9300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E50337CC8D5
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 18:29:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F5C1281812
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 16:29:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2E204735B;
	Tue, 17 Oct 2023 16:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tEDTo92L"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BEDB5380
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 16:29:35 +0000 (UTC)
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DDC8F7
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 09:29:34 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2bb9a063f26so74774041fa.2
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 09:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697560172; x=1698164972; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GwqQGMN0bypddmjCukp90urvyt3HMvtNQrPUO31Nj68=;
        b=tEDTo92LcVeFIYbGkXK/Ec7MwJ2Z+NPKM6SF0OFr1o9l4OCRWDFfvSXV0DspH07+K3
         kiJzrMHR3MPkAkf7/iflxjXdtF3Cb8M+4sl1UuVIyiH7M+fopRSO62r6PYjMJ/lHv78m
         oI6z81WGlpwPzWHqA01TkNpj2FMCrNVrlT/8sLmR25pcajlHCRM3nQU30GWJQJQBOI0u
         xOCoFoqHyfw5LSf0Zx4M2GvfEUD7/CT6b+Q7GJxpO4+oaw3NeDoXvO38H4hBpLCGlnFo
         JhlMnHbuXTXXJdX+HRmx9uUO7Lv3Qg4ajpeB+Z9qWRjeDHpE9ptgsEp4sriRo2w6LBfT
         s5iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697560172; x=1698164972;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GwqQGMN0bypddmjCukp90urvyt3HMvtNQrPUO31Nj68=;
        b=at0yuNrcrCU99lpyVLZZJUPyXUVx1rngVH6wXvwyDCQoDBnHmCi/igfwd57n0SUIgP
         W4R06NyIpXAmWfgvDkpNpuJxHpgm824/PUcxTqPVwaFPSAUXQFZPxQohJWGSt5U67wy9
         yOg559Ah+JVwV4IrlcbKpexCUP6/ILnHAC80ojeMKQOjmMcbrRN8g0UUtBwruhAl9MKy
         pM7HnzQ69tmwdiclm5HM7RX/SOrS/NHfV4n1+5lTfvyApOseZ7fTs/5mM+k1LVar2zSA
         Jrnqr34pytKUTG4yb8dRXXRTrjBSDO4grUIobed0h2AX82VhzP5l7KXe4V0ogjDpIF8G
         TXAA==
X-Gm-Message-State: AOJu0YwIgbqkFVPKZy5W/J3j7lDTOAJgbeusljFUH38L2UytOBt/3P5U
	XoPzaw8p1khus6h40CY3BoaA5dRJGRcGVFv5dCM=
X-Google-Smtp-Source: AGHT+IE6knn2uSQzDBY240t/lWRRIIzKQOj/ZXJZ5ZlJFnZ+aS5Zs+m/wIsdNKpb4NeemLWD+BdWdg==
X-Received: by 2002:a2e:9d42:0:b0:2c5:18ed:1802 with SMTP id y2-20020a2e9d42000000b002c518ed1802mr2054074ljj.34.1697560172301;
        Tue, 17 Oct 2023 09:29:32 -0700 (PDT)
Received: from [172.30.204.57] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id d15-20020a05600c34cf00b004063d8b43e7sm10257184wmq.48.2023.10.17.09.29.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Oct 2023 09:29:31 -0700 (PDT)
Message-ID: <2a8e20d9-2e00-4d89-ae99-87e5b49bb220@linaro.org>
Date: Tue, 17 Oct 2023 18:29:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 0/4] Enable TRNG for SA8775P and SC7280
Content-Language: en-US
To: Om Prakash Singh <quic_omprsing@quicinc.com>
Cc: neil.armstrong@linaro.org, agross@kernel.org, andersson@kernel.org,
 conor+dt@kernel.org, davem@davemloft.net, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org,
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, marijn.suijten@somainline.org,
 robh+dt@kernel.org, vkoul@kernel.org
References: <20231015193901.2344590-1-quic_omprsing@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231015193901.2344590-1-quic_omprsing@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/15/23 21:38, Om Prakash Singh wrote:
> Add device-tree nodes to enable TRNG for SA8775P and SC7280
> 
> *** BLURB HERE ***
Generally you want to delete this :)

Konrad

