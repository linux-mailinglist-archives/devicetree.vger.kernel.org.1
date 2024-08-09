Return-Path: <devicetree+bounces-92491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4288994D58E
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 19:38:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 757611C213BA
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 17:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC3E76EB64;
	Fri,  9 Aug 2024 17:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vOk3wxoG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2508289C
	for <devicetree@vger.kernel.org>; Fri,  9 Aug 2024 17:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723225117; cv=none; b=GxUOJ3xWfGdzk5PI5/M1liEhLh2W6oQDOIwI5HbsE5JMaF4S/KxygLToqOcHZKl9d4xMc08NeQjIg9VcyjFp7wGDrCC3Anz+DQngGGu+h83GVDcu4UomvnGTolca0x3sQZmh/ObirzJj/DQI0tiuzwIVhbhL8s8I2FwourzQBnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723225117; c=relaxed/simple;
	bh=cXxYEXZARGsajeKNP9d0RS9azqEcBNcFd0GgIoMO+s4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ejjenQQX7aQiAQHl24UoTCYMeHOn/oo0FmrxyXN7Cb8AmmBN/H9BXjE8SitM8SMn44I/3EiC9osLG9SGSDzMDpRxFRUeeae4WWgddONVq2rDgO9Q3qZVq3GQlr8ol2I9E8HXT/dzg4IWf9n2Wvxh6kNFAVAy+LDb+MPY1bfpNTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vOk3wxoG; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4257d5fc9b7so22222775e9.2
        for <devicetree@vger.kernel.org>; Fri, 09 Aug 2024 10:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723225114; x=1723829914; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wK/eXbtSXt7i7qGRvp4JY5MYm4mTg33gbZoavV57C+w=;
        b=vOk3wxoG5dxVz2yYdtRQByI9uhxIBAoQXyjJBT73BETSm1yQlAo6+AisyYu1zsedgr
         tKr8+4XknMzR8xz2r2BJDMwj5ahbZY07WuB2VljglD/byP3eogB39XJMa8TXlUl1zvcG
         4+6FEA9tMpkoODxqaJzALjHMAOayy3pxfHHohyTcjJdGssPhtlZsSGImPkFK/xHOXiNJ
         kGZHl6gQ068xIpKbH7x7qCZQYRmZdeqONKdf+ja9dwzs7ZIMqWHwawkIS9GmM+BGny0f
         0mN050LUyOUkt/Aqxs8kCi21KvY/XM/v4DunsG0Y1HoEFDXcA9tNEmuJmB3GheR95bUz
         7cvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723225114; x=1723829914;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wK/eXbtSXt7i7qGRvp4JY5MYm4mTg33gbZoavV57C+w=;
        b=GS/8ov47O7Daq43t4sY4v9B6549nP3WJv7twidRuIimUDOZ04C7N1tbHAqEAJ41OGj
         MshbU4rtjtCmR2YuOqTz1EudDedsEa2/tR6ZD5iTz95IBjxVWeaYcSLALgQ4R6nH8a5/
         TXszRxdSahMhOCqPJkQfN8Dmi3E7ucCoYTeZuB8nR0lIHKX/mUxGlFjxrnRi4wfUbJWs
         s8ZZSWv/aiQpAVVZmLH2gCKfocITnETuiE0WE5RUbeMFD40SGKkfkKFhG6GFmrbJ1UDc
         6JKDkWgsRAR005RmzwcXPAm6n4zWEswEk6AZ0MxrEmYiidi3eewuT8ec2tROg69MikDW
         AMpA==
X-Forwarded-Encrypted: i=1; AJvYcCU44MWSO/KW21XlEF4WU0StX5aO34jzHd0bbfyKXyI+ZH6YoD2jzH9Bx/8UszVDUtazOWk28iD01cz11tDXVUVXHEvwlzBGt1FXTw==
X-Gm-Message-State: AOJu0YyBqbRcAPLIE0olRCNzOTAU3cuxQP/aovXC3URycHJJYu9HHIup
	/QyAL0xbCqw7/nVQoUNBzzFusuU3GceoelgkRUffEeQkBcKbBd5t9FtHQTDHcuQ=
X-Google-Smtp-Source: AGHT+IHlKsFJK5FyeGImDhFZElsrrYy4iv5r7ySzQHymljAVd0WoJ9rnFzjR1TGdbNLOS209wzEC4w==
X-Received: by 2002:a05:600c:1f81:b0:426:5269:982c with SMTP id 5b1f17b1804b1-429c3a52e1cmr22944565e9.28.1723225114348;
        Fri, 09 Aug 2024 10:38:34 -0700 (PDT)
Received: from [192.168.68.116] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36e4efae579sm40543f8f.111.2024.08.09.10.38.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Aug 2024 10:38:33 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, git@xilinx.com, 
 robh@kernel.org, Michal Simek <michal.simek@amd.com>, 
 Michal Simek <michal.simek@amd.com>
Cc: Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Kalyani Akula <kalyani.akula@amd.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
In-Reply-To: <1184b2799ecdeef04128f4bab3db7460fd8edb10.1723114978.git.michal.simek@amd.com>
References: <1184b2799ecdeef04128f4bab3db7460fd8edb10.1723114978.git.michal.simek@amd.com>
Subject: Re: [PATCH v2] dt-bindings: nvmem: Use soc-nvmem node name instead
 of nvmem
Message-Id: <172322511112.401904.15547829402297792628.b4-ty@linaro.org>
Date: Fri, 09 Aug 2024 18:38:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Thu, 08 Aug 2024 13:02:59 +0200, Michal Simek wrote:
> Based on commit d8764d347bd7 ("dt-bindings: firmware: xilinx: Describe
> soc-nvmem subnode") soc-nvmem should be used instead of simple nvmem that's
> why also update example to have it described correctly everywhere.
> 
> 

Applied, thanks!

[1/1] dt-bindings: nvmem: Use soc-nvmem node name instead of nvmem
      commit: 972bbba114bd45c7526f88512c277b1a1c4fc3c8

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


