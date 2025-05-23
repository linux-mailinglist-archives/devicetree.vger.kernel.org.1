Return-Path: <devicetree+bounces-180087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9F7AC292A
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 19:59:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0DFB97A4D19
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 17:58:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EBB5297A45;
	Fri, 23 May 2025 17:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b="C8N9LT75"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F76296FA2
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748023171; cv=none; b=NefXkvZfIrCqS868Sk6kY4d1AmydPoJcWxRtf+oV26sUNS3AIadncLkVIyqJrW8eORjgWssP8nUGHVlJocYe7sBFBFTA6ZuEabiYn+/KihaJptWbgiqajNwQC4jImBQFZsyobZqgtkMY1r2GVp/zbosfX5fX6kFJIHB93VfceTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748023171; c=relaxed/simple;
	bh=xLtmQ0TWKB+NkLXhdkRYKl8da1Hyt1mfZQezqD35yEs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MemM9a+Tb927c5GflusiNTqeIzec3VMj5ns7v69iGwrSjZZZz10fRG3U1idgxIeG8LSjYba8hlkrJqnB+3llqlbUswHbQUlhDL7mltbae+BS0RMnM7zB2nVhR4H9qixWyWYq0+Y4QScmjZFj8KAHDhWtVj5n4HxY7ztz8y7c13M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ieee.org; spf=pass smtp.mailfrom=ieee.org; dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b=C8N9LT75; arc=none smtp.client-ip=209.85.166.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-3dc978b0493so1446395ab.0
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1748023167; x=1748627967; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SGtEFmZ2rVp0Bhcu1O5oY42icjo5BCFEnZcJ+QVCi5k=;
        b=C8N9LT75+cLuq9p0NKlfwoqcK2L0qV4LlVGpw4e+WxnSPyUezwE8GlWCZgm9bqcXTM
         ckisH+OgjZMQcmh1GS3A3piIuoyHnt5QWCQNRQwnh/BPWTReT8wDzXK0rXaHqX5u8hhN
         2N3x/NvQKLYWfQxd/km41ADGnFffl8teWi0l8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748023167; x=1748627967;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SGtEFmZ2rVp0Bhcu1O5oY42icjo5BCFEnZcJ+QVCi5k=;
        b=cCdBNA9ShN5ALsXBOTTiBFQPG5XMc1vBqMJOvW/fijMUezyEo2e7kNSTX5qxpWk3Sf
         2QuT5dlPJnsK5Rb0TolqPQkxjgLbUHs2FucCpHGnz4rKSuV+Ra3SYOZ77lKyQ1PG2XCI
         iwynyGm52skFg4uisS6e0fNBuLBko+ZnAeunGpCpvg79AgUNGU+pZ7Tu3P6TiCU7VMI0
         n4GCNolVzzogYtICrrusS53dYI6M7z2iBq5BosYHy8KpLyPyyaRE16ST5oK6d7Mpe6Hr
         JsZnsT13VgfBg5ZgBRowTmHbOwOer1d0F4HQUP1i3yV03UjVE7SJJHTnq31SgHm+e7aq
         zXkw==
X-Forwarded-Encrypted: i=1; AJvYcCVNBs7iS4q+hlmbBkTgZr/uF0LnU4unPweYJo8Vs2r/GGizXHVwfyWwBj0DcFtC2HOnDqs47ygSeQf2@vger.kernel.org
X-Gm-Message-State: AOJu0YzYKG2IRiWMN2DjD/RZGbyBozRaxdVUBO1NHAWLxU1O7au+dbDw
	tIcn2JuBTCMzCcr6Pn6daILde+FTMFl521rHlFlS/O7wxm7gPOmWzKe5nt5IowWzPg==
X-Gm-Gg: ASbGncu4GsCFiX4LnNxNkooznVdV+186h2PxY3qeFEKprhYLHLtFgG4Xg/hKqoLPfkD
	+CBiDTtIRDTSx+49QRrL27nS0e987rWsepQQ8IDFV3JOmiZiCMoEgfMPDoIAZj0YkxT3NjzIuuB
	JlgpxFAcW8z4W02hMGy+byN04NWT/5ODb6qcsBj/dQIhgflz6KSNYlW7fGtUJ+UsJ+Elirql1ef
	Pos1Kf+uyF6EPU2Yy5M4Dp93nIcYZrNPZz31Ak5pj15QEfZaXoydTWlB7saesrJUtHBzT0Jui+6
	y46vbO5K3tloSKogGP1xnhgbz88il5Lktg4VlG3kJQ1C254wVuF0p8D+w0iKr2QtGy8auc5Yxv0
	uxQgV00Wp4pUo1nBGE+Yg
X-Google-Smtp-Source: AGHT+IEpb1IcvOHrK/fzMraPZSR5ZnUsdHuhgqtnR1Igx7QRkPEVOT3iAbQKQTTUDJaVKlOxTZqGag==
X-Received: by 2002:a05:6e02:3308:b0:3d8:2023:d057 with SMTP id e9e14a558f8ab-3dc9b6cc069mr1052295ab.11.1748023166709;
        Fri, 23 May 2025 10:59:26 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.googlemail.com with ESMTPSA id e9e14a558f8ab-3dc7f126188sm18218695ab.65.2025.05.23.10.59.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 May 2025 10:59:26 -0700 (PDT)
Message-ID: <7707b574-6fcf-487d-909a-d24874f9d686@ieee.org>
Date: Fri, 23 May 2025 12:59:24 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: sram: qcom,imem: Allow modem-tables
To: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alex Elder <elder@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250523-topic-ipa_imem-v1-0-b5d536291c7f@oss.qualcomm.com>
 <20250523-topic-ipa_imem-v1-1-b5d536291c7f@oss.qualcomm.com>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <20250523-topic-ipa_imem-v1-1-b5d536291c7f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/22/25 6:08 PM, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The IP Accelerator hardware/firmware owns a sizeable region within the
> IMEM, ominously named 'modem-tables', presumably having to do with some
> internal IPA-modem specifics.
> 
> It's not actually accessed by the OS, although we have to IOMMU-map it
> with the IPA device, so that presumably the firmware can act upon it.
> 
> Allow it as a subnode of IMEM.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

So this will just show up as a subnode of an sram@... node,
the way "qcom,pil-reloc-info" does.  This is great.

Is it called "modem-tables" in internal documentation?  Or
did you choose this ominous name?

Reviewed-by: Alex Elder <elder@riscstar.com>

> ---
>   Documentation/devicetree/bindings/sram/qcom,imem.yaml | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> index 2711f90d9664b70fcd1e2f7e2dfd3386ed5c1952..7c882819222dc04190db357ac6f9a3a35137cc9e 100644
> --- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> +++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> @@ -51,6 +51,9 @@ properties:
>       $ref: /schemas/power/reset/syscon-reboot-mode.yaml#
>   
>   patternProperties:
> +  "^modem-tables@[0-9a-f]+$":
> +    description: Region reserved for the IP Accelerator
> +
>     "^pil-reloc@[0-9a-f]+$":
>       $ref: /schemas/remoteproc/qcom,pil-info.yaml#
>       description: Peripheral image loader relocation region
> 


