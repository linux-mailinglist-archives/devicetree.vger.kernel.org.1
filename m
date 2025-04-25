Return-Path: <devicetree+bounces-170969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC86A9CCFF
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 17:30:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CED964E0C58
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 15:30:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3440328A1D8;
	Fri, 25 Apr 2025 15:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vIY7oGRd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F29D289346
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 15:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745595018; cv=none; b=DZJQDKkFF9WORr2HcuCsjZX+3NghKzEAod26NYWCO2yu7LkozUjDBQSbStTEtwQ/Ab+whpvxv2Dd/hFdxUnVZ6BlKjSZlNPleKoQdzKP0uBTPnvPFIDPqwnFM58+sw76kcQf6gcuiRb8MGwPIV4sN74ex/O9T4jA7Un1klqr6HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745595018; c=relaxed/simple;
	bh=ahFIwcIRMsxGsYw7Ro1znBHhQb9IRWhbo25rb6BKN1s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EE/eoP3u9XhjSoIr4BzFHQadMO+XS4R+WzRFbdr7FScB7blKqXXIt90EJEDOHLHSgwDDI59ivFJo5g9/Ac9jiflb50lj9vDlsFe/rWiv0cdx8INGkXiKfVn8SfqaW0yNV43D5tDvc8XWx53ja6uo/tw7qYgNRW1IUw97EYgJ1iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vIY7oGRd; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-39ee5a5bb66so1444643f8f.3
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 08:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745595014; x=1746199814; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XYX9LNywUVjZ5MKIhmplUJhVT60qSNh9kSQfKfBdFKY=;
        b=vIY7oGRd8jYvnGLP4tQWZxxx6C8AFthUwW6eEVVbdrkJLWUf1be9CY84oNfaJ1Ynwt
         OUoth6j+G8ubGm8ByBCLEEfbsyXOA6cbPDZn0DAnRtXkPENRnVTcEfrl7+Fps/gdzad7
         xwZQnnLEbhGFn03LsCYZNpEkZPynC8+30FV4Kw6oOyrAa+h62XHI2+UKncKY21yZeZj3
         JEaF8XG6RKy0hAnrNhi6chSpxfBlx8uB+UGJoAGcVad4AS+53VlNDGjFfv/07B0zmBkj
         vlBTOW4vs5zETlF/4dDAqXMRACkfjMtD3af4nrzBZH/m1fUcCn8bpATx7RXfysVecQFf
         KM5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745595014; x=1746199814;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XYX9LNywUVjZ5MKIhmplUJhVT60qSNh9kSQfKfBdFKY=;
        b=uDoX8VSSvOQKI7LUKdb2c3LLP+HJgGn6RnUh8DCGqSCduSicKfIQ8sjfl3HrpTmcxY
         s0Y7Nz3VkEZqx3w17Q9f2Z4FYxvLjlXL7XMlNdc74H1vqXrEy5qBe9GUDuz1X6zBSOzd
         mgi1TYV9mp4mKz30IKxD/RdFxFE/DB2wCtREJgAirbG/mL748VadrzW55bDWOfEnnJwz
         DlhozG11kIYEnJOEeUmvzSp1pgDinLGoOWayNvset0D0W2FVF78n2tD2oLlK1/IGYybp
         sSX9OMwNJKnZcETkAiF8R41eSW6HAvntqQVqW2s7Z+zngZAYeH52xArGafrCHRouKWkp
         YSVg==
X-Forwarded-Encrypted: i=1; AJvYcCWXvrKOU53fBashQtPrMld0b4gDS30yz7pN79SyYcn15G5T8YzR27rJwZ4jFelodPBG4b1frIhxM181@vger.kernel.org
X-Gm-Message-State: AOJu0YwYRKn22QSm9lA1IiixzXt30A4reDad3voGqwT/pk8lKuHRq6PA
	Uo3Cl3mYJNwQLZaNLkyMqBoXd449lLI8MTWZqR8H460rQVzX+O4H1RLis0nF0Vc=
X-Gm-Gg: ASbGncvVmjaYyu8cpGPRs2tE4TV9I/6gsZ8xGKokajIaie7Re1bxf7ZUQL+/cn0hsKB
	zWtWZ3m4gNEkobxIu1Sz9a7r36X7woUiZemkWzSvn7KgiyhVzuczvmeIF1ENuBM2B/ynWRMZFq/
	OPdapv8M77T0DuoD0WzgJjG9oW+mVvWHfBOPcbcBhUFh2z4z4a+EJ1y9wy3qDxcLeTx7BIg0Axz
	e++0rYfbxBNCaNN8lMEySQG+eW9lytegt/tJ6XHcdFoTVZsvv0C2CFNcc+MIbJ/lhS8UNJG7kH5
	mr7P1LthYn2SWDBeytiqWe0dvhUPKWCQIS/8tR9jelIPA9F7BQ7hoEaO
X-Google-Smtp-Source: AGHT+IGyQoffBkkjn9GdlBOynB35D8e4ETPc01tgM75yAlc1oqBxq4rXGz8GsC/XanHp8nvcBgQZNw==
X-Received: by 2002:a5d:6489:0:b0:39c:1f02:449f with SMTP id ffacd0b85a97d-3a074e0e059mr2152557f8f.2.1745595014541;
        Fri, 25 Apr 2025 08:30:14 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3a073e6daa0sm2592945f8f.101.2025.04.25.08.30.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 08:30:14 -0700 (PDT)
Date: Fri, 25 Apr 2025 18:30:10 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: "zhangzekun (A)" <zhangzekun11@huawei.com>,
	Oleksij Rempel <o.rempel@pengutronix.de>, robh@kernel.org,
	saravanak@google.com, justin.chen@broadcom.com,
	florian.fainelli@broadcom.com, andrew+netdev@lunn.ch,
	kuba@kernel.org, kory.maincent@bootlin.com,
	jacopo+renesas@jmondi.org, kieran.bingham+renesas@ideasonboard.com,
	maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com,
	olteanv@gmail.com, davem@davemloft.net, taras.chornyi@plvision.eu,
	edumazet@google.com, pabeni@redhat.com, sudeep.holla@arm.com,
	cristian.marussi@arm.com, arm-scmi@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-media@vger.kernel.org,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	chenjun102@huawei.com, Joe Hattori <joe@pf.is.s.u-tokyo.ac.jp>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 1/9] of: Add warpper function
 of_find_node_by_name_balanced()
Message-ID: <aAuqgiSxrh24-L-D@stanley.mountain>
References: <20250207013117.104205-1-zhangzekun11@huawei.com>
 <20250207013117.104205-2-zhangzekun11@huawei.com>
 <Z6XDKi_V0BZSdCeL@pengutronix.de>
 <80b1c21c-096b-4a11-b9d7-069c972b146a@huawei.com>
 <20250207153722.GA24886@pendragon.ideasonboard.com>
 <be93486b-91bb-4fdd-9f6c-ec295c448476@stanley.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <be93486b-91bb-4fdd-9f6c-ec295c448476@stanley.mountain>

Whatever happened with this thread from Feb.
https://lore.kernel.org/all/20250207013117.104205-1-zhangzekun11@huawei.com/

The issue was that people weren't expecting of_find_node_by_name() to
drop the reference on the of_node.  The patchset introduced a wrapper
which basically worked as expected except no liked the naming.  Krzysztof
suggested that maybe the callers should be using of_get_child_by_name()
instead.

I created a Smatch warning for this and here are the four issues it
found.  The line numbers are from linux-next.

drivers/net/ethernet/broadcom/asp2/bcmasp.c:1370 bcmasp_probe() warn: 'dev->of_node' was not incremented
drivers/net/pse-pd/tps23881.c:505 tps23881_get_of_channels() warn: 'priv->np' was not incremented
drivers/media/platform/qcom/venus/core.c:301 venus_add_video_core() warn: 'dev->of_node' was not incremented
drivers/regulator/tps6594-regulator.c:618 tps6594_regulator_probe() warn: 'tps->dev->of_node' was not incremented

regards,
dan carpenter


