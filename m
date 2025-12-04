Return-Path: <devicetree+bounces-244382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 851F2CA444F
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 16:34:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 236A2303FA48
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 15:30:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1440B238C29;
	Thu,  4 Dec 2025 15:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XIpmek74"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83402157487
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 15:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764862246; cv=none; b=lLYb9vjJaU5Q4nZqiJcH6siyAr39X/3yyVZ3/ycg3BieRDh5yFmJM6KZjglnXqiKLnJ5AfkS7biyYXmP5oeEK2Yw37mhzjD42PexB5YJbXGtRlELPOHmFFbzkgBrfg38aVE91lzuh8FG52wb+SxybivnZ0t67WNPYEMUvyjVCB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764862246; c=relaxed/simple;
	bh=Zm9ieslCALH/z4AjjiHUD1iIfB2/hgCbdZHjkZ+mjpg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=asf88gtM+y7Qjl65qOPUdaLUCUEI2MWdOvJeAUj2lp7DTe8JtedIJtuXGvQuwE9VJ6nInIS0kOQnOQbvlU+Zh8Y/36yLLvcfkpH7TvSymzNAu8tvxELDpsMYy98tVppZaquCbi8pdepkK3ILISxGeqSwkh593972F8+U+5FntoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XIpmek74; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7aad4823079so1008749b3a.0
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 07:30:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764862244; x=1765467044; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4eYlycY1hylOTB5YUsmJJW41uY2q4hI0Kj0UWi48gjk=;
        b=XIpmek74Xd0B78Gu4v2qCnnpgD0WUvFTbGg5TfdL1GtbGpzCTbtk9lAv5s43ivTSj7
         iaY3yLYTaw2Mo0Why5fDcmzpdA8dqO8InhRTQd6PZYNdTM+BHnhfOxxULWsguqY3pCMa
         dnMHwdX9RwAFSx7P/ngSaLdLRilOdfT1HTSjBMWkN9hmMHEAsdGV4Tfv/X+ow9QYkJGD
         omRtLRlAY0MkiOsU3dM/xDOc7guqm9bgbzNvPxdbbj5gQ2jlv2Uu6G0zmRyUuDQcR1fq
         wGlmqzENa38LMxUb9Hkf/En3tHcRjLRtsUJBFurmT9iQs5VEkfwZFj153osaqroIeWZE
         HKYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764862244; x=1765467044;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4eYlycY1hylOTB5YUsmJJW41uY2q4hI0Kj0UWi48gjk=;
        b=DBPXLOW2J23d0pUMD/Z9DbJN12VZ60XR7KGdrZuXFM8o/7oO8yON+Phqmz1SHT6hoI
         a9P+7gY8ST06g00TmC4oVs6mRx+defM7+rCw5S+6DDjVasNWriOM8GFhrUIkriFwPGuv
         a8NDi2wAgpNvxdGHDKeebqvuyQayb6ejokYAYS8P0+/0GivUGPIoYe5Js4RfLxPBU524
         UJ4eUam+DfTxYoE4Qkm04AmTLhsQqzt/9a+FbyeuBs3R0WsQwNcO19YhqkwTHPO7QvkQ
         6oIIAP4+FyWhN7JeAGwjNTGvBkhZJezl++N6mdsLDexiWXOI8wyfWS+MnAsKFzwOHRiy
         DLMg==
X-Forwarded-Encrypted: i=1; AJvYcCXZcC5Mzf7B443YukEDUsKjEoO+GO9wIOTXIvGgZ+YiMPf9iv9okFlkWGDEkMDz/yot+E2dN9tMWshF@vger.kernel.org
X-Gm-Message-State: AOJu0YzTxAR6bJ/0hqkHn6PW5L7geOW9+bPb1Pb/uZ5Q/N//3Eny7RyH
	IurwvZxmCLKPS8gTGXsPAL8txPQqEf0l68lHzrAdgZhF0m0Sp747JyZ8
X-Gm-Gg: ASbGncvV2Y6dAEVAXvcE1jK5At3Zn+eK+G6U9u3TLUOEYmYcZ3JlBmShuLx+nXpk4dI
	Uo43mf0/dA2ai+n6kXz4ciT+vBjxSVgNw8GV9iDFRYegrIP/dC8xsC5FkgGInUFjOZaL+diKHG0
	PDh3sK+RtzXb06jSweeEGPrv/zhXk+RZEuKlXN9w52RvN+/K7L3ZigBtjV+z6wt4aG9d5IyEDcF
	S088dXVIRHYKFblEXHbSV6m7SufJlu7098by2/vWPEhmjsg4jGFYF8bL3FTIVob7Sh2YiA0iM+r
	Dz3u3WuC1XwU39GOUmam4QXsMMtseyZmxrJ3wr0QhlBGTXPrAMEjQzRGFYYR2Ipc0yUlxcH+UcJ
	r74i6FZ+vUK7tF3aPRJC0mlAe1jOo5DtrWHirrpqAe37QCK4iuzyC20aijIbszqvLMsSQ1pgUxh
	IFnc5esaxySTN1f1kaPBw=
X-Google-Smtp-Source: AGHT+IGUuxpLqmy4omgL7DayDrCXKB4XMbmLpb2m72M6WfzhzKd/lpFRyfBDddrHoUtvpi7znSaRDQ==
X-Received: by 2002:a05:7022:e98d:b0:11b:ceee:a469 with SMTP id a92af1059eb24-11df0c2fc19mr4186449c88.22.1764862243599;
        Thu, 04 Dec 2025 07:30:43 -0800 (PST)
Received: from localhost ([2804:30c:941:4500:2e30:10b5:73b0:4b74])
        by smtp.gmail.com with UTF8SMTPSA id a92af1059eb24-11df7552211sm8769605c88.1.2025.12.04.07.30.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 07:30:42 -0800 (PST)
Date: Thu, 4 Dec 2025 12:32:16 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Tomas Melin <tomas.melin@vaisala.com>
Cc: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, jic23@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, andy@kernel.org,
	Michael.Hennerich@analog.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, corbet@lwn.net
Subject: Re: [PATCH v3 3/3] Docs: iio: Add AD4134
Message-ID: <aTGpgEFew2vP1CTG@debian-BULLSEYE-live-builder-AMD64>
References: <cover.1764708608.git.marcelo.schmitt@analog.com>
 <69b230190abb4cd76ad9eb25e2bde51caaa23d9a.1764708608.git.marcelo.schmitt@analog.com>
 <19d5c51d-41f3-446a-aced-5be2fe6ec0d2@vaisala.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <19d5c51d-41f3-446a-aced-5be2fe6ec0d2@vaisala.com>

On 12/03, Tomas Melin wrote:
> Hi,
> 
> On 02/12/2025 22:55, Marcelo Schmitt wrote:
> > Add initial documentation for the ad4134 IIO driver.
> 
> I wonder is there some information in here that is not readily available
> in the device datasheet? After all, isn't idea with this file to
> document peculiarities that are not easily found elsewhere?

You are correct, these docs are mostly from data sheet info.
The main idea of having the doc is to make clear what peripheral connection
schema is currently supported.
Because AD4134 is both flexible and somewhat extensible in the way it can be
connected to the host, we could have different wiring configurations, for
example

                                                              +-------------+
  +----------------------+                                    |  DATA HOST  |
  |       AD4134         |                                    |             |
  |                      |                                    |             |
  |Data interface  DOUT0 |----------------------------------->| GPI0        |
  |for ADC data    DOUT1 |----------------------------------->| GPI1        |
  |read back       DOUT2 |----------------------------------->| GPI2        |
  |                DOUT3 |----------------------------------->| GPI3        |
  |                DCLK  |<--------------+        +---------->| GPI4        |
  |                ODR   |<------------+ |        | +-------->| GPI5        |
  |                      |             | |        | | +------>| GPI6        |
  |                      |             | |        | | | +---->| GPI7        |
  | SPI interface   CS   |<-------+    | +--------|-|-|-|-----| DCLK        |
  | for register    SCLK |<-----+ |    |          | | | |     |             |
  | access          SDI  |<---+ | |    |          | | | |     | TRIGGER     |
  |                 SDO  |--+ | | |    |          | | | |     +-------------+
  +----------------------+  | | | |    +----------|-|-|-|---------+
                            | | | +---------------+ | | |
                            | | +-------------------+ | |
                            | +-----------------------+ |
                            +---------------------------+

or even with two devices [1].
[1]: https://lore.kernel.org/linux-iio/aRIIDTUR5Pyz1Rxi@debian-BULLSEYE-live-builder-AMD64/

That is not a current use case but it could be possible. I think it's likely we
will need extra software to support those cases and, when we get to that, we
would be adding more diagrams to this doc. Still, no strong opinion, we can
alternatively add the doc only when we get to those more complex cases.
I'll follow reviewers' preferences if you or anybody else express any.

Best regards,
Marcelo

