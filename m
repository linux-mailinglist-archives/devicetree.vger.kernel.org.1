Return-Path: <devicetree+bounces-220888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF15B9C3E0
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:14:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 600AA19C75B6
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 21:14:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BEE3285CBA;
	Wed, 24 Sep 2025 21:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="csGWOB/H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ED3A2030A
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 21:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758748449; cv=none; b=dNBukV1ADcpc5IY1OmMZy9Q78hxQWocgheuT7Rha6YPQBLS3ufw9sS+PYw26oPG1wvliPpyqN1qj8COtywEqCLQFdmVLnAorJrDd0ud7HowYDeXZr++6rkVEJz5vG4M09NNzltU7NVxBvvT60cuZYlWM2GtK1SD4WVCK7W0EJIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758748449; c=relaxed/simple;
	bh=tWPoT8hXA8bqdaHaLzPDAH+YrWSf3vmYsx1qgBZ34/o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tJEPCBIsPa5ofkDKRrMVaHsSdMJDn/zrTaPPhdUJ/0PPj3CfHcrEX0k8HEkhyrQIg9Td3n5pOoaodTF7tVaJoTTBPIictPlIXrLFisn9/ClZR2dhZ7aK2sVboctwgSQO+ZNor4FnZD9qlMkuUQMRYWGiALxDxhSN1jp+RslBNa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=csGWOB/H; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-b550a522a49so248713a12.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 14:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758748447; x=1759353247; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qtI+Xxsd8rE3fuveLCvU/MdyjxsiyhC9uH9cXSeRvHU=;
        b=csGWOB/HzJADn0swCXqj9R56mgoUOI0Pin4QmIaWC/74MHyRR3MQIBx1iQ9OgneAfd
         WoEjdvhmSwIunGvKEPvLT1a44KqkX1448zPIKM8NuX+eosNyxTCUF+ZbtmHhMaCaYyed
         RPWFHlkp3iZ6z7P3JjMI307Iki5nTpNOmlsob8rIM6a8e9DwvMTwUsQTT7pr3BONDUTj
         kuGeMrLTh+q6GOq5R4tX3bvZCo8i+WJFDLDziTGpwAzjXYR7Rk9Sv0joOLGkAhs/DMLH
         7MY600cPu1RcDC+Ez1J5Z3L8Bwxqcyhier7x5j26c04FUXkAZoRFolSscdyYHcgxrdnb
         N0vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758748447; x=1759353247;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qtI+Xxsd8rE3fuveLCvU/MdyjxsiyhC9uH9cXSeRvHU=;
        b=Sp1i1u2/AXSRhPBYu8mNMuq7f5LW8goi0Ee0f5EW3qUbcndp+TnOOqu59yAxrlne0G
         uZKQsfXoe7WiYsfkrLvBHOoND5mK4IiLNbbMLfw7EB4AnZagPNbL6h7DVegRftN0X4/v
         9oa2fClMXRwoxC3tku2VKBaW1yfJKkgiFOn89suK7QrmqqJhQLGIt3FUEyOpkbNxM8iX
         WqdvljtxzKfUry2zFHhL8ABaxbuPn4gSK106Aj9aFM4BX440FVdt0hQc5BG1sMiIF7Rv
         5zFXZYq9lHfDz07+o4ajhq0cphNg+Bv+vf5mcFdZVlfadnRVi0VPEMEHehgERSqry0Bq
         IaGg==
X-Forwarded-Encrypted: i=1; AJvYcCWKS5svsQQLLutQOkoLtmIdbf6IWFIGWKBf4Jt5shquDcLxUA1RM5VmO4kknmj9BSNFbAqMvg1BN6Ei@vger.kernel.org
X-Gm-Message-State: AOJu0YwVmu2OcZN0lNvT2E2uNkD0oTBwqFk518/F7PC3KGgXnxad1jS5
	3WP8dj4IcA/H5H1Fx+Oht/V901NXoyN+KI4jLrRXdCbvJCs0qd0cQCZQ
X-Gm-Gg: ASbGncvn/R+Q8qqPSiDopavN5HyYatru1/CtmESgXdjHHu2zYlbIoMxM9d3+lCO6uwB
	nSbatWzEUQCHrkqoevrySAp+X6mjdW/4Z5VMHqTxe0ZVhS0gbJgPYDUZylLyj3VdSP76tEE8LOH
	+3Z8BQZ1Nlb6mq9fmss+b0EozlAUGxqty002sMX4j7WpedqBGrMmm6fcuNzUUeNWUZQ7FBIkTRa
	1ZaAMY2tsPXi9wTw4ynVh9IUXhaj1U0fzM+rU4WYK6Tfku08o8B3+MaDQMJlVUt2be9m452E4HD
	PSMLfEj4HsBRuKUkqP/nNuAIM7g7BPDH1HUCNTR8a1JO56PzkFO19qHJ/zDs/w8YGVmW6ubqvhl
	vxSicXwmL4ZduUVTsAZCKhw==
X-Google-Smtp-Source: AGHT+IHchnbtWrdhaWeshGUQo0IHCW+W1jq7tB9DCwBzgUE/TOXYECiLeyb7fq0Zi9TPW9Z78gDzfw==
X-Received: by 2002:a17:903:b8f:b0:271:7eba:a49 with SMTP id d9443c01a7336-27ed49dd8bcmr11592285ad.19.1758748446942;
        Wed, 24 Sep 2025 14:14:06 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:5a97:14cb:a5e:6c78])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53cbe6dsm206917a12.21.2025.09.24.14.14.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 14:14:06 -0700 (PDT)
Date: Wed, 24 Sep 2025 14:14:03 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	sebastian.reichel@collabora.com, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-input@vger.kernel.org
Subject: Re: [PATCH v6 1/3] dt-bindings: touchscreen: convert eeti bindings
 to json schema
Message-ID: <xugkxduy7thmh3x373rcsacfdslnvscdfii23acx3qq2jp73l6@ymxf7g5earka>
References: <20250921173353.2641438-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250921173353.2641438-1-dario.binacchi@amarulasolutions.com>

Hi Dario,

On Sun, Sep 21, 2025 at 07:33:42PM +0200, Dario Binacchi wrote:
> Convert EETI touchscreen controller device tree binding to json-schema.
> 
> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

This conflicts with my tree, could you please rebase against my
"next"branch (or against linux-next)?

Thanks.

-- 
Dmitry

