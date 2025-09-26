Return-Path: <devicetree+bounces-222008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F759BA503C
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 21:57:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E9A901B26E71
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 19:58:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95423283FC2;
	Fri, 26 Sep 2025 19:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b="aualodt1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADE841B87F0
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 19:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758916666; cv=none; b=vDPcuNW+It5zhjwoyXaPEDwSKqSIx3/XDsoq54qNmrk2rdraAALbx/WTPnRRMM1t+llR/MeONR6baMHNd9e2wqW6DzO4VTzjy+TZs2/0KTFOlMjQxCr+T5aq94dUZck8rxflfDnQRsMEym3zyP+U1zU0mseH5vFKAC5/UIU8zIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758916666; c=relaxed/simple;
	bh=Ul90A3WXVjVOQtEWkwJb9B/4dc313g79jNrBflolSiA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ENzSKNFSg4qfcK4j8RsLS/OlUSWPjtSD7cVujepMSFw5GR93uMDWhGtcE0ZJAF/EvPGwl6dpasek74ogPISQ8WUqPyQt8el1LSajmUZSxStp7s8JhmwjsWqz+Jhjc2K4hbAZzhW5j8Qu4/qpkSWxL1f+oMf1P5217Uil4WatuEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b=aualodt1; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-27d4d6b7ab5so39718735ad.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 12:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc.com; s=google; t=1758916664; x=1759521464; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zASiJDz4r3vYQO3vYDYkcyVx79ekhPk89WizJj5Iigg=;
        b=aualodt1PB8GaT0QZpHJ965PFhcpyeJMzNUBRv2XWnNdt8cTWcjm6LVoHEg9lgPvq6
         Y6EVSKbbIzLn2glHOMhnwdRI+uGTGtXVpahrRcWiz8UH2CigIEs9C9VAy2CVf1+gHd4X
         me8zwNTVU5hpTV56K2l1RaCqaFLP9yBlWK1W++wrjApNcXqbCyY/GedFNndGQN+Ppawx
         m/HBBSrQDK5TLjqWuTj+FSBJb8UWZQBUpT9DZRYnPKyyL2ZRhAxio3tpyq+kc8n4kJXc
         zpqCSBODWdqUUNvxKi3MeHwqODe4NSJ7bMNGFe+DcBX5Xq1c1XUcZRSHDsZu8Q7mIEar
         DZSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758916664; x=1759521464;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zASiJDz4r3vYQO3vYDYkcyVx79ekhPk89WizJj5Iigg=;
        b=bRVdOq3jF2ZKmF5dD5oGiVZeyW9oc8McvK6xpezNiNQtvl5l0ov46k/LNzSaaFpeY6
         uA0umV45F2ycBqGcnwJoRiBWeKe6hWwLDZ/zLgZRVq13C24tb35z4idE19sL9hojZ1J+
         PyvPcw0fHg2bV8mc7Qw7pun62GBggG8JVz8ao/pEOnp/drc6cuxdDDQ1IVB2pLzpUZF/
         ZH72Ijj1H1PH5TzwB7fCqhlUcjO5uqSzVYqLuk9bAHcXw8tBa7MzLyrIYK6d2l1A/APN
         Vob6TmtT2EG01evkxKkMh5Kx1A1ZEz9gvQnWFTIPqNV29r84uDz8XEdFgSdjJA21cL1b
         c8kA==
X-Forwarded-Encrypted: i=1; AJvYcCVFOXdd/7aGNfDWeS8smENTyfa7WN4MrM05AOh7G35De2UHJlZ9J7iB5lVLBTVUe55Llkxa2Y/b9+Nm@vger.kernel.org
X-Gm-Message-State: AOJu0YzyK/rIzGJIAEWm9PsFUZl4R/JVTVKvhV/rWL9rhUaiEiH7otPo
	bO3ZCWXX1O2XeirdmIsBGJ48ptvCUnBmDffGRLK33frvTLYOorYI+k2LkMy7/gRSMaY=
X-Gm-Gg: ASbGncsMpFt0sLmZ9dlEAXnCg8GNVEm/yo7jP1pMtAsFaQpFZxIuvCQq9EbcScEa8ih
	NFkz1wOp1g1RzWLTOy/w3Hz50VEYHgskqsuc2Lt0jQxWFyCVW2pAG/cXP0w5uBQqeKkxoIAm4Ar
	juS4dOdCPGl9NYyyPCykH+402ofYPAnEW1XD52Z5bWhqZIypNSlFDbFrCgDA8XAZY0+tysGYV1D
	zPUX9+IyVS1ZygiYWklNAgmn49yCrU+44pVrmI7n68oneX4QBuJIsoC3Ht/n1pRqdSmWruS8Q4/
	zbgzHpd6cLq4+w2KdJ7lyBi/YqMO5T+9ulSZwVdROTZPX0zX5eR8T7QbfdVqBx7gz9tPIOPnRn1
	0ExqtXnSh9rTCvlQvWlsOeJTBS+dHfNAFn5cbPRDdK55Co4L1mEM4pg==
X-Google-Smtp-Source: AGHT+IHlUtnIvbNYTp+NBwFL5kAnFfogcOgIaJtDWQxwNZ7YmExERR63uIq8FMCY+Zw0lEPHKpWKJg==
X-Received: by 2002:a17:903:28c:b0:26f:f489:bba6 with SMTP id d9443c01a7336-27ed4a5ec62mr76915745ad.50.1758916664000;
        Fri, 26 Sep 2025 12:57:44 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66d43ecsm62938985ad.24.2025.09.26.12.57.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 12:57:43 -0700 (PDT)
Date: Fri, 26 Sep 2025 12:57:40 -0700
From: Deepak Gupta <debug@rivosinc.com>
To: Charles Mirabile <cmirabil@redhat.com>
Cc: pjw@kernel.org, Liam.Howlett@oracle.com, a.hindborg@kernel.org,
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
Message-ID: <aNbwNN_st4bxwdwx@debug.ba.rivosinc.com>
References: <f953ee7b-91b3-f6f5-6955-b4a138f16dbc@kernel.org>
 <20250926192919.349578-1-cmirabil@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20250926192919.349578-1-cmirabil@redhat.com>

Hi Charles,

Thanks for response. Rest inline

On Fri, Sep 26, 2025 at 03:29:19PM -0400, Charles Mirabile wrote:
>Hi -
>
>Hoping that I got everything right with git-send-email so that this is
>delivered alright...
>
>Wanted to jump in to head off a potential talking past one another /
>miscommunication situation I see here.
>
>On Wed, Sep 24, 2025 at 08:36:11AM -0600, Paul Walmsley wrote:
>> Hi,
>>
>> On Thu, 31 Jul 2025, Deepak Gupta wrote:
>>
>> [ ... ]
>>
>> > vDSO related Opens (in the flux)
>> > =================================
>> >
>> > I am listing these opens for laying out plan and what to expect in future
>> > patch sets. And of course for the sake of discussion.
>> >
>>
>> [ ... ]
>>
>> > How many vDSOs
>> > ---------------
>> > Shadow stack instructions are carved out of zimop (may be operations) and if CPU
>> > doesn't implement zimop, they're illegal instructions. Kernel could be running on
>> > a CPU which may or may not implement zimop. And thus kernel will have to carry 2
>> > different vDSOs and expose the appropriate one depending on whether CPU implements
>> > zimop or not.
>>
>> If we merge this series without this, then when CFI is enabled in the
>> Kconfig, we'll wind up with a non-portable kernel that won't run on older
>> hardware.  We go to great lengths to enable kernel binary portability
>> across the presence or absence of other RISC-V extensions, and I think
>> these CFI extensions should be no different.
>
>That is not true, this series does not contain the VDSO changes so it can
>be merged as is.

Look at patch 23/27. It does have vDSO change. Although shadow stack
instruction are inserted as compiled flag for vDSO only when cfi config is
selected by user. Right now default is "No". So it won't impact anyone unles
user explicitly says "Yes".

>
>>
>> So before considering this for merging, I'd like to see at least an
>> attempt to implement the dual-vDSO approach (or something equivalent)
>> where the same kernel binary with CFI enabled can run on both pre-Zimop
>> and post-Zimop hardware, with the existing userspaces that are common
>> today.
>
>I agree that when the VDSO patches are submitted for inclusion they should
>be written in a way that avoids limiting the entire kernel to either
>pre-Zimop or post-Zimop hardware based on the config, but I think it
>should be quite possible to perform e.g. runtime patching of the VDSO
>to replace the Zimop instructions with nops if the config is enabled but
>the hardware does not support Zimop.

Why kernel need to do this extra work of carry two binaries and patching it
runtime?

If for instance we do this, and then this allow this kernel to be taken to
pre-Zimop hardware, it is assumed that entire userspace for such hardware
was compiled without shadow stack (thus no zimop). In that case, kernel
should have been compiled without CFI option.

Just for sake of thought exercise, let's say Fedora 43 is first release with
RVA23 compatiblity (zimop and shadow stack), there is no way this and future
release will be able to run on pre-zimop hardware. Unless redhat is going to
start two different binary distribution. One for pre-zimop and one for
post-zimop. If that would be the case, then compiling two different kernel for
such two different hardware would be least of the worry.

Only other usecase is of a seasoned kernel developer or build your own stuff
in embedded environment, those users can anyways are advanced users. But it
forces complexity on rest of kernel. There will be more extensions taking zimop
encodings in future, we will end up patching vDSO and keep this complexity
while rest of the userspace will not be patched and will be separate binary
distribution (if OS distros endup distributing multiple binaries per release)

>
>However, that concern should not hold up this patch series. Raise it again
>when the VDSO patches are posted.

As I said earlier, these changes default cfi config to No. So whenever this
is selected "Yes" by a distro, they can drive such patches (if there is a real
need)

>
>>
>> thanks Deepak,
>>
>> - Paul
>
>Best - Charlie
>

