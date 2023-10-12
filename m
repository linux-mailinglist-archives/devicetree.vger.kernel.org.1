Return-Path: <devicetree+bounces-8027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 698A87C6788
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:25:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6DF661C20D2B
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 08:25:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 557891CA99;
	Thu, 12 Oct 2023 08:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="QmoF2smy"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96AEB1C2BB
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 08:25:20 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BFE1BA
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 01:25:18 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4053e6e8ca7so2438705e9.1
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 01:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1697099117; x=1697703917; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K6Cp4djRUeDiEy4xZu86ZIvejwMtz2L6/IM29LKj8uQ=;
        b=QmoF2smy0daSDAlVrqBLDzs+dbYfM8bMnITEUKXAbs1WkSqqGAu4XcHFDvq7EM2k+M
         RN5WaXDzReUA1JxnRkVIO+CK/2mHDJ8C7Mp20qAlxYlQd9nRGGd1qgeaQ6NIda2c9K/1
         aLKz0ZzDlcue2h5Zu4utZxyP5UWDWq79BQQD8y2/V6Lat1Kybe9E/D5G841oL05Zu+tD
         RC74htkqRSoMzoGvKVX3KT58YjjfO82MFub0B2AKRD2MRPodo7P7Fa6GSTjysYnSzWir
         wXIQsqfKbo5GbKKt6UaHwpw4GEghcIdrq0/BG/HsvIV2irt7P6cLTVKE7dQnInYLGNp3
         rfnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697099117; x=1697703917;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K6Cp4djRUeDiEy4xZu86ZIvejwMtz2L6/IM29LKj8uQ=;
        b=bJZ+jS+c3EYBTRgJd+jTzXUpxAA01oauvFNa3UIOqsYKjLmlqjAa69QqMvnyYNZpAI
         U1uGU3Ck6+8PYxJTwDoxdwosfD+B6mU6WPjm+lR0vF1dS4RSeqWi5/ontTwdm7UGKvRm
         GjI4YTv5QmPK9Sm+YoPmZo0mq20K4LMP7hTruF0XuBh+ytHQ1viiQwNPiq7tPdTmZujA
         pwCodqVCBbOVlPeGrz1zcTnmZDtHo9rRJAoAI0wupDHd9S3HeYaoox1A0hZbKOY7z2me
         OgH+XcnC3nbmPlYVNM/RAzGHmBi/sRKozKNesL7EcJ2/4xb4Xlc9/aYOPXw6b9zul849
         sbRg==
X-Gm-Message-State: AOJu0YwltJ7/4Sb8WrnYOhgojpRLEVRO3VbCQDRTVicqJXtefHkFDwxk
	6KlHmmW83oH0ToU9zRew/nRK8w==
X-Google-Smtp-Source: AGHT+IHmcKJuJlt+r5jebp/RgAKP2nkKAOCLCYajd0uJf4+i35/c+xqERVY+pbY3bOhPGrRVc9HHoQ==
X-Received: by 2002:a05:600c:214f:b0:406:513d:738f with SMTP id v15-20020a05600c214f00b00406513d738fmr21048700wml.2.1697099116857;
        Thu, 12 Oct 2023 01:25:16 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:999:a3a0:3fed:c1e5:145f:8179? ([2a01:e0a:999:a3a0:3fed:c1e5:145f:8179])
        by smtp.gmail.com with ESMTPSA id n4-20020a5d4004000000b003197c7d08ddsm17766352wrp.71.2023.10.12.01.25.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Oct 2023 01:25:16 -0700 (PDT)
Message-ID: <8a4e0424-5bdb-4011-a7dc-8506c609384f@rivosinc.com>
Date: Thu, 12 Oct 2023 10:25:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 00/13] riscv: report more ISA extensions through
 hwprobe
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 Palmer Dabbelt <palmer@rivosinc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Jonathan Corbet <corbet@lwn.net>,
 Andrew Jones <ajones@ventanamicro.com>, Evan Green <evan@rivosinc.com>
References: <20231011111438.909552-1-cleger@rivosinc.com>
 <11d6a463-4e00-4407-9d93-2f9d190c4be3@rivosinc.com>
 <20231012-clanking-imagines-150a7c05f3f8@spud>
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20231012-clanking-imagines-150a7c05f3f8@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 12/10/2023 10:21, Conor Dooley wrote:
> On Thu, Oct 12, 2023 at 09:15:46AM +0200, Clément Léger wrote:
>> On second thought, maybe it would make more sense to squash all logical
>> commits together (dt-bindings, hwporobe, etc) with all the ISA
>> extensions in each. Tell me if you think it would be better.
> 
> I don't think there's anything wrong with the current approach.

Hi Conor,

Ok then, let's keep like this if there are no objection, I thought it
was a bit "too many" commits just for a few lines, but at least it's
unitary.

Thanks

Clément

