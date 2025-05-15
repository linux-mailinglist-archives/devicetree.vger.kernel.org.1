Return-Path: <devicetree+bounces-177548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D88AB803A
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 10:21:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6C8DB17446F
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 08:21:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05C002882CE;
	Thu, 15 May 2025 08:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LiKr6XlI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B322882AD
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747297274; cv=none; b=OZioEWtMf6V/3QiXGLQ9lCrq/QirK251m0lQ3OBP2tZw8QWUO5vusAyfaR9NFQGVlg2x4ykyJCXsWJVHaI0UAgO415YS2dF34XxgaPTxMJOv3j6nzkT7CorB+afFWypaOH3nhBfUPFc62hy9Tih4usML2CVAW4lXuzMsAAsSTt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747297274; c=relaxed/simple;
	bh=uM73HkG99+TNT8nsvdlnT2Zs1LVrH6Lrgr5PnJjjj3o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kjygxXyJFaBXTGmCOEcpHxyi/7CXnCAy+6W7sngxr5UTUeWQ8T7JD7eZDsqeNcvsOW9kk1Cd7UfE6rQy86DOM4RPCdVMsBxD9zDFc6OYxKLwEn0Tm8VYZOcw68CES3s6fSpox1+F6QatDo2IftbW/azmHtsDTS8IqdBonFDeMRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LiKr6XlI; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-442ea341570so3935625e9.1
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 01:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747297271; x=1747902071; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rgUQ3RNTO7GU8Z0eVPaF+SACy3D+AkDLa3fqsLEBtBg=;
        b=LiKr6XlIzq86B+OpgtVTCwkzGSdrN2YhPMRYFtiKI9siioGQwOTi/AXalt6VmaGnET
         QUQkgzBN8MqR9/9EoKgqtIwj3wV17urNALK8HqoRhepnFuddnGN74fWmTp+enQVlrayL
         PGo3sppMqoJYMk4yCTbDbEfhVRQKip3FjjUEq6BIAaqNotPODfeShK684o/bDhtT2BdE
         5OzGpUK4pHlcrDGIrfOVXI/FlydOU5fz+Az/25eP43FjGy9X+w+b7xUOYJX6KlC7lTLZ
         IovI96QEIGV+220rdIaplyR+Kcdw2oFmmrgbjk07SyAyiZkOiBrEFTRcYsX72caJhDIa
         tCIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747297271; x=1747902071;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rgUQ3RNTO7GU8Z0eVPaF+SACy3D+AkDLa3fqsLEBtBg=;
        b=HttS82dXBI3VO3XEBUaLSs8/rTqoaOn7PWFP2hJBKEnqjIoCeVMwKjw/TZdmi9mmax
         DFv4TigpAfbj92eJ8I5iCocd5b3EIjcwBMswbTseGg6MvnCbYjktSWLsrLgLJSC86SiL
         qa3LcztdbSDJyNrlE8qe+A81aRjRHWnjgSXjJTkYPYIy4YEZn6Q/HPco+yfjbZWpbtit
         Y1nGPIwB+px1d+sobVUcjw0kUVDcHhumiV1oRCqKmgefdFemj2qPmZFF8TEJuLc4HyLq
         D1Oc9FxoFzdzk0RLVK/wu6t+8nrUocQMUDfANBn6MVJn6vbZa6mjkPskP4EgYkG0P3qz
         tU9g==
X-Forwarded-Encrypted: i=1; AJvYcCX1BK64lbYXDEWTgqt5bmOJLLnBCnIaHNbW8vO+oXVDkJ5GXrXiv6o6mrPFzLHy2UZxRSMr2y3yaQhX@vger.kernel.org
X-Gm-Message-State: AOJu0YzOaunKp/rrgc27EfgIHc1K0pTh4t4EqSwrM2wqkGyNjHWjXjZ2
	u3/NumvInRKn1vJr2HKgJxuNbkEwjvazEOdkkfwiOKuf0khMoXHdR3N5kUD5mUU=
X-Gm-Gg: ASbGncuyR09AkmONYIscUGGkJP0etmWo2vkg1yK852HZO5WshRQVmYuz8MMPBs9ACJC
	1h7uFE83aU87n0eIXqHtkDDYcEBGc5ACt7lVR8xIBPMMjUr1BwgH/5W3uqYUGElgZ+SCYRl7bnL
	nnbe4USxGaqZ4a3u23f/a5+7iHMurzuv7XmJjrh6eIZ9Yn3sHvJx4NKLgA8ZUU3GdqNIkWaJrs1
	D5pvOiTFDAAOx/0ydg7Oie1xaIsM80d6Lw67bcAPIumN6mYGiY2rzD6dSuTpk0FpDyURqkpCEVO
	8gTM33kBBnN0MUCItAsTlHbQz/pDCvJmyo0cqmOxSatb1rqDFgkP+xYDDlYXVxMVJzJrP3bR9DT
	45PoP4Pm3YRDHSw==
X-Google-Smtp-Source: AGHT+IHfH0V/L6X1amxlYzN2860kBxVyRho6eEtSaj0Ukx7jim95NGCIF0Zz8dm/T26dLPE/wkBEfw==
X-Received: by 2002:a05:600c:3f0f:b0:43d:fa58:8378 with SMTP id 5b1f17b1804b1-442f9714e8amr13086825e9.33.1747297271274;
        Thu, 15 May 2025 01:21:11 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f396c3a4sm61410245e9.26.2025.05.15.01.21.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 01:21:10 -0700 (PDT)
Date: Thu, 15 May 2025 10:21:09 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexander Shiyan <shc_work@mail.ru>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: timer: Convert cirrus,clps711x-timer to DT
 schema
Message-ID: <aCWj9ZHaSH9z3-TV@mai.linaro.org>
References: <20250506022215.2586595-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250506022215.2586595-1-robh@kernel.org>

On Mon, May 05, 2025 at 09:22:14PM -0500, Rob Herring wrote:
> Convert the Cirrus CLPS711x timer binding to DT schema format. It's a
> straight-forward conversion.
> 
> Drop the aliases node and second example which aren't relevant.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

