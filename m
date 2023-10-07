Return-Path: <devicetree+bounces-6729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 806257BC906
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 18:14:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB6BF1C20935
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 16:14:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 444C0328A4;
	Sat,  7 Oct 2023 16:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eqqTQSth"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022FF8473
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 16:13:58 +0000 (UTC)
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1425AB9;
	Sat,  7 Oct 2023 09:13:56 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1c736b00639so23534325ad.2;
        Sat, 07 Oct 2023 09:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696695235; x=1697300035; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xkfU4bzU52zK6sm4tXBNFHasLcdSkI9FGxbIUj7r4CQ=;
        b=eqqTQSthJokUg63htNqxZ+dbHQ1x0LB9baTmxRedAEdBIg/O0g3Eis8uHkmicEmxM+
         DvTFU2EZFwiCR3IF5M55rFpXx4qXdBPUjVRf7spcdafhK9fTyZQOpi1cDlFuMFaubTQ1
         dF8Gg53GPrYfoSICsa7Edikx4/gCE/1Ipe3zAfpppCckZ0Vxa9fGVvVarqi6aOYaxH+G
         B73Tw6ku+crd9cOXy4Mi69diD/cgh22sEcYlrdWZb0zJ1JPDQnJ7BOc80tRtI2NFiaSu
         PZ254ZXs3IEOc7vpn357S7m1BjeGhCjeoNuIsJVE9BF+vOYDngQF+sjnjYWKOZM8vl3Q
         G5lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696695235; x=1697300035;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xkfU4bzU52zK6sm4tXBNFHasLcdSkI9FGxbIUj7r4CQ=;
        b=F5upGMOXcSqiGZTXPBkNOl1AEQIuRLDvkdm1BmSXoGwnDJuptPYItKUy9ta5Thfst/
         fe4cMggx49MM7zlzAeA3qoE053ILPW7Ub6I4mjnMkYc0+9M5ZQojQV5Rk7jKgHRefvXE
         +3mSzlwu+2War1XRY9DgWpOcj33UO8Fr2Ij4HHj0r6U0g5SB9LjbU8kuDhqpqh/E8isE
         v8i459jQBET6Y0Y9qaPapFOlimYQsdh6eEv3mIvLOG9ottk4GsbRUqmSpsIBn18r7MZn
         je03FuzogeYiclwGuNiUYbdJy/cbQdmgapi4C24yr94197cDXaad/SMNwKt0gVaTKuVf
         Hv1A==
X-Gm-Message-State: AOJu0Yydiye0L+P83lM++J9N8uKhMoLXggABnE1rmTRaq6EFpjYe2YHU
	7n6CdeKKFimXI0E22ao+/8w=
X-Google-Smtp-Source: AGHT+IHx7uW/3+I8klN2K9j0a2Ii8xQ7H7aYh/Wqy1ibZ2a6Vo4SN76zJlvZ3wv4/5mM5DjlT9Ez8Q==
X-Received: by 2002:a17:902:e5c7:b0:1c6:ec8:4c67 with SMTP id u7-20020a170902e5c700b001c60ec84c67mr11904346plf.18.1696695235460;
        Sat, 07 Oct 2023 09:13:55 -0700 (PDT)
Received: from [10.3.171.174] ([103.4.221.252])
        by smtp.gmail.com with ESMTPSA id i19-20020a170902eb5300b001c63429fa89sm6055800pli.247.2023.10.07.09.13.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Oct 2023 09:13:55 -0700 (PDT)
Message-ID: <2281f924-30d1-41c5-b105-d8d28aada5b2@gmail.com>
Date: Sat, 7 Oct 2023 21:43:03 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] input: add Adafruit Seesaw Gamepad driver
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-input@vger.kernel.org, devicetree@vger.kernel.org
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>,
 linux-kernel-mentees@lists.linuxfoundation.org
References: <20231007144052.1535417-1-anshulusr@gmail.com>
 <20231007144052.1535417-2-anshulusr@gmail.com>
 <a49deeb6-728c-4527-8399-57c52214e1d3@linaro.org>
From: Anshul Dalal <anshulusr@gmail.com>
In-Reply-To: <a49deeb6-728c-4527-8399-57c52214e1d3@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello Krzysztof,
Thank you very much for the review, I am planning to address the changes
in my next patch series though I had a question.

On 10/7/23 20:26, Krzysztof Kozlowski wrote:
> On 07/10/2023 16:40, Anshul Dalal wrote:
>> +
>> +static int seesaw_probe(struct i2c_client *client)
>> +{
>> +	int err;
>> +	struct seesaw_gamepad *private;
>> +	unsigned char register_reset[] = { SEESAW_STATUS_BASE,
>> +					   SEESAW_STATUS_SWRST, 0xFF };
>> +	unsigned char get_hw_id[] = { SEESAW_STATUS_BASE, SEESAW_STATUS_HW_ID };
>> +
>> +	err = i2c_master_send(client, register_reset, sizeof(register_reset));
>> +	if (err < 0)
>> +		return err;
>> +	if (err != sizeof(register_reset))
>> +		return -EIO;
>> +	mdelay(10);
> 
> Why 10? This should be explained somehow in the code.

The reason for the delay is to ensure the register reset process is
finished before going further. The reference Arduino driver from the
manufacturer also had a delay for the same amount though my hardware
unit worked fine till 5ms delay. Is there some kernel abstraction I
could use to indicate a short delay or will the previous explanation in
a comment above the line do?

Best wishes,
Anshul

