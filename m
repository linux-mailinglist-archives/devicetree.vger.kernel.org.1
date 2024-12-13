Return-Path: <devicetree+bounces-130709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8D69F0B09
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 12:31:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 046501888818
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 11:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC5781DE4F3;
	Fri, 13 Dec 2024 11:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nm3ih19H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E88111AC8B9
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 11:31:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734089472; cv=none; b=sw4muLnYEN1wRbJW5xBXFbSs3OvPzFbHTNi4GQAvzNuyODS/C/+HJb9MG2Kq5N2zabf99GmmQcjBt8RNh6ScWfiw2l5I1ugiku+HTcXnJyXdpERaWu1aHpubzcmRbfd4s5vYb8HF57SJFzDqUKaezkPI/SmQodrI6CMA+EX/PSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734089472; c=relaxed/simple;
	bh=FUAaikwISy2yCao/qOHxZDhQqBDvQRhKmpOYdt+b9y0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oOqZLROnJZV7XoIkbXbQBW2g45ziCkHrDuICRNlWcOrstpNelxAc4ZVt8YFaNsE0cRcJMya8pCiQgKl9NqmkjtnRKHyy37bNcR13yCEknJ5ASZ2D7EsrWDE5tK+wc11/ATl75J/pzjANufJ1hW+DBejotk+fcT3FS0it9g02RIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nm3ih19H; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4361f65ca01so15496395e9.1
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 03:31:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734089469; x=1734694269; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4y10DVoW4HQIavObhRHig9NVjzLlQQfmJ/QJuh+fR6o=;
        b=nm3ih19HBay+supzYW0II3jkqt9znNzcWOlDCycjAtrcZHQog1WT6RZyv9hdVXJV59
         ai5qgW+o2ZLyAZgkqsV9qWpPDV17/Bm4b8Lx0aZnmq6XN+rr+0gnltD1IClZcTYdlhqP
         RhQxMaygJ9cfBnQdjwFxAJdPSUO91RJAMT9gCuxGIJb1Ct+7LX/Ke3V99vUx5OJmuK+I
         RSLVShrVJIg7w3vTGxoaqMK+/2k5Twj/+X7BZYDbiO5CV0ZqjX+sqe39lVof47A5IVMF
         MCdvNJYLudr8WphC3sH8oa7zvKjhca9PJovOp2yL9dxSuYBMcn6H5Bnx8V883GGQXCxD
         c40g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734089469; x=1734694269;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4y10DVoW4HQIavObhRHig9NVjzLlQQfmJ/QJuh+fR6o=;
        b=JKKzUPyr9BfI9iqKGGYlGsL7JnIJCP9YJrrn3uRwsGJbTgEg5QZvW0YmAfm5du6c3r
         iBxl0R8/A2rS6ihup/p0GUKJlQ1NHITxuhTzqZv1jgu0BmZsP2Dh4PRdovOgxU/3fiYC
         d0+tITzrKPs33H/vVuXmKgxFz8Ja7BUHlUeZYpUT15RfKiVaM21X6ZH/aO/nj/TfWi3U
         f7JgfwP0HOk/d3hWF3ve6DXqC6s3lqvHUpmkMrPsrDEmoTFW5dAwmRhzgJdqtDGT1vvf
         9fIWReqiBqv1Npy1rlNx2Y1zo9kEdvmZMqcjM5c6Jwz+f/1oA8QY03QsTHtoSwRNmeYO
         QUAw==
X-Forwarded-Encrypted: i=1; AJvYcCUpMaI+pWhnlQIXtOgxZo8+l9ua4ywsOBhlC8L64NLMcogW8wgmhrecF+E6Imwixx6uBSg6hD8JF/Fi@vger.kernel.org
X-Gm-Message-State: AOJu0YyALCKfRwTAflACMwMY2bEBouCLS5gQy2kJ+Rns/FK6BiQVVulz
	W1LC44+x+76uNhgOPNRzqPnlUocfVz7TUqrmWHRYOrjoGNGjSa1q3u35TRlJb6xeHnY6Tp2akgZ
	H
X-Gm-Gg: ASbGncuxkurBD2HIxC3anasK1EX1hUC3lam8tiJjTsBJ9iDpiJh9LcMkYYC66bOi1S/
	jLjnvYtJh/oDwpcr+uXROgbi2615i89c4J3i5lJdFkqtXYkZE5Qv/CYRYjR9fWcdXbR6lREYaTH
	0bUHsw59YghEOqAbFmm3r3W2XBSDYd6+g/el2lJmsV4KMbv0LoI+6oma5n5ThR0+mUL/5jbHmmI
	B/EiNXExWTTrFFa5mtE6R5rD3LigXeB5BLgRziI0S5+F+D9mGip4HwZ0ebOWh5yNGLgnQ==
X-Google-Smtp-Source: AGHT+IETuPHPFuuNGFE6WzO5Hx+8zK5/GuDZNTK85Oe+eNBHryZXY+p4CHr5oTbKQs3HzS98KnozpQ==
X-Received: by 2002:a05:600c:1e0d:b0:42c:b9c8:2bb0 with SMTP id 5b1f17b1804b1-4362aa27057mr17130235e9.4.1734089469166;
        Fri, 13 Dec 2024 03:31:09 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824bd634sm6943016f8f.45.2024.12.13.03.31.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 03:31:08 -0800 (PST)
Message-ID: <ae83acc2-534d-49de-a0ec-b2117e5bd4d1@linaro.org>
Date: Fri, 13 Dec 2024 11:31:07 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] arm64: dts: qcom: add venus node for the qcs615
To: Renjiang Han <quic_renjiang@quicinc.com>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241213-add-venus-for-qcs615-v4-0-7e2c9a72d309@quicinc.com>
 <20241213-add-venus-for-qcs615-v4-3-7e2c9a72d309@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241213-add-venus-for-qcs615-v4-3-7e2c9a72d309@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/12/2024 09:56, Renjiang Han wrote:
> +			video-decoder {
> +				compatible = "venus-decoder";
> +			};
> +
> +			video-encoder {
> +				compatible = "venus-encoder";
> +			};

To be honest, I'd prefer not to continue on doing this.

Adding a compat string to existing yaml might work-around the issue but, 
it doesn't really _account_ for the issue.

I've posted a series to fix the problem

20241209-media-staging-24-11-25-rb3-hw-compat-string-v5-0-ef7e5f85f302@linaro.org

Either that or deeper rewrite of venus to remove the above dependencies 
should go ahead.

I'm not in favour of willfully continuing to do the wrong thing, 
especially when per above, there's a working solution for it.

---
bod

