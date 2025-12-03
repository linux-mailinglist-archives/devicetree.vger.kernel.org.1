Return-Path: <devicetree+bounces-244090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 155C1C9FFA0
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 17:34:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 185CC3003522
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 16:32:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C7B23A1CFA;
	Wed,  3 Dec 2025 16:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="kTxOzvQF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6C53A1CF2
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 16:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764779543; cv=none; b=AjshROBkviK/AoSIizdbK4U1o+odfaj2rTJPsowbmnYNDRbwDwNFWIT84HCfjca7ngitD18W5O8+JXyI8sLQ5jbLMEqZKzkffpGRopD+L+wqExqz4CX9DP7SPzOLVgk8GvlnTVVwZHHlopZaj9U+VdG6ritkVYOYes4vcjhbj0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764779543; c=relaxed/simple;
	bh=l0gnY/UzSbFUAuDU1KntIMiLjASuWWo0nEVW8bui9Tk=;
	h=Message-ID:Date:MIME-Version:To:Cc:References:Subject:From:
	 In-Reply-To:Content-Type; b=IruElgZAfk4GWZ52r+itcdYdSqhvoCFUBpqQS5ikxpEeJYlFuYGFE5CG2IOEp0kNm3c17Ba5DnR0IDivL1x89kJcUkZuRU70SuSeKkRyqkEBYmIEx8ryHfV9VXS+yPxtLgEfXd2B2XUqFoRhn/27WjR8TMXIBnVSN+upl+NMi4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=kTxOzvQF; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 8157A401D1
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 16:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1764779484;
	bh=l0gnY/UzSbFUAuDU1KntIMiLjASuWWo0nEVW8bui9Tk=;
	h=Message-ID:Date:MIME-Version:To:Cc:References:Subject:From:
	 In-Reply-To:Content-Type;
	b=kTxOzvQFwwFYahBIdvD+Q0qvBMRKooVbSEzIrDSyXsjQkiDbMfEgzbj+Rxi7qzl++
	 xF/Wwgk9KQee0ysVwVocI/GSM3WUsz49OKtsfE/lrt57IvQDjgLBNvnTGnpsYBEbIp
	 wOw3Hz3YdRNrLvNTnsrZv4SfeX7Iv845zLaRTRy9M32rN/AwmX63DwJVz3U/x/mH8Q
	 u32+jM7yWmESVEAErzupgYKp9rBPWKT021itDBARXMGaJvCHrNZfU2aTpRumLDYvCs
	 m1qEvW9eBCiECNJq6YiqjMmwqjPZt4qsjVpn7NVDopCvOkV0t0FwT2kQtzJzsAVtRX
	 Q5Fq6os9nM39CxdXxXL5W1QwrPwzn5CAp6d383j6ZJvNrhcuceCnTvh4LJmErcOnh1
	 6EGU7X6zBpYgPv9qkK0TaoeJCcnDnvXdrvF1XEacCVv0l+YmU4srBUDFvWYUghfd3J
	 Ukl71JUqpPq2aCcun0ujg9IGf9MHd0U0SDMARUs3gBBn4df87hSnd35X3D+7gq7VHf
	 Kp4ITOUFahfiCNSOTHivj/9twGRY9VYNv48hAKI7hely2r/Ql7TrjFn8mq1ADko22q
	 D1D4M7p5BNDOIspBJzOIhN1bGkrKfui59V8YZ8rv3feVbzdqVQf6nx0jzVwMiy4ouo
	 PPkiOJm+7TGV62FmfkacNBWI=
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-477563a0c75so40632425e9.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 08:31:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764779476; x=1765384276;
        h=content-transfer-encoding:in-reply-to:from:content-language:subject
         :references:cc:to:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l0gnY/UzSbFUAuDU1KntIMiLjASuWWo0nEVW8bui9Tk=;
        b=pjEb8DJ+oqJ2BLN4TwzXVHOl4lcQx2vieJtx0/2Zrf/mTGWcJ5es75mPOBq9jaNNz+
         ETWIEpNsKZMsDdvqI6HU0xnL8Dnx79HPb1LHNFn9Y8x9pWIe+DMU0XA527kYhueINrdS
         cOvyELl53ltf+nK9/e/synWORnTuomiec9UAqxl5qPF8N5w926sbfUBS6L6dlF3O8CZQ
         9je3j/PdvxtUGVX7ZUuVoZncyNT68gMpIwQeoRLyMJCbFaR8zbgnHXNF6BU9XPnA+8Gy
         v3My0otAr+mhVcS28MpTVEpi27TPV3Pe+eeAMiW0uSCO7IFSyZ9inwjgLfhVhbby7OEO
         2XIA==
X-Forwarded-Encrypted: i=1; AJvYcCXgugwztD7t55jQSVaZdEAiuCTkWl+AZuntGp2idK6XGMvyL9Cz5QRQEQRX7w94ajdmxRg1FJf2CCdX@vger.kernel.org
X-Gm-Message-State: AOJu0YzguJC/2PUuZYVj6UCkPDM3wWlv6C/4lARQ7US+qpZ5i268mdh3
	jQdt+Lb/veuhwI7R4F1/FM0FKJ33T6/KY2tFqSHCjOtleAOQnG7gL67HtVr7GJvTZ0i1LLHQ6ev
	ogHScN5K7CQqMPKzf2obe9u6/mz4VuvfOJqiOmU4GQT0bJipwVmoYogT3x285zlSyovgLNTrdC9
	E/Vbk=
X-Gm-Gg: ASbGncujiZepkjqILubED4LbUyxHDXOheElTFh/H2P9mSKDg3lDLA1HDgtoVTqK8aM1
	mUqS5yUIiZs98oszPl7M4Fe03B3aoCMI4n6zU0GoHVRV1sI2Kq98qG3rRWkKQ+pV3iV42pQ3f9I
	DEkPM2uSKi4iiAwdpGpyQSPssF2yXA2VzE037nkpWsxRuiL+51p63ta1DDSRNpkwrD153PR31Mm
	c8Qub4odmiWpmG3Mvk95b6tOeNUBirUXKzv4XlCyVv7D43aCi5SJAfB49gIDNhcrd9GacGEBDYZ
	s5kfXqZW0E8dB2JBOoNvnj7uieO9g+A2q04HttewIgPFp/hJFd3DL6cw5NsoqrUYgAR1kNV0Dli
	TOzN6R+FYFPAFo3koFVDvM83b4EJUthErCKUB8pqIojtmmeL1Hb1Wv/qEbQHZFC09AD8QjwH6vi
	s=
X-Received: by 2002:a05:600c:a41:b0:46e:74cc:42b8 with SMTP id 5b1f17b1804b1-4792af327dfmr27911545e9.17.1764779476151;
        Wed, 03 Dec 2025 08:31:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHCKejq/2U+1EN5UAB8CezRHOHJDvwMZzcFVGMZ1T1ZB5XD8pg1afh59Y/Z4iwxgxyD87hFlQ==
X-Received: by 2002:a05:600c:a41:b0:46e:74cc:42b8 with SMTP id 5b1f17b1804b1-4792af327dfmr27910815e9.17.1764779475621;
        Wed, 03 Dec 2025 08:31:15 -0800 (PST)
Received: from [10.1.1.222] (atoulon-257-1-167-49.w83-113.abo.wanadoo.fr. [83.113.30.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5c30c4sm40900310f8f.9.2025.12.03.08.31.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 08:31:15 -0800 (PST)
Message-ID: <6b25515b-c364-47f1-bd75-8b7dc16e3701@canonical.com>
Date: Wed, 3 Dec 2025 17:31:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: devnull+debug.rivosinc.com@kernel.org
Cc: Liam.Howlett@oracle.com, a.hindborg@kernel.org,
 akpm@linux-foundation.org, alex.gaynor@gmail.com, alexghiti@rivosinc.com,
 aliceryhl@google.com, alistair.francis@wdc.com, andybnac@gmail.com,
 aou@eecs.berkeley.edu, arnd@arndb.de, atishp@rivosinc.com,
 bjorn3_gh@protonmail.com, boqun.feng@gmail.com, bp@alien8.de,
 brauner@kernel.org, broonie@kernel.org, charlie@rivosinc.com,
 cleger@rivosinc.com, cmirabil@redhat.com, conor+dt@kernel.org,
 conor@kernel.org, corbet@lwn.net, dave.hansen@linux.intel.com,
 david@redhat.com, debug@rivosinc.com, devicetree@vger.kernel.org,
 ebiederm@xmission.com, evan@rivosinc.com, gary@garyguo.net, hpa@zytor.com,
 jannh@google.com, jim.shu@sifive.com, kees@kernel.org,
 kito.cheng@sifive.com, krzk+dt@kernel.org, linux-arch@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
 linux-mm@kvack.org, linux-riscv@lists.infradead.org,
 lorenzo.stoakes@oracle.com, lossin@kernel.org, mingo@redhat.com,
 ojeda@kernel.org, oleg@redhat.com, palmer@dabbelt.com,
 paul.walmsley@sifive.com, peterz@infradead.org,
 richard.henderson@linaro.org, rick.p.edgecombe@intel.com, robh@kernel.org,
 rust-for-linux@vger.kernel.org, samitolvanen@google.com, shuah@kernel.org,
 tglx@linutronix.de, tmgross@umich.edu, vbabka@suse.cz, x86@kernel.org,
 zong.li@sifive.com
References: <20251112-v5_user_cfi_series-v23-0-b55691eacf4f@rivosinc.com>
Subject: Re: [PATCH v23 00/28] riscv control-flow integrity for usermode
Content-Language: en-US
From: Valentin Haudiquet <valentin.haudiquet@canonical.com>
In-Reply-To: <20251112-v5_user_cfi_series-v23-0-b55691eacf4f@rivosinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Tested-by: Valentin Haudiquet <valentin.haudiquet@canonical.com>


