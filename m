Return-Path: <devicetree+bounces-240385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EDFC70A50
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 19:29:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A1AEA34BBBD
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 18:24:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DA62358D22;
	Wed, 19 Nov 2025 18:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NHB56gLK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7867C311975
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 18:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763576674; cv=none; b=f0nPV8fiCv7FDtrgyif/ZDsspfxhflo49tXeqGQ0AJfSECYV4vYX/QAtWuQH2041VVsqhIyi/5OaOkaX/dmWFPwNFvK4/QuzB6WWIw37SOfHQuebCRU5STxMo2Nld/LBQJ5thgimtdrI9hs3JiWO4ELbUheX1TJdRnTJ8jADvzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763576674; c=relaxed/simple;
	bh=d2VKNeBI9mdU3CulQqLDBXeD89R8ghbqwp0xbHbIKDA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZYYBmjOd6hHNgsQ8Z79RB44vgT8zTYrspcunqF/DzHs2+mvZceyyupS4Sq+htw9tdzNRZu7QjJa3bnNqLBzNA1Mw8KFi8672f3opVS9YTv+SKLQXFQktKThZz6TxEg0KfSwL3rTEgPPjbQOLD8DK1jTyK6l1AITdWT2gJ2d9Okk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NHB56gLK; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-640c1fda178so2776059a12.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 10:24:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763576666; x=1764181466; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wXp2uUfyAn7qQSV84bcf4nMWFAwyWFqJON+TttJbAcU=;
        b=NHB56gLKbXdEvERiIKxyKRzQy9x+BRJO0FalV2vWqUvsDwCie6WhACfrN9e36qHhJG
         OGpSc25nBLdINljnrtbcWaXr3kHm5dxGf0IyXFcfK4WZma60ovr/3E0doiG8m5vj643e
         mriYNHJ2bsjrcqiN2uO/CUNNlORYDELZ3r1mrN1g7c6GkCoiTvSnWQKAj3EjRL5lIGCG
         oRlG5Q/VRcCNsBAAfLsApgXoxbL9PG3ka/MMCPIVWRWXSJjbGggV6lyCKu/VgSv0dZKK
         25bBFCR+Uj3S5mAGC6qgXTaRuKtSvSx5Hs/MYXahRdJSseagBo7onsRf697vqSx8U4+u
         eBlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763576666; x=1764181466;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wXp2uUfyAn7qQSV84bcf4nMWFAwyWFqJON+TttJbAcU=;
        b=BjaJuBFO+Lppw/dZRT5fBKVXIgX9pGplwx15APp8kLNCfrqip8oHg4BJ7Cni+3PjiL
         wbZx1gTh3z52uPBwDVhCWLXcGXTsOVy5FEUBmC2FGWABahCPqdPEXJraltx9R12Nx8J/
         eNiXRGWpQ4tdnJyNGJcpLeFcuOGRIw/XUKGfy97jfdNX6NY1GIXCCePC0eEjhlb2Sk5A
         /OWC6yw60Q1UHJl3DlfDuuWyBLp6NxCEvgQ/F5w69FB9HdLdAIOkMQCGF0dmbN/cigWK
         ht/TOnlmJuTo4QT2lyZCkMiI0jf3aA14GRY4++uP1SLs1c4cgUCYRV/Z2vuC6FWFDUfE
         lG6A==
X-Forwarded-Encrypted: i=1; AJvYcCU1kHVlr8PdtD7G1/xtsFr/wYBy7FEeWr2NA7fj6mgs47u4x/YrX37nd1cMETgWe+f2ca9tlM6aGYHp@vger.kernel.org
X-Gm-Message-State: AOJu0YyGpO5Mqyw0PrxRW/e0kJtakuXl/GQJVlENtk52/Zs7CIo4tVXR
	hmAsyk/lvh3r/xjqJPuUzC0oJIRYEyHs9NTjKrFtwCnCA4O3HhRe+qK0ZM1sJ7i26AU=
X-Gm-Gg: ASbGncs5tY668KPHobyWJ59ABsyi3/LO9XWP4BG9KcHv4NGWPy1tER8fMxcV/+IXMD8
	+C9qXtTnQrC3Mm/eRmks1uYpyoumrE+l+haOkizKsug4wfUmeylXzjSqlxLRYr7Z6qEZh3JzgcI
	FPpb6lmrjXGCspulT+1YsHciYgRawuhhmkxrRPHwohZaESAhTv3Gpowawb6qo8HMFlvsRNxuXmu
	3PlRKnlutl5ahfuvCTIdssjU8GzQ+THqj4nN/I11Wmwup7QXQZPNuqZ37Xgl0vIuWo0NPtzDMyc
	uV0KWQq3PQ4EsUpy+feqHSkkttY/9XU2Pip/SxIaArhkxJ1OF1NtKfiwIqF5O0q4rLsYehd6gm9
	00Ak7M4AU6U50YFIX7R9fTWAeIHarhNqXiOQJQ3PVJJ+rpN2WXnbIVcVnrt9bKaH5s3JQwCzt3X
	fwm0eAhyf+rPPfix4wA24YgArG5SyDI4M=
X-Google-Smtp-Source: AGHT+IHFWcpqhe+aEp30Ksls0LghzQFo1sGYaD1WHh6eJAE08Lx/+/aqM6jp4/gMRRi4U1LtQQLFuQ==
X-Received: by 2002:a05:6402:5247:b0:643:129f:9d8e with SMTP id 4fb4d7f45d1cf-645363e41d7mr312140a12.8.1763576665944;
        Wed, 19 Nov 2025 10:24:25 -0800 (PST)
Received: from [10.101.2.140] ([93.122.165.106])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-645363b66e5sm169342a12.14.2025.11.19.10.24.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 10:24:25 -0800 (PST)
Message-ID: <b0102b82-9ae8-4e01-ba27-44b78b710fca@linaro.org>
Date: Wed, 19 Nov 2025 20:24:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/26] Introduce meminspect
To: Steven Rostedt <rostedt@goodmis.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, tglx@linutronix.de, andersson@kernel.org,
 pmladek@suse.com, rdunlap@infradead.org, corbet@lwn.net, david@redhat.com,
 mhocko@suse.com, tudor.ambarus@linaro.org, mukesh.ojha@oss.qualcomm.com,
 linux-arm-kernel@lists.infradead.org, linux-hardening@vger.kernel.org,
 jonechou@google.com, linux-doc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-arch@vger.kernel.org,
 tony.luck@intel.com, kees@kernel.org
References: <20251119154427.1033475-1-eugen.hristev@linaro.org>
 <20251119131534.392277e3@gandalf.local.home>
From: Eugen Hristev <eugen.hristev@linaro.org>
Content-Language: en-US
In-Reply-To: <20251119131534.392277e3@gandalf.local.home>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello Steven,

On 11/19/25 20:15, Steven Rostedt wrote:
> On Wed, 19 Nov 2025 17:44:01 +0200
> Eugen Hristev <eugen.hristev@linaro.org> wrote:
> 
>> Once you have all the files simply use `cat` to put them all together,
>> in the order of the indexes.
>> For my kernel config and setup, here is my cat command : (you can use a script
>> or something, I haven't done that so far):
> 
> Interesting.  Hmm, it seems this could be used with the persistent ring
> buffer code as well. But if the firmware does not keep the memory around on
> reboot (where the buffer would be reloaded), you could mark the persistent
> ring buffer's memory to be inspected.

I was kinda hoping I could get a chance to talk to you about this.

I managed to mark the trace buffer for inspection. By using the cmd line
argument to have it preallocated, it was very easy to just mark it for
inspection and dump it on a crash, as a dedicated meminspect region.

> 
> The persistent ring buffer creates a single allocation to hold all per-cpu
> memory in a single region. That is, because on a crash and reboot, it
> expects that memory to be at the same location and does a verification
> check to see if it contains a valid buffer. If it does, it will recreate it
> for view in the instance directory of choice.
> 
> Now if this same range is marked for inspection, you could then download
> the entire contents of the persistent ring buffer after a crash. It would
> be trivial to update trace-cmd's restore functionality to rebuild a
> trace.dat file from it. It would require saving the event formats of the
> running kernel before the crash, but that's not hard to do.

The problem is that all the meta-data is not allocated inside the
preallocated buffer. The meta-data is kmalloced all around the code. I
mean the structs that hold the information on what's in the buffer. You
know what I mean.
And all these kmalloced things, turn out to be in order of hundreds just
on a kernel boot, which I tested. This is not feasible for the
meminspect table, as it would get overcrowded very easily.
I thought of perhaps trying to kmalloc all of them in a dedicated cache,
but I haven't progressed on that. Another idea would be to try to
recreate the meta, but I have not found a way to do it yet.>
> That is, by using the persistent ring buffer code with the meminspect, if
> the firmware doesn't save the memory across reboots but allows you to dump
> it to disk, you can enable tracing within the persistent ring buffer, on
> crash, extract the buffer, and then use trace-cmd to rebuild a trace.dat
> file that you can now inspect, and see the trace that lead up to the crash.
I used 'crash' tool with trace plugin and I am able to see all the trace
contents, but, with the limitation above. (To achieve this, I dumped a
huge area to include it, so , not feasible for my goal )

> 
> Now I don't have any hardware that uses this feature (not that I know of),
> but if others find this useful, I would most definitely help them implement
> it.

We could have some drivers pass the inspection table and then store it
in ramoops e.g., tapping into pstore. This idea has been going around,
but I have not had the chance to write a pstore thing yet.

So , I was stuck, and I was hoping to talk to you, either by email or
maybe at Plumbers in Tokyo where I have a talk about meminspect.

Thanks for looking into it,
Eugen

> 
> -- Steve


