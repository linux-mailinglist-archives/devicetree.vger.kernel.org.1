Return-Path: <devicetree+bounces-70988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 218208D5467
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 23:15:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA7AC1F22973
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 21:15:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2676182D30;
	Thu, 30 May 2024 21:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b="TZMhwOHw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82DC145B3C
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 21:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717103593; cv=none; b=uqkpkASPo/WbQJY+UOn5ZVGpKntkX85DmPdNJC0TbA118e0sRFoW/H39lp4Z+ix8DOuBpQuRzyuqweDPjBZzjuXRqktDPSsKTUqDhiBVNE+orHR/zMgYMf8lbXrpIXIZdkDWML6jWzsm65LETqp3eZEY4g5Mp0BT+yhVsbC+dms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717103593; c=relaxed/simple;
	bh=ce8FpwxqQD62UnVP0DyeeRdfMHWhf0s5UptEAbc9/II=;
	h=Date:Subject:In-Reply-To:CC:From:To:Message-ID:Mime-Version:
	 Content-Type; b=gl9+Ulx0wo7VXDP500xyyHPv0uqsgMY0YD8TPba3i4E+FTRW1TKOlrqdSKud2dTz37g8BQZ5VQVN6riV+Ufe9nMk5N+j3Y1tYQYp84V21KiM5lyiiyS0NtGGnAT+TcxUAKjF9YHmPNndaKOm3S2uBrgNcQZibr8d6dCwy7i6c+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com; spf=pass smtp.mailfrom=dabbelt.com; dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b=TZMhwOHw; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dabbelt.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-6c3b5c5e32cso64899a12.1
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 14:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20230601.gappssmtp.com; s=20230601; t=1717103591; x=1717708391; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MUpctKvfevQrHdaGpIcM44yzfFl2nDayUUMZ29nidi4=;
        b=TZMhwOHwL9xF06fxbDZGgA/VlawJJeQ29ON4WsqrPqKbjILG+KlemVZNwLaglA4MWL
         u/f/Xj/pvrhVr2Jj9u6o+1NzRlAM1HVk7SgJhZiYkCwBi8CN3DRRKx8CvoYv/Bc2aeXf
         /DnUwhbdVQm97auyxTzMFzLo5ATLu9IPGzFEaqbWE8f6Fto72tUurZCzKmt7WOIiKH8y
         FxqiKhK7FXF2jfNFXpGT7jH4qcU1/zQLH+cET2/+6hw/R4Yg9RxlAJAmkQDFR1Qy6hkV
         wi2S2TfVtayi/LOi0uoUkz7+nD2hGF7xNVz6Oq6s7bCFncTQ0MfBJuYfkKRTrOHLlql7
         pBgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717103591; x=1717708391;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MUpctKvfevQrHdaGpIcM44yzfFl2nDayUUMZ29nidi4=;
        b=Dd2CVU1Nwqkc9I6nJ31P3RFV193613z44WKL8YK4CWPu2zPvErA+W+Pyh+5IxbabSM
         lxLpoWFV2DfgOFdaFpzsHRVpsDjosSm6bbR2UfdGQ1gVZN3BnJPKx8RHnD/+rl2oAOnY
         hOrTU2QEWJ7dMnHhsjCG58p85Gxek7Y/c+DNYKcXESPr80MFGkIp0kXFbNd2oUVKAeLL
         hDVK6Vke3ZPZg9GPbTOF3qLcU0Et1SYSdd2SQuFfESjWuY1j6o7E+tW960y5/UvOMlQx
         6ELloyj4fowOV1xLvPMdiMoLbWn4HpY2T2PCfKvXX0N49WGtRKnbolHxEWEzjsQ6IlVK
         U73Q==
X-Forwarded-Encrypted: i=1; AJvYcCWxCgf583W5epbFKs/WbCCuIVmdQZzs2b5APc8Zbt7WUDqqHLDLLfP+x9hjNEMiK1EybmftqKAtfwlcwaxbuPiEI3+TIExoTXzj0Q==
X-Gm-Message-State: AOJu0YxFLqQu7H+W35tXVgJ3sPgPfcAYAMM81c0H1cAWfXUNL6YFAzKB
	4we7RnTvlzPtma4QrbCPPFtY0kYvv7dtiCmzTwps3Qg5UoFfyo87XLewl0JRMjI=
X-Google-Smtp-Source: AGHT+IG5bEF7vqEE2pvUr7TZyQpWPRiOExDqlbLZlE02H6bgGUcM0bCR65XCXs/V68DITptuE8d6Mg==
X-Received: by 2002:a17:90a:c914:b0:2c1:b66c:d414 with SMTP id 98e67ed59e1d1-2c1b66cd54dmr2280707a91.36.1717103591073;
        Thu, 30 May 2024 14:13:11 -0700 (PDT)
Received: from localhost ([50.145.13.30])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c1c27e3a5asm210516a91.30.2024.05.30.14.13.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 14:13:10 -0700 (PDT)
Date: Thu, 30 May 2024 14:13:10 -0700 (PDT)
X-Google-Original-Date: Thu, 30 May 2024 14:13:08 PDT (-0700)
Subject:     Re: [PATCH v5 08/16] riscv: add ISA parsing for Zca, Zcf, Zcd and Zcb
In-Reply-To: <de2c9064-bb01-42b2-9c0f-884dcabf7c40@rivosinc.com>
CC: Conor Dooley <conor@kernel.org>, corbet@lwn.net,
  Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
  anup@brainfault.org, shuah@kernel.org, atishp@atishpatra.org, linux-doc@vger.kernel.org,
  linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, kvm@vger.kernel.org,
  kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org
From: Palmer Dabbelt <palmer@dabbelt.com>
To: cleger@rivosinc.com
Message-ID: <mhng-d5016935-99b6-4dc6-bbd2-ed84eb834f98@palmer-ri-x1c9a>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On Wed, 22 May 2024 00:20:09 PDT (-0700), cleger@rivosinc.com wrote:
>
>
> On 21/05/2024 21:49, Conor Dooley wrote:
>> On Fri, May 17, 2024 at 04:52:48PM +0200, Clément Léger wrote:
>>
>>> +static int riscv_ext_zca_depends(const struct riscv_isa_ext_data *data,
>>> +				 const unsigned long *isa_bitmap)
>>> +{
>>> +	return __riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_ZCA) ? 0 : -EPROBE_DEFER;
>>> +}
>>> +static int riscv_ext_zcd_validate(const struct riscv_isa_ext_data *data,
>>> +				  const unsigned long *isa_bitmap)
>>> +{
>>> +	return __riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_ZCA) &&
>>> +	       __riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_d) ? 0 : -EPROBE_DEFER;
>>> +}
>>
>> Could you write the logic in these out normally please? I think they'd
>> be more understandable (particular this second one) broken down and with
>> early return.
>
> Yes sure. I'll probably make the same thing for zcf_validate as well as
> removing the #ifdef and using IS_ENABLED():
>
> static int riscv_ext_zcf_validate(const struct riscv_isa_ext_data *data,
> 				  const unsigned long *isa_bitmap)
> {
> 	if (IS_ENABLED(CONFIG_64BIT))
> 		return -EINVAL;
>
> 	if (__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_ZCA) &&
> 	    __riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_f))
> 	       return 0;
>
> 	return -EPROBE_DEFER;
> }

Are you going to send a v6 (sorry if I missed it, I'm trying to untangle 
all these ISA parsing patch sets).

>
>>
>> Otherwise,
>> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
>>
>> Cheers,
>> Conor.

