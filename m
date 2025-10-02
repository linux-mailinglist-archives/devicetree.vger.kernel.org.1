Return-Path: <devicetree+bounces-223428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB21BB495B
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 18:45:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 81FB74E1535
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 16:45:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AE14267B89;
	Thu,  2 Oct 2025 16:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b="MnCNTtKy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D24239E9A
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 16:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759423546; cv=none; b=ZK1daR9EdjJMoK5FWG2fMzWNcZ/WTA7xxS7KWgOCgxlf41HyWKKO7ABEErD23syoEur4CpW1l6bOm6q1Nyrin96V+j/cwMUJkwpMilO6JjZut7Ki2ykcaZDu/f7ZgRYVoGROilaajgZqd1XYCfk/E4PbZo1E+//F2mPHd3J0I98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759423546; c=relaxed/simple;
	bh=1A9QR3g98F/jojxQcsQCrmr26ivi3VklZB9Uaf1MTlU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nO2OXIhx3wC30oq3M2IdAws56rsduLup1vHLHLZrZ1ld1cMfdOMv8KSg2ZC5Qz47BzslKcc0jMyYFW3tRYv8DylwIY9s/QrZgDpMTP3XSfyM0U5pjFAosgxG3V8QxKBAOGlY5ORYwVb5udQPKYWSi45qPIKcgJMUqw3co/qUYBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b=MnCNTtKy; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-b49c1c130c9so841654a12.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 09:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc.com; s=google; t=1759423544; x=1760028344; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1A9QR3g98F/jojxQcsQCrmr26ivi3VklZB9Uaf1MTlU=;
        b=MnCNTtKyaUFuYYeEXqZEKsPn1vNDgYmRgHmoSDQ8pqXwUSDg16tnaJOgTbmxgYCSvL
         ttR2mJcpVSyIWsNEzqKaewCXI+Uay0LF2DDWupFbx5qC+TzrL3zZWA9hdFKOXXZVA5qK
         Y1FaX6+H91TwLVFtSs9nB4NLFg/L8P8mEIWc7t+8xMfrysxek/vB8TIdxtYPttEjse2z
         Y55kKHaAckwEyWi/CGg8BQ2bDzcVi95jfBDWStSUhFArx5zXdaw2gxxGx45GVeMuVQ4x
         DVR4wQa2JaTxA7N3eLWIVOtBzIDk3bxnp+uXhzQhEyT9dpbD3pRdCf9WzKl7ERe2SexX
         7DcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759423544; x=1760028344;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1A9QR3g98F/jojxQcsQCrmr26ivi3VklZB9Uaf1MTlU=;
        b=b7KwmtsNb0E6l8i5pT1HWGU+222SmCugSHR7/7yUJXafF7WU+V7mjSzQ1RqMW+xbR0
         zbRVFWC1UgSfJAKzeBkZIYI85jiEn82N9AVVbSoJKk8ek4CNc1yJOMqvrvlP6/VyTNUM
         Iz2wOSUqpPqoDTWm6gEX0Oh0sW4YE9EnwLdUrtrml2lvBAEt7FWy2j8EWBXoQfMeZN1a
         vpgkC3ssNuAkJPkKCCN+Btx86qnIi38aT9ySaCMdhDLyRQo+KlYdqOgauF+BhyaJcRNY
         +hDnIthDN0PCS59LjP7/GVQNj3ZaI7sHbdHZCwBa0Pm/9Sw1G+91vIjP1nwg9b0vbp+1
         ZcBA==
X-Forwarded-Encrypted: i=1; AJvYcCXH9Qs6VlSgdHGEfkWSvHNAhMYX6glgv8TqrHvtJKUWLgaWRqV0ljGw1P83UVQvkI/4aeAju6up8K4t@vger.kernel.org
X-Gm-Message-State: AOJu0YyY9J//s9kf9gliVmA/M5RN+WW+xXRv4LIDcTmOoYOO3SDUXiw4
	rS9WmeaIkoLMdTVb/WtNhVT3TYt/O4Tu2Oqhd1sfaXcOwXzWAiIhxfMz0pwd5a8CiV4=
X-Gm-Gg: ASbGncuLfDvH++NgVtl6SBoFxCSWwo9AiV4z+mi3COMnk/Hp2yGz/aEjfqYwalNXXgQ
	Ia+wVhbetErwZkcLb6dtpL63I8Wip9G1Mt+gzOJ6bhSYhx2kVJ5DHwFHrP0TnYca+AvLgsTZHy9
	EjNlt0ijGkTM4RCsx3Dv3vbMDTE2A9hul3v8v1ux8ZAsH5BNQc0w7yDayOCldxtnKVIzGi5wHca
	LMjH2/wKCtD3Bic9In/8Oyl4zYo7/YgFSeI2CoBL/2YpUn6IlIysnZqTB0Ie0gCYemD2W6O2tWY
	pmcre/zQz0phRJ7c7b+Zk9z/Kc7jy3lHhb/gxY++UkUrET5NwSAUXKhSvCtjK0HBa4zTf45/z8X
	KAaMPwllreIzllbBKM8jKThxFswH6V4eLV3GfcHhOwW7i0H80bFZUj4A9
X-Google-Smtp-Source: AGHT+IGOeNAivntNqMaBDACXUIJXINgHBVnHmalDozgA9lIHXQF1UAZCwzUqmrzChLzk9pEqivj7cA==
X-Received: by 2002:a17:90a:e70f:b0:32e:e186:726d with SMTP id 98e67ed59e1d1-339c27a1901mr8380a91.31.1759423544003;
        Thu, 02 Oct 2025 09:45:44 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339b4f3ceedsm2812742a91.18.2025.10.02.09.45.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 09:45:43 -0700 (PDT)
Date: Thu, 2 Oct 2025 09:45:40 -0700
From: Deepak Gupta <debug@rivosinc.com>
To: Florian Weimer <fweimer@redhat.com>
Cc: Charles Mirabile <cmirabil@redhat.com>, pjw@kernel.org,
	Liam.Howlett@oracle.com, a.hindborg@kernel.org,
	akpm@linux-foundation.org, alex.gaynor@gmail.com,
	alexghiti@rivosinc.com, aliceryhl@google.com,
	alistair.francis@wdc.com, andybnac@gmail.com, aou@eecs.berkeley.edu,
	arnd@arndb.de, atishp@rivosinc.com, bjorn3_gh@protonmail.com,
	boqun.feng@gmail.com, bp@alien8.de, brauner@kernel.org,
	broonie@kernel.org, charlie@rivosinc.com, cleger@rivosinc.com,
	conor+dt@kernel.org, conor@kernel.org, corbet@lwn.net,
	dave.hansen@linux.intel.com, david@redhat.com,
	devicetree@vger.kernel.org, ebiederm@xmission.com,
	evan@rivosinc.com, gary@garyguo.net, hpa@zytor.com,
	jannh@google.com, jim.shu@sifive.com, kees@kernel.org,
	kito.cheng@sifive.com, krzk+dt@kernel.org,
	linux-arch@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-kselftest@vger.kernel.org, linux-mm@kvack.org,
	linux-riscv@lists.infradead.org, lorenzo.stoakes@oracle.com,
	lossin@kernel.org, mingo@redhat.com, ojeda@kernel.org,
	oleg@redhat.com, palmer@dabbelt.com, paul.walmsley@sifive.com,
	peterz@infradead.org, richard.henderson@linaro.org,
	rick.p.edgecombe@intel.com, robh@kernel.org,
	rust-for-linux@vger.kernel.org, samitolvanen@google.com,
	shuah@kernel.org, tglx@linutronix.de, tmgross@umich.edu,
	vbabka@suse.cz, x86@kernel.org, zong.li@sifive.com
Subject: Re: [PATCH v19 00/27] riscv control-flow integrity for usermode
Message-ID: <aN6sNFBzx8NPU3Th@debug.ba.rivosinc.com>
References: <f953ee7b-91b3-f6f5-6955-b4a138f16dbc@kernel.org>
 <20250926192919.349578-1-cmirabil@redhat.com>
 <aNbwNN_st4bxwdwx@debug.ba.rivosinc.com>
 <CABe3_aE4+06Um2x3e1D=M6Z1uX4wX8OjdcT48FueXRp+=KD=-w@mail.gmail.com>
 <aNcAela5tln5KTUI@debug.ba.rivosinc.com>
 <lhu3484i9en.fsf@oldenburg.str.redhat.com>
 <aNxsWYYnj22G5xuX@debug.ba.rivosinc.com>
 <lhuwm5dh6hf.fsf@oldenburg.str.redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <lhuwm5dh6hf.fsf@oldenburg.str.redhat.com>

On Thu, Oct 02, 2025 at 01:45:48PM +0200, Florian Weimer wrote:
>* Deepak Gupta:
>
>> On Tue, Sep 30, 2025 at 11:20:32AM +0200, Florian Weimer wrote:
>>>* Deepak Gupta:
>>>
>>>> In case of shadow stack, it similar situation. If enabled compiler
>>>> decides to insert sspush and sspopchk. They necessarily won't be
>>>> prologue or epilogue but somewhere in function body as deemed fit by
>>>> compiler, thus increasing the complexity of runtime patching.
>>>>
>>>> More so, here are wishing for kernel to do this patching for usermode
>>>> vDSO when there is no guarantee of such of rest of usermode (which if
>>>> was compiled with shadow stack would have faulted before vDSO's
>>>> sspush/sspopchk if ran on pre-zimop hardware)
>>>
>>>I think this capability is desirable so that you can use a distribution
>>>kernel during CFI userspace bringup.
>>
>> I didn't get it, can you elaborate more.
>>
>> Why having kernel carry two vDSO (one with shadow stack and one without) would
>> be required to for CFI userspace bringup?
>>
>> If Distro is compiling for RVA23 CONFIG_RISCV_USERCFI has to be selected yes,
>> kernel can have vDSO with shadow stack. Distro can light this option only when
>> its compiling entire distro for RVA23.
>
>I think it boils down to whether you want CFI bringup contributions from
>people who do not want to or cannot build their own custom RVA23
>kernels.

How will they contribute to CFI bringup without having a CFI compiled usersapce?
If their userspace is compiled with shadow stack instructions and they can't take
this userspace to old hardware else it'll start faulting as soon as control is
given to userspace (first sspush or sspopcheck in userspace).

>
>Another use case would be running container images with CFI on a
>distribution kernel which supports pre-RVA23 hardware.

Container image with CFI will have glibc and ld (and all other userspace) also
compiled with shadow stack instructions in it. As soon as you take this
container image to a pre-RVA23 hardware, you won't even reach vDSO. It'll break
much before that, unless kernel is taking a trap on all sspush/sspopchk
instructions in prologue/epilogue of functions in userspace (glibc, ld, etc)

>
>Thanks,
>Florian
>

