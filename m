Return-Path: <devicetree+bounces-245307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 958A6CAEF5A
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 06:41:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E0843031708
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 05:41:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA4DC2FD694;
	Tue,  9 Dec 2025 05:41:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W6QaUzQU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348F73009ED
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 05:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765258903; cv=none; b=A25dx6eimLtFIFhiTQx+0+N3N8I7d4a3y8v42xbCaZ1FqdB4vstHP4jppWEU9xxb1qFq1vPAsqAUZkNE/H55cSZ9LGHi2xay2/sKzUfnWE3yRIVvUgdKYuU1LCaVcDrm0UsaU0QdK8NMePfg3EUP5O7WyuqT4WQN2We3uetCxfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765258903; c=relaxed/simple;
	bh=zSLSl+demqE3EELs8KN+P2CNXNA1rhxB2CbBz18Chns=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h+KoTFlSfGk41EXemq2AilfTHUknHD5W6689aVr5AigQwRTS7Q8BIuK9WRwqOXt07AvyEQpJhrpbbVkOT/VShu3i2dzdZTLdlCX4Bw0Mey8gT0bNCB2aLwFAG7m3cijzeXIaZP1ZvgCjSP4DzRPTtpukvNHOCFXC+3jK4n3kQLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W6QaUzQU; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7b89c1ce9easo5972333b3a.2
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 21:41:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765258901; x=1765863701; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5LHZA5YDa3eruXOPuF/H7ti+YsMo7fQPUEFvvdAmt+U=;
        b=W6QaUzQUIGzWSOoey/Vz5R9d0eLn645cXgskxmrLxjJxBj4ntBe3XdbjjWR0oU30KS
         5CRqUOXFcZPa7LWbUzFqcjtJlwL59lya0WxP15oxbo9PfaHocx7Y4ks0LVLtrMa+yySD
         2lWy7/GEvgnjgAp9D33GOnDFJvHpOs7YA1156lF2b7UAbRmcGCi7EDzIGpnJmRdKM2A7
         E1Or7uOK46DYmybysKLwEGoU+yfC8GirMAxNgNu/Rt0njvKSatZgckdty3HPXKZEnXDe
         8DEub/GcfbuZZHqQBf88yCZORGDd5cySvafh9w5cVb4jCN+PLNvMRGkwXKj2hsjGQOHq
         ySFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765258901; x=1765863701;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5LHZA5YDa3eruXOPuF/H7ti+YsMo7fQPUEFvvdAmt+U=;
        b=Nof4n0c0QM6hg67/+dtcDKTtXEOYoPfBEp6baQ1+7foGdn1DJNSPNf+w+F9WQjYVgR
         S/SrsSwJu3pna0z/8HrOITFzUw2eN9em80pQeKF+f7GIy2G6+Xx7U0gdiZgiAkl4sVHF
         cjoDe6KLYPG36YUaDMxsWGtG6mzTbF7UEAlfaPHN24Z8bLqalUeTPIAe9dEHm4uoP3Q3
         9H+YDwy8NRZtLn/TvnKGyAE+JHB2DNo/N8HdItM209fQZTSPwhqt0QKyNSqEBLGVhPWD
         ZQ4vZdBQ2vunZ8OLJp87G5Mje1NG+RZt8mE16yTf4LmQUbxp7TWdhZYupdMoX+ceGhzb
         tzeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWEq8omxzs7KTrtpbiErS+gw4H9yJ2h7hKAOaxmYBlnetL4l6pnCy7qzo5UYwIIldYUPZKQZOqK24Av@vger.kernel.org
X-Gm-Message-State: AOJu0YwyI++T1ddyiAJQnQK6NoyUK4L0sUKxo1CnwcNDtG43gQgWX1xi
	NTzwftKdWKe34KwozBttZNvNYzAHFa7sCRMGsjSk1jNga/CxE0irMJpV
X-Gm-Gg: ASbGncs/LxVabHgp44b5u8oHm0Cw0esdoN244vUoBJQL5lHh1C5u4da8spcJoAcEr/B
	FAZRRO8gVH23oPVov5d79NvVbzSQ40G+ylZqDJB1X6EctkXQ5wtLY0kjaaeuDCu9L+gDsYjUy5n
	BiImlxPjqmHGXvX62Plf6qKSmSzyEDFQH/vkBou3VvxO0zqW/rE/91o/EMQDhMwu6S55n0eoPZT
	V/VAbfmMZ1EI4+XVpdQAo1/zb9DT1q0wHtwCcGrcYnvzIxLgQGwSS7vvkedo0T13amflrudel7G
	n8AFpFRZsDook3z+QMXgmoB/SGNIPeuOde+TmcSEYKsX/n65gWmtPCPmQVBNf6qGrvsPixNmTyc
	hjeMdtlmMq73ScR9G1twFYVqULWGBL8UdFaOXMRA/N04r3ik2Fmxs6hVZ37Q6ICQ1SJfWQBXABQ
	VdQelJAwToGxMzKGxsv8bOLWdsNp6dkqMHI9aqXq58ypLbycmkLy27
X-Google-Smtp-Source: AGHT+IG/Um2k31NfRI9ovEMXsbhvXmwyf6UVaKDsBHH/HNkQGRW07a8Dg1HKz/AUBKO2KkgQMD+E2g==
X-Received: by 2002:a05:7022:f89:b0:11d:e40f:ee69 with SMTP id a92af1059eb24-11e032b4024mr9024002c88.36.1765258901340;
        Mon, 08 Dec 2025 21:41:41 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:bf2e:ccbe:6eae:cfa7])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11df7703bd7sm68986088c88.10.2025.12.08.21.41.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 21:41:40 -0800 (PST)
Date: Mon, 8 Dec 2025 21:41:38 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Hendrik Noack <hendrik-noack@gmx.de>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] Input: Add support for Wacom W9000-series penabled
 touchscreens
Message-ID: <5zfoikfpctpvphtzmthqb3ue5zc43ueriaaesyyqkvjm3b25re@7w2uo4es5har>
References: <20251205152858.14415-1-hendrik-noack@gmx.de>
 <20251205164952.17709-1-hendrik-noack@gmx.de>
 <k5rhkjmttba4aznb3xa44pqaxepsfkbe5ap6g2ln3rcgunvkky@262tpqra76v7>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <k5rhkjmttba4aznb3xa44pqaxepsfkbe5ap6g2ln3rcgunvkky@262tpqra76v7>

On Mon, Dec 08, 2025 at 09:35:09PM -0800, Dmitry Torokhov wrote:
> Hi Hendrik,
> 
> On Fri, Dec 05, 2025 at 05:49:52PM +0100, Hendrik Noack wrote:
> > +
> > +	struct gpio_desc *flash_mode_gpio;

Forgot to ask - what does this do? We do not seem to be using it except
for requesting.

Thanks.

-- 
Dmitry

