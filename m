Return-Path: <devicetree+bounces-220679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D4BB99499
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 12:00:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2E9EC7AF62F
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 09:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52E77280CFB;
	Wed, 24 Sep 2025 10:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kk8IW9uk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D80402D1916
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 10:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758708026; cv=none; b=sOv39CMpp2/uOx+TNZdmPoApUtOc+xwd4jggLwvgwlYmCMt684KbuPig2wjdFaO1Dv55mTtgDCvPnpO9bnOqqv8qPTiTLogIX41VGZpIkINb3cGca9jKKkoKBPqRxwwJ/bUkPXynz3e5jfCvxY74Z3kr75IFfk1mHNLuJO1PO3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758708026; c=relaxed/simple;
	bh=01UY+fAj4MuEVookmStzcuMwFNrHoAXlj80xcJfzQnQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PZlcq3vMxUWeO6YmdHkpEmtywqgza7UGX2xalisxr0dqVtoZoD49HjOZeGsjhF+DR7RlBUk0CcixDqc6edUqmhHnQiCmvwnijx8FZSCYKGurpeuMo9SpUAnbatcCZ0s4VOr9Qe+YWAroxNGUHjy19G4KhWed0nHhxNXegcJOTCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kk8IW9uk; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3f2ae6fae12so2662129f8f.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 03:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758708019; x=1759312819; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qmVW+Z/mziG0ZeCkjmpV+S/k8DcMMNx/U++MptcSCGo=;
        b=Kk8IW9uk4Nrvx9Wj088qh9T5tQpgrILEO17yl8H9SuP1284n2RboQXkuiDEYK4+7eW
         Jp252enS4VYa+jQMWrYSJWdDPLWvEJHBKdBjAOov5rBbK1RmRHEwwGzFdovPf3SzLIWE
         XwhCfDUmaLZlG1rS1xELtnWeuzBTUIdOivF1iGHOi/E+QzFvUlh0ifKh8AF4Vu8bJ2v0
         O8+53u066rfeDem6yjc11bGR9xO2URP49S1CMvB4qrq9hnhGbKskRJ32DCdbsNpadTak
         zlOcGeuWKat/LFQNI+BeymKGQ6AaGZ4hZldqPR0QDeUbvfI1tTnpXO+mc1Z9ACG2f3KE
         RaQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758708019; x=1759312819;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qmVW+Z/mziG0ZeCkjmpV+S/k8DcMMNx/U++MptcSCGo=;
        b=eo8unvdxJGfWJnEyHbgGlCJFZ1ep28lJHoSInFhzHLY1k5yBnOWxdRXLTtQq/lNvB6
         qi3aWhgZLkuQG8pmaGzv4oF54Mog3LhlDL+2dxv3k/MUNhtvMpvvsPvJY+41eZrtYw18
         bqgdy0+tJ2URmWX4+zmzAqjux9szG51Ux/p61bnTBU/Sst2E1ADPGNWljaHJKiYK7UOs
         xcr6/qzTVq0VEY9LcA3Ook/NafTsLJMME1PqAhoJNDbT0fJ2DvQX7u4SKA+mCi5ARxfO
         Fj0Zyauax/3EOaV+CTPG8XMx49V2tFKlrrNtzusYo0Il0mzwhsuDIAWUAlPQQ46Z5XEN
         BNHw==
X-Forwarded-Encrypted: i=1; AJvYcCW0vSZA1QZ05rzmyFOy+DX1/BF+utg82PTpQWfcKCtXiNLXYGHshZ/NOu9YMqpG+j8U578sf0pWRgYs@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3tuZTO766kuewB1ZViHNJCpjrPvfTjM2/+kL2yFOVdpaEm0kQ
	29xlHEsJThpKGOxE5dAySQLUZtvHthOwV9y83etz2XPeNisAw8f0Bom4
X-Gm-Gg: ASbGncsr2uue+53/T3Lv4SnrUfDUaNy8nSryCXa5+Qawe7l8iiMa2SvIAD7Mh/aFtQJ
	ryCzTwhu+0w+0sy3JrrPxtuCO6mijRMLu2Usk23Ig7AhdzqTBliFPYCqQaNoIRMU4GXp7h7hhBL
	YB5lBxMqxI1CUTJPbguj6zRbdaKqqETl2dJzVi0+A7nJsvFkrbdtIdtE3uuvQ+a4P0XnT9VlPZu
	v0Fd1Nfmx0XXahqqx9wwpcobqRjfZQZJZHbwm6vzaW+RQ7kyvrb7PYDYlrfQKRvDQJJR7TNQumT
	5vndt5CA3zhN287YrQQtAu+uCn9xST6kMGPNRHRJrmwEdVogsj09Vb9kqMtSF5F0irwzovMQ3W2
	7fIDPU6bjSj7jycZ6QT+yscbr1mln+dUM7OXXRJNJF7c7SM8O8O6CgUBcVAvxAZEQQTd1XgJY2j
	I+DSaleovXyGQEUOY6xC49QucfsOwSHgZchaOa8RTm6O+uqkbsNja4D2iC/z4a
X-Google-Smtp-Source: AGHT+IG42+8OH08VTgLUl9F1YLwdDI/MKRqmfZxK/ji2sSckzPzSa7uie7TpTd+qAIdz3qyFVuJLPw==
X-Received: by 2002:a05:6000:2082:b0:401:5ad1:682 with SMTP id ffacd0b85a97d-405c46c242amr5543802f8f.14.1758708019030;
        Wed, 24 Sep 2025 03:00:19 -0700 (PDT)
Received: from ?IPV6:2a02:8440:7503:805b:76:f865:8f03:23d3? (2a02-8440-7503-805b-0076-f865-8f03-23d3.rev.sfr.net. [2a02:8440:7503:805b:76:f865:8f03:23d3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee073f4f3csm26375517f8f.2.2025.09.24.03.00.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 03:00:18 -0700 (PDT)
Message-ID: <430e9fad-a877-4328-848f-59b982a10706@gmail.com>
Date: Wed, 24 Sep 2025 12:00:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/7] dt-bindings: memory: introduce DDR4
To: Julius Werner <jwerner@chromium.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
References: <20250922-b4-ddr-bindings-v7-0-b3dd20e54db6@gmail.com>
 <20250922-b4-ddr-bindings-v7-2-b3dd20e54db6@gmail.com>
 <CAODwPW9Js2AjSzQrvRFMK3xHXjbb6qV2bGEj3GhYWpDELniyCQ@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
In-Reply-To: <CAODwPW9Js2AjSzQrvRFMK3xHXjbb6qV2bGEj3GhYWpDELniyCQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 23/09/2025 00:51, Julius Werner wrote:
>> +      - pattern: "^ddr4-[0-9a-f]{4},[a-z]{1,10},[0-9a-f]{2}$"
> 
> I don't really understand why there can only be up to 10 characters in
> the module part number. I also don't understand why you wrote "20
> bytes (10 chars)" for this in the previous patch. Are you assuming
> that module part numbers are UTF16LE? According to my reading of the
> spec, it sounds like they're supposed to be plain ASCII, i.e. 20 bytes
> should be able to contain up to 20 chars.

Hi Julius,

Yes plain ASCII needs 8 bits for each char as the value range is 0-127
I was having hexadecimal in mind while writing this, I'm sorry.
I'll fix it here and in the previous patch.

Best regards,
Clément

