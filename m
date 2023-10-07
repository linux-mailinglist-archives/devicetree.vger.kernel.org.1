Return-Path: <devicetree+bounces-6677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A2A7BC6BF
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 12:23:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 200DC1C20936
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 10:23:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27342182BD;
	Sat,  7 Oct 2023 10:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y8IVb66U"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9AA118047
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 10:23:26 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0ED0B92
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 03:23:25 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4066241289bso26814815e9.0
        for <devicetree@vger.kernel.org>; Sat, 07 Oct 2023 03:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696674203; x=1697279003; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B624f8viZ/1zkGyjy2K58RrXte57gw6qOrvl3O2Wa+0=;
        b=Y8IVb66UOMpgNmqcVUEfVZqt9DY6BfUwElAoXzaaBouMVWearm4g+SntJMwkLI/W+X
         VI52OCyr2OfdXeHY2Etf/+5eGtIwot2Feb4kutxSqsQzC8CIWsADwd7fEa8KgCHh0z+a
         Zv3kxH8UGIdbu2aqlUfO27fP09jeE326Q7VgD2oK43/9ZPARzxy0wS1vZMk+kjZ/kIL5
         dhvHNx9LTpNJV30VfzXHkdoq1IgEvmNwT1ESIpalqUVUkLefFd+h1UQjCTPFIBAdeLPV
         brkRjH7qvES/xUut+kdUoZVm4uPNDBdswoFf6TN745wKazQSGQ9IMOjmrIrnubPL1wMP
         hmtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696674203; x=1697279003;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B624f8viZ/1zkGyjy2K58RrXte57gw6qOrvl3O2Wa+0=;
        b=sSZ82OGd21kEBUI8gB4l78f9OhIQrKnayZgnR/1bd5OrjJkR4t1hE7FV5u/80BPmTN
         Hj2WaAL5EislUGPYCLAiUCOIe/hx7hOmWQbtjDrdYN8gxhZtruswXaM81Premmoj8N1k
         dXC+KaitYAfRFou2tPfcMeCethhmC5nKfUMKaawieopCYtel2f/QVT7nJcrhDEaHSkW2
         ZxUrkF9cwemjGT0TgtpnQXuQM4dNAqMc3XPji2JeABUnZW5F+OJeznZqewvb/K5kY5Af
         ///Yxa1qaj9eXaNq32lBvMVwmoYrtczo5nAHQqsfAZjk06IqSlAuh+b3YB3W+oSPZVB3
         RWmQ==
X-Gm-Message-State: AOJu0YySQV4pbymgBN754NpSAKHKHCjhobB8qkn6rR7Gn3AChCdkGpOw
	7IFfLPXgBOzK4kHjJwUj6iqlQketOAfoVeEuAD8=
X-Google-Smtp-Source: AGHT+IH5tRDEMzH77PCOgReSaBgOwSItxJaZ10MvMZHUttF7QLJu7fn2XqzRDfBQvlqR1JLyeKH2qw==
X-Received: by 2002:a7b:c397:0:b0:401:b53e:6c40 with SMTP id s23-20020a7bc397000000b00401b53e6c40mr9663375wmj.10.1696674203044;
        Sat, 07 Oct 2023 03:23:23 -0700 (PDT)
Received: from [172.20.10.4] (82-132-213-54.dab.02.net. [82.132.213.54])
        by smtp.gmail.com with ESMTPSA id q15-20020a7bce8f000000b00405391f485fsm5773401wmj.41.2023.10.07.03.23.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Oct 2023 03:23:22 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20230926164529.102427-1-robh@kernel.org>
References: <20230926164529.102427-1-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: nvmem: u-boot,env: Add missing
 additionalProperties on child node schemas
Message-Id: <169667420087.74713.7725505612482066059.b4-ty@linaro.org>
Date: Sat, 07 Oct 2023 11:23:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Tue, 26 Sep 2023 11:45:25 -0500, Rob Herring wrote:
> Just as unevaluatedProperties or additionalProperties are required at
> the top level of schemas, they should (and will) also be required for
> child node schemas. That ensures only documented properties are
> present for any node.
> 
> 

Applied, thanks!

[1/1] dt-bindings: nvmem: u-boot,env: Add missing additionalProperties on child node schemas
      commit: 8beb2ec54b65eb08891c9b9c23428712d46d8e15

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


