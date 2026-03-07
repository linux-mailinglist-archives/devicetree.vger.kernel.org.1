Return-Path: <devicetree+bounces-272447-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIMfCLc2rGkbnAEAu9opvQ
	(envelope-from <devicetree+bounces-272447-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 15:31:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9404A22C2C3
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 15:31:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE89F302DA37
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 14:31:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 640892BEFEE;
	Sat,  7 Mar 2026 14:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="DOoc/W70"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2438248B
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 14:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772893876; cv=none; b=P8D4W80DQqJgPuwYxHfXFIawaW6YUkIsB26KmO6+MVMGgwypsPkE3l59OiJU/v1hOF+mvidr1rUV+d3yKIO3hvwTIpwk91ccbddoOJNuhX9en9wjObCL6XiZzpnBAH8rFJQlYHqGuAWemOnvwGHQaqBu7P/Uso4/X6Ttw8gjzQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772893876; c=relaxed/simple;
	bh=T7SGNesARXU/UDQl70OG/rRh1m8dgJWlvY27K6o/aSE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b4l7fXpsxDiTqQWZ8JcbbOZ4QsX0oF35/xGeWinjULAZwVT3knopXVmKjRaFS/jv9AMT141HGVYH1Z3vunhlStu3pgpZV8mGT6bxse5bXE9QtZ0RUSjvbQj8MCxljrA1f+KHRlsHNO3eslNJRX2/a+Do00XHGJQiGpnhfgpFUZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=DOoc/W70; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4852a8482fcso10288645e9.3
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 06:31:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772893873; x=1773498673; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MDQMkVUFxT5s/n+9ZbWq4xqHcwWRUDj7wNkJNtnMF90=;
        b=DOoc/W70j3iDOVGEm1tLlsXer/SuqNEIwBHwYGugCDlY3L4oSVx32qb/wPKw6kQCnR
         z+0p4yATbjm6tFs6cNEWBZNpDj0hP8LBSxvaZ+KAwSc1l9DTD0E3MJ4CSXtGvBd9Wvgu
         dXI8q5/W0D2HrZzOj4HnwCrOBHEx9gjE/ENXlfZ8o/dwH3GCu81z8cYtlJgj2rGkEfwa
         AskxAKidPqeTNexrCgQ2sFxda6DOta+Chq2ZBAxRJ1anGMHicchcJTpuMfZ16Ndwd781
         ole2FP/u/uHq3SJp8pc/POQhU1rrqwdDQ0hXRmEi+AScEETSrV0N9T8hA/SojRqAGGNn
         xCMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772893873; x=1773498673;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MDQMkVUFxT5s/n+9ZbWq4xqHcwWRUDj7wNkJNtnMF90=;
        b=wNxsuu/ggMwKMmH4umCWA2jchSDTcQ8nJlPdQCEKJeuN4vOLJQz54DCev2NxbXlInK
         UygBdw9a4g9TPAIPnHvhjAMywOlnsWF2bRo0PsppDe+1zo+X+pPYPahXKxpgL9oq9d9d
         3cDHQ73EzKfMZGNQjF+mb7fC05AJ0fgMftl8tdVtYaNw5TsTBHbtl6eU+rvL8/D6BGGq
         v6gtfBdEnLAwi5Sxpxx+fXLABgRrxSf7Ld/ClaDM8Ph7S0KRT1caGdKBsg/Cjnqbg9vx
         +NjQphMosxAwx04P2NHGjgST4q2uU4Yh+87TbWRBg39PlLOJYpqZwGyDu9kZ912MQ6if
         fKZg==
X-Gm-Message-State: AOJu0Yx0FEFJt+Dp3vi0GNOlx242G9qqaLgYw9CF3vk3Ct92OpxusdkG
	aWAjREzzgmpQNNX4LwROmQ73rFNSlXW+XS2WEjlEoWZhJwT2/ATnauogdocMwDtF618tBf/KFw0
	RYAvq
X-Gm-Gg: ATEYQzxRbwpeRjgUHg9wlhxH/21wvpCRuiO0IBRoIt4zSnlIUPxCNfSoyjitrwCFxp/
	xnI5UTLWBe59zeIu4r02BnIVzK8YcFMHjU607Dj/cWVwizwSP/lLOgOKpmemZWyRYeIdNsROXg1
	gLYGFjQUNMvBnuc4mrEoyEu/WJOQgc8b+HMHV0OBfj2ZBt846DULOPs70KqiV/udpCfqeZcwjK1
	qAQWx6VMfvqMJyUi2IWVWCslrCm4BtXST1LjRESbS3lDIRd+lzZwAEmLuYegrjs17lpD4QzMPSS
	NypUQpoRhZHkNHg1TXHaDUaaCGOQEPHEGc332+Dr1UQq7tIPChTjKcAzX1egZ9LfiFFj6y+we2V
	F+dyl/sBX09AdSV5ZOXb0dCPkmMWQmv1OYiJD+Et2/JTw+zzwD6AKvqu87xT/JsbqRhOdFt0MW9
	Y6A1GOLG0gVFbNanR7FrBXDzMFCoqL9w==
X-Received: by 2002:a05:600c:348c:b0:480:1c69:9d36 with SMTP id 5b1f17b1804b1-4852695941dmr96370335e9.17.1772893873187;
        Sat, 07 Mar 2026 06:31:13 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485237dcf04sm65165115e9.1.2026.03.07.06.31.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2026 06:31:12 -0800 (PST)
Message-ID: <071925cd-a7dd-45dc-b7c3-4a4723edc6ff@tuxon.dev>
Date: Sat, 7 Mar 2026 16:31:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/5] dt-bindings: arm: atmel,at91rm9200-st: convert to
 DT schema
To: Akhila YS <akhilayalmati@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Conor Dooley <conor.dooley@microchip.com>
References: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
 <20260227-arm-microchip-v4-4-7e2ae1c5b5d6@gmail.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260227-arm-microchip-v4-4-7e2ae1c5b5d6@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 9404A22C2C3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272447-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,microchip.com,bootlin.com];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.974];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:dkim,tuxon.dev:email,tuxon.dev:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action



On 2/27/26 17:14, Akhila YS wrote:
> Convert System Timer binding to YAML format.
> Changes during conversion:
> - Add "#address-cells" and "#size-cells" to the properties and required as
>    watchdog is defined as a child node to the timer parent node.
> - Define watchdog as a pattern property along with unit address in
>    examples.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>


