Return-Path: <devicetree+bounces-172984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4223AAA7242
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 14:40:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DBC943AF33C
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 12:40:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20903252904;
	Fri,  2 May 2025 12:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kCAX5DcH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41299242D6A
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 12:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746189619; cv=none; b=VMexlu4CWVAW7jCDicSu4QNGw4yuK4IWgrWSh9hGfHE1bG0VaPOotOiHuKdBPLE7zCe4B/eZlr0JxtoXdDNtcZZ7Eh3dBraJ7YxF46MfCqlf59zYw3vbCNOs8RX4zcnV5EldCexB83dBzcG5QKM1vQ3UWyAmin05rtnJcZcvvlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746189619; c=relaxed/simple;
	bh=kXHh4bekX0rbt5Td7HC5fwo2DH3JDp731V0c2xbEl1A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eGnyw2C269rW6uirFnX404pDFZJopnBImf5mn340L3zjxe4HqsynyD+Fr7pWhAIbe/VsD5yEzDukVnU4WDMkH8nx7/p4hJe7HQCpixTnqgXuTwaihg2AkXUJXPri35ooYYA0qWrrSr1B9KPWscbGxLdIjsAQ4Xw+sxALnuOD2Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kCAX5DcH; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-39141ffa9fcso2061499f8f.0
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 05:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746189615; x=1746794415; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hO4jrfvcXwDOgHznp3vJRhe4wcy5ANNCwq/KWVr/OIk=;
        b=kCAX5DcH8ZLfwkB7SEtsP3nRJOWEfcU6DzqLGmsKGTjRwHx+ez97kSmPfnCtG96A5x
         HnVzISr+thTYQnMpIj0EFPl/qu3u+SryIrlh7TnwKZ4DGeYu9gi/t4WJ4AXj2eJCBcrG
         W2MXeOGFqRF1iWripW8pAezAbQ86PVQH+PBFCE013Sfd8q8IVy5dXXGzimw5RX6knWrS
         jTZ2dPqLS//ppa1NKZDZXKvKWCy8hOT+hvMd30QbqN6+/pqhYcRiknYTBJH5JTfEfdd0
         C1xVYgqw+yr3E/JuUZj3JpUVXE8FaW/DhoauZQLXQEVUWzb/3YSGMmwdKN9wIUfoEnnt
         oKAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746189615; x=1746794415;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hO4jrfvcXwDOgHznp3vJRhe4wcy5ANNCwq/KWVr/OIk=;
        b=d4/elCKTZp5Wi5bFOF55CCZsaEIjUzOygItE1STNyta0Cbjscb46D894Pd5zzyjRxf
         WTGeFRkODX2rnL7g5nO8Zmfd9pOPfplz8uX9ymOFe4ab4d6khLgjJ4rGpeQX7BgKiPZh
         TXRyHlPJAJJ1fzteuwiGMkNk3BOAIvBRjqewQKVveQLSXUv4lmOgyfXrpC9EKhOnJw2U
         dE47wporTLTU/oxB6jtUhw9XA571/HTNh7U5ET1H+d/CtW1lE1QPVcNImfnJWwOuZVHi
         d4T8JRjmrb5C8Wp3W+V22YOJAV+GGiOMYnMvE4SRWqYNWqCm1TGMkksL2eyuD6HyFZIO
         04Cw==
X-Forwarded-Encrypted: i=1; AJvYcCVl5Lph4enQWnEKZJXe5Z5stoZ8QesT6ReRBYdLWNu+6thNhulzhzLUVAX1RfKQlzo63n++JlrwZStc@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/vxSIcK9WPLEV1zl2vsfkPIX/HQQZV1K/K5lfh1+i4tPLWfwy
	pKBwyqXpDDhhw7Sp1ckQOJoaveJpQGZP7+s3xHiw0rKbgEqEpvdM9t4KwyoU4Q0=
X-Gm-Gg: ASbGncvI92ZDOhaPgCmVqsaVpqcyXlKbEerUGATDv6Sp5OW6W1pMTC2SJBhshL5/jcf
	Ln851lN7SG/yNISFFPc/0uVo44vB3tdeBKRpTzbR2G1gJXm0EaPukcimox+6vD++j1dSN6uO5Z2
	7jiD1yGgWFVcEQqVoofYkQDzxJox/3RnJ0h8l2xe+Hp+2Eoje0Bk+/mVGqzylsaRF2SZ6+WX4Py
	/tvMGaKQkEXRfHS914jn1CiCiv+dtEF0Tre5K49vCEcyGnn6SVT2bqctTRhJnQ6S3/jJjSUVe27
	tTZVcGhEyikiH4okr8nKTDTeoQXjFG0dOs64TPeYOgbdrOPYun0ZRrNyf9eNGnJB7VSKDvQJX6g
	BCwlP1Y4x66fO2BzL
X-Google-Smtp-Source: AGHT+IEOS82TsR2KY66VItn5wS/PhdQ5Z/iPWuns9/rZodNO7i5a6/Ht1tcfU7koaHBozYfd9ylhJQ==
X-Received: by 2002:a05:6000:1a88:b0:3a0:7fc3:b1dc with SMTP id ffacd0b85a97d-3a099add333mr1924412f8f.32.1746189615520;
        Fri, 02 May 2025 05:40:15 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a099b107c4sm2043868f8f.76.2025.05.02.05.40.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 05:40:15 -0700 (PDT)
Message-ID: <bc9ba136-bd99-4c6c-be97-8915464cfb11@linaro.org>
Date: Fri, 2 May 2025 13:40:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/23] media: iris: Track flush responses to prevent
 premature completion
To: Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stefan Schmidt <stefan.schmidt@linaro.org>, Hans Verkuil
 <hverkuil@xs4all.nl>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 20250417-topic-sm8x50-iris-v10-v7-0-f020cb1d0e98@linaro.org,
 20250424-qcs8300_iris-v5-0-f118f505c300@quicinc.com, stable@vger.kernel.org
References: <20250502-qcom-iris-hevc-vp9-v3-0-552158a10a7d@quicinc.com>
 <20250502-qcom-iris-hevc-vp9-v3-10-552158a10a7d@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250502-qcom-iris-hevc-vp9-v3-10-552158a10a7d@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/05/2025 20:13, Dikshita Agarwal wrote:
> Currently, two types of flush commands are queued to the firmware,
> the first flush queued as part of sequence change, does not wait for a
> response, while the second flush queued as part of stop, expects a
> completion response before proceeding further.
> 
> Due to timing issue, the flush response corresponding to the first
> command could arrive after the second flush is issued. This casuses the
> driver to incorrectly assume that the second flush has completed,
> leading to the premature signaling of flush_completion.
> 
> To address this, introduce a counter to track the number of pending
> flush responses and signal flush completion only when all expected
> responses are received.

Is there no other way to correlate command/response than a counter on 
the APSS side ?

Usually command/response protocols have some kind of identifier field or 
sequence number embedded in the protocol headers.

---
bod

