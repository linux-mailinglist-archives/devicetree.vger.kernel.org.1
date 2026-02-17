Return-Path: <devicetree+bounces-266239-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6E/+GXCtlGl7GQIAu9opvQ
	(envelope-from <devicetree+bounces-266239-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:03:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB6314EE00
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:03:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 397C23074793
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:01:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B03A374726;
	Tue, 17 Feb 2026 18:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b="fNWPonfh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4C128B40E
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 18:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771351282; cv=none; b=gj3u6P0p9EtLBOVgTW1GLEHTN5D3lXiugUg21lrgMQC4ifoKTGZKETycaGe6asJ9CoeXZGNJpzDW3XgIhJwa4dHBLcvbTbh0WjO0trhaJcnafgf4ChECE6yvZZg9Al3LntvGXQdIs1PrlHxFgT0mSwP7/rrqUUnJKU7fB9SHruY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771351282; c=relaxed/simple;
	bh=yo7VpR7y2IWG6CuidAdMoCeu5zTOZrbNb5c7C6ANnvQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GK7JpuQnCd9601XP8845iSal1K9dPi2FO5jmgsFVr5JnQH4jCoZ/3Ems3f13I0bz3HjNp90zwn6Ii1deyp/SyEwcM1soiopOKqu/Q+e3Hbsbh6CqDupmx29kO8eynHmsydS++sYwsm5/B9O05Ri4r96c6X771vukx+1YmcBWeSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org; spf=pass smtp.mailfrom=ieee.org; dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b=fNWPonfh; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7d4ba9abbecso4980926a34.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:01:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1771351278; x=1771956078; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D7kdTF2Cckub7dO3x1Hq31N4AgYFSFS+VW8IKBBKDHI=;
        b=fNWPonfhTbwPC0obmOgax4GPc8OzoshhngF0ukfvZPG7NtMG45n++27OEsMXzA86PW
         jKJg42kAvnpAmvsXHsBmV7t7H1JOTgXxi6ViriMkjjE+5M2eJvsW6Vf99WYwHGC1el55
         FdbJx5GO/hA8qhzBEP8YCez4hL1bFae6u0ApQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771351278; x=1771956078;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D7kdTF2Cckub7dO3x1Hq31N4AgYFSFS+VW8IKBBKDHI=;
        b=iykvmI2a2pn5NJKvbz7dWPmOnFqyJKWv1f1T8uHRNdyrf2QG1fH570AIeombph4X2C
         phlcHXhNvgzrFN3oNtntioZpyJdgP5fjF3FZjxVI3k9bXGmo3UuUEIaGoszYE8iiKrgJ
         JSub1Sp1PZd2/cE1NUdp0/RrNP6IMcw3ds7anuKoBsqTt9zZyDiaCWChBA5AOclL1SqH
         66BAbpBCMSbLx3l0jb9bzodaEor3zhFvUAde6hLBFFSfacB37bPHseqhpW76xNM4kuAQ
         lXRV42dNZ3YDBSQRceijL8E6XmjsEKcnGez38bPkifXASMzrV4oyAqGCT0JpdwhZsf+S
         WZmw==
X-Forwarded-Encrypted: i=1; AJvYcCXCtPbWbYl+eHcBg0y2TaTO5pDttsPfSQhP2c0vX/ceGQBLnIwPihOdg8hnU+3vQPs05en/9K+CZWpL@vger.kernel.org
X-Gm-Message-State: AOJu0Ywu92iDVeQK/3gdJVXQk8sHzt08/KbmmnwB/lwk+cwAQj2utqYK
	R6vSKeciu1Rz8WYul+FP3C6ZL73EaapDko/WWyHrdpQvejaSQExIOuqIpjwK73/FuQ==
X-Gm-Gg: AZuq6aIu1lrOIw0HfTySwydPMZ3A25/A5/suNRF0WyBv/GE1oR00FTqj357fkL7EqQB
	0wYTQMD0d29Mx1ZvnWADQrzn98DFPle8zzJk6WH4GYjIrupR24SUfQX6jUSXefsiOMI8szPrQF/
	vrRHVzUhNiosbCtxZ2CkRtdi0WuIDeuPix6+By5dKTomgN5Wb2M0e4PvkKJccWdqqUUDaYPrACl
	+Y4cdGHRppZCgpXtvmU/MYoCxvqRvGmYrPVKhT0MiHMS/h16qfT5IsPBD4aTRstzCRwR1NsJo3s
	OsYChzmv3uXNhQC3dbPfQwsM4AYmAQATOZYHnKYPET9mr4haJ7W2dljTJN4/BqcL+Ixts87XUYB
	yBEKYXSKdRMtapE/XXOlKevAMR8QlwfSJZ52psx3s9OHv1Fo/dKcHxTMb/j3/4QuDMai9OkWgd9
	LlJupjj7w8EOHakNm6OL/6XDW89nxUvs7BuLdKq6HHri8gxxFmTxgxh5bqwZSYK77JdWFe
X-Received: by 2002:a05:6830:348a:b0:7bc:f443:fa3c with SMTP id 46e09a7af769-7d4c31c488emr8662896a34.25.1771351277518;
        Tue, 17 Feb 2026 10:01:17 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.googlemail.com with ESMTPSA id 46e09a7af769-7d4a771bcebsm16698857a34.25.2026.02.17.10.01.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 10:01:16 -0800 (PST)
Message-ID: <6160ac44-dba3-400c-96cf-ec03393cc141@ieee.org>
Date: Tue, 17 Feb 2026 12:01:14 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3 1/3] dt-bindings: sram: qcom,imem: Allow
 modem-tables subnode
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
References: <20260217-topic-ipa_imem-v3-0-d6d8ed1dfb67@oss.qualcomm.com>
 <20260217-topic-ipa_imem-v3-1-d6d8ed1dfb67@oss.qualcomm.com>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <20260217-topic-ipa_imem-v3-1-d6d8ed1dfb67@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ieee.org,reject];
	R_DKIM_ALLOW(-0.20)[ieee.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266239-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ieee.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elder@ieee.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,netdev];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,riscstar.com:email]
X-Rspamd-Queue-Id: 1FB6314EE00
X-Rspamd-Action: no action

On 2/17/26 7:30 AM, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The IP Accelerator hardware/firmware owns a sizeable region within the
> IMEM, named 'modem-tables', containing various packet processing
> configuration data.
> 
> It's not actually accessed by the OS, although we have to IOMMU-map it
> with the IPA device, so that presumably the firmware can act upon it.
> 
> Allow it as a subnode of IMEM.

OK so you'll define a "modem-tables@" property in the SRAM node,
whose phandle will then be referred to by the "sram" property
in the IPA node.

That sounds good to me.  Thanks Konrad.

Reviewed-by: Alex Elder <elder@riscstar.com>

> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>   Documentation/devicetree/bindings/sram/qcom,imem.yaml | 14 ++++++++++++++
>   1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> index 6a627c57ae2f..c63026904061 100644
> --- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> +++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> @@ -67,6 +67,20 @@ properties:
>       $ref: /schemas/power/reset/syscon-reboot-mode.yaml#
>   
>   patternProperties:
> +  "^modem-tables@[0-9a-f]+$":
> +    type: object
> +    description:
> +      Region containing packet processing configuration for the IP Accelerator.
> +
> +    properties:
> +      reg:
> +        maxItems: 1
> +
> +    required:
> +      - reg
> +
> +    additionalProperties: false
> +
>     "^pil-reloc@[0-9a-f]+$":
>       $ref: /schemas/remoteproc/qcom,pil-info.yaml#
>       description: Peripheral image loader relocation region
> 


