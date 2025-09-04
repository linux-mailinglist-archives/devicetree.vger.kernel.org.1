Return-Path: <devicetree+bounces-213067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F26CB447FB
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 23:03:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A12095A699B
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 21:02:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F218D28E571;
	Thu,  4 Sep 2025 21:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Q4p+faGe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f227.google.com (mail-qk1-f227.google.com [209.85.222.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6583528DF2D
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 21:02:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757019751; cv=none; b=KUZrlHRJxQGRIS/kaPzJTLgtn4V0/+4KXVnl18CdHQHFInliOPIzaoo1BqhcGxb6z+wxzt+bgmbtMTZjKqZrkSAjU1mFsopv4BExumq2R+72tn1tSnwyQjhz8MchsH9WQhjd23+JPtTV1uebnMXmjvKbR227edQlatsQUZ1cUd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757019751; c=relaxed/simple;
	bh=5Ei1nYFy9rOFyR9SqTl5vXwgQSieYSpxExrDTBn06Xc=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=niwp7Bj2wIr90owaa+kJMqZbe8rfHpQqQp8OBIs4kCbbj0ZSrJrcMj54s2DdWtIrpRIT2eDfQhnQjdUEVhqvvVy/ZrLl/iNjJv3tWEunMMTmeZHDHy9NCb+Fg1MfJgQDOOTBw3XcDWb10ZI1ihNGAibIMB03ICnE9QXQaq6s0lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Q4p+faGe; arc=none smtp.client-ip=209.85.222.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qk1-f227.google.com with SMTP id af79cd13be357-81076e81a23so59369785a.3
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 14:02:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757019749; x=1757624549;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PRBZV5G/HcBkypwOLz8mqvMSu5Xawkw09o8QhoPdqzk=;
        b=Wy2TmbI69wHmpPv9YFE6Szlepq3f1RLcAZfoYBGl96bPK2x6DiY3PGsk6fStU1lrFH
         uoi7AoH7/kqvQKyuSsN3q0MRpjwfozl1FSCp/d0RQ+qy27z6s94Ej3+we5ndHHZjdnTE
         rfw8EcQ9gymSLYXJweR1uqOqDgV/+y6OLwadt3HHyEdAY98XacbTeP7UkS6c7gweXqDZ
         oHiNXaWJvoRrz+r9Ipb2puQnkBxDdCCeqZajnPmNLVgGIJpm7WfijoyhAm6f2ROR7bO9
         7WOQXagNcTAtkr3gDUoLYQPUmQzM/i0ty+03itIxXqj9xzdToeEO/dNNG7D111Qj24YS
         EWRw==
X-Forwarded-Encrypted: i=1; AJvYcCUAQs71taDZI8vjPryUo0TuOiQ5hdSXxIlyirAxaZFWwcI5QaewqtOrMNss7O8GPuxH0flNQQ2IMMMw@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/VdmVb/6Q+AqjthpKRbUKrPwNBR+r3ZnqndNjRyLA8CDuxmxF
	1XRQuoiabH4RPdIaqlQ7W5v/+PT+HNko22SdflO5L9irYWJaNk7YID8n+ZBSDDKiINimtj/JkMU
	JrIwmEP68XPselfQmIRil6qmGLzaBnHPyaBHL6zZhTTHfxdGEJvE4g+axszxLG3z0qMqDUS32cx
	WvrD7yBbKxyfBrvjmWAXMdEmgE7Bq52I5MYY638HxjYUDzPDzJ+eUbrgplOYSVfgMwNcigXp3oZ
	UxhsfLB65WTrvWy0AjzJw==
X-Gm-Gg: ASbGncvybUivS13DLunGIKF3FtkJcUSt/oe3szur5BSqvU+9US89gRXBPyW/3Qj5iTx
	WkctwjNT0mNYBcExYgYia4tNekf04Apum2hcdOmWP53czLB7bG7MbxPV3p+5cujb6VvPfLQglQs
	4w8eXN1+LVxJx9sWNBO6JtfhELg9NTIaziXBoWOHxoKNcPWkGmivcDcwBNE607EB6LlyzAlW0rj
	y2BWDWEqBJ1TKEiNAG5KhXp6qL2SRUUnSCLiK6hy0YjWHXf1/sIKm7Ie50IPNzUyYaJGPp/yPuj
	n8fU1L6z2PywvcSFwQsu6dM74bKxFLUQiEIRG2w9RuzD1Af95EdItKpGsRtFc2AVezHivWWZ4w2
	JV3cj79bOdyjBJ9K4eJddRhxeCw3RO2gWBFWKGG3a2FI6cEvBwtiF7RZ70tmSM572vwnmNnz51A
	oTwjCWwII=
X-Google-Smtp-Source: AGHT+IFdUhoKKUmri9YE+N7vs0EgQGCAHQ/49K4F6yxm3gbaRN7eFUXXwWoOaBQDqX0iDHTc94ecjObAhjUV
X-Received: by 2002:a05:620a:2905:b0:80a:72d7:f0cd with SMTP id af79cd13be357-80a72d7f201mr932908185a.56.1757019748821;
        Thu, 04 Sep 2025 14:02:28 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-101.dlp.protect.broadcom.com. [144.49.247.101])
        by smtp-relay.gmail.com with ESMTPS id af79cd13be357-80aaa73bc7asm23347885a.5.2025.09.04.14.02.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Sep 2025 14:02:28 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b49715fdfbso41052391cf.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 14:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1757019748; x=1757624548; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=PRBZV5G/HcBkypwOLz8mqvMSu5Xawkw09o8QhoPdqzk=;
        b=Q4p+faGeTc4aBsS3Q4RvOZY8fouqMSYWBlQlvcluCxl2+Zbait6Vd6vN6mCjNNU1Tc
         wu3yqtWGW9E7XRcMSsJ8+CGwHS4uuW479SmYrMNKoAm7P6Hf1m6ApvNazznu7Ftj4irH
         HaFMG2mcRApnCLDNRDKJV4qpTJrHQdAmEDFeg=
X-Forwarded-Encrypted: i=1; AJvYcCWWXzZ4UwNUpFTuUqgNM7lP1+r152C7aeoJ5JchhsgZ7+H+VC1yNmqAFajY8fsyn15uT2KFJwr4btly@vger.kernel.org
X-Received: by 2002:ac8:5e53:0:b0:4b3:48b2:aa9f with SMTP id d75a77b69052e-4b348b2b623mr131348371cf.50.1757019748005;
        Thu, 04 Sep 2025 14:02:28 -0700 (PDT)
X-Received: by 2002:ac8:5e53:0:b0:4b3:48b2:aa9f with SMTP id d75a77b69052e-4b348b2b623mr131347871cf.50.1757019747585;
        Thu, 04 Sep 2025 14:02:27 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b48f660517sm34712351cf.16.2025.09.04.14.02.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 14:02:26 -0700 (PDT)
Message-ID: <710ae88c-b1ea-4ccb-9fb9-1b30bb9a079f@broadcom.com>
Date: Thu, 4 Sep 2025 14:02:21 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH v4 3/3] arm64: defconfig: Enable BCM2712 on-chip pin
 controller driver
To: Andrea della Porta <andrea.porta@suse.com>, linus.walleij@linaro.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, wahrenst@gmx.net,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 iivanov@suse.de, svarbanov@suse.de, mbrugger@suse.com,
 Jonathan Bell <jonathan@raspberrypi.com>, Phil Elwell <phil@raspberrypi.com>
References: <cover.1756372805.git.andrea.porta@suse.com>
 <38704a5ab6913845bbf9178170e83004ab3e8fcf.1756372805.git.andrea.porta@suse.com>
Content-Language: en-US, fr-FR
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
In-Reply-To: <38704a5ab6913845bbf9178170e83004ab3e8fcf.1756372805.git.andrea.porta@suse.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 8/28/25 05:47, Andrea della Porta wrote:
> Select the on-chip pin controller driver for BCM2712 SoC.
> 
> On RapsberryPi 5 devices it is primarily needed to operate the
> bluetooth and WiFi devices, to configure the uSD interface
> and the power button.
> 
> Signed-off-by: Andrea della Porta <andrea.porta@suse.com>

Applied to defconfig-arm64/next, thanks Andrea.
-- 
Florian

