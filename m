Return-Path: <devicetree+bounces-226652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C31BDA487
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:17:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8E6B19A509F
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:16:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDC732FFF9D;
	Tue, 14 Oct 2025 15:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lcS0sOjc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584E62FF65C
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760454904; cv=none; b=JntomO3NOD/X7M9VJS1+1z5Z8xjloBelgt/C7pV2st0x865AT13GNsjmuHTzfKKnZVpNl3zVC20afJbZ9IKnfZEPIYW8WoU+Ckkn1t0ypQEgBNM3AvE2r4cS7hkWfrJwiQYzn+duKmsNQFicAvQxT5jgUdZvO7zyPKJibbybk2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760454904; c=relaxed/simple;
	bh=2EO7+Mw86jTZ32ILWnabkRyWDVKXtGXa/OUDfDpKJjY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O5FkbHt0CUelA/kvIJTGg3taeOVKi2slRQcBqwtGqnQ+YuIexs8EI4m9s4YG3lTL1K+3bF/rg2HBBO52RTWBNDrIODOLSXa64y8lqtwciuPNsy1wF4AjZOBoHNdCRbFxev0/dTNpKZwrliOcJH+sZh0KQEsXA5C3gwgLlo6oyIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lcS0sOjc; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-77f605f22easo4775847b3a.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760454903; x=1761059703; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tsJaopK5XFjKmHQfNpGpFGBdSNc9d5lFVOS9F95Qcqo=;
        b=lcS0sOjcFwUPvH5ObTKys9yu8YkYKFDxDG6ghazz69iYBpx9NpTdDvibQ8y4LwWpID
         ACysjduopTaku7ke3zF+Kof/SpDoFrCrvyJay2omlvoOB3QLyj0Rr7jpLo9+i3Rj5Xv4
         eGVzF6ilUyXZhn6tnsq+TUuUzfokbdKFjsdU7Yz9AJyHEZayUdEEIB1/sx0rXb6l+Wmf
         t30wF3+RexFgzfn13h5yUYAhXjl9QI4sDF6t/TqmLo+IOJ4FJR84dCxQoShl9TO/C7Lr
         mgvCtrxbFhKhACJ9cLu1UlzmLqzpYTyLwUu2YtzwQ4/LdtTweJ77FHWsxMk2MY0ORoh7
         AKeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760454903; x=1761059703;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tsJaopK5XFjKmHQfNpGpFGBdSNc9d5lFVOS9F95Qcqo=;
        b=YINVfCYruw6D9clBTtNmU5iCwWKuBV5SJ7nTzXjJZFjJjrhe+yTPnQS6whT47fmXQo
         Fvpg3N1xQ+Ip4QbsJdsreCwtYSKIRV7crlK4B9zdOWZGzuzOWV3EQsBfRGjf7BGFX7+R
         v6QjTK7p/RYTbWcXjC6BFyi7UYVkfN5EANRcbPAPFPA78IU8YOdTsSaXhWsYCAi9yJuc
         1ng4HtEzaUuYuEql3sOREC0oVJ9h//uttHPqCJnEpIi0XPFDUlGs30TnRKf94oPJxErt
         pD1QqQ+GIWMU10i04dc3X2ogJPdPic8U0rI2Nna/oSZC3i12b0B9X8GuHquKHtYllh5z
         BPXg==
X-Forwarded-Encrypted: i=1; AJvYcCUf8YW4wf+23z7kGehes/iOSKETCAcvusAWs5rpmcn+AAL18/UvpjaxncW8Qm5CBqdrc78IeGBawIYn@vger.kernel.org
X-Gm-Message-State: AOJu0YzeVYJRH986E4Pp9gqlyLDiJhzQp4h2Kre9EgkBSk0s2MifUOoF
	qYmA5bmhAUh9Lun9VkQvnedslmoLi9YR6+KoHP5U7FR+GLgsnTCgNmif
X-Gm-Gg: ASbGncvIRyLYDouBct5SWB6bQisPGSmf/89zLXDuTgtEJ3dTxl6urJjyCp3xPwhvCgK
	eZJKHOlSqhuylfkRyunCgX2pE9QH2scz24F+HJ5+QBkR2piRZDucVVhxQBr4DtJUXDY9cBTyMcG
	rgeGeXcbm3zj3+EtR3UlPrgyjH+u3yg2kzyk1x8jGX/wiu8VzHoGZ9Huf79MtK+C1PtdHKFUsuN
	U0LH61S7mI2RDY/YwtTMKkp2UEi3WWZVeQstdeiZVp7eVRNsdAp15JnqUXJFrGJ4MCwzrvuGfCb
	+b5ALBdBwACHfvJ2QKO2ATzlKq6rD3h111xh7yJK2Vw5nWm6Vb3yNBK3B4qIFqrUCwVSxhNoQlJ
	X5eafzz2h2QwC3K2q80K5yE57pJzu+1SZpf6z0+2c2Mm7BN/LYqTGhOR9knjsx4rq
X-Google-Smtp-Source: AGHT+IGWguCBLqbqbMAjLBee+il9521eo9UWOowPf5VuIX+2bcsg+HZx1vn/fioij512M/cXcjIt3Q==
X-Received: by 2002:a05:6a00:98a:b0:77f:45fc:9619 with SMTP id d2e1a72fcca58-79385703e36mr28873914b3a.2.1760454902520;
        Tue, 14 Oct 2025 08:15:02 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992b0604cfsm15625842b3a.9.2025.10.14.08.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 08:15:01 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 14 Oct 2025 08:15:00 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Kim Seer Paller <kimseer.paller@analog.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Marcelo Schmitt <marcelo.schmitt@analog.com>
Subject: Re: [PATCH] dt-bindings: hwmon: pmbus/max17616: Add SMBALERT
 interrupt property
Message-ID: <bed87459-d395-4517-9ea7-ef155c9af126@roeck-us.net>
References: <20251013-upstream-max17616-v1-1-0e15002479c3@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251013-upstream-max17616-v1-1-0e15002479c3@analog.com>

On Mon, Oct 13, 2025 at 01:00:47PM +0800, Kim Seer Paller wrote:
> Add interrupt property to document the SMBALERT pin functionality for
> fault condition signal.
> 
> Suggested-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> Signed-off-by: Kim Seer Paller <kimseer.paller@analog.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Applied.

Thanks,
Guenter

