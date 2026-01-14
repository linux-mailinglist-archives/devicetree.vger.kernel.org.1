Return-Path: <devicetree+bounces-254802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 077CDD1C960
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 06:29:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B66F43032AF4
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 05:29:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81B54369205;
	Wed, 14 Jan 2026 05:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cf+jTHIL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79918369992
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 05:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768368558; cv=none; b=LID7x+mmlMQycnRNwnfbJ7Ql2m+bjn38JuJDjpMiXEO++jBU+wuDaKTiIZ7/zO2Wfo6JHnNLbVAN4v4gTtlIr9lTuUGs/z8s/tWbbUnID9758a0Va8ikemxywMgSSRG9YSMVg7bw0RyeC5MCOZHIRu+Jj1xgn6SBCT1rQoJ04Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768368558; c=relaxed/simple;
	bh=MVjK6WeI2M4GiEOYbDWK+8u7i2JuviaaxDLh3ANAi+M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P1DkG33faa0ZsdYWRuhzZKyB7/Op/IYqf2ZfOII/23C/SONnmFS+2SEplAJXM+wX3pLeFAJZeibe3jAWblysQadO3tmf0L7vabai0mTocp1Eh4WALUdyd1Kvltg6Tz7khvOoC4VxFHZJs9eB/5P6Nc2sHyIkYr9WxLr31S60gbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cf+jTHIL; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-c54f700b5b1so3252885a12.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 21:29:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768368548; x=1768973348; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Rp3D1Gyy3CCTi05ytq+4em51FnTrdhdCrnVcIgHJxEI=;
        b=cf+jTHILO621YsmQHzLRtujIxCztkgbXDkGUAQOZaKDs4xw0GUqfPs4WJJlh24A4GZ
         MFjPJkDh3LxXPOC2hP6jrIa/qAKnulcvatFgxlyqiwv/KU2++48IlXDYeSi3jdzc/pnJ
         m9BrpEESxQ9u51wWiMCy5AVEhb+Zcy0rF4uHw7AgB7QJvlp/cyMI1RqGMjgrvRPMypCu
         rEh3/Rk306BR4CKBctI+mrfDeG7g8BJzVdiVwdjFqAgGZytC+iI4om4/uqTZcPlJwuNM
         9Mf53gxKxdMW/+kGh4h2qusqCk8xox5o0kwxP9A64Jk6HxGbmZBCjnzNN+TBfoBCBn6/
         Pc7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768368548; x=1768973348;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rp3D1Gyy3CCTi05ytq+4em51FnTrdhdCrnVcIgHJxEI=;
        b=DosKqu1vuSakUPNvNNLM6V8qt9KtsaURCqBuTIk0c9Ey/cV/l1csD2eOh3CW56RW5a
         5bgDP3wRPqnPr1ZsgPpS1HbHR2JF/idSCKBPeWJMyEY9fVpmHiArxGOFP3zljaSNlLWD
         NUiQMkbqBbH3VXUOofo8MSGOxZLAF4hO7mZfTJ7oOMmj/JcHch+HVQQT9ic5HUka6A0j
         bMQR5YFaScsBBVz8hNjsGXxG8Dzl0W/bHnOyYNPPS2BhlkzMy9+oHgtKCAFextaj7tZH
         xcMB4HKPiY9DOY43zqI27SFxJOL94FtaCuLJ8YhCqgMoBDs1wD3r45Ri0eMQjWpdc+tZ
         mGMw==
X-Forwarded-Encrypted: i=1; AJvYcCXPol/kCZ/aL9Oiy67HMfnRMswlosMiMomO66fLnz0B38Fdw1Av+lu5PPnXuB1TicjRYvmzOejKsZT3@vger.kernel.org
X-Gm-Message-State: AOJu0YwqrJ0KPWi6FQgb7TIhID/3x0tdg97ds8gYrSbxCnHAgCu0KEfZ
	fJBPZBmQS65sES6TSjZV10Q0RZvT2smdoYVekC+5FcOqidhYUH7nMsf2
X-Gm-Gg: AY/fxX6Aobf4WGMM1VDebOkrA1b8tFbJNGtdt160UCe82Vv6Nlx4C/qmx6fAP4b5FA+
	5ezbs6nTTcBx+Hq+4RJm6igFQEkF1av50wKnm4Yw+bwKOUK7O4YUfbW+4tbV3etlaWasRgnHpva
	DL793QPLqjfkn3mLXuSl59v5g7Lz24PgPwnhhWwiyODLnk9gfMX4le/MPbu7PgDedoNWDMJLOcP
	9geK0nm5i01EvCOqM/iiYPEoCbzDeocyMeeWy6wv7QRE++EOUQ4CtoCMj1EZo0r0QfV20AKxoNH
	lR2+Eoz5stoo3fZRirffJuDQuLeOL7W1aIT60qYue2tVlj95r3uyIAg9fg3iaYckfyx/4XaNDIE
	zxsmB289PITa56S+H3eFzeOv4lCTtO/6LjGcy1yaq3mQBv+3MdhQDuotV4hkGyafPTY19ji45qy
	NuAB5v5yMb1T0EB2vwPT3KG4OtxmJpZZB7Zg==
X-Received: by 2002:a05:6a20:7293:b0:372:18b8:49b5 with SMTP id adf61e73a8af0-38bed0b27b9mr1610097637.6.1768368548020;
        Tue, 13 Jan 2026 21:29:08 -0800 (PST)
Received: from [172.16.20.12] ([136.226.253.21])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cca06b16fsm22460613a12.31.2026.01.13.21.29.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 21:29:07 -0800 (PST)
Message-ID: <65f51660-a521-4803-ba7c-eacd53993982@gmail.com>
Date: Wed, 14 Jan 2026 10:59:32 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 0/4] Add Qualcomm Technologies, Inc. Talos EVK SMARC
 support
To: Rob Herring <robh@kernel.org>
Cc: andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260109095221.2847067-1-tessolveupstream@gmail.com>
 <20260112153134.GA215739-robh@kernel.org>
Content-Language: en-US
From: tessolveupstream@gmail.com
In-Reply-To: <20260112153134.GA215739-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12-01-2026 21:01, Rob Herring wrote:
> On Fri, Jan 09, 2026 at 03:22:16PM +0530, Sudarshan Shetty wrote:
>> Hi all,
> 
> From the mail headers:
>> Content-Type: text/plain; charset=y                                                                        
>> Content-Transfer-Encoding: 8bit                                                                            
> 
> When git-send-email prompts you for which encoding to use, the correct 
> answer is not 'y'. The default utf-8 is correct, so just hit enter. 
> IIRC, newer git versions fixed this.
>

Okay, got it.
 
> Rob


