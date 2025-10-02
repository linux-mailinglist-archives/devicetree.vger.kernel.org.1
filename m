Return-Path: <devicetree+bounces-223470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 260B7BB57C3
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 23:36:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1D0E44E1D11
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 21:36:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D04E27A127;
	Thu,  2 Oct 2025 21:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LDLh9pE5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C1C1C861E
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 21:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759440971; cv=none; b=rzYptFgRm0kk4hsytVf1cIp9kxxfFIfRB4T33yUqWJexiBjJkBZ+L/SmvDGqvtgei6IETJ2cKcEa0mLAXSURlO9Gk1pXRIxDIfKgLCSbeSBMczHQ2+zG8RnAm/hhkgQ0d6hzpgsLIvTixc1SovklQgFD2mGwUxdEJcAikRyJeDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759440971; c=relaxed/simple;
	bh=sp7MqWAOc+vFOYpjOgl75lySjdmojqGQ8r2e4EDXL9Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E82KcU9xkhzrPsqQtBaz6PV59x/r63NjMltCoMamzSlF7aYpN0Blaj7h3IPPYa+iNj4I2czJgOY7jCniskAM2poyBhfr+4xDZb1rnMCb+WXVDiclg8ArihOcOTNHDUedvGLB3e/uNe1bzFdCYuj/MI6tly6f+RsT1KeFry0Auaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LDLh9pE5; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-7800ff158d5so1459451b3a.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 14:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759440969; x=1760045769; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EVcmxEQDygf7dbtJ7z7prj2fqI+0iw8tFUmQnUGZQm8=;
        b=LDLh9pE5L1v7i8Qe63FbqO925JUuryIDlUKRerLfEfRkPDH3e7lrZbhnF9f5/x9jIO
         CWdoXdKTxZ8RuBt8JctqnWp0ZlDkRUg/qyiu4/lYWHBhkWfLVtEkFTe+65QjEE4tc6mM
         6kNdiTgY7Z6jZ0+i6GODfEyffXYFfvdh/r+PstPF917eeLLjR0slDIbZmNw/Y0mijCru
         JA0vPgZQxqFkXs5j+mwvTZzrD53kFysM2VbCeZGhqP0OLGAlXJ/4do09O0oo8nHzQ+E5
         l1Vr8OXlbchFWuHuYyWg2tPsIDtwt8LYAdU4D2FH5yoyIFbBMzud88OlvTant5SCiOj6
         grRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759440969; x=1760045769;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EVcmxEQDygf7dbtJ7z7prj2fqI+0iw8tFUmQnUGZQm8=;
        b=LoJvxUAMf+K8jkh0cKXHyJ9iLmvhn8bb8Ts8+GEUKkYWCIN0l1jkMZkk9ZL9wU0UJK
         7rVX8oyHJv22mqhCRxaCMqN85nEvil8nDiyOJtmlhQbB/3PU1f8du0Xpi5ZFvLavC6hW
         JJ4blj2MYrsriBctTquAYK/AnvCQ151FAOAVlOdOf3CrpRJEN/u+iTeTiyncgrg9EwXV
         9ttIUzen7cRm3s7kAXz+A29iUnN8VQV4XzDAy8d+BM815RtRvndkYUP3inLRddbNXlOm
         XVkH1jmfkt7r99a4Gbhj5pGRdzNpnk7c35yCRwcVUlnikWTILEgkQXKDXDE/5cSl+Qe2
         wYcw==
X-Forwarded-Encrypted: i=1; AJvYcCUInRbiAS75F2K1YgZng0gTMGXmcrF2p2P0eLx4JB1pyeK7/ctvl1mlDZLmup8WCv6Btev3LgaZ0XYQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwWQ6iNx22yk6RYXe69unLGiLOtYYubMe6PbOsqufi3NtEKCn85
	DLiHLOFwouu00BHdjVxI3tFYWv2OgGMh8pYwKVvH+K0+BGk4Fe85YKRr
X-Gm-Gg: ASbGnctkCely+KGeMuWE9q2hyNMaKqaN6OgpZd6plpJ5xQVghpCFpMaTOMjfqyhMPvd
	JJqnjCj9nkQnrohmf5kXiOeTMeZCKk5FISeAk5vkUHfjfkE5zQEJVpIci4nLKTNJr9WJco0x1JO
	vFALiPyYxBFNUYSIELKguSAe09vMEW2mxo862+fR7UcYxHFfZM39BXhEB4K96oqGW18C9JWFDB4
	fnlS/aeKdtUfqTKtkMzZB55i6GktN4IWyl/Mt4Yw5tGM2/B+2mmKPm7o+av6WyFZWE8A4F6MzhX
	NviKsEzakFFlFG2YfZViyCjjMC4u2V7FA+/P8hx51/4krJ/OpuaJUTBEphjffA8+xKyKmkdY02I
	L/eivn26s30NqpQr7Q0sQ/5tDPuiuFWwJxaMBrWkmJd/G7cr0AH5VMNt3HqI=
X-Google-Smtp-Source: AGHT+IHue+jlDN4n9W+cwiftgnT/dK0SHQVUWlYe3W8oi5uNcGPOdbvkqxSuoPni8hyXXe4UdBJf7A==
X-Received: by 2002:a05:6a00:3991:b0:77d:51e5:e5d1 with SMTP id d2e1a72fcca58-78c98cb783fmr1124337b3a.19.1759440969414;
        Thu, 02 Oct 2025 14:36:09 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fb16d9sm2989597b3a.22.2025.10.02.14.36.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 14:36:08 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 2 Oct 2025 14:36:08 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Jean Delvare <jdelvare@suse.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Emil Dahl Juhl <juhl.emildahl@gmail.com>
Subject: Re: [PATCH 1/2] drivers: hwmon: ntc-thermistor: add Murata ncp18wm474
Message-ID: <a14a92fc-a21d-44b4-a613-e68747edf521@roeck-us.net>
References: <20251001-ntc-thermistor-ncp18wm474-v1-0-2c64b9b509ff@pengutronix.de>
 <20251001-ntc-thermistor-ncp18wm474-v1-1-2c64b9b509ff@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251001-ntc-thermistor-ncp18wm474-v1-1-2c64b9b509ff@pengutronix.de>

On Wed, Oct 01, 2025 at 01:45:27PM +0200, Sascha Hauer wrote:
> From: Emil Dahl Juhl <juhl.emildahl@gmail.com>
> 
> Add support for the Murata NCP18WM474 NTC.
> Compensation table has been constructed by linear interpolation between
> well defined points[1] on the resistance vs. temperature graph in the
> datasheet[2]. The readouts of the graph has been done to the best of my
> abilities, but the compensation table will be subject to inaccuracies
> nonetheless.
> 
> [1] -40, -25, 0, 25, 50, 75, 100, 125 degrees
> [2] https://www.murata.com/en-eu/api/pdfdownloadapi?cate=&partno=NCP18WM474E03RB
> 
> Signed-off-by: Emil Dahl Juhl <juhl.emildahl@gmail.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Applied to hwmon-next.

Guenter

