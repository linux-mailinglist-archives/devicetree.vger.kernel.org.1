Return-Path: <devicetree+bounces-27384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B6E81A216
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 16:19:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F49E281E12
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 15:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 531A240BE1;
	Wed, 20 Dec 2023 15:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b="KOD4t4d1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F07E48790
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 15:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dabbelt.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1d3f29fea66so3068915ad.3
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 07:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20230601.gappssmtp.com; s=20230601; t=1703085354; x=1703690154; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DaicGxNdPLRmyws5JYo3khT+Ac6LA4uoPj/EyTp1vA8=;
        b=KOD4t4d1cbKz6O/UHdgMMmcO5mzL3BIi4n4mymO5pLVeX2htVOlal20Ebv41F1CCLL
         Jj75u7DHlmh4s79Xw7uOx1uCqX2h06p8wLAHKLSGtQ6ryIUAJHxOlBXpt7Xvr4gApVhh
         +83vCXF6GOD60lyzqRaz4zchuVxz4SaaTT2Z8ou8/RTAH+6ixew57St1FXQrI3WUjSGq
         IB2cqIvLC8GmtoWS0TogLyHAkAF1WAKFs370L2SLankSOeg8aysnZ/h/jxBQZaz/pSaT
         /mTZ4FnpCpOhmKQCQL6XB7EMxDnY73/U002hAsjxONK6O4SkMVad+78H3EnjvTQ0w8z5
         y80g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703085354; x=1703690154;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DaicGxNdPLRmyws5JYo3khT+Ac6LA4uoPj/EyTp1vA8=;
        b=o+wlURhFCTXLCyRBpNbiglF4OfZJivgAxPQRAfKs9wg66RRhnDCql5yTwroWmPftUa
         zVp1lMGz96iw81uJ9qhapNB38Xqu4DbaU/ufsVx30BDzFuAcIMqYTIXF+NFIRrF/Jj/o
         Q81FdTWv2Axwe986I+nbwwnePFwm8mW9IOulfVbcWSufdTZFudvUa4aBZEL5ogYpYN0X
         xYlLqrGFfk8MzATGZrFqgcxcxKPk6kZ+cTY+8/cobWATNS2nGU9XDJ1tZaW4QBPZ34dS
         57sy7b7OLijYis1M/n+UNtZ8Rc4JHddNLp8/lts/+9AJKw6bgSLguLOC0XUPFP7VsXhn
         1ZnQ==
X-Gm-Message-State: AOJu0YydGBNNKkwm2JfVWxVVAj2v8sjeZEcu6jWHDkTxhTmwQ3TCPv+h
	Az1fUDfl7eVku8WdKF4GyOvE+Q==
X-Google-Smtp-Source: AGHT+IFUwtHVhBFKjQ1VGCUu1CwOKjDbVqBIOeKOWo6tZ0yd4Xvgr+rrVAmzxW439nZFpL+S0CaWVg==
X-Received: by 2002:a17:902:b108:b0:1d3:e7d3:d459 with SMTP id q8-20020a170902b10800b001d3e7d3d459mr1637507plr.29.1703085353873;
        Wed, 20 Dec 2023 07:15:53 -0800 (PST)
Received: from localhost ([12.44.203.122])
        by smtp.gmail.com with ESMTPSA id bi1-20020a170902bf0100b001cf594f71f3sm23003373plb.157.2023.12.20.07.15.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 07:15:53 -0800 (PST)
Date: Wed, 20 Dec 2023 07:15:53 -0800 (PST)
X-Google-Original-Date: Wed, 20 Dec 2023 07:15:51 PST (-0800)
Subject:     Re: [PATCH] dt-bindings: riscv: cpus: Add AMD MicroBlaze V compatible
In-Reply-To: <20231109-hardcore-empathic-dd95ccb2c878@spud>
CC: michal.simek@amd.com, linux-kernel@vger.kernel.org, monstr@monstr.eu,
  michal.simek@xilinx.com, git@xilinx.com, aou@eecs.berkeley.edu, krzysztof.kozlowski+dt@linaro.org,
  Paul Walmsley <paul.walmsley@sifive.com>, robh+dt@kernel.org, devicetree@vger.kernel.org,
  linux-riscv@lists.infradead.org
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Conor Dooley <conor@kernel.org>
Message-ID: <mhng-78b77d96-e318-45f5-9032-4a1bee73afcd@palmer-ri-x1c9a>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On Thu, 09 Nov 2023 09:15:09 PST (-0800), Conor Dooley wrote:
> On Mon, Nov 06, 2023 at 12:37:47PM +0100, Michal Simek wrote:
>> MicroBlaze V is new AMD/Xilinx soft-core 32bit RISC-V processor IP.
>> It is hardware compatible with classic MicroBlaze processor.
>> 
>> Signed-off-by: Michal Simek <michal.simek@amd.com>
>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> I thought I had already done so, but must have forgot to actually send
> the email.

Conor asked me to pick it up, it's over staged for testing.  Pretty much 
no chance it fails anything, so should show up on for-next soon.

>
> Cheers,
> Conor.
>
>> ---
>> 
>>  Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>> 
>> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
>> index 97e8441eda1c..7b077af62b27 100644
>> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
>> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
>> @@ -32,6 +32,7 @@ properties:
>>      oneOf:
>>        - items:
>>            - enum:
>> +              - amd,mbv32
>>                - andestech,ax45mp
>>                - canaan,k210
>>                - sifive,bullet0
>> -- 
>> 2.36.1
>> 

