Return-Path: <devicetree+bounces-223479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D25BB5BEC
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 03:34:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2BBBB4E02FA
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 01:34:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA14427B336;
	Fri,  3 Oct 2025 01:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N/KN716l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8585B3BB44
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 01:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759455263; cv=none; b=fzyIjsVNQ5Yu56MV7j9rnbTKHTTiWfGXEarWMvPZVEYPBjzhVdbW6MBZpm1EAtjZVStNvl3SI8Hsd3IhJmmjH2CLl4BTsS0UGULpoK8rAyhahW8xSpnq0NdpedjWXlQNh0cik/iVfgfzkL8ZCgGGij2AcJPqd5qOxSBfVv9vxgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759455263; c=relaxed/simple;
	bh=rjQitVpnOXmkp+3NlztsQxuzzfnlyM11hRIdG0CWj5s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qe79irSBhmfuKqurL6RCtjdKnIOZqqItKprrBOr0DrIIsjSDSHASe0invVE8bZVAt5qLFma9oLkr30g1A+ZvV1UUl4iLqvEroNGI+mIXGZyXXUSLjYsd8Waa4+nxPKL25dqsPLsgqExnoWfGBM3+c3UOVwaglxOy23nrdBDDUgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N/KN716l; arc=none smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-4e4f8122660so17012521cf.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 18:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759455256; x=1760060056; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rjQitVpnOXmkp+3NlztsQxuzzfnlyM11hRIdG0CWj5s=;
        b=N/KN716l4RAaeQX1X4V3FeX1/7ay0YYxMyzqVydD6ESm7B031Db4zTSqyRrxK/N4DT
         LbJXNkswMAsnqQvhIJsJdkUgmSBVka24kvesySgqCLa9EPp2hCyT0IAQObIQQTVdu9TF
         kFCmTfCSzx+MO82GvGkvwdAq785enSf7nf7Rg8aPB475XtVb2wPZ/66Gyy0IKzJX3Cps
         UIc3AIon4CVYmFlwE88/Q75j9TK7OYAmpWXMDtS7WH7s24YRZZtVqFgD+YlQbM7zI85z
         bxqkdz3oLBRd39O4JnrRuubhcJ15L1g3MrkhQd6GZe23bPg0QvpjsqrMyeHszNqxy+jG
         GALQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759455256; x=1760060056;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rjQitVpnOXmkp+3NlztsQxuzzfnlyM11hRIdG0CWj5s=;
        b=Sxc5S+4bHLXZBMrFXdN5nppVjF0olsP7kNtWRdmlFJ5TMnKZIcQ3F8A8jDWFp+W7rg
         ALjIJq1gyzVH1ZRU+uKCPI3PegmS07yOcUmYPzCJYhjcas9VBEVAMhRThGI4sfsRMzsn
         6arBIyWX0ArfdzR/axjk1GOSv4l8ugMTxy7IHuPJLiyE+CYVbouPCMgToJ7bUvw9aanI
         S5TL/Zen3ORJhf4lo9VbfMp2fmZrnDCZboyuvgL4t5I6oq5sQJR/R5pP92vBrpRUD29x
         uWT+K/rUHXBQx9bCF3FBVOcXA0905zYDr2zLK2XnQUJgHBLMNVumc2xj7a9XA49u7/0D
         VjNg==
X-Forwarded-Encrypted: i=1; AJvYcCWClUYuVyYA1EgeuoJc7GWrxmO2sx1ghkxnpNsWb9DcDfS8oaTDF8Vw20GsjRJdGdFcUizDq+gfS+3f@vger.kernel.org
X-Gm-Message-State: AOJu0YwX9PA9YQ/6vVkfoy7mzDU8JMSejuIIcb75+aC8SmCFsrUEASLj
	f2q/pAN02XKvw85LPsnJITxVLa2uYahCOEbHz/OwjRlZ1dvPCcJPKJrN
X-Gm-Gg: ASbGncuS+9mqSLSAyz5OJI9AXo0azXda8nS2KfxOdHyZ5app47L3ZB+2nCJvz7dNRrZ
	aOWquLvEFad7w7Puep4Qo4t7ftWURJB4/AbA7QfmtNhcr4Q8yaDaqkhkVM5gf7TSfVhTh5Stobw
	YrUB0MY+Y4+rHw9Tl8gkjLZRlP039lbcrCfLn5yICom6ZTNQywJkTLOi2eGCzBcq4l9HYKXqFW6
	OFcWSocai3w5Q9Lps+p8np+7PzwlUJCgliKLwtDZA0ATqzou0AFJz971JyOIO5wRMp2tPa6iucb
	ZWiz+OpbKYmeFd1Y5fpZdU4RwWqC4w7qPRIfHR9EW5/DB4fPfKJ8coxGChMPBdrAk0ikKYXLFCc
	8o05kucRibAj55JqYBUR5mfnJCnaFsV9Ov6d2NnVDHhPCDLsOseav/RgEsQ270pv9DVczj2CGtF
	jkUBHo
X-Google-Smtp-Source: AGHT+IE2QAJnEn6S3wiWa6HAcGe6fFOUhNCRwcksOpP/Sp6WzB6u0+ryZRYwrXEPIg7JTu0pwFC8Pw==
X-Received: by 2002:a05:622a:1f9a:b0:4b3:4457:feca with SMTP id d75a77b69052e-4e576a452ffmr17840251cf.6.1759455256332;
        Thu, 02 Oct 2025 18:34:16 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-878bd87edf2sm28197486d6.33.2025.10.02.18.34.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 18:34:15 -0700 (PDT)
Date: Thu, 2 Oct 2025 21:34:15 -0400
From: Joshua Milas <josh.milas@gmail.com>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: E Shattow <e@freeshell.de>, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, unicorn_wang@outlook.com, inochiama@gmail.com,
	rabenda.cn@gmail.com, thomas.bonnefille@bootlin.com,
	chao.wei@sophgo.com, devicetree@vger.kernel.org,
	sophgo@lists.linux.dev
Subject: Re: [PATCH 2/2] arm64: dts: sophgo: add initial Milk-V Duo S board
 support
Message-ID: <aN8oF-44XZooEoVV@sleek>
References: <20250927173619.89768-1-josh.milas@gmail.com>
 <20250927173619.89768-3-josh.milas@gmail.com>
 <0f581625-24d8-4b91-8935-685a837ea217@freeshell.de>
 <9614f7f37f0e76d0dba91b26d83f234e6847818f.camel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9614f7f37f0e76d0dba91b26d83f234e6847818f.camel@gmail.com>

Alexander,

> I wonder why is it necessary to remove "resets" at all, if it's
> exactly the SG2000 SoC. What is the exact problem with them?

When I dont have the 'resets' property removed I don't get any
output, with or without the pinctrl property. I found this out
by comparing the device tree from the released image from milk-v,
it was the only property missing.

- Joshua Milas

