Return-Path: <devicetree+bounces-259406-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qCH9JMAyd2mrdAEAu9opvQ
	(envelope-from <devicetree+bounces-259406-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:24:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A8A85FC7
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:24:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 675CB30037D9
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 09:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A349306496;
	Mon, 26 Jan 2026 09:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jSF2iL4B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FD4219A8A
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 09:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769419453; cv=none; b=G4KJI9DaupSEJhD1tW2xXhnupHv0CjTEgJ8xYja7UnzVW8A+ejcDNLALGPB1hGiCwjmlJEV+HJylbyP6z/ET0gqJxNAJuLyIb73lDRYl+sx+W8IX0MY0Z9Q5iZBs5iY9XcJ1wvaT5d7Rrqtg3M5gF+xH5X5wpNG0sfI9GLdG4Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769419453; c=relaxed/simple;
	bh=PH8b/V1Q1mT9rfkq2F9uhIdXTzJFPNPwWmp4gwy2/38=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SB4Ct2ibUHfhbTbB+p8CwvIIkKpZ9NRkXHEnpvjwPlXmQPdmvdo8GtPjavbvt3WpzwqTg4lgoejDi+JKb1IW3eDdvs8e/zblLBB0yIS9+PB3bfskUJX0f9nromVTcXiVrU9knnVTc7OfN3E0b79HGidO1yKeTFeIdqGUHCOujcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jSF2iL4B; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2a12ed4d205so27929215ad.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 01:24:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769419452; x=1770024252; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R1rXOUW1DQERwdv5ge8imyl3g8wFlRzMTXVT1jccS3c=;
        b=jSF2iL4B4CgnalQ0djfeIwi/zMAXkO1o7IsmT7z3B/Hvt8YSw3tBekah6/KCJrsr1Y
         VCbWAcsB1EezGlidrIiHkbk7X1cBd4rabkvjKVlqYSrD09ovpO3gu+QqKP+dEQ1gbD3n
         HM6wjgL+SXHnJoctnjHrRDedRkQxl6x8t8mYsmkCrYpWyEO94yMGNg4IM7IoJSHjdyfy
         Vdh+1nMGUqgTh7HQctdiM49bY9DYF9RZyH8x1SfWgssMInFbRoDlPDWOvA8SzMArL2ms
         0JqKKgiG36zAUE9kkwLD1qZEh+UpCq4n9dB+QOA4HzPBka86P5DyfKfF2rIYPufHN78/
         i/5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769419452; x=1770024252;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R1rXOUW1DQERwdv5ge8imyl3g8wFlRzMTXVT1jccS3c=;
        b=ENIf9PEFAG30aPPx3njnJEuPs3FkJe7yJp22wb04B5rjnAoS9qZHi0tXgUBn3fxoLu
         mP+LBkI9//A6jMicA3FTUzJ62yW+8MtBzHpbTzngXAx6zVTH3VGLEbyenZ+0/L19tneG
         U2aDLE/LOiF8xfHfQ0pYjd04tVYI7M1SvRLwzkgiRc/zgjOVTyWd9L3T/gZZ31OM+x/w
         gVe7KIyZ+K4YDPE974PgBaJaGIM8rXwFXmViDxyYPbW91+iipYPn4eaGh0oUjH+a+/Q2
         X2PTE5OVAusz/rwKsBBlj+/tR+1FnVGAqAF4amXygUkRIJ7cerQnaUBcB/7wI942hrvt
         LGjA==
X-Forwarded-Encrypted: i=1; AJvYcCXvW3pRTY5KFriOqzp4RY4yrQAN2CCg5D4Au0n4HEEhCfwVputMZz81ypZZUAZZ594wIVnAz9L8NGym@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2+t2PIAGdc+NqqVsxKGoS45DSUSoTKaUsVc+/VAfquq04Kt9Q
	hnk8iDyk4ECYdKH34PLJUhA7A5DIJjXxNG/4wQm7ld4vK80ILecqJyVD
X-Gm-Gg: AZuq6aJeeEZdAcIFrykFkXkI6qz5Ji0xWlNPnH9/te1ycJvMTD19A+8pQprQUP84xgY
	0qZl3+4ne2BmBSMhVFUWCO+aFnLcN2Yu3cEVnS460R3u8p6f3cYA6H2yQjERtxRBOsUHi0mmesq
	PUgcuxySQAo40CmL3CpnnJX+VnTybjWKofCOrPmE9MkdI6aKMX1uHM8yWxSWQ0J86F9T9J01bKS
	O+fp+k02Vq891nq3dLhUFqSDZaHUB8ZUbKEcG7I5ocWv9XlbstexjbF/yVtyjOuUw26uQLfPbTC
	kzK/gfwWz4EM8OCq0ZSXotxwS0O5nwrReQNijDtq10iM/6fPJvkeCZf89Zn/3lHGJxaz0TZa88b
	ePKFjbLIBycdiKJu9HXAT0DS3wX4H07EZYQVJHFNGqFIsibAOCUaegYjYxh5xWv/YlZQfgABU0C
	AvlpkEGfySotElcBmG+eFxfcCEwgV1oKNWpCZZx6bCJM0luhj6rMCPwA0l5Ta0cf0UlwqonygUi
	4eqClE=
X-Received: by 2002:a17:903:19c8:b0:2a7:b039:4b52 with SMTP id d9443c01a7336-2a84520a82dmr37069445ad.1.1769419451512;
        Mon, 26 Jan 2026 01:24:11 -0800 (PST)
Received: from ?IPV6:2401:4900:88cb:c6b4:cd90:adda:2c2:44a6? ([2401:4900:88cb:c6b4:cd90:adda:2c2:44a6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8231871f97asm8862126b3a.40.2026.01.26.01.24.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 01:24:11 -0800 (PST)
Message-ID: <4df95337-a86f-46ed-9e4c-2b3b8bcacd3d@gmail.com>
Date: Mon, 26 Jan 2026 14:54:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: nvmem: nxp,lpc1850-otp: convert to DT schema
To: Conor Dooley <conor@kernel.org>
Cc: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260123-lpc1850-otp-v1-1-8bd957dd9c98@gmail.com>
 <20260123-childcare-blend-fcfb6b3401b8@spud>
Content-Language: en-US
From: Akhila YS <akhilayalmati@gmail.com>
In-Reply-To: <20260123-childcare-blend-fcfb6b3401b8@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259406-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: E3A8A85FC7
X-Rspamd-Action: no action


On 23-01-2026 22:50, Conor Dooley wrote:
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> pw-bot: not-applicable

This acked tag is not reflected in kernel lore , my patch description
and signature are missing in your reply.


-- 
Best Regards,
Akhila.


