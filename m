Return-Path: <devicetree+bounces-15419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3DE7E9FFF
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 16:31:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 26E32280DB6
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 15:31:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 278AF219E1;
	Mon, 13 Nov 2023 15:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dEUpzZDi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1B321358
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 15:31:00 +0000 (UTC)
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com [IPv6:2607:f8b0:4864:20::735])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4ECBED63;
	Mon, 13 Nov 2023 07:30:59 -0800 (PST)
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-77ba957043cso310752385a.2;
        Mon, 13 Nov 2023 07:30:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699889458; x=1700494258; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=42zhaoIyMCBHeyrbAA4zIRqsQzSZSBrSFxVPTutgP68=;
        b=dEUpzZDirY4pl2VLYg/L3H2omi++inqk1XvPSS25BgBNgNM5Hhhrb8z8zEdFv8uxo9
         3Qgzo5MMQW3Fz7KHoI2nbMCzBUtF12fh3DE+/DPemdGBQjkZa+lb7htMjZdtLoYPamrm
         /B5KrucF52e5DXF7mzXtmO2zTx2Bh1iM5HPe0QHpXCEpGkZHBOoQrbe7dqMvKr5AUYqk
         oadWrTlEBtl0obaM3LLTQFIrwLwTBuolEqPqTEd/t9JOFpK6dIdVL1StiOETHP54Iubi
         BgGMGYQMg3/sH6WJxLZxfMQ6/jRB7svKAQr4JOAOl2Ha1VpFxbUD1wpKikczFUbtUoN6
         fSKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699889458; x=1700494258;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=42zhaoIyMCBHeyrbAA4zIRqsQzSZSBrSFxVPTutgP68=;
        b=ng5rOzQ7h7hQ29fxwelg0EHdI2TVeh8mSTRymmiYbRiT305UAtMITvf3TOz/gM1HZv
         zVC6dyddqchDsk9a6LjXcdqJ7TeA+KT+Wa0UzhWDEKhshySAMbX+xcfMiSQftVAPq6sr
         D6o7F17sgcdlloKTFG4/E5A57gnJKHt9aC7DxXEof06sIAQu3sKh1EfcIeS/n6u1bcI9
         etnOQv9Y+fsrC9/QnrYkrlRTIdMdMSnNsVtmlPiVB/4hw0IYr/7uAtBfytLOwpDIaGaC
         Qicr6S2FEp9k5hP79rWf5e078KfMT0u1wbryJjZ9URM/kRXXQbC90rdjiT/xLTjIgCj/
         i5yg==
X-Gm-Message-State: AOJu0YwTuAAzWaujz1TpQmCqtOB4T0m8hlSqwUgADwHXJiLaseCvuqMT
	OBY2K1MLtjaVP2npbeWryLg=
X-Google-Smtp-Source: AGHT+IElU8MvpadKl2wRkEqmz45iilbvkGXlfOxNER4Oz1lClrz8qKoz4tOA3mvn7UFt2PjegOfdTQ==
X-Received: by 2002:a05:620a:f03:b0:77b:9360:8839 with SMTP id v3-20020a05620a0f0300b0077b93608839mr8383762qkl.68.1699889458387;
        Mon, 13 Nov 2023 07:30:58 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id o1-20020a05620a2a0100b007778503ebf4sm1944477qkp.16.2023.11.13.07.30.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 07:30:57 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Mon, 13 Nov 2023 07:30:55 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Nik Bune <n2h9z4@gmail.com>
Cc: wim@linux-watchdog.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	skhan@linuxfoundation.org, afaerber@suse.de,
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: watchdog: realtek,rtd1295-watchdog: convert
 txt to yaml
Message-ID: <f4deb233-0dc5-442c-9519-b68e62d9e27f@roeck-us.net>
References: <20231112162049.12633-1-n2h9z4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231112162049.12633-1-n2h9z4@gmail.com>

On Sun, Nov 12, 2023 at 05:20:49PM +0100, Nik Bune wrote:
> Convert txt file to yaml. Add maintainers from git blame.
> 
> Signed-off-by: Nik Bune <n2h9z4@gmail.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

