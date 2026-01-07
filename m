Return-Path: <devicetree+bounces-252322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 16AE3CFD705
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 12:40:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CF4623016929
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 11:40:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C626328B58;
	Wed,  7 Jan 2026 11:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="fl4TJ9c8";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="XFzFNzze"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE8E328627
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 11:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767786018; cv=none; b=phwdnBzPmHsmGaEiog2KyqDZcI/UWxAEQvOxykvCXYBDyroq9sCZdwmNq1J7Z2WhfBTzEN2nIHOxFfo7Iewpq4VhcbYos0G1ZiSPa/IPoY/sjGHFQ9gCA+ZDpz6Yj2I3xtkGXgRwLSRsAvpCaN7UxE1Q0wPKLF3oEGranJXiI1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767786018; c=relaxed/simple;
	bh=GUZ4Wx6kNbC4KqlRAQsAUWRwHERRG4ZUa5WYxp23ABc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ufk+f2m3Re/ncVNCmuCE84F//T5OSblQabXxunzPYDSOe9nB4SpVsFJFGXojLNT7Y2IFtAonqxm4YVvuPEEbsjOLfnUGG7HBXyYCoocvA90W/W4A5SJIGE72PbosEWF1C5y/8/7xJKDzRpOjsIaA9QIftzrWGJR9hcPBAS3IVv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=fl4TJ9c8; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=XFzFNzze; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767786014;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+eDzB+NxPTMSfU1QkUTyVqhC+G+UiTkNvq2nlq1j3r4=;
	b=fl4TJ9c88cVfIbj1z+RhJWdisHHY/qnM78jMvPF4IcGiUQTNS4xOs5aZRwwOEbORkSu+0G
	9rrdvzU4qeUKg+PsE9SBuhw0LYAeakFsYMcNsE8TgnSuVA9vd/LLEBrCzvwx9AGsreq0vt
	airY3mFK2cZ2xhmWzAJlyCLI2Xt5FeQ=
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com
 [209.85.210.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-336-Fqq_LzxJMJSI3GVjONdQHA-1; Wed, 07 Jan 2026 06:40:13 -0500
X-MC-Unique: Fqq_LzxJMJSI3GVjONdQHA-1
X-Mimecast-MFC-AGG-ID: Fqq_LzxJMJSI3GVjONdQHA_1767786012
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b952a966d7so4232702b3a.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 03:40:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767786012; x=1768390812; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+eDzB+NxPTMSfU1QkUTyVqhC+G+UiTkNvq2nlq1j3r4=;
        b=XFzFNzzeNfXZZTOKpttSnlTmHJK44fcGjIDuYbBISI0jwy4l7meCpQcwjUHsA0dB7R
         5uJlRcI9VZlKUPLmvBqnUSr8FMCUZ/rmwkmFEMYPFRwzLTCx64HlDMi+j/T+eNWfgVhe
         BPm2aaPgTaA2g9LNTpyfmE9+nKcKVfupZO3xoHuA+kelzLVbCftFmCvFh6Nnanwpr5rK
         mStZOD84Lf5iWeCXXzI56pMREMpDI53CyDCMp51KdhiLxV3yupzDZfY1pmVIAnMzzh34
         euneEsbXtzsk6JD3yQe8IA3fFruFIBu1gHIuGEAl5DsAxtWRva4jOPvvemRN9szEsw/t
         SekA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767786012; x=1768390812;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+eDzB+NxPTMSfU1QkUTyVqhC+G+UiTkNvq2nlq1j3r4=;
        b=LB+cBpF4HUNVlPKvQmW4MIsDofV9hQPAfJGWHXLAJ1rMoDboWgRs9BT8kXvJDKFJtS
         hknQm8cURHJmTjY0lp6oysAcdMLHf+AWPK1we6I/Up7ee8xMJQhaW87RCHRo9zmzw13C
         ZkgmWAqcoecnFXlC0LZD9q25hGzL+NDPOB0An+6D4+dlazRXhPX5b9cRtSpYqwzw6zs+
         sPgTWBF58MGxyBB4lLkBVL5t2iIon8eUcOLMP2IdCTox/QfcO5VC8pr8Ljn7UjmMy28G
         HKSPKOd/Q58CfDhoDAYFor2lVdE0VVD+8onRLBq8ioC26RbJcQ+lLNekzwPs0aMy3q0D
         gK5w==
X-Forwarded-Encrypted: i=1; AJvYcCWIGkst5xXphVgZb5arFQhjU9EC4CqgkNpoIz74dFbKBed8iUCCEUEgbvM4OFE1Wmrah5weWbbgoim9@vger.kernel.org
X-Gm-Message-State: AOJu0YyM61XLUwvUZ1pBduOk7laKj4EXYe9uF4lmAigGzXfz45qZVm4i
	Rj+78llgQeRVQyQLjgTzJb+SmcjpOz1fTQjfEOQkwToZldGMA+p2FzX2fz+3+EL9xug4Bgpt3Fu
	PYwI8CWmhZlSt1YBnmUom8vsdGbdb+aeCjf3U6BkL5nSiViLdizFgkrxBoDZmVRc=
X-Gm-Gg: AY/fxX4zTotb12xVgaJkjhoHMkvWFgjLC5P8W12wDiF3QwoeyEjsIzom0rkoXMPgZ58
	IIUB5v6zcyL5w1J1RjVLONW3Mqux/UhpDlK6L0ST77qLVIDuezFZXGuT02xfoxDmKFh817/n3wb
	IYo62CShPPW2gh9GwIpO3PwHkwplPljsAIeQcRKs1XbVo6FgwFX7JnOVdfaAtthvFotiM6x72cu
	rrVF6j5h6YozRO/vW485/yauyl2qM2tZKsHzjChfajoFLnKQ+OiT6UdibWHI385IiGQu3NI5A/V
	MTvE8QW5BI5PZGFbQ43PX8rEO/7S/ynNK5kvRrN6JGDr9WBmxR4VzGCOZez+RoBweYvU+Tvn3MJ
	Q
X-Received: by 2002:a05:6a00:1d20:b0:7aa:3642:2173 with SMTP id d2e1a72fcca58-81b7de5a491mr2214379b3a.31.1767786011726;
        Wed, 07 Jan 2026 03:40:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEGXM4qkZ9fSQv6m8Rd/JdXyBCGgbb2bJvKNCFco+IWIxgyQ+1wvGxJ3YwuXhQ9Ytpo9HhqWA==
X-Received: by 2002:a05:6a00:1d20:b0:7aa:3642:2173 with SMTP id d2e1a72fcca58-81b7de5a491mr2214356b3a.31.1767786011263;
        Wed, 07 Jan 2026 03:40:11 -0800 (PST)
Received: from localhost ([209.132.188.88])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c59df961sm4792767b3a.47.2026.01.07.03.40.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 03:40:10 -0800 (PST)
Date: Wed, 7 Jan 2026 19:39:24 +0800
From: Coiby Xu <coxu@redhat.com>
To: Rob Herring <robh@kernel.org>
Cc: kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>, Baoquan he <bhe@redhat.com>, Dave Young <dyoung@redhat.com>, 
	Kairui Song <ryncsn@gmail.com>, Pingfan Liu <kernelfans@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	open list <linux-kernel@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" <devicetree@vger.kernel.org>
Subject: Re: [PATCH] arm64/kdump: pass dm-crypt keys to kdump kernel
Message-ID: <aV49pPV3OViTDe8c@Rk>
References: <20251226141116.1379601-1-coxu@redhat.com>
 <CAL_JsqLEsUV34tMZWSMc6w-xDV=M0JpOmS95TxrtbbBMRoD3Jw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_JsqLEsUV34tMZWSMc6w-xDV=M0JpOmS95TxrtbbBMRoD3Jw@mail.gmail.com>

On Tue, Jan 06, 2026 at 09:44:37AM -0600, Rob Herring wrote:
>On Fri, Dec 26, 2025 at 8:11 AM Coiby Xu <coxu@redhat.com> wrote:
>>
>> Based on the CONFIG_CRASH_DM_CRYPT feature, this patch adds
>> LUKS-encrypted device dump target support to ARM64 by addressing two
>> challenges [1],
>>  - Kdump kernel may not be able to decrypt the LUKS partition. For some
>>    machines, a system administrator may not have a chance to enter the
>>    password to decrypt the device in kdump initramfs after the 1st kernel
>>    crashes
>>
>>  - LUKS2 by default use the memory-hard Argon2 key derivation function
>>    which is quite memory-consuming compared to the limited memory reserved
>>    for kdump.
>>
>> 1st kernel will add device tree property dmcryptkeys as similar to
>> elfcorehdr to pass the memory address of the stored info of dm-crypt
>> keys to the kdump kernel.
>
>Is there not any security issue with putting the key into the DT? The
>DT is provided to userspace. There's provisions already to not expose
>"security-*" properties to userspace (see __of_add_property_sysfs).
>Though I think that has a hole in that the FDT is also provided as-is.
>However, I don't even know who or what uses these properties.
>
>Rob

Hi Rob,

Thanks for raising the concern! If I understand DT correctly, this
property is only accessible to the kexec'ed kdump kernel. A new DT is
allocated and set up by of_kexec_alloc_and_setup_fdt. Btw, to be
precise, it's putting the memory address where the key is stored but
not the key itself into DT. The key is stored in the memory exclusively
reserved for kdump. For more info on by who and how this property will
used, I've created a dt-schema pull request as suggested by Krzysztof,
https://github.com/devicetree-org/dt-schema/pull/181

And yes, there is no need for even userspace of the kdump kernel to
access it. So this idea of "security-*" properties/__of_add_property_sysfs
seems desirable. Thanks for bringing it up! I'll give it a try.


-- 
Best regards,
Coiby


