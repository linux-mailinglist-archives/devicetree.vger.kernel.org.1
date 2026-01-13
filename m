Return-Path: <devicetree+bounces-254213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EFED15EAF
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 01:05:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A7FDB3015961
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 00:05:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 095DA171C9;
	Tue, 13 Jan 2026 00:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W3Zxm7KM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f50.google.com (mail-dl1-f50.google.com [74.125.82.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93E45E555
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 00:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768262724; cv=none; b=Q2AkyovNAZDSAQt3PPvQzScvoUDwhnxKaUhf2dfRTfFNd7/xoyNhtAgLYK+ynG1X1OVUgj3vs+38im7Xp2hDslNcA387Iafht5APHY8YyfujwzeK1o2FYxtN4BKWFioVMJvCfFZAYNC4kzdiGoCPr+Z+x2EljEDfD59v0V8J6qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768262724; c=relaxed/simple;
	bh=TBQZ706dz2v4czmT9bidyuALkagvTVYafuXaqgUtD1A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JZ2cQD0RrZYTyEyprKeos2KOuAR8qM3PMH0sClG7lmoTM06+1f3Xm3NhDyKjkiP+opi5bMaCW9ZTEyi5J78hOwf1/K52XyuaKizdhOF/yjPX8ajAtx1jvJrnFkSfA+bKei4A8i5vacjtcGTQexFYIytCQ4COqH35+CZeVTo9cgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W3Zxm7KM; arc=none smtp.client-ip=74.125.82.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f50.google.com with SMTP id a92af1059eb24-121a0bcd364so7847827c88.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 16:05:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768262723; x=1768867523; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GncgElqiq32w9qexfmBMBu8AFPxia/UeTgvOHBdx+u0=;
        b=W3Zxm7KM/4R8zViV7ZSa89zGO8HTGUCNGQmS4FI7s17a1bs4qo0ylv5Z2j/shLpGzR
         plrEvnAM2klVglrUaI83dIjGu41lC25Mrc2AuNoM770yUvCmHDg+PkT5LbLYbjq8l5F4
         WbfrGQ4ZIvAAQMNvNFxrFDutJz2e1wk2Qv5l9Vo3ioAs49BC4uKiLIpLfbie3nhlWyFw
         voaEghDLE5SaDgEWcC9wwwLFifH2V5H4z+eTJ5K+IZJ9W/RP9fT1ZBF5bMvg51a2jVwW
         Gs+O1pYQ+a79ED8wtpWpvvxJUbxK01VosjOc+COsmJcq0esKcLllHEy+2xEJwvD7HrYY
         j4VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768262723; x=1768867523;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GncgElqiq32w9qexfmBMBu8AFPxia/UeTgvOHBdx+u0=;
        b=d5nZDS2k2UPqvIkFxHONa4EnN2R6X5o1GFdFKjmkSbZfqXIhy4l7rYqVpOgmVCRfyn
         jZtlYBQG1tIHj1ki9QbTW/x/6N0eVGKMgrQhn1Os9vtmjUpUZr9VRegoR5JTTRcDdGDT
         sv+/wxiXsSSwfKJh46YyuFuHmIPxKUKV8mHFOOPbBv3qWudQjyUDycxb4PHvfDXz5GX5
         yMBtW96vjCy+ktrUWNxKcxa4ulggFkgQK7SsXVHkIMI/pUbAGdROYQlEMcqGUbiJF1Jk
         zhox1fYP7Q7F4IZoqnp4VL3EUZ2HSR1FpyLXCwbPMuhcTtYhrm9iBHFYKnHPE+9T8rIm
         oOdg==
X-Forwarded-Encrypted: i=1; AJvYcCUHtOb0w8XU7LUiEinJduCCZmsKnlKolyFzOhVlpDt5MED0dIvYB7Xc0MvZjIsUll421FIqLhscqWnt@vger.kernel.org
X-Gm-Message-State: AOJu0YzAUPSXaSWwQL/KkJ7SbPjG3mX1pYFkdedmK7yq0vXHyMDyxhWg
	N+kDFT4qmaDGqCvoLCmKEQ3y0T4FShyZc/pvwq2OenGnzrrBOj3Ldimk
X-Gm-Gg: AY/fxX6Xo9GGp4PhHRWUnKORqjt/FbLf3amk+fNL4v+/nxyrJKIZ4VnvAqI2xKdKBcu
	PYJvYd18S/D45YdGOOuwttfIBKY3CpnU+dcR7DtC4zyS9S928GZXTPE6hUxiyh0uTCCBzkG9U7s
	BpG6YElW6qaSE5jGWXIjG8kglSo473dmrn3rKyTGiZUsSN8q8I9KRJzlgrqLQCSXBMYkFtVEboZ
	C4PrnA0oLeTV16blV13FEXpG3KqLnCmtDbWquIWs5779aXqFr0ni50U8hGNZQA540du3Bt0pBwT
	E2OhJbthvZ3L/1027y5SovpTur4T3ljkPqSMCoW8JMXKWHtPejjoUiPLJs92w3SsvtT7l+4tRJ4
	P2VM3/+9UAcRGL8akkooB53ujCvIROyv6+b6rbsOb8/YgYioVv0yxfS23ug5CPtgFpoTjKAFk9r
	1zSSdaSB3EJxCAL6x16QS/RqpX
X-Google-Smtp-Source: AGHT+IH2st110NI9ogLDebj2HC2DR5r6GB93sOZj+ArBjQ5xYxHE/S9g7UoPc+q/6FHGx3twpcufbg==
X-Received: by 2002:a05:7022:eacb:b0:119:e56c:18b3 with SMTP id a92af1059eb24-121f8b7bb53mr13709063c88.27.1768262722658;
        Mon, 12 Jan 2026 16:05:22 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121f243f6c7sm20613445c88.7.2026.01.12.16.05.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 16:05:22 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Mon, 12 Jan 2026 16:05:21 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Yuxi Wang <Yuxi.Wang@monolithicpower.com>
Cc: corbet@lwn.net, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, wyx137120466@gmail.com,
	linux-hwmon@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: hwmon: Add mps mp5926 driver bindings
Message-ID: <90dd6919-562a-4697-843e-cca988806cf6@roeck-us.net>
References: <20251223012231.1701-1-Yuxi.Wang@monolithicpower.com>
 <20251223012231.1701-2-Yuxi.Wang@monolithicpower.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223012231.1701-2-Yuxi.Wang@monolithicpower.com>

On Tue, Dec 23, 2025 at 09:22:30AM +0800, Yuxi Wang wrote:
> Add a device tree bindings for mp5926 device.
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Yuxi Wang <Yuxi.Wang@monolithicpower.com>

Applied.

Thanks,
Guenter

