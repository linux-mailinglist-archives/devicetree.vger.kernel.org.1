Return-Path: <devicetree+bounces-220771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DEEB9A471
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 16:37:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E7AB87AC5A1
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 14:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C576307AF0;
	Wed, 24 Sep 2025 14:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BXWTUPow"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C90C307AD4
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 14:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758724605; cv=none; b=ND5Q2PvFnsG1cLmCz7GXxsNmvJpZqOtCoJyxha8BaWLadgJwS91eNyMU+xYto21RVoCmhX65PS2ZVOlycmRw9UUgbdIi26BcubaWLfRQw8RrmL2bg4OvgTkfcLPmjz5UkPWWDqZaMIygcz+6SW1wyIjAwzpdHfzZFFDtQmmnbFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758724605; c=relaxed/simple;
	bh=VidlVO50el1H467lJApxsWJXJg6s6uikstqa3zxjdVg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KlRjwf6KVaeAEw5wedNBo5DsPd8uSDui2dpxQxUqA5xvOh1A9Ws2reiRvOP/F+KDa1c5JsnioRAWKEUHGncny/xfwte6WDwCvAauWssUHW+Pi8zbZ385SwaEJoyXxymr9Kuoq9mR10TFBhzwveSK2VL0GnteaBRlqgg6raJaJ6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BXWTUPow; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-b55562f3130so2194237a12.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 07:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758724603; x=1759329403; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AxgE/VwqMUnmRpk2sPi0rJ9F4/7o5NXDeAMdW4raKNM=;
        b=BXWTUPowVR1rYmOJKOswTxz5Idb79j9b3HcjQTtWHPOoT/Nsmr7L1MhKKUTyKHDCmc
         hY8VkTQswu9ZLT7Ur1tV9ERdtSNyXzMCRjw9QD6B62BqkrshWNIgYihDi2kKpstUhSAu
         KBS9yGyIpWiuSSAqRGJ6pkKoVJshiwn+0rZ3R/PTSUQF9apW6IXZWzl/Xuzv6H4JuYZn
         lOWgyEwwn0EDSZvb7+ep8ri0SwmWdlymVX6pOFrFAdG4vUQn/HM2SqD8EgDbtK/Bdo4K
         KQF0c0Ew2/ujlNOnQNlox5YDrE7D7g+yuKK9mgBgYwkhPT1KL1+Lqo3/4A0vhXzD4c3b
         S8QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758724603; x=1759329403;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AxgE/VwqMUnmRpk2sPi0rJ9F4/7o5NXDeAMdW4raKNM=;
        b=PznPS4AwO/OxjAwsm+pNzH5tdW/TLJaRxpH0MQkU5D5qI7no6/V3FvyfKQRaJXKzuT
         KGt1SPNDHiwsbYKh4QhCiMQfnOtJyiL8Jh9s872N7kjNS34CzA50MF0dSI2LZ4SXRMRm
         Tux3WhOBoEPpt7+sc9i8ESngw3I1qHRHMktmwdbZgr59eX9TK5NoVEO7nOsPUvqCTFEl
         5z5NrMUrIprjyb4bUtRfQcRW0IfxLMoCjMpyb6wJ4eFdGH8LA9wNvgghCVNzYcRKGW8m
         hoieHSvvoRlunetwzo+6fwsSuED+/eAiygQH0Cl7J6KQcd8S1A4LXIhgHVL0idTvKou+
         ZPaA==
X-Forwarded-Encrypted: i=1; AJvYcCVIaD2qXluMWa9G7XGfAMOSb8kRWiV0/jU1lkw89V3lJ5Upyo8f3UGpMG1USEUPaBhVvCaBwMlcoRDK@vger.kernel.org
X-Gm-Message-State: AOJu0YxZ5JaKIe76lhUI7h2EtZ/W1pCoaYg6gM8v87rutZ7KtaKwlWFV
	zprWeOooJc3U9pXKXJXFSHNej7MWdaRzGA4c7/GrwTtHtyCaPpy1x3kJ
X-Gm-Gg: ASbGncsTv8DE/WRzb+TxZztsmbyK1PTOexwAv5eBeneMWRz5VpxcPo3YUIJOpE+BnTz
	mtyXtDoOq5pT8gsbAKowASGvTWNSeizoPFivOBWVY6s35UoBHtLxV7xxCVoBoD0GN3JnBwepllx
	MlTc5gBYDj+OS8W9QIUywW09QK9fTGCzxh8cBtraicQBeyt7NVooaENrdKRSR4ChvhLfCWT3N8P
	1kOOIDI4c8PMXCROjPXascYYSf9BY2Q88VY5sylodGzff+f/bo8zRd1RyGGft3iikpPqmtPE2aP
	HigRzGPCUrlnNZbhKLjcwI4ThciDY1gUrG6pP8vYvVPc511wTLS0742mfA6FAhmPxCpmQ+I41sR
	YvD8hvCOpPioMch4jSvCMe2GSUBQKtUjHVGo=
X-Google-Smtp-Source: AGHT+IHu6iImWwWebqU0fIT3geKZJI+vQ7lMRP2q7Y6UID/bj52Rxi/gS4qRBD5nGfGbcaTqWRH+Jg==
X-Received: by 2002:a17:902:e5d0:b0:267:a231:34d0 with SMTP id d9443c01a7336-27cc5623567mr78793925ad.42.1758724603132;
        Wed, 24 Sep 2025 07:36:43 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26980310ff8sm189560205ad.110.2025.09.24.07.36.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 07:36:42 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 24 Sep 2025 07:36:41 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Cosmo Chou <chou.cosmo@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	jdelvare@suse.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
	linux-doc@vger.kernel.org, corbet@lwn.net, cosmo.chou@quantatw.com
Subject: Re: [PATCH 1/2] dt-bindings: trivial-devices: add mps,mp5998
Message-ID: <4f57c182-d3d1-4007-80db-915ebbb6fe1f@roeck-us.net>
References: <20250916095026.800164-1-chou.cosmo@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916095026.800164-1-chou.cosmo@gmail.com>

On Tue, Sep 16, 2025 at 05:50:25PM +0800, Cosmo Chou wrote:
> Add dt-bindings for MPS mp5998 hot-swap controller.
> 
> Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Applied.

Guenter

