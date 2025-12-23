Return-Path: <devicetree+bounces-248957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B06F4CD79D5
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 02:15:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 702F13005FC0
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 01:15:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3ED1126BF1;
	Tue, 23 Dec 2025 01:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="foCxvO+m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F323A1E72
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 01:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766452536; cv=none; b=EPjjRqWJi5nmwFCGG+56RzjJ9vQUd4ALUoQo9fqHRDb1fWed8v0dQGs5vZ+h+E+ngR63+NyU8VvbmZJtNbC7XB0xk5QBS3kHpNRsOCQsBG1cc7ShLKMKnu+G/2JzViv29SxjLx7p7xBjUFW4PIqwPfPjIimndk4khHqlRf1OxXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766452536; c=relaxed/simple;
	bh=UBoHW78SeE80vBbfzJnc53CgNUmOMLDpe5l6TYu6SZ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=sD6eLq7lowKe5vxUnpXMaQ8zoQCspgzQ8hFAmiDatlCUqRRh6tkMitu7wRoZUiJZ6nLfTDGwzpZAHO+Hf5H/FESVhl3SniTbynW2UKgIbDJwhkb69edoFt1NzMR9GgqzscxfX+64sX2bWUjBngaNhBb0b1MEybrWPOIMrO+oYa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=foCxvO+m; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2a0c09bb78cso32447375ad.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 17:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766452535; x=1767057335; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=X58ps29i4wzDPlToCm/xfI7UgBG6++N5LchJfOB0Ob4=;
        b=foCxvO+mFQMQoxDT3FChki0BeFOpTEpdgbFX2R8qOpigITHicEOwaxvjwPED9gdUmY
         EQYg0PhcQGX9phYmFoyPcaF3XawhyK/2LSgIpUBBAftPNNvJuATNdAP3jgJLu38MAtiF
         xD9xWJ0kTZ+r2e8F/JtCxEoiG/cuaWJbCWMZLbYjLY9jueUq7cY5Cv8EGe86h1guGYnp
         F1rG1P3xvPFmSA3YdvZEM879dgfr+9PCH4MaMSG0/iNr9KnmEdxcEjXata+uBgicBDHp
         Mmw+RMrUtf9IPi4o0e94ayIRO800V0N2KDMBA11ipEvWfGQYh0r5NZurZQ1C6i/Ggl3b
         cClA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766452535; x=1767057335;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X58ps29i4wzDPlToCm/xfI7UgBG6++N5LchJfOB0Ob4=;
        b=ljVMbji6/YllCjy9J58TE2RBL+IQ/3kmaXGAJVsmTRTPk90rCaabL5EZIVlmsNMDho
         8qDY9QQWJIGPLDH57Jc2mrgmPY7Wk2bTo1jIf+Cyj7ur/UjeRu7ojNGGo1PkWfH3hIZy
         AiMzSlAVaMdWm0scpktB8WwLi2N3Ai6QRo1tEyxPSGk5wRTmaN1U+1EZOb25s9ybijFE
         JE3s8ec0u36gcSkfMz0H9m1VOawN+/AAl42+QOsQZcgYPX5Fgr1m2R1+Fzrb2hmoq96X
         Un6l0JAyCRZKE0fzZK3eznVYr02KNjcLcnTwJbK/7uCPi0KKPfcW0xLVhp7l8sGnBLD2
         UHuw==
X-Forwarded-Encrypted: i=1; AJvYcCWU+AGvQpvi0JhRdsfgMu5mDGRgPCUsxa3nB1lRvcRbLPAu31D0Lh8i/7e3Vucn6DTwR4sI7JRzwPKj@vger.kernel.org
X-Gm-Message-State: AOJu0YxqMLjFN0ewVR3DgvHWqbboUioMqXiJTpLg7n1MQO5dmLWBJylR
	O1yWEyXKnXMjdVlNKgSVXsz1OpGqEMa5fa9BS5GQBhRFaM1TyqC2NKiF
X-Gm-Gg: AY/fxX4+LLgVDFOvGjP5PmPtHZT1WuGvWZoMM6Hp8FW0Yep5nTsHfE1FGJUpLs6UmAA
	0RO2x7PtcpMtVhSKKA0J+FEyj9GeNotdby9QX5xhooNyab1886Loy4P2ZaiHyAJF8sy5Vd9KXS2
	cQqGtXzC0G0ESY0G27yVjMGulfYxpzoo6br2GmFrl1mOgx7of8sApKKfzEul8MWsOJtcNjuknl7
	rMo5L3NqMPXMpTqfSPOMyLBhJNKnUcdtcv17uhrnXQqsdYMuTxvMUGG9wtpO9k/u8ZPsgehZpN/
	bpf4/QipPwbTDLSZI1S+31fTjpfGt3YIV+w8/AjhgfalqMQDLDRK6mwEvE+Ac+unl5V6/7KzAq3
	UZj4Se5grvXgV+ROcJFvhriqG5CcNwIUHpRPrDgEuZtu6jQFNlAIatpPRYjBb8TRrmFCGLofKBr
	7K8lYXxOc9ZuFMUxaPJaD/YnySRLVCvgvWSCe+Cg==
X-Google-Smtp-Source: AGHT+IGuOgb91mGwdOMJYVIABsmW5/J2Hr3wrOJ5nEx768vSMFuI83uK7tzl4NKRCY3JTNFYebfnYA==
X-Received: by 2002:a17:902:d50f:b0:29f:175b:1ec7 with SMTP id d9443c01a7336-2a2f0d2dbd0mr143434815ad.16.1766452534563;
        Mon, 22 Dec 2025 17:15:34 -0800 (PST)
Received: from [192.168.0.213] ([60.51.11.72])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d4d36esm110067235ad.63.2025.12.22.17.15.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 17:15:34 -0800 (PST)
Message-ID: <963594e9-135f-41b4-9105-f9ea0f88badb@gmail.com>
Date: Tue, 23 Dec 2025 09:15:31 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] an/rm64: dts: socfpga: agilex: fix CHECK_DTBS
 DTC_FLAGS warning
To: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251219234858.7543-1-karom.9560@gmail.com>
 <ce602264-b685-44c7-a463-e040819a07e4@kernel.org>
Content-Language: en-US
From: Khairul Anuar Romli <karom.9560@gmail.com>
In-Reply-To: <ce602264-b685-44c7-a463-e040819a07e4@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 22/12/2025 8:16 pm, Dinh Nguyen wrote:
> 
> 
> On 12/19/25 17:48, Khairul Anuar Romli wrote:
>> Add start address and ranges to eccmgr. This change corrects the warning:
>>
>> socfpga_agilex.dtsi:612.10-669.5: Warning (simple_bus_reg): /soc@0/ 
>> eccmgr:
>> missing or empty reg/ranges property
>>
> 
> Sorry, but I'm not seeing this warning on my local build with v6.19-rc1, 
> nor at Rob's build[1].
> 
> Dinh
> 
> [1] https://gitlab.com/robherring/linux-dt/-/jobs?kind=BUILD


The warning observe if we build with DTC_FLAGS=-@.

Thanks.

Regards,
Khairul

