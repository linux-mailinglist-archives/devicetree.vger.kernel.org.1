Return-Path: <devicetree+bounces-254818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D15D1CBD3
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 07:53:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6CC06300D28E
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 06:53:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B15136E477;
	Wed, 14 Jan 2026 06:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fRGJjSnL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E01368264
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 06:53:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768373629; cv=none; b=m5xIJ3Cnt/obOAQK4SDc1+vCnsiVVROBM28ULl6qXWzUIJYOIAsBYau4F7zUEZCmFG6RwubJxlXHJ3SCMQoo6j0XxylwQPXdtwJngUB89pB1wiNeuNzTdsIrMLkfM069eJjf3rAOR3E1QnLRxfi7+d5Q+FR3uID6+9nbrpeiAtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768373629; c=relaxed/simple;
	bh=wDjPr147o530hTp6AyG0aKzFnBjfrT6c3amHxS7WXs8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MRpqbxyPZJLFvDQp7IgOZXE5WV9dL2lD0QcZg987fx9/OzMvY4eLcA/0HqsKjeZIsyXyHFl+EGZ/ai7tnhHD7NZpurrdnb9LmiLGpl2xGlz4H03JujlyXfojdHtNC2chG2zNcqMgI7EyAiUxSzBKR2wLABegSDqabjJGH/BeLS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fRGJjSnL; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-34cf1e31f85so4918463a91.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 22:53:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768373619; x=1768978419; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Qd+X65nK6RfRAsO3cC//JEtjHJbo+v1uWTT4QcX9DGI=;
        b=fRGJjSnLeIGuOjNH6R4dIGCGs+Q+xe4RhCtaQubMc13lldvw9Ysj3xFViyBuI2WuE7
         Iae8yZ5Yr3SJ0wJP6lNq8OckJliS9XNAX2W8kOMo0hNsUJ6mVUqt1eU0kpsZFTobJto+
         xACYMKo/BZlOjwqRNKQSh3JtFywT3dkRMtTX7r9mwdftwmya30pjQ+V90X6FdoQB6O7W
         sHb0lEKQLB0WoDbxI+I/vV8a7qxfBacGY01fCH/YNiRm9nXd32+neCPqKjsHqev6hEaB
         xdFTHFb69ctDse2kc5ylTEUznvBOobW5LDDvMSaokjU18bLpdnctwWx4MLFoGAPEUvNW
         nb1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768373619; x=1768978419;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qd+X65nK6RfRAsO3cC//JEtjHJbo+v1uWTT4QcX9DGI=;
        b=DgYRcnvMbP2QN6R2l0hji6+1+ver3tQMAKwXbtuDM2RmIPpi8Thm4MqgaReGQ5QjSO
         P6ULFVpODIp7ANN4WPobJGY9jt5ASEmaNj3oeV+4EAY1HXAlEhokI3f+kGwynd+YVMEM
         7C1bv3C+TfRqesci0HqJ4Kncz8hvBc3evgEKFQa48AyYyFjfTJh8IqVmSnDl7+PKqtV8
         2rLqwge8KqrDLLCSai8higTAgjZ7IqUSLBiHjvPsnUZkCruTGn5OcfWFBVsqdRlwb89M
         05ux6UoyemE4J+MumtHU/2Jni9N7lyFd50NilV9bu6ByN50+Nm73e2Fo2h89tIJh5hJk
         t3gg==
X-Forwarded-Encrypted: i=1; AJvYcCUqt8ZNwJC8gcaZ8zgYtYwpuP6N+lyw2A+M1TqN0hE9lpPxNzjkFLXUMB453DlB3QULlzbSO2iQQRIC@vger.kernel.org
X-Gm-Message-State: AOJu0YxlthXkU9D37egtX5ZidhbeZrZ8AprlDEeyMrHI2da1pwaVRXxo
	ed/dyM57fVBqrrgmWLB0jDtsDMqQ2u6rvzgzas7Hh+usJ2meBippKAEO
X-Gm-Gg: AY/fxX56WtJN+ohha0FBJx+qdZgQm1/47Gx8NWyMrMW/KPT9UWHWuo6U90yCKVzKHgY
	+lwzKq+nKpOzvcxckuVpVGI9GIWgZu30Lzqp/OKRVshu4Tbg7s6ZjTMvY214U2MfkgjTUjhr/0s
	RNNEKrAysMiDCoRKa2FiNMP9XpcNnDRGIrwmzWQa+w6U2BSgmd4iqXblOsw0KtEha9Hgn9bqgpV
	PTNAu4wi3k/w6KH3N72wdsMd61CTxk3spTuntgxSxWvigc59ziWv7PChKPBcVJIx5WP6PBUDAGZ
	IA8UvsUG18Kkc3CaVpU5u3jUiuPmiEiRf1Nf/wksJUQDEuHPovHM8ccME/rVosB3ROcfx75ePJ/
	0pLUQ7kYsnKYceMPPrRsZ40UIfx8Asqo+yPM4g3pXQk9rpRDeRNR2mCaZW4uMBmBOQarc+aDpS6
	8lILt46As53vYWlsaMKE5/MVsYNzYIgrtBnw==
X-Received: by 2002:a17:90b:1c02:b0:340:d511:e164 with SMTP id 98e67ed59e1d1-3510911a179mr1754182a91.19.1768373618586;
        Tue, 13 Jan 2026 22:53:38 -0800 (PST)
Received: from [172.16.20.12] ([136.226.253.21])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35109c78f20sm980556a91.13.2026.01.13.22.53.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 22:53:38 -0800 (PST)
Message-ID: <2117527d-c95e-4043-a5f3-7e4550e8fe2b@gmail.com>
Date: Wed, 14 Jan 2026 12:23:58 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 1/5] dt-bindings: arm: qcom: talos-evk: Add QCS615
 Talos EVK SMARC platform
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, andersson@kernel.org,
 konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251230130227.3503590-1-tessolveupstream@gmail.com>
 <20251230130227.3503590-2-tessolveupstream@gmail.com>
 <2e533b51-399a-47e8-bc3e-ab61797d6762@kernel.org>
 <f6ff2086-19f2-46cc-ac89-d8ef3847b9f0@gmail.com>
 <d23e3693-0cf8-4b31-a3e4-e562621911d5@kernel.org>
 <dce7702f-e845-4940-8679-a8d80563988a@gmail.com>
 <d9267c08-4470-481c-b56b-390627e9e61e@kernel.org>
 <49ce6fee-36dd-4e0d-b2e2-b516b16a8b25@oss.qualcomm.com>
Content-Language: en-US
From: tessolveupstream@gmail.com
In-Reply-To: <49ce6fee-36dd-4e0d-b2e2-b516b16a8b25@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 07-01-2026 16:47, Konrad Dybcio wrote:
> JFYI Sudarshan, there is a neat oneliner to do this:
> 
> git rebase --onto linux-next/master $(git describe --abbrev=0)
> 
> where linux-next/master is the target commit/branch to rebase onto, and the
> second argument is the pointer to the start of the chunk you want to rebase

Sure, got it. Thanks for sharing the tip!


