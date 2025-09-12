Return-Path: <devicetree+bounces-216216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 988FCB540C0
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 05:09:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 527085A63E7
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 03:09:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 649D82264C6;
	Fri, 12 Sep 2025 03:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SIlixAeu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7E331F37DA
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 03:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757646559; cv=none; b=C9OziAfPtsOCcmByT8OnXorRjrwpWJypkNSf6nQijZjIRcsAk3+qlhjii+9jXgF7b1eLn0o6CTM9zWQj96n9YR71lC9U8GuoUGFV2tBBqyGBn6qIWfWfHxSGam0D+BtZeDCjg61uf/M8kTJ177zogXKZlBkcIYI46t8UHO3UXzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757646559; c=relaxed/simple;
	bh=yUI8GG7e0bDczXxnxpCR8zbI++EUhyVr0r5RE8qR0cc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u8QDkAZwvZ99PpMasXq9dB2u/JTJJRoq/U2/INp6i0+2q1iJmNuGXmkXW8mlxtQX/2Qq2E5Lp8/Cwz/KUeW2aKFmM8m4dApSvVapQqpY8jPVNCOzdAlyc2A3Y9CXaT39pavcRBWH7y5E/Qlgk2qeWzccv/ef65ZHHP5c9qFRqZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SIlixAeu; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-25caef29325so9291625ad.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 20:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757646557; x=1758251357; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4geV6ob0qK97VAn3WsxVaPTEAoOywPWCevip8ujLoJY=;
        b=SIlixAeu+drVEKEsaFUNQFZjUHEkqo248Dz361wmfBKrxlNg9sMVpCWfGDYkL1B6GX
         pLwxqibpe7TXiVvieAp8eCAS76LNRSbnkbS3tXmcicXlNl3XmU+xyV3ASBxXyXZsCUO4
         SQrC6rGaU98KsQuRkY8rQZSo4CVZ++3RJgquMzJAQMBcaJtGFAR64Rg99iIz+2IqMQn/
         XE2VG6x8HIfxyVSTFYhjCZEpRGPb9lG5cnGA8A5O1/e7+5qmj7np1mAqE1wV/Rs4bKx/
         ZV6B7eOuVNUsVS+dmh67xV9TI3wq69zyhPWC6S8y8Qqfc51dN6nh+Cgtg2QPjqfNqGa6
         ZlkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757646557; x=1758251357;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4geV6ob0qK97VAn3WsxVaPTEAoOywPWCevip8ujLoJY=;
        b=f/qBsbLETAtAzSmIHOoBChQg71jA9etTEx8KzivC8tCIPwbWGvybBsfwezzyqKLGil
         +ZlLxAz/1/EWzabqOgBr1Tm4exvTaJYsFBE56+60I+QBdb/b1vY1zIbkNCdGjPxjJy01
         hywRLxyk94u96QmKJpUUmKqahZZ3pyVyWgFR5rV25t+e/DChp/ctpZRzCuxB/OD34j+H
         fYDJpOvAQO907xGZ3ODInOaafLLVEXAgZQXYqmQzgc5QP3ZsMeL8ps5x0pap7vx74i40
         LbZxJKNIMsqQ4TXfnAEhhFrs21whnLKD9Vu6L4KZVYLVQvo75fP+jjFD8YXWv4R9JCSP
         2xgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUKSuFifydrYQ/ra4O9f3ufWvJXK+UR9Z7OJGJrIw6FqA8FYtXUkM/L8TyArr8YWU3Muyyj/CLShcTo@vger.kernel.org
X-Gm-Message-State: AOJu0Yzx2DGMZdjuQrHqsfMI8pIySsMtkzQWjZTKlN4czS2MKWIDAIBf
	qQviW8znE8Zn3w6EkW61EQpf/WN0N5DfYSBD8UnuIP0xNzkl0MKcKTqF
X-Gm-Gg: ASbGncuvUcESTQN9sxPMskt3FTIm7SzqjkGdwf8H5encIYfuEjwjD4bIVuQ/gJxz4f9
	RM25sZ3vkQtVZ7nj9ynT2pAgGO1zTBbY9WBH1mOUNId3/RJsLA34E16H6UseiJMByFMOnE8rjgu
	kHXBKvOySHKKUUavS75QxaVWxmo1FxzVQz1CDoms2nIkC6NKHr5Rwr49Vohq1FrcLbuQRwG/3cp
	7evOlfBqzd0aPIpc9XxQvTBEaDl96NltLkMS7CoTd1jFfQOTaLfJeDmXl9lWI3liYIzaqXbP3sW
	GasXJf4A7giOMMPJTfrYbx5QPFFKGJJ4QjI6yXWKTHJhfHsW+/cbUeHvMVRx8p8zPDhcDV32MRQ
	TObff9XtBbBTlMiRl1G3kTtKzTL3+93J81R5u1T3EKb4QL1f5Iff+x8BStmwrfWJ/
X-Google-Smtp-Source: AGHT+IEH+vFRZxmRvPbolGqsR10fXq1V0MB5GrQMkOUwmu9MOHsXS68HiXErC9Ttiqo9utBGOkT7QA==
X-Received: by 2002:a17:903:2c6:b0:24b:bbf2:4791 with SMTP id d9443c01a7336-25d2646f828mr19572755ad.39.1757646557076;
        Thu, 11 Sep 2025 20:09:17 -0700 (PDT)
Received: from [192.168.1.3] (ip68-4-215-93.oc.oc.cox.net. [68.4.215.93])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c3b305427sm32849755ad.138.2025.09.11.20.09.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 20:09:15 -0700 (PDT)
Message-ID: <3b1815e9-b17f-430f-b18b-641f99d9f093@gmail.com>
Date: Thu, 11 Sep 2025 20:09:13 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next] dt-bindings: net: Drop duplicate
 brcm,bcm7445-switch-v4.0.txt
To: Jakub Kicinski <kuba@kernel.org>, "Rob Herring (Arm)" <robh@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250909142339.3219200-2-robh@kernel.org>
 <20250911184329.2992ad3a@kernel.org>
Content-Language: en-US
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20250911184329.2992ad3a@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 9/11/2025 6:43 PM, Jakub Kicinski wrote:
> On Tue,  9 Sep 2025 09:23:38 -0500 Rob Herring (Arm) wrote:
>> The brcm,bcm7445-switch-v4.0.txt binding is already covered by
>> dsa/brcm,sf2.yaml. The listed deprecated properties aren't used anywhere
>> either.
>>
>> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Acked-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


