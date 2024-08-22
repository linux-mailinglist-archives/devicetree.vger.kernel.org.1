Return-Path: <devicetree+bounces-95956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B823C95C11F
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 00:50:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E00F5B211BE
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 22:50:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 653E01D0DF0;
	Thu, 22 Aug 2024 22:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="cuwZamvk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC52B17E006
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 22:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724367008; cv=none; b=mgiy8Cs+08z+SYTGR2BslkL0M9SiZJaEbHUpooIp8xs3YWkbFx7lhu+If86KNVRBpXTuuKyZ4vTogDMOPqiKOjv0/ZFsqLjNwY8FR/KbJBjKZ0ZyFB1yzI6bk1EUXn20Elu42GEsR4yjt9XcHUbwwyjyfVtVD0WPTbJE7Ctdb48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724367008; c=relaxed/simple;
	bh=oYtS2rcf7OFCRH9CwmT4584HB1yPYflg6BijR7xb+2s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E+BoOlzkEZQvCmaMN2M0SKqCWJb76tbqAEYc6jDZIfDaAEfxhtSB8JfpCYtusUepmGLOvLoL7XYTuRpLGBTo78phf4sX8xdMPwp5927jiIh4fxw4aB4pMhI5/WpEIe5dU8EVOpiEBm30TciVe0fTVaeomwXad1TQ8+b7nRSxOsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=cuwZamvk; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-7cd9cfe4748so829875a12.2
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 15:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1724367006; x=1724971806; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=RxNjKinkqwLfidKToMeOZNU0vXvDNGFrw9+p08YBIlM=;
        b=cuwZamvkebwLfrU/tKq/C3ukTAjgecPYa6feaiiqen1Yr4BSERqLRjd8hWmtjleMTB
         RPx8O3NduY3xojqjVcwkuDFqxEtrcFmlU3u3nwLxkCX2h+HfeNZ08yfNl80h8sODBdYS
         Wy5TycbkH6ULOdbfIJODb3yVJyMT/BCJg2QOk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724367006; x=1724971806;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RxNjKinkqwLfidKToMeOZNU0vXvDNGFrw9+p08YBIlM=;
        b=M72PIU3uYzjVcUMNO5Hi8+zIMzAdU07SWWA6Sb1jZqs3kI+fmkxliWtBjyEgzwk1HN
         Cv1GMNpo5TrCf03sQz27YJOZkUyklZuK3kGmmrM+NIDp5F7ulE87R35XcD4OFNDwhHJe
         0MToLbQ2gLF7sa4RSqqKXPowM+0uUE+OEBgxZ/wiWARLEedNBqY2nSSEjRYVGPffUlDn
         uBgLJpcgNPjvcP9RkPl0T5E4u6Sv/jLEeF2W4+n5ufD55mBMcHv5ZyIlBjajeL7RVXG7
         nDAeVRDbujKtEE43itZM9Sp6oZGhh2ur6Q2ni6jcNcegvbYdqRoefals9xJgW1nXj7pp
         MBbA==
X-Forwarded-Encrypted: i=1; AJvYcCUbzIFW/bdD7pCm7Ao+8TzYy6/gSc+VIGU2yfbMZy5KD9mp5y7aliZGtzSzjYjZ73GR469+B+FjfsDP@vger.kernel.org
X-Gm-Message-State: AOJu0Yxh32wPcMeIlL2x7fQfF1D+eQ+7xaEutMSkKaSWSU/siWHkKsKg
	jq1Tcv7VDnr/i1vSPR+A6dY3wpd1B9ISAVB7aywF6Tpgxbsr+37hKCoNJ3YP3Q==
X-Google-Smtp-Source: AGHT+IHOEF0hiQab41QuNo3MnvSCcDrKTChsVdcKNB3csU17laJnFOUwO4poC/pQI2sZfvxXohbIqA==
X-Received: by 2002:a05:6a20:4394:b0:1c6:9fe9:c425 with SMTP id adf61e73a8af0-1cc8b61b4b7mr526163637.45.1724367005761;
        Thu, 22 Aug 2024 15:50:05 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-203855664e2sm17414465ad.30.2024.08.22.15.50.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Aug 2024 15:50:04 -0700 (PDT)
Message-ID: <078bc5ee-e591-427b-a9fe-9386738a847f@broadcom.com>
Date: Thu, 22 Aug 2024 15:50:03 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] firmware: arm_scmi: Support 'reg-io-width'
 property for shared memory
To: Sudeep Holla <sudeep.holla@arm.com>
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Cristian Marussi <cristian.marussi@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "open list:SYSTEM CONTROL & POWER/MANAGEMENT INTERFACE"
 <arm-scmi@vger.kernel.org>, justin.chen@broadcom.com, opendmb@gmail.com,
 kapil.hali@broadcom.com, bcm-kernel-feedback-list@broadcom.com
References: <20240816224221.3256455-1-florian.fainelli@broadcom.com>
 <20240816224221.3256455-3-florian.fainelli@broadcom.com>
 <ZscW_E33YXF8Nx7r@bogus>
Content-Language: en-US
From: Florian Fainelli <florian.fainelli@broadcom.com>
Autocrypt: addr=florian.fainelli@broadcom.com; keydata=
 xsBNBFPAG8ABCAC3EO02urEwipgbUNJ1r6oI2Vr/+uE389lSEShN2PmL3MVnzhViSAtrYxeT
 M0Txqn1tOWoIc4QUl6Ggqf5KP6FoRkCrgMMTnUAINsINYXK+3OLe7HjP10h2jDRX4Ajs4Ghs
 JrZOBru6rH0YrgAhr6O5gG7NE1jhly+EsOa2MpwOiXO4DE/YKZGuVe6Bh87WqmILs9KvnNrQ
 PcycQnYKTVpqE95d4M824M5cuRB6D1GrYovCsjA9uxo22kPdOoQRAu5gBBn3AdtALFyQj9DQ
 KQuc39/i/Kt6XLZ/RsBc6qLs+p+JnEuPJngTSfWvzGjpx0nkwCMi4yBb+xk7Hki4kEslABEB
 AAHNMEZsb3JpYW4gRmFpbmVsbGkgPGZsb3JpYW4uZmFpbmVsbGlAYnJvYWRjb20uY29tPsLB
 IQQQAQgAywUCZWl41AUJI+Jo+hcKAAG/SMv+fS3xUQWa0NryPuoRGjsA3SAUAAAAAAAWAAFr
 ZXktdXNhZ2UtbWFza0BwZ3AuY29tjDAUgAAAAAAgAAdwcmVmZXJyZWQtZW1haWwtZW5jb2Rp
 bmdAcGdwLmNvbXBncG1pbWUICwkIBwMCAQoFF4AAAAAZGGxkYXA6Ly9rZXlzLmJyb2FkY29t
 Lm5ldAUbAwAAAAMWAgEFHgEAAAAEFQgJChYhBNXZKpfnkVze1+R8aIExtcQpvGagAAoJEIEx
 tcQpvGagWPEH/2l0DNr9QkTwJUxOoP9wgHfmVhqc0ZlDsBFv91I3BbhGKI5UATbipKNqG13Z
 TsBrJHcrnCqnTRS+8n9/myOF0ng2A4YT0EJnayzHugXm+hrkO5O9UEPJ8a+0553VqyoFhHqA
 zjxj8fUu1px5cbb4R9G4UAySqyeLLeqnYLCKb4+GklGSBGsLMYvLmIDNYlkhMdnnzsSUAS61
 WJYW6jjnzMwuKJ0ZHv7xZvSHyhIsFRiYiEs44kiYjbUUMcXor/uLEuTIazGrE3MahuGdjpT2
 IOjoMiTsbMc0yfhHp6G/2E769oDXMVxCCbMVpA+LUtVIQEA+8Zr6mX0Yk4nDS7OiBlvOwE0E
 U8AbwQEIAKxr71oqe+0+MYCc7WafWEcpQHFUwvYLcdBoOnmJPxDwDRpvU5LhqSPvk/yJdh9k
 4xUDQu3rm1qIW2I9Puk5n/Jz/lZsqGw8T13DKyu8eMcvaA/irm9lX9El27DPHy/0qsxmxVmU
 pu9y9S+BmaMb2CM9IuyxMWEl9ruWFS2jAWh/R8CrdnL6+zLk60R7XGzmSJqF09vYNlJ6Bdbs
 MWDXkYWWP5Ub1ZJGNJQ4qT7g8IN0qXxzLQsmz6tbgLMEHYBGx80bBF8AkdThd6SLhreCN7Uh
 IR/5NXGqotAZao2xlDpJLuOMQtoH9WVNuuxQQZHVd8if+yp6yRJ5DAmIUt5CCPcAEQEAAcLB
 gQQYAQIBKwUCU8AbwgUbDAAAAMBdIAQZAQgABgUCU8AbwQAKCRCTYAaomC8PVQ0VCACWk3n+
 obFABEp5Rg6Qvspi9kWXcwCcfZV41OIYWhXMoc57ssjCand5noZi8bKg0bxw4qsg+9cNgZ3P
 N/DFWcNKcAT3Z2/4fTnJqdJS//YcEhlr8uGs+ZWFcqAPbteFCM4dGDRruo69IrHfyyQGx16s
 CcFlrN8vD066RKevFepb/ml7eYEdN5SRALyEdQMKeCSf3mectdoECEqdF/MWpfWIYQ1hEfdm
 C2Kztm+h3Nkt9ZQLqc3wsPJZmbD9T0c9Rphfypgw/SfTf2/CHoYVkKqwUIzI59itl5Lze+R5
 wDByhWHx2Ud2R7SudmT9XK1e0x7W7a5z11Q6vrzuED5nQvkhAAoJEIExtcQpvGagugcIAJd5
 EYe6KM6Y6RvI6TvHp+QgbU5dxvjqSiSvam0Ms3QrLidCtantcGT2Wz/2PlbZqkoJxMQc40rb
 fXa4xQSvJYj0GWpadrDJUvUu3LEsunDCxdWrmbmwGRKqZraV2oG7YEddmDqOe0Xm/NxeSobc
 MIlnaE6V0U8f5zNHB7Y46yJjjYT/Ds1TJo3pvwevDWPvv6rdBeV07D9s43frUS6xYd1uFxHC
 7dZYWJjZmyUf5evr1W1gCgwLXG0PEi9n3qmz1lelQ8lSocmvxBKtMbX/OKhAfuP/iIwnTsww
 95A2SaPiQZA51NywV8OFgsN0ITl2PlZ4Tp9hHERDe6nQCsNI/Us=
In-Reply-To: <ZscW_E33YXF8Nx7r@bogus>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/22/24 03:46, Sudeep Holla wrote:
> Hi Florian,
> 
> Sorry for getting late to this party, I wasn't able to review this before.
> Overall changes look correct. But my main concern is that is SCMI the right
> place to have such IO accessors. It is better to run it through Arnd if
> he is happy with it before I send him the pull request containing these.

Sure, would definitively want more eyes to review.

> 
> On Fri, Aug 16, 2024 at 03:42:21PM -0700, Florian Fainelli wrote:
>> Some shared memory areas might only support a certain access width,
>> such as 32-bit, which memcpy_{from,to}_io() does not adhere to at least
>> on ARM64 by making both 8-bit and 64-bit accesses to such memory.
>>
> 
> Is this limitation on the hardware for both read and writes ?

This applies to both reads and writes. We have to make accesses on a 4 
byte boundary and of exactly 4 bytes in size.

> The reason I ask is I see arm64 does have memcpy_toio_aligned() or
> __iowrite32_copy_full() for 32 bit aligned writes.
> 

That appears to work nicely on ARM64 and ARM 32-bit, thanks for the 
suggestion! One needs to be careful that __io{read,write}32_copy takes 
32-bit units, not bytes!

FWIW, here is my diff between v3 and v4:

diff --git a/drivers/firmware/arm_scmi/common.h 
b/drivers/firmware/arm_scmi/common.h
index 73bb496fac01..a13f79b37c99 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -319,9 +319,9 @@ enum scmi_bad_msg {
  /* Used for compactness and signature validation of the function 
pointers being
   * passed.
   */
-typedef void (*shmem_copy_toio_t)(volatile void __iomem *to, const void 
*from,
+typedef void (*shmem_copy_toio_t)(void __iomem *to, const void *from,
                                   size_t count);
-typedef void (*shmem_copy_fromio_t)(void *to, const volatile void 
__iomem *from,
+typedef void (*shmem_copy_fromio_t)(void *to, const void __iomem *from,
                                     size_t count);

  /**
diff --git a/drivers/firmware/arm_scmi/shmem.c 
b/drivers/firmware/arm_scmi/shmem.c
index aded5f1cd49f..e9f30ab671a8 100644
--- a/drivers/firmware/arm_scmi/shmem.c
+++ b/drivers/firmware/arm_scmi/shmem.c
@@ -35,33 +35,25 @@ struct scmi_shared_mem {
  };

  static inline void shmem_memcpy_fromio32(void *to,
-                                        const volatile void __iomem *from,
+                                        const void __iomem *from,
                                          size_t count)
  {
-       while (count) {
-               *(u32 *)to = __raw_readl(from);
-               from += 4;
-               to += 4;
-               count -= 4;
-       }
+       WARN_ON(!IS_ALIGNED((unsigned long)from, 4) ||
+               !IS_ALIGNED((unsigned long)to, 4) ||
+               count % 4);

-       /* Ensure all reads from I/O have completed */
-       rmb();
+       __ioread32_copy(to, from, count / 4);
  }

-static inline void shmem_memcpy_toio32(volatile void __iomem *to,
+static inline void shmem_memcpy_toio32(void __iomem *to,
                                        const void *from,
                                        size_t count)
  {
-       while (count) {
-               __raw_writel(*(u32 *)from, to);
-               from += 4;
-               to += 4;
-               count -= 4;
-       }
+       WARN_ON(!IS_ALIGNED((unsigned long)to, 4) ||
+               !IS_ALIGNED((unsigned long)from, 4) ||
+               count % 4);

-       /* Ensure all writes to I/O have completed */
-       wmb();
+       __iowrite32_copy(to, from, count / 4);
  }

  static struct scmi_shmem_io_ops shmem_io_ops32 = {
@@ -73,13 +65,13 @@ static struct scmi_shmem_io_ops shmem_io_ops32 = {
   * pre-processor.
   */
  static inline void shmem_memcpy_fromio(void *to,
-                                      const volatile void __iomem *from,
+                                      const void __iomem *from,
                                        size_t count)
  {
         memcpy_fromio(to, from, count);
  }

-static inline void shmem_memcpy_toio(volatile void __iomem *to,
+static inline void shmem_memcpy_toio(void __iomem *to,
                                      const void *from,
                                      size_t count)
  {

-- 
Florian


